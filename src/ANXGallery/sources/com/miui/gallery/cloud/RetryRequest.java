package com.miui.gallery.cloud;

import android.accounts.Account;
import android.content.Context;
import com.miui.gallery.cloud.CheckResult.GallerySyncResult;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.deviceprovider.UploadStatusController;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class RetryRequest {
    public static int tryAGroupItems(Account account, GalleryExtendedAuthToken extToken, ArrayList<? extends RequestItemBase> group, Operation operation) throws Exception {
        long[] retryAfter = new long[1];
        int result = 0;
        for (int i = 0; i < 3 && !group.isEmpty(); i++) {
            retryAfter[0] = 0;
            result = tryAGroupOnce(account, extToken, group, operation, retryAfter);
            if (result != 0) {
                break;
            }
            if (retryAfter[0] > 0) {
                Thread.sleep(retryAfter[0] * 1000);
            }
        }
        if (result != 0) {
            return result;
        }
        if (group.isEmpty()) {
            return 0;
        }
        Log.w("RetryRequest", "remain count=" + group.size());
        setAllStatus(group.iterator(), 1);
        return 3;
    }

    private static int tryAGroupOnce(Account account, GalleryExtendedAuthToken extToken, ArrayList<? extends RequestItemBase> group, Operation operation, long[] retryAfter) throws Exception {
        RequestItemBase retryItem = null;
        Iterator<? extends RequestItemBase> iter = group.iterator();
        while (true) {
            if (retryItem == null && !iter.hasNext()) {
                return 0;
            }
            RequestItemBase item;
            if (retryItem != null) {
                item = retryItem;
            } else {
                item = (RequestItemBase) iter.next();
            }
            retryItem = null;
            if (item.getStatus() != 0) {
                iter.remove();
                Log.d("RetryRequest", item + " is canceled, status=" + item.getStatus());
            } else {
                int checkState = operation.checkState(item);
                switch (checkState) {
                    case 2:
                    case 3:
                        item.compareAndSetStatus(0, 1);
                        setAllStatus(iter, 1);
                        return checkState;
                    default:
                        GallerySyncResult result = GallerySyncResult.Ok;
                        try {
                            UploadStatusController.getInstance().start(item);
                            switch (operation.execute(account, extToken, null, item)) {
                                case NeedReRequest:
                                    if (item.kssRetryTimes < 3) {
                                        retryItem = item;
                                        break;
                                    }
                                    item.compareAndSetStatus(0, 1);
                                    setAllStatus(iter, 1);
                                    UploadStatusController.getInstance().end(item);
                                    return 5;
                                case Ok:
                                    iter.remove();
                                    item.compareAndSetStatus(0, 2);
                                    break;
                                case NotRetryError:
                                    iter.remove();
                                    item.compareAndSetStatus(0, 3);
                                    break;
                                case NotContinueError:
                                    item.compareAndSetStatus(0, 3);
                                    setAllStatus(iter, 3);
                                    UploadStatusController.getInstance().end(item);
                                    return 3;
                                case RetryError:
                                    if (item.kssRetryTimes < 3) {
                                        if (item.createRetryTimes < 3 && item.commitRetryTimes < 3 && item.otherRetryTimes < 3) {
                                            if (retryAfter[0] < item.retryAfter) {
                                                retryAfter[0] = item.retryAfter;
                                                break;
                                            }
                                        }
                                        iter.remove();
                                        item.compareAndSetStatus(0, 3);
                                        break;
                                    }
                                    item.compareAndSetStatus(0, 1);
                                    setAllStatus(iter, 1);
                                    UploadStatusController.getInstance().end(item);
                                    return 5;
                                    break;
                                case Cancel:
                                    item.compareAndSetStatus(0, 3);
                                    setAllStatus(iter, 3);
                                    UploadStatusController.getInstance().end(item);
                                    return 2;
                                case AlbumNotEmpty:
                                case AlbumNotExist:
                                    iter.remove();
                                    item.compareAndSetStatus(0, 3);
                                    break;
                                case NotRetryCurrent:
                                    iter.remove();
                                    item.compareAndSetStatus(0, 1);
                                    break;
                            }
                            UploadStatusController.getInstance().end(item);
                            break;
                        } catch (Object e) {
                            Log.e("RetryRequest", item + " retriable exception", e);
                            item.compareAndSetStatus(0, 1);
                            setAllStatus(iter, 1);
                            UploadStatusController.getInstance().end(item);
                            return 3;
                        } catch (Object e2) {
                            Log.e("RetryRequest", item + " interrupt exception", e2);
                            item.compareAndSetStatus(0, 1);
                            setAllStatus(iter, 1);
                            UploadStatusController.getInstance().end(item);
                            return 3;
                        } catch (Object e22) {
                            Log.e("RetryRequest", item + " authentication exception", e22);
                            item.compareAndSetStatus(0, 1);
                            setAllStatus(iter, 1);
                            UploadStatusController.getInstance().end(item);
                            return 3;
                        } catch (Throwable th) {
                            UploadStatusController.getInstance().end(item);
                            throw th;
                        }
                }
            }
        }
    }

    private static void setAllStatus(Iterator<? extends RequestItemBase> it, int status) {
        while (it.hasNext()) {
            ((RequestItemBase) it.next()).compareAndSetStatus(0, status);
        }
    }

    public static int doUpDownDeleteItemsInBackground(Context context, Account account, GalleryExtendedAuthToken extToken, List<? extends RequestItemBase> requestItems, Operation upDownloadCloud) throws Exception {
        return doUpDownDeleteItems(context, account, extToken, requestItems, upDownloadCloud);
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x008e  */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0078  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0093  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x008d A:{SYNTHETIC} */
    public static int doUpDownDeleteItems(android.content.Context r10, android.accounts.Account r11, com.miui.gallery.cloud.GalleryExtendedAuthToken r12, java.util.List<? extends com.miui.gallery.cloud.RequestItemBase> r13, com.miui.gallery.cloud.Operation r14) throws java.lang.Exception {
        /*
        r5 = new java.util.ArrayList;
        r5.<init>();
        r0 = 0;
    L_0x0006:
        r7 = r13.size();
        if (r0 >= r7) goto L_0x00a3;
    L_0x000c:
        r3 = 0;
        r4 = r13.get(r0);
        r4 = (com.miui.gallery.cloud.RequestItemBase) r4;
        r7 = r5.isEmpty();
        if (r7 != 0) goto L_0x002b;
    L_0x0019:
        r7 = r5.size();
        r7 = r7 + -1;
        r7 = r5.get(r7);
        r7 = (com.miui.gallery.cloud.RequestItemBase) r7;
        r7 = r4.isInSameAlbum(r7);
        if (r7 == 0) goto L_0x0043;
    L_0x002b:
        r5.add(r4);
        r7 = r5.size();
        r8 = r4.getRequestLimitAGroup();
        if (r7 >= r8) goto L_0x004b;
    L_0x0038:
        r7 = r13.size();
        r7 = r7 + -1;
        if (r0 >= r7) goto L_0x004b;
    L_0x0040:
        r0 = r0 + 1;
        goto L_0x0006;
    L_0x0043:
        r7 = "RetryRequest";
        r8 = "requestItem in this group, try this group and add this item later.";
        com.miui.gallery.util.Log.d(r7, r8);
        r3 = 1;
    L_0x004b:
        r7 = "RetryRequest";
        r8 = new java.lang.StringBuilder;
        r8.<init>();
        r9 = "do ";
        r8 = r8.append(r9);
        r9 = r14.getClass();
        r8 = r8.append(r9);
        r9 = " a group items:";
        r8 = r8.append(r9);
        r8 = r8.append(r0);
        r8 = r8.toString();
        com.miui.gallery.util.Log.d(r7, r8);
        r6 = 0;
        r7 = r4.supportMultiRequest();
        if (r7 == 0) goto L_0x008e;
    L_0x0078:
        r2 = new com.miui.gallery.cloud.RequestMultiItem;
        r7 = r4.priority;
        r2.<init>(r5, r7);
        r1 = new java.util.ArrayList;
        r1.<init>();
        r1.add(r2);
        r6 = tryAGroupItems(r11, r12, r1, r14);
    L_0x008b:
        if (r6 == 0) goto L_0x0093;
    L_0x008d:
        return r6;
    L_0x008e:
        r6 = tryAGroupItems(r11, r12, r5, r14);
        goto L_0x008b;
    L_0x0093:
        r7 = "RetryRequest";
        r8 = "finish one loop for upload";
        com.miui.gallery.util.Log.v(r7, r8);
        r5.clear();
        if (r3 == 0) goto L_0x0040;
    L_0x009f:
        r5.add(r4);
        goto L_0x0040;
    L_0x00a3:
        r6 = 0;
        goto L_0x008d;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.miui.gallery.cloud.RetryRequest.doUpDownDeleteItems(android.content.Context, android.accounts.Account, com.miui.gallery.cloud.GalleryExtendedAuthToken, java.util.List, com.miui.gallery.cloud.Operation):int");
    }
}
