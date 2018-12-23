package com.miui.gallery.provider.deprecated;

import android.app.Activity;
import android.content.ContentProviderOperation;
import android.content.ContentValues;
import android.content.Context;
import android.content.OperationApplicationException;
import android.database.Cursor;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.cloud.CreateGroupItem;
import com.miui.gallery.cloud.baby.BabyInfo;
import com.miui.gallery.cloud.peopleface.FaceDataManager;
import com.miui.gallery.cloud.peopleface.PeopleFace;
import com.miui.gallery.model.PeopleContactInfo;
import com.miui.gallery.model.PeopleContactInfo.Relation;
import com.miui.gallery.model.SendToCloudFolderItem;
import com.miui.gallery.provider.FaceManager;
import com.miui.gallery.ui.renameface.FaceAlbumHandlerBase.FaceFolderItem;
import com.miui.gallery.ui.renameface.FaceAlbumHandlerBase.FaceNewFolerItem;
import com.miui.gallery.util.GallerySamplingStatHelper;
import com.miui.gallery.util.GalleryStatHelper;
import com.miui.gallery.util.GalleryUtils;
import com.miui.gallery.util.GalleryUtils.ConcatConverter;
import com.miui.gallery.util.MiscUtil;
import com.miui.gallery.util.ToastUtils;
import com.miui.gallery.util.baby.CopyFaceAlbumItemsToBabyAlbumTask;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Locale;
import java.util.Map;

public class NormalPeopleFaceMediaSet implements Parcelable {
    public static final Creator<NormalPeopleFaceMediaSet> CREATOR = new Creator<NormalPeopleFaceMediaSet>() {
        public NormalPeopleFaceMediaSet createFromParcel(Parcel in) {
            return new NormalPeopleFaceMediaSet(in);
        }

        public NormalPeopleFaceMediaSet[] newArray(int size) {
            return new NormalPeopleFaceMediaSet[size];
        }
    };
    protected long mId;
    private String mName;
    protected String mServerId;

    public NormalPeopleFaceMediaSet(long id, String serverId, String name) {
        this.mId = id;
        this.mServerId = serverId;
        this.mName = name;
    }

    public NormalPeopleFaceMediaSet(Parcel in) {
        this.mId = in.readLong();
        this.mServerId = in.readString();
        this.mName = in.readString();
    }

    public String getServerId() {
        return this.mServerId;
    }

    public long getBucketId() {
        return this.mId;
    }

    public String getName() {
        return this.mName;
    }

    public boolean hasName() {
        return !TextUtils.isEmpty(this.mName);
    }

    private void setName(String name) {
        this.mName = name;
    }

    /* JADX WARNING: Missing block: B:50:?, code:
            return;
     */
    public static void merge(android.content.Context r12, java.util.ArrayList<com.miui.gallery.provider.deprecated.NormalPeopleFaceMediaSet> r13, java.lang.String r14) {
        /*
        r7 = r13.isEmpty();
        if (r7 != 0) goto L_0x000c;
    L_0x0006:
        r7 = android.text.TextUtils.isEmpty(r14);
        if (r7 == 0) goto L_0x000d;
    L_0x000c:
        return;
    L_0x000d:
        r8 = com.miui.gallery.cloud.peopleface.FaceDataManager.PEOPLE_FACE_URI;
        monitor-enter(r8);
        r5 = 0;
        r7 = r13.size();	 Catch:{ all -> 0x0038 }
        r9 = 1;
        if (r7 != r9) goto L_0x003b;
    L_0x0018:
        r7 = 0;
        r7 = r13.get(r7);	 Catch:{ all -> 0x0038 }
        r7 = (com.miui.gallery.provider.deprecated.NormalPeopleFaceMediaSet) r7;	 Catch:{ all -> 0x0038 }
        r7 = r7.getName();	 Catch:{ all -> 0x0038 }
        r7 = r14.equalsIgnoreCase(r7);	 Catch:{ all -> 0x0038 }
        if (r7 != 0) goto L_0x0036;
    L_0x0029:
        r7 = 0;
        r7 = r13.get(r7);	 Catch:{ all -> 0x0038 }
        r0 = r7;
        r0 = (com.miui.gallery.provider.deprecated.NormalPeopleFaceMediaSet) r0;	 Catch:{ all -> 0x0038 }
        r5 = r0;
        r7 = 0;
        r5.rename(r12, r14, r7);	 Catch:{ all -> 0x0038 }
    L_0x0036:
        monitor-exit(r8);	 Catch:{ all -> 0x0038 }
        goto L_0x000c;
    L_0x0038:
        r7 = move-exception;
    L_0x0039:
        monitor-exit(r8);	 Catch:{ all -> 0x0038 }
        throw r7;
    L_0x003b:
        r3 = com.miui.gallery.cloud.peopleface.FaceDataManager.getGroupByPeopleName(r12, r14);	 Catch:{ all -> 0x0038 }
        if (r3 == 0) goto L_0x0049;
    L_0x0041:
        r7 = r3.serverId;	 Catch:{ all -> 0x0038 }
        r7 = android.text.TextUtils.isEmpty(r7);	 Catch:{ all -> 0x0038 }
        if (r7 == 0) goto L_0x0093;
    L_0x0049:
        r7 = r13.iterator();	 Catch:{ all -> 0x0038 }
    L_0x004d:
        r9 = r7.hasNext();	 Catch:{ all -> 0x0038 }
        if (r9 == 0) goto L_0x0093;
    L_0x0053:
        r2 = r7.next();	 Catch:{ all -> 0x0038 }
        r2 = (com.miui.gallery.provider.deprecated.NormalPeopleFaceMediaSet) r2;	 Catch:{ all -> 0x0038 }
        r9 = r2.getServerId();	 Catch:{ all -> 0x0038 }
        r9 = android.text.TextUtils.isEmpty(r9);	 Catch:{ all -> 0x0038 }
        if (r9 != 0) goto L_0x004d;
    L_0x0063:
        r5 = r2;
        r7 = 0;
        r5.rename(r12, r14, r7);	 Catch:{ all -> 0x0038 }
        r6 = r5;
    L_0x0069:
        if (r6 != 0) goto L_0x0091;
    L_0x006b:
        r4 = 0;
        if (r3 == 0) goto L_0x0082;
    L_0x006e:
        r5 = new com.miui.gallery.provider.deprecated.NormalPeopleFaceMediaSet;	 Catch:{ all -> 0x008e }
        r7 = r3._id;	 Catch:{ all -> 0x008e }
        r10 = java.lang.Long.parseLong(r7);	 Catch:{ all -> 0x008e }
        r7 = r3.serverId;	 Catch:{ all -> 0x008e }
        r5.<init>(r10, r7, r14);	 Catch:{ all -> 0x008e }
    L_0x007b:
        r13.remove(r5);	 Catch:{ all -> 0x0038 }
        r5.mergeToThis(r13);	 Catch:{ all -> 0x0038 }
        goto L_0x0036;
    L_0x0082:
        r7 = 0;
        r5 = r13.get(r7);	 Catch:{ all -> 0x008e }
        r5 = (com.miui.gallery.provider.deprecated.NormalPeopleFaceMediaSet) r5;	 Catch:{ all -> 0x008e }
        r7 = 0;
        r5.rename(r12, r14, r7);	 Catch:{ all -> 0x0038 }
        goto L_0x007b;
    L_0x008e:
        r7 = move-exception;
        r5 = r6;
        goto L_0x0039;
    L_0x0091:
        r5 = r6;
        goto L_0x007b;
    L_0x0093:
        r6 = r5;
        goto L_0x0069;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.miui.gallery.provider.deprecated.NormalPeopleFaceMediaSet.merge(android.content.Context, java.util.ArrayList, java.lang.String):void");
    }

    private void mergeToThis(ArrayList<NormalPeopleFaceMediaSet> faceSets) {
        String srcIdsSynced = GalleryUtils.concatAll(faceSets, ",", new ConcatConverter<NormalPeopleFaceMediaSet>() {
            public String convertToString(NormalPeopleFaceMediaSet src) {
                String serverId = src.getServerId();
                return (TextUtils.isEmpty(serverId) || TextUtils.equals(serverId, NormalPeopleFaceMediaSet.this.getServerId())) ? "" : "'" + src.getBucketId() + "'";
            }
        });
        String srcIdsNotSynced = GalleryUtils.concatAll(faceSets, ",", new ConcatConverter<NormalPeopleFaceMediaSet>() {
            public String convertToString(NormalPeopleFaceMediaSet src) {
                return TextUtils.isEmpty(src.getServerId()) ? String.valueOf(src.getBucketId()) : "";
            }
        });
        long rowsAffectedSynced = mergeGroups(srcIdsSynced, GalleryUtils.concatAll(faceSets, ",", new ConcatConverter<NormalPeopleFaceMediaSet>() {
            public String convertToString(NormalPeopleFaceMediaSet src) {
                String serverId = src.getServerId();
                return (TextUtils.isEmpty(serverId) || TextUtils.equals(serverId, NormalPeopleFaceMediaSet.this.getServerId())) ? "" : "'" + serverId + "'";
            }
        }), String.valueOf(getBucketId()), getServerId());
        Log.i("PeopleFaceMediaSet", "merge result: rowsAffectedSynced=" + rowsAffectedSynced + ", rowsAffectedNotSynced=" + mergeGroups(srcIdsNotSynced, "", String.valueOf(getBucketId()), getServerId()));
    }

    public boolean rename(Context context, String newName, PeopleContactInfo contact) {
        return rename(context, newName, false, contact);
    }

    public boolean rename(Context context, String newName, boolean needNewNameAlbumMerge2This) {
        return rename(context, newName, needNewNameAlbumMerge2This, null);
    }

    /* JADX WARNING: Missing block: B:21:0x0067, code:
            if (-1 == r8) goto L_0x006e;
     */
    /* JADX WARNING: Missing block: B:22:0x0069, code:
            setName(r16);
     */
    /* JADX WARNING: Missing block: B:42:?, code:
            return true;
     */
    private boolean rename(android.content.Context r15, java.lang.String r16, boolean r17, com.miui.gallery.model.PeopleContactInfo r18) {
        /*
        r14 = this;
        r8 = -1;
        r2 = 0;
        r3 = 0;
        r10 = com.miui.gallery.cloud.peopleface.FaceDataManager.PEOPLE_FACE_URI;
        monitor-enter(r10);
        r12 = r14.getBucketId();	 Catch:{ all -> 0x00ad }
        r0 = r16;
        r2 = com.miui.gallery.cloud.peopleface.FaceDataManager.getGroupByPeopleName(r15, r0, r12);	 Catch:{ all -> 0x00ad }
        r7 = r14.getServerId();	 Catch:{ all -> 0x00ad }
        r7 = android.text.TextUtils.isEmpty(r7);	 Catch:{ all -> 0x00ad }
        if (r7 != 0) goto L_0x003b;
    L_0x001b:
        r7 = r14.getServerId();	 Catch:{ all -> 0x00ad }
        r3 = com.miui.gallery.cloud.peopleface.FaceDataManager.getGroupByServerId(r15, r7);	 Catch:{ all -> 0x00ad }
    L_0x0023:
        if (r2 != 0) goto L_0x004e;
    L_0x0025:
        r0 = r16;
        r1 = r18;
        r8 = r14.renameOldGroup(r3, r0, r1);	 Catch:{ all -> 0x00ad }
        r12 = -1;
        r7 = (r12 > r8 ? 1 : (r12 == r8 ? 0 : -1));
        if (r7 == 0) goto L_0x0038;
    L_0x0033:
        r0 = r16;
        r14.setName(r0);	 Catch:{ all -> 0x00ad }
    L_0x0038:
        r7 = 0;
        monitor-exit(r10);	 Catch:{ all -> 0x00ad }
    L_0x003a:
        return r7;
    L_0x003b:
        r4 = -1;
        if (r2 == 0) goto L_0x0045;
    L_0x003f:
        r7 = r2._id;	 Catch:{ all -> 0x00ad }
        r4 = java.lang.Long.parseLong(r7);	 Catch:{ all -> 0x00ad }
    L_0x0045:
        r7 = r14.getName();	 Catch:{ all -> 0x00ad }
        r3 = com.miui.gallery.cloud.peopleface.FaceDataManager.getGroupByPeopleName(r15, r7, r4);	 Catch:{ all -> 0x00ad }
        goto L_0x0023;
    L_0x004e:
        r7 = r3.serverId;	 Catch:{ all -> 0x00ad }
        r7 = android.text.TextUtils.isEmpty(r7);	 Catch:{ all -> 0x00ad }
        if (r7 == 0) goto L_0x0070;
    L_0x0056:
        r7 = r3._id;	 Catch:{ all -> 0x00ad }
        r11 = r2._id;	 Catch:{ all -> 0x00ad }
        r14.moveFaceFromLocalA2B(r7, r11);	 Catch:{ all -> 0x00ad }
        r7 = r3._id;	 Catch:{ all -> 0x00ad }
        r14.deleteLocalGroups(r7);	 Catch:{ all -> 0x00ad }
    L_0x0062:
        monitor-exit(r10);	 Catch:{ all -> 0x00ad }
        r10 = -1;
        r7 = (r10 > r8 ? 1 : (r10 == r8 ? 0 : -1));
        if (r7 == 0) goto L_0x006e;
    L_0x0069:
        r0 = r16;
        r14.setName(r0);
    L_0x006e:
        r7 = 1;
        goto L_0x003a;
    L_0x0070:
        r7 = r2.serverId;	 Catch:{ all -> 0x00ad }
        r7 = android.text.TextUtils.isEmpty(r7);	 Catch:{ all -> 0x00ad }
        if (r7 == 0) goto L_0x008b;
    L_0x0078:
        r7 = r2._id;	 Catch:{ all -> 0x00ad }
        r11 = r3._id;	 Catch:{ all -> 0x00ad }
        r14.moveFaceFromLocalA2B(r7, r11);	 Catch:{ all -> 0x00ad }
        r7 = r2._id;	 Catch:{ all -> 0x00ad }
        r14.deleteLocalGroups(r7);	 Catch:{ all -> 0x00ad }
        r0 = r16;
        r8 = r14.renameOldGroup(r3, r0);	 Catch:{ all -> 0x00ad }
        goto L_0x0062;
    L_0x008b:
        r7 = r3.serverId;	 Catch:{ all -> 0x00ad }
        r7 = com.miui.gallery.preference.GalleryPreferences.Face.isFaceRecommendGroupHidden(r7);	 Catch:{ all -> 0x00ad }
        if (r7 == 0) goto L_0x00b0;
    L_0x0093:
        r7 = r2.serverId;	 Catch:{ all -> 0x00ad }
        r7 = com.miui.gallery.preference.GalleryPreferences.Face.isFaceRecommendGroupHidden(r7);	 Catch:{ all -> 0x00ad }
        if (r7 == 0) goto L_0x00b0;
    L_0x009b:
        r6 = 1;
    L_0x009c:
        if (r17 == 0) goto L_0x00b2;
    L_0x009e:
        r8 = r14.mergeGroupA2GroupB(r2, r3);	 Catch:{ all -> 0x00ad }
        r7 = r3.serverId;	 Catch:{ all -> 0x00ad }
        com.miui.gallery.preference.GalleryPreferences.Face.setFaceRecommendGroupHidden(r7, r6);	 Catch:{ all -> 0x00ad }
        r0 = r16;
        r14.renameOldGroup(r3, r0);	 Catch:{ all -> 0x00ad }
        goto L_0x0062;
    L_0x00ad:
        r7 = move-exception;
        monitor-exit(r10);	 Catch:{ all -> 0x00ad }
        throw r7;
    L_0x00b0:
        r6 = 0;
        goto L_0x009c;
    L_0x00b2:
        r8 = r14.mergeGroupA2GroupB(r3, r2);	 Catch:{ all -> 0x00ad }
        r7 = r2.serverId;	 Catch:{ all -> 0x00ad }
        com.miui.gallery.preference.GalleryPreferences.Face.setFaceRecommendGroupHidden(r7, r6);	 Catch:{ all -> 0x00ad }
        goto L_0x0062;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.miui.gallery.provider.deprecated.NormalPeopleFaceMediaSet.rename(android.content.Context, java.lang.String, boolean, com.miui.gallery.model.PeopleContactInfo):boolean");
    }

    private long renameOldGroup(PeopleFace oldface, String newName) {
        return renameOldGroup(oldface, newName, null);
    }

    private long renameOldGroup(PeopleFace oldface, String newName, PeopleContactInfo contact) {
        ContentValues values = new ContentValues();
        if (oldface == null) {
            return -1;
        }
        values.put("peopleName", newName);
        if (contact != null) {
            String contactJson = contact.formatContactJson();
            if (!TextUtils.isEmpty(contactJson)) {
                values.put("peopleContactJsonInfo", contactJson);
            }
            if (!TextUtils.isEmpty(contact.relationWithMe)) {
                int relationType = PeopleContactInfo.getRelationType(contact.relationWithMe);
                if (relationType >= 0) {
                    values.put("relationType", Integer.valueOf(relationType));
                }
                if (PeopleContactInfo.isUserDefineRelation(relationType)) {
                    values.put("relationText", contact.relationWithMeText);
                }
            }
        }
        if (oldface.localFlag == 0) {
            values.put("localFlag", Integer.valueOf(10));
        }
        return FaceDataManager.safeUpdateFace(values, "_id = ? ", new String[]{oldface._id});
    }

    private void deleteLocalGroups(String id) {
        ContentValues values = new ContentValues();
        values.put("localFlag", Integer.valueOf(2));
        FaceDataManager.safeUpdateFace(values, "_id = ? ", new String[]{id});
    }

    private void moveFaceFromLocalA2B(String idA, String idB) {
        ContentValues values = new ContentValues();
        values.put("localFlag", Integer.valueOf(5));
        values.put("localGroupId", idB);
        FaceDataManager.safeUpdateFace(values, "localGroupId = ? and localFlag != ? ", new String[]{idA, String.valueOf(2)});
    }

    private long mergeGroupA2GroupB(PeopleFace peopleA, PeopleFace peopleB) {
        return mergeGroups(peopleA._id, TextUtils.isEmpty(peopleA.serverId) ? "" : "'" + peopleA.serverId + "'", peopleB._id, peopleB.serverId);
    }

    private long mergeGroups(String srcIds, String srcServerIds, String dstId, String dstServerId) {
        long rowsAffected;
        ContentValues values = new ContentValues();
        if (TextUtils.isEmpty(srcServerIds)) {
            values.put("localFlag", Integer.valueOf(2));
            rowsAffected = FaceDataManager.safeUpdateFace(values, String.format(Locale.US, "%s in (%s)", new Object[]{"_id", srcIds}), null);
        } else {
            values.put("localFlag", Integer.valueOf(12));
            values.put("localGroupId", dstId);
            values.put("groupId", dstServerId);
            rowsAffected = FaceDataManager.safeUpdateFace(values, String.format(Locale.US, "%s in (%s) and %s != %s and %s != %d", new Object[]{"_id", srcIds, "_id", dstId, "localFlag", Integer.valueOf(2)}), null);
        }
        FaceDataManager.moveChildrenToAnotherGroup(srcIds, srcServerIds, dstId, dstServerId);
        return rowsAffected;
    }

    public void mergeAnAlbumToThis(String peopleServerIdToBeMerged) {
        if (!TextUtils.equals(peopleServerIdToBeMerged, getServerId())) {
            ContentValues values = new ContentValues();
            values.put("localFlag", Integer.valueOf(12));
            values.put("groupId", getServerId());
            FaceDataManager.safeUpdateFace(values, "serverId = ? and localFlag != ? ", new String[]{peopleServerIdToBeMerged, String.valueOf(2)});
            FaceDataManager.changeChildrenOfPeopleA2PeopleB(peopleServerIdToBeMerged, getServerId());
        }
    }

    public String createBabyAlbumAndAddItems(String albumName, BabyInfo babyInfo, Activity activity) {
        if (CloudUtils.getGroupByFileName(activity, albumName) != null) {
            albumName = albumName + activity.getString(R.string.baby_suffix);
            ToastUtils.makeTextLong((Context) activity, activity.getString(R.string.same_name_album_exist_and_toast, new Object[]{albumName}));
        }
        String localId = CreateGroupItem.localCreateBabyGroup(GalleryApp.sGetAndroidContext(), albumName);
        CopyFaceAlbumItemsToBabyAlbumTask.instance(activity, getAllImagesData(), new SendToCloudFolderItem(0, localId, false, albumName, babyInfo), 0, R.string.creating_baby_album).execute(new Void[0]);
        return localId;
    }

    public Cursor getAllImagesData() {
        return FaceManager.queryAllImagesOfOnePerson(getServerId());
    }

    public static void doMoveFacesToAnother(FaceFolderItem toFolderItem, long[] paths) {
        if (toFolderItem instanceof FaceNewFolerItem) {
            initialFaceNewFolerItem(toFolderItem);
        }
        if (toFolderItem == null) {
            ignoreFaces(paths);
            return;
        }
        long peopleLocalId = -1;
        try {
            peopleLocalId = Long.parseLong(toFolderItem.getId());
        } catch (NumberFormatException e) {
        }
        if (peopleLocalId != -1) {
            move2AnohterAlbum(paths, peopleLocalId);
        }
    }

    private static void initialFaceNewFolerItem(Object data) {
        FaceNewFolerItem folderItem = (FaceNewFolerItem) data;
        if (!folderItem.isCreatedInDb()) {
            PeopleFace newface = FaceDataManager.getGroupByPeopleName(GalleryApp.sGetAndroidContext(), folderItem.getName());
            if (newface != null) {
                ContentValues values = new ContentValues();
                String[] selectionArgs = new String[]{newface._id};
                values.put("visibilityType", Integer.valueOf(1));
                FaceDataManager.safeUpdateFace(values, "_id = ? ", selectionArgs);
                folderItem.setId(newface._id);
            } else {
                folderItem.setId(String.valueOf(FaceDataManager.insertOneGroupWithName2DB(folderItem.getName(), folderItem.getContactjson())));
            }
            folderItem.setCreatedInDb();
        }
    }

    public static void move2AnohterAlbum(long[] ids, long peopleLocalId) {
        if (!TextUtils.isEmpty(formatSelectionIn(ids))) {
            ContentValues values = new ContentValues();
            values.put("localFlag", Integer.valueOf(5));
            values.put("groupId", "");
            values.put("localGroupId", Long.valueOf(peopleLocalId));
            FaceDataManager.safeUpdateFace(values, String.format(Locale.US, "%s IN (%s)", new Object[]{"_id", faceIds}), null);
        }
    }

    public static void ignoreFaces(long[] ids) {
        if (!TextUtils.isEmpty(formatSelectionIn(ids))) {
            ContentValues values = new ContentValues();
            values.put("localFlag", Integer.valueOf(2));
            FaceDataManager.safeUpdateFace(values, String.format(Locale.US, "%s IN (%s)", new Object[]{"_id", faceIds}), null);
        }
    }

    private static String formatSelectionIn(long[] ids) {
        StringBuffer sb = new StringBuffer();
        int len = ids.length;
        for (int i = 0; i < len; i++) {
            sb.append(ids[i]);
            if (i < len - 1) {
                sb.append(',');
            }
        }
        return sb.toString();
    }

    /* JADX WARNING: Removed duplicated region for block: B:45:0x00c9  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x007b A:{Catch:{ Exception -> 0x00bb }} */
    public static boolean moveFaceToMyselfGroup(android.content.Context r15, long r16) {
        /*
        r0 = com.miui.gallery.model.PeopleContactInfo.Relation.myself;
        r0 = r0.getRelationType();
        r12 = com.miui.gallery.provider.FaceManager.queryPeopleIdOfRelation(r15, r0);
        if (r12 == 0) goto L_0x0092;
    L_0x000c:
        r0 = java.lang.Long.valueOf(r16);
        r0 = r12.contains(r0);
        if (r0 == 0) goto L_0x0092;
    L_0x0016:
        r0 = java.lang.Long.valueOf(r16);
        r12.remove(r0);
    L_0x001d:
        if (r12 == 0) goto L_0x0032;
    L_0x001f:
        r0 = r12.isEmpty();
        if (r0 != 0) goto L_0x0032;
    L_0x0025:
        r0 = com.miui.gallery.model.PeopleContactInfo.Relation.unknown;
        r14 = com.miui.gallery.model.PeopleContactInfo.getRelationValue(r0);
        r0 = com.miui.gallery.util.MiscUtil.listToArray(r12);
        doMoveToRelation(r0, r14, r14);
    L_0x0032:
        r13 = 0;
        r9 = 0;
        r7 = com.miui.gallery.model.PeopleContactInfo.getDefaultNameForMyself(r15);	 Catch:{ Exception -> 0x00bb }
        r6 = 0;
        r0 = r15.getContentResolver();	 Catch:{ Exception -> 0x00af }
        r1 = com.miui.gallery.provider.GalleryContract.PeopleFace.PERSONS_URI;	 Catch:{ Exception -> 0x00af }
        r2 = com.miui.gallery.util.face.PeopleCursorHelper.PROJECTION;	 Catch:{ Exception -> 0x00af }
        r3 = 0;
        r4 = 0;
        r5 = 0;
        r6 = r0.query(r1, r2, r3, r4, r5);	 Catch:{ Exception -> 0x00af }
        if (r6 == 0) goto L_0x006a;
    L_0x004a:
        r0 = r6.moveToFirst();	 Catch:{ Exception -> 0x00af }
        if (r0 == 0) goto L_0x006a;
    L_0x0050:
        r0 = com.miui.gallery.util.face.PeopleCursorHelper.getPeopleLocalId(r6);	 Catch:{ Exception -> 0x00af }
        r0 = java.lang.Long.valueOf(r0);	 Catch:{ Exception -> 0x00af }
        r0 = r0.longValue();	 Catch:{ Exception -> 0x00af }
        r0 = (r0 > r16 ? 1 : (r0 == r16 ? 0 : -1));
        if (r0 != 0) goto L_0x00a3;
    L_0x0060:
        r13 = com.miui.gallery.util.face.PeopleCursorHelper.getPeopleName(r6);	 Catch:{ Exception -> 0x00af }
    L_0x0064:
        r0 = r6.moveToNext();	 Catch:{ Exception -> 0x00af }
        if (r0 != 0) goto L_0x0050;
    L_0x006a:
        com.miui.gallery.util.MiscUtil.closeSilently(r6);	 Catch:{ Exception -> 0x00bb }
    L_0x006d:
        r11 = new java.util.HashMap;	 Catch:{ Exception -> 0x00bb }
        r0 = 2;
        r11.<init>(r0);	 Catch:{ Exception -> 0x00bb }
        r1 = "PeopleOriginName";
        r0 = android.text.TextUtils.isEmpty(r13);	 Catch:{ Exception -> 0x00bb }
        if (r0 == 0) goto L_0x00c9;
    L_0x007b:
        r0 = "NoName";
    L_0x007d:
        r11.put(r1, r0);	 Catch:{ Exception -> 0x00bb }
        r0 = "MarkOtherPeopleWhenExistMe";
        r1 = java.lang.String.valueOf(r9);	 Catch:{ Exception -> 0x00bb }
        r11.put(r0, r1);	 Catch:{ Exception -> 0x00bb }
        r0 = "people_mark";
        r1 = "mark_people_to_myself";
        com.miui.gallery.util.GallerySamplingStatHelper.recordCountEvent(r0, r1, r11);	 Catch:{ Exception -> 0x00bb }
    L_0x0090:
        r0 = 1;
        return r0;
    L_0x0092:
        r0 = com.miui.gallery.model.PeopleContactInfo.Relation.myself;
        r10 = com.miui.gallery.model.PeopleContactInfo.getRelationValue(r0);
        r0 = 1;
        r0 = new long[r0];
        r1 = 0;
        r0[r1] = r16;
        doMoveToRelation(r0, r10, r10);
        goto L_0x001d;
    L_0x00a3:
        r0 = com.miui.gallery.util.face.PeopleCursorHelper.getPeopleName(r6);	 Catch:{ Exception -> 0x00af }
        r0 = r7.equalsIgnoreCase(r0);	 Catch:{ Exception -> 0x00af }
        if (r0 == 0) goto L_0x0064;
    L_0x00ad:
        r9 = 1;
        goto L_0x0064;
    L_0x00af:
        r8 = move-exception;
        r0 = "PeopleFaceMediaSet";
        r1 = "Failed to get people when moving face to myself group";
        android.util.Log.e(r0, r1);	 Catch:{ all -> 0x00c4 }
        com.miui.gallery.util.MiscUtil.closeSilently(r6);	 Catch:{ Exception -> 0x00bb }
        goto L_0x006d;
    L_0x00bb:
        r8 = move-exception;
        r0 = "PeopleFaceMediaSet";
        r1 = "Error occurred when log event";
        android.util.Log.e(r0, r1);
        goto L_0x0090;
    L_0x00c4:
        r0 = move-exception;
        com.miui.gallery.util.MiscUtil.closeSilently(r6);	 Catch:{ Exception -> 0x00bb }
        throw r0;	 Catch:{ Exception -> 0x00bb }
    L_0x00c9:
        r0 = r13;
        goto L_0x007d;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.miui.gallery.provider.deprecated.NormalPeopleFaceMediaSet.moveFaceToMyselfGroup(android.content.Context, long):boolean");
    }

    public static boolean moveFaceToRelationGroup(long[] selectIds, String relation, String relationText) {
        if (PeopleContactInfo.getRelationType(relation) != Relation.myself.getRelationType()) {
            return doMoveToRelation(selectIds, relation, relationText);
        }
        if (selectIds.length <= 1) {
            return moveFaceToMyselfGroup(GalleryApp.sGetAndroidContext(), selectIds[0]);
        }
        Log.e("PeopleFaceMediaSet", "Moving more than one person to 'myself' is not allowed!");
        return false;
    }

    private static boolean doMoveToRelation(long[] selectIds, String relation, String relationText) {
        Map<String, String> params;
        ArrayList<ContentProviderOperation> operations = new ArrayList();
        for (long id : selectIds) {
            PeopleContactInfo contactTemp = FaceManager.queryContactInfoOfOnePerson(id);
            if (contactTemp == null) {
                contactTemp = new PeopleContactInfo();
            } else if (PeopleContactInfo.getRelationValue(Relation.myself).equals(contactTemp.relationWithMe)) {
                params = new HashMap(1);
                params.put("MoveToRelation", relation);
                params.put("MoveToRelationText", relationText);
                GalleryStatHelper.recordCountEvent("people_mark", "move_people_from_myself", params);
            }
            contactTemp.relationWithMe = relation;
            contactTemp.relationWithMeText = relationText;
            ContentValues values = new ContentValues();
            String contactJson = contactTemp.formatContactJson();
            if (!TextUtils.isEmpty(contactJson)) {
                values.put("peopleContactJsonInfo", contactJson);
            }
            int relationType = PeopleContactInfo.getRelationType(contactTemp.relationWithMe);
            if (PeopleContactInfo.isUserDefineRelation(relationType)) {
                values.put("relationText", relationText);
            }
            values.put("relationType", Integer.valueOf(relationType));
            values.put("localFlag", Integer.valueOf(10));
            operations.add(ContentProviderOperation.newUpdate(FaceDataManager.PEOPLE_FACE_URI).withValues(values).withSelection("_id = ? ", new String[]{String.valueOf(id)}).build());
        }
        if (!operations.isEmpty()) {
            try {
                GalleryApp.sGetAndroidContext().getContentResolver().applyBatch("com.miui.gallery.cloud.provider", operations);
            } catch (RemoteException e) {
                e.printStackTrace();
            } catch (OperationApplicationException e2) {
                e2.printStackTrace();
            }
        }
        params = new HashMap();
        params.put("relation", relation);
        GallerySamplingStatHelper.recordCountEvent("people", "people_set_relation", params);
        return true;
    }

    public static ArrayList<PeopleFace> getBrothers(String photoServerId) {
        long startGetBrothers = System.currentTimeMillis();
        StringBuffer sb = new StringBuffer();
        Cursor cursor = FaceDataManager.safeQueryFace2ImageByServerId(photoServerId);
        if (cursor == null || cursor.getCount() == 0) {
            closeCursor(cursor);
            return null;
        }
        while (cursor.moveToNext()) {
            FaceDataManager.appendId(sb, cursor.getString(1));
        }
        closeCursor(cursor);
        ArrayList<PeopleFace> brotherPeoples = new ArrayList();
        cursor = FaceDataManager.getFaceInFaceIds(sb.toString(), "");
        if (cursor == null || cursor.getCount() <= 0) {
            closeCursor(cursor);
        } else {
            brotherPeoples = new ArrayList();
            while (cursor.moveToNext()) {
                brotherPeoples.add(new PeopleFace(cursor));
            }
            closeCursor(cursor);
            brotherPeoples = FaceDataManager.fillInPeopleInfo(new LinkedList(brotherPeoples));
        }
        Log.i("PeopleFaceMediaSet", "get brothers cost:" + (System.currentTimeMillis() - startGetBrothers));
        return brotherPeoples;
    }

    private static void closeCursor(Cursor cursor) {
        MiscUtil.closeSilently(cursor);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        dest.writeLong(this.mId);
        dest.writeString(this.mServerId);
        dest.writeString(this.mName);
    }
}
