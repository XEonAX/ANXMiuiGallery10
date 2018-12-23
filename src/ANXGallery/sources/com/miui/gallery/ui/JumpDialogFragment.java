package com.miui.gallery.ui;

import android.app.Activity;
import android.app.Dialog;
import android.app.Fragment;
import android.app.LoaderManager.LoaderCallbacks;
import android.content.Context;
import android.content.CursorLoader;
import android.content.Intent;
import android.content.Loader;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.WindowManager.LayoutParams;
import com.miui.account.AccountHelper;
import com.miui.gallery.R;
import com.miui.gallery.activity.facebaby.BabyAlbumDetailActivity;
import com.miui.gallery.provider.GalleryContract.Album;
import com.miui.gallery.provider.GalleryContract.PeopleFace;
import com.miui.gallery.provider.GalleryContract.RecentAlbum;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.util.AlbumsCursorHelper;
import com.miui.gallery.util.GalleryIntent.CloudGuideSource;
import com.miui.gallery.util.IntentUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.ShareAlbumsCursorHelper;
import com.miui.gallery.util.ToastUtils;
import com.miui.gallery.widget.GalleryDialogFragment;
import miui.app.ProgressDialog;

public class JumpDialogFragment extends GalleryDialogFragment {
    private Runnable mDelayVisibleRunnable = new Runnable() {
        public void run() {
            if (JumpDialogFragment.this.getActivity() != null) {
                JumpDialogFragment.this.setDialogAlpha(JumpDialogFragment.this.getDialog(), 1.0f);
            }
        }
    };
    private HandleIntentCallback mHandleIntentCallback = new HandleIntentCallback() {
        public void onHandleIntent(final Intent intent) {
            ThreadManager.getMainHandler().post(new Runnable() {
                public void run() {
                    if (JumpDialogFragment.this.getActivity() != null) {
                        if (intent != null) {
                            JumpDialogFragment.this.startActivity(intent);
                        }
                        JumpDialogFragment.this.dismissAllowingStateLoss();
                    }
                }
            });
        }

        public void onJumpFailed(Context context, final String errorMsg) {
            ThreadManager.getMainHandler().post(new Runnable() {
                public void run() {
                    if (JumpDialogFragment.this.getActivity() != null) {
                        if (!TextUtils.isEmpty(errorMsg)) {
                            ToastUtils.makeText(JumpDialogFragment.this.getActivity(), errorMsg);
                        }
                        JumpDialogFragment.this.dismissAllowingStateLoss();
                    }
                }
            });
        }
    };

    private interface HandleIntentCallback {
        void onHandleIntent(Intent intent);

        void onJumpFailed(Context context, String str);
    }

    private class AlbumJumpHelper implements LoaderCallbacks {
        private Cursor mAlbumCursor;
        private AlbumsCursorHelper mAlbumsCursorHelper;
        private Fragment mFragment;
        private HandleIntentCallback mHandleIntentCallback;
        private Cursor mShareAlbumCursor;
        private ShareAlbumsCursorHelper mShareAlbumsCursorHelper;
        private Uri mUri;

        public AlbumJumpHelper(Fragment fragment) {
            this.mFragment = fragment;
        }

        public void startLoading(HandleIntentCallback callback, Uri uri) {
            this.mUri = uri;
            String albumServerId = this.mUri.getQueryParameter("serverId");
            String albumIdString = this.mUri.getQueryParameter("id");
            long albumId = !TextUtils.isEmpty(albumIdString) ? Long.valueOf(albumIdString).longValue() : -1;
            if (albumId >= 0 || !TextUtils.isEmpty(albumServerId)) {
                Intent intent = getShortCutIntent(albumId);
                if (intent != null) {
                    callback.onHandleIntent(intent);
                    return;
                }
                this.mHandleIntentCallback = callback;
                Bundle bundle = new Bundle();
                bundle.putString("serverId", albumServerId);
                bundle.putLong("id", albumId);
                this.mFragment.getLoaderManager().initLoader(1, bundle, this);
                return;
            }
            callback.onJumpFailed(this.mFragment.getActivity(), this.mFragment.getString(R.string.album_jump_failed));
        }

        public Loader onCreateLoader(int id, Bundle args) {
            CursorLoader loader = new CursorLoader(this.mFragment.getActivity());
            switch (id) {
                case 1:
                    String selection;
                    loader.setUri(Album.URI_ALL_EXCEPT_DELETED);
                    loader.setProjection(AlbumsCursorHelper.ALL_ALBUMS_PROJECTION);
                    if (args.getLong("id", -1) >= 0) {
                        selection = String.format("%s=%s", new Object[]{"_id", Long.valueOf(args.getLong("id"))});
                    } else {
                        selection = String.format("%s='%s'", new Object[]{"serverId", args.getString("serverId")});
                    }
                    loader.setSelection(selection);
                    break;
                case 2:
                    loader.setUri(Album.URI_SHARE_ALL);
                    loader.setProjection(ShareAlbumsCursorHelper.SHARED_ALBUM_PROJECTION);
                    loader.setSelection(String.format("%s>0 AND %s=%s", new Object[]{"count", "_id", Long.valueOf(args.getLong("id"))}));
                    break;
            }
            return loader;
        }

        public void onLoadFinished(Loader loader, Object data) {
            switch (loader.getId()) {
                case 1:
                    this.mAlbumCursor = (Cursor) data;
                    this.mAlbumsCursorHelper = new AlbumsCursorHelper(this.mFragment.getActivity());
                    this.mAlbumsCursorHelper.setAlbumsData(this.mAlbumCursor);
                    if (this.mAlbumCursor.moveToFirst()) {
                        Bundle bundle = new Bundle();
                        bundle.putLong("id", this.mAlbumsCursorHelper.getAlbumId(0));
                        this.mFragment.getLoaderManager().initLoader(2, bundle, this);
                        return;
                    }
                    this.mHandleIntentCallback.onJumpFailed(this.mFragment.getActivity(), this.mFragment.getString(R.string.album_jump_failed));
                    return;
                case 2:
                    this.mShareAlbumCursor = (Cursor) data;
                    this.mShareAlbumsCursorHelper = new ShareAlbumsCursorHelper();
                    this.mShareAlbumsCursorHelper.setSharedAlbums(this.mShareAlbumCursor);
                    Intent intent = createJumpIntent();
                    if (intent != null) {
                        this.mHandleIntentCallback.onHandleIntent(intent);
                        return;
                    } else {
                        this.mHandleIntentCallback.onJumpFailed(this.mFragment.getActivity(), this.mFragment.getString(R.string.album_jump_failed));
                        return;
                    }
                default:
                    return;
            }
        }

        public void onLoaderReset(Loader loader) {
            switch (loader.getId()) {
                case 1:
                    this.mAlbumsCursorHelper = null;
                    if (this.mAlbumCursor != null) {
                        this.mAlbumCursor.close();
                        return;
                    }
                    return;
                case 2:
                    this.mShareAlbumsCursorHelper = null;
                    if (this.mShareAlbumCursor != null) {
                        this.mShareAlbumCursor.close();
                        return;
                    }
                    return;
                default:
                    return;
            }
        }

        private Intent createJumpIntent() {
            if (this.mAlbumCursor.getCount() <= 0) {
                return null;
            }
            long albumId = this.mAlbumsCursorHelper.getAlbumId(0);
            Intent intent = getShortCutIntent(albumId);
            if (intent != null) {
                return intent;
            }
            long attributes = this.mAlbumsCursorHelper.getAttributes(albumId);
            String serverId = this.mAlbumsCursorHelper.getServerId(albumId);
            String albumName = this.mAlbumsCursorHelper.getAlbumName(albumId);
            String albumLocalPath = this.mAlbumsCursorHelper.getAlbumLocalPath(Long.valueOf(albumId));
            if (this.mAlbumsCursorHelper.isBabyAlbum(albumId)) {
                intent = new Intent(this.mFragment.getActivity(), BabyAlbumDetailActivity.class);
                intent.putExtra("people_id", this.mAlbumsCursorHelper.getBabyAlbumPeopleId(albumId));
                intent.putExtra("baby_info", this.mAlbumsCursorHelper.getBabyInfo(albumId));
                intent.putExtra("thumbnail_info_of_baby", this.mAlbumsCursorHelper.getThumbnailInfoOfBaby(albumId));
                intent.putExtra("baby_sharer_info", this.mAlbumsCursorHelper.getBabySharerInfo(albumId));
            } else {
                intent = new Intent("com.miui.gallery.action.VIEW_ALBUM_DETAIL");
            }
            boolean isScreenshotAlbum = String.valueOf(2).equals(serverId);
            boolean isOtherShareAlbum = this.mAlbumsCursorHelper.isOtherShareAlbum(albumId);
            boolean isOwnerShareAlbum = this.mShareAlbumsCursorHelper.isOwnerShareAlbum(albumId);
            boolean isLocalAlbum = this.mAlbumsCursorHelper.isLocalAlbum(albumId);
            intent.putExtra("other_share_album", isOtherShareAlbum);
            intent.putExtra("owner_share_album", isOwnerShareAlbum);
            intent.putExtra("is_local_album", isLocalAlbum);
            intent.putExtra("screenshot_album", isScreenshotAlbum);
            intent.putExtra("pano_album", AlbumsCursorHelper.isPanoAlbum(albumId));
            intent.putExtra("album_id", albumId);
            intent.putExtra("album_name", albumName);
            intent.putExtra("album_unwriteable", this.mAlbumsCursorHelper.albumUnwriteable(albumId));
            if (isScreenshotAlbum) {
                String appName = this.mUri.getQueryParameter("screenshotAppName");
                if (!TextUtils.isEmpty(appName)) {
                    intent.putExtra("screenshot_app_name", appName);
                    intent.putExtra("album_name", appName);
                    intent.putExtra("album_unwriteable", true);
                }
            }
            intent.putExtra("album_server_id", serverId);
            intent.putExtra("attributes", attributes);
            intent.putExtra("album_local_path", albumLocalPath);
            return intent;
        }

        private Intent getShortCutIntent(long albumId) {
            if (AlbumsCursorHelper.isFaceAlbum(albumId)) {
                return new Intent("com.miui.gallery.action.VIEW_PEOPLE");
            }
            if (!AlbumsCursorHelper.isRecentAlbum(albumId)) {
                return null;
            }
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(RecentAlbum.VIEW_PAGE_URI.buildUpon().appendQueryParameter("source", "album_page").build());
            intent.setPackage(this.mFragment.getActivity().getPackageName());
            return intent;
        }
    }

    private class PeopleJumpHelper implements LoaderCallbacks {
        public final String[] PROJECTION = new String[]{"_id", "peopleName", "relationType", "microthumbfile", "thumbnailFile", "localFile", "faceXScale", "faceYScale", "faceWScale", "faceHScale", "serverId"};
        private Fragment mFragment;
        private HandleIntentCallback mHandleIntentCallback;

        public PeopleJumpHelper(Fragment fragment) {
            this.mFragment = fragment;
        }

        public void startLoading(HandleIntentCallback callback, String peopleServerId) {
            this.mHandleIntentCallback = callback;
            Bundle bundle = new Bundle();
            bundle.putString("serverId", peopleServerId);
            this.mFragment.getLoaderManager().initLoader(1, bundle, this);
        }

        public Loader onCreateLoader(int id, Bundle args) {
            CursorLoader loader = new CursorLoader(this.mFragment.getActivity());
            loader.setUri(PeopleFace.PEOPLE_COVER_URI.buildUpon().appendQueryParameter("serverId", args.getString("serverId")).build());
            loader.setProjection(this.PROJECTION);
            return loader;
        }

        /* JADX WARNING: Removed duplicated region for block: B:23:0x00c0  */
        /* JADX WARNING: Removed duplicated region for block: B:20:0x00b3  */
        /* JADX WARNING: Removed duplicated region for block: B:20:0x00b3  */
        /* JADX WARNING: Removed duplicated region for block: B:23:0x00c0  */
        public void onLoadFinished(android.content.Loader r18, java.lang.Object r19) {
            /*
            r17 = this;
            r4 = 0;
            if (r19 == 0) goto L_0x00b1;
        L_0x0003:
            r2 = r19;
            r2 = (android.database.Cursor) r2;
            r10 = r2.moveToFirst();	 Catch:{ Exception -> 0x00bb }
            if (r10 == 0) goto L_0x00b1;
        L_0x000d:
            r1 = new android.os.Bundle;	 Catch:{ Exception -> 0x00bb }
            r1.<init>();	 Catch:{ Exception -> 0x00bb }
            r10 = 10;
            r6 = r2.getString(r10);	 Catch:{ Exception -> 0x00bb }
            r10 = 0;
            r7 = r2.getString(r10);	 Catch:{ Exception -> 0x00bb }
            r10 = "server_id_of_album";
            r1.putString(r10, r6);	 Catch:{ Exception -> 0x00bb }
            r10 = "local_id_of_album";
            r1.putString(r10, r7);	 Catch:{ Exception -> 0x00bb }
            r10 = 1;
            r8 = r2.getString(r10);	 Catch:{ Exception -> 0x00bb }
            r10 = android.text.TextUtils.isEmpty(r8);	 Catch:{ Exception -> 0x00bb }
            if (r10 == 0) goto L_0x003d;
        L_0x0032:
            r0 = r17;
            r10 = r0.mFragment;	 Catch:{ Exception -> 0x00bb }
            r11 = 2131624735; // 0x7f0e031f float:1.8876658E38 double:1.0531625514E-314;
            r8 = r10.getString(r11);	 Catch:{ Exception -> 0x00bb }
        L_0x003d:
            r10 = "album_name";
            r1.putString(r10, r8);	 Catch:{ Exception -> 0x00bb }
            r10 = "relationType";
            r11 = 2;
            r11 = r2.getInt(r11);	 Catch:{ Exception -> 0x00bb }
            r1.putInt(r10, r11);	 Catch:{ Exception -> 0x00bb }
            r10 = 4;
            r9 = r2.getString(r10);	 Catch:{ Exception -> 0x00bb }
            r10 = android.text.TextUtils.isEmpty(r9);	 Catch:{ Exception -> 0x00bb }
            if (r10 == 0) goto L_0x005c;
        L_0x0057:
            r10 = 3;
            r9 = r2.getString(r10);	 Catch:{ Exception -> 0x00bb }
        L_0x005c:
            r10 = android.text.TextUtils.isEmpty(r9);	 Catch:{ Exception -> 0x00bb }
            if (r10 == 0) goto L_0x0067;
        L_0x0062:
            r10 = 5;
            r9 = r2.getString(r10);	 Catch:{ Exception -> 0x00bb }
        L_0x0067:
            r10 = "face_album_cover";
            r1.putString(r10, r9);	 Catch:{ Exception -> 0x00bb }
            r10 = "face_position_rect";
            r11 = new android.graphics.RectF;	 Catch:{ Exception -> 0x00bb }
            r12 = 6;
            r12 = r2.getFloat(r12);	 Catch:{ Exception -> 0x00bb }
            r13 = 7;
            r13 = r2.getFloat(r13);	 Catch:{ Exception -> 0x00bb }
            r14 = 6;
            r14 = r2.getFloat(r14);	 Catch:{ Exception -> 0x00bb }
            r15 = 8;
            r15 = r2.getFloat(r15);	 Catch:{ Exception -> 0x00bb }
            r14 = r14 + r15;
            r15 = 7;
            r15 = r2.getFloat(r15);	 Catch:{ Exception -> 0x00bb }
            r16 = 9;
            r0 = r16;
            r16 = r2.getFloat(r0);	 Catch:{ Exception -> 0x00bb }
            r15 = r15 + r16;
            r11.<init>(r12, r13, r14, r15);	 Catch:{ Exception -> 0x00bb }
            r1.putParcelable(r10, r11);	 Catch:{ Exception -> 0x00bb }
            r5 = new android.content.Intent;	 Catch:{ Exception -> 0x00bb }
            r5.<init>();	 Catch:{ Exception -> 0x00bb }
            r5.putExtras(r1);	 Catch:{ Exception -> 0x00db }
            r0 = r17;
            r10 = r0.mFragment;	 Catch:{ Exception -> 0x00db }
            r10 = r10.getActivity();	 Catch:{ Exception -> 0x00db }
            r11 = com.miui.gallery.activity.facebaby.FacePageActivity.class;
            r5.setClass(r10, r11);	 Catch:{ Exception -> 0x00db }
            r4 = r5;
        L_0x00b1:
            if (r4 == 0) goto L_0x00c0;
        L_0x00b3:
            r0 = r17;
            r10 = r0.mHandleIntentCallback;
            r10.onHandleIntent(r4);
        L_0x00ba:
            return;
        L_0x00bb:
            r3 = move-exception;
        L_0x00bc:
            r2.close();
            goto L_0x00b1;
        L_0x00c0:
            r0 = r17;
            r10 = r0.mHandleIntentCallback;
            r0 = r17;
            r11 = r0.mFragment;
            r11 = r11.getActivity();
            r0 = r17;
            r12 = r0.mFragment;
            r13 = 2131624731; // 0x7f0e031b float:1.887665E38 double:1.0531625494E-314;
            r12 = r12.getString(r13);
            r10.onJumpFailed(r11, r12);
            goto L_0x00ba;
        L_0x00db:
            r3 = move-exception;
            r4 = r5;
            goto L_0x00bc;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.miui.gallery.ui.JumpDialogFragment.PeopleJumpHelper.onLoadFinished(android.content.Loader, java.lang.Object):void");
        }

        public void onLoaderReset(Loader loader) {
        }
    }

    public static void showAlbumPage(Activity activity, Uri uri) {
        JumpDialogFragment dialog = new JumpDialogFragment();
        Bundle data = new Bundle();
        data.putParcelable("uri", uri);
        data.putInt("pageType", 0);
        dialog.setArguments(data);
        dialog.showAllowingStateLoss(activity.getFragmentManager(), "JumpDialogFragment");
    }

    public static void showPeoplePage(Activity activity, String peopleServerId) {
        JumpDialogFragment dialog = new JumpDialogFragment();
        Bundle data = new Bundle();
        data.putString("serverId", peopleServerId);
        data.putInt("pageType", 1);
        dialog.setArguments(data);
        dialog.showAllowingStateLoss(activity.getFragmentManager(), "JumpDialogFragment");
    }

    public static void enterPrivateAlbum(Activity activity) {
        JumpDialogFragment dialog = new JumpDialogFragment();
        Bundle data = new Bundle();
        data.putInt("pageType", 2);
        dialog.setArguments(data);
        dialog.showAllowingStateLoss(activity.getFragmentManager(), "JumpDialogFragment");
    }

    public Dialog onCreateDialog(Bundle savedInstanceState) {
        Dialog dialog = ProgressDialog.show(getActivity(), "", getActivity().getString(R.string.loading_dots), true, false);
        setDialogAlpha(dialog, 0.0f);
        setCancelable(false);
        return dialog;
    }

    public void onStart() {
        super.onStart();
        ThreadManager.getMainHandler().postDelayed(this.mDelayVisibleRunnable, (long) getResources().getInteger(17694722));
    }

    public void onStop() {
        super.onStop();
        ThreadManager.getMainHandler().removeCallbacks(this.mDelayVisibleRunnable);
    }

    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        int pageType = getArguments().getInt("pageType", -1);
        switch (pageType) {
            case 0:
                Log.d("JumpDialogFragment", "Jump to album page, album serverId = %s", getArguments().getString("serverId"));
                new AlbumJumpHelper(this).startLoading(this.mHandleIntentCallback, (Uri) getArguments().getParcelable("uri"));
                return;
            case 1:
                Log.d("JumpDialogFragment", "Jump to people page, people serverId = %s", getArguments().getString("serverId"));
                new PeopleJumpHelper(this).startLoading(this.mHandleIntentCallback, getArguments().getString("serverId"));
                return;
            case 2:
                Log.d("JumpDialogFragment", "Jump secret album");
                Bundle bundle = new Bundle();
                bundle.putSerializable("cloud_guide_source", CloudGuideSource.SECRET);
                LoginAndSyncCheckFragment.checkLoginAndSyncState(this, bundle);
                return;
            default:
                Log.e("JumpDialogFragment", "Invalid page type %d", Integer.valueOf(pageType));
                dismiss();
                return;
        }
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (resultCode == -1) {
            switch (requestCode) {
                case 29:
                    if (AccountHelper.getXiaomiAccount(getActivity()) != null) {
                        AuthenticatePrivacyPasswordFragment.startAuthenticatePrivacyPassword(this);
                        break;
                    }
                    break;
                case 36:
                    IntentUtil.enterPrivateAlbum(getActivity());
                    this.mHandleIntentCallback.onHandleIntent(null);
                    break;
            }
        }
        this.mHandleIntentCallback.onHandleIntent(null);
        super.onActivityResult(requestCode, resultCode, data);
    }

    private void setDialogAlpha(Dialog dialog, float alpha) {
        if (dialog != null && dialog.getWindow() != null) {
            LayoutParams lp = dialog.getWindow().getAttributes();
            lp.alpha = alpha;
            dialog.getWindow().setAttributes(lp);
        }
    }
}
