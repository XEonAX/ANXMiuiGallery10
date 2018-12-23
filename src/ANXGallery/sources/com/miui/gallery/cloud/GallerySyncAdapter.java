package com.miui.gallery.cloud;

import android.content.Context;
import android.os.Bundle;
import com.miui.gallery.preference.GalleryPreferences.CTA;
import com.miui.gallery.util.BuildUtil;
import com.miui.gallery.util.SyncLog;
import com.xiaomi.micloudsdk.exception.CloudServerException;
import com.xiaomi.micloudsdk.sync.SyncAdapterBase;

public class GallerySyncAdapter extends SyncAdapterBase {
    GallerySyncAdapterImpl mImpl;

    public GallerySyncAdapter(Context context, boolean autoInitialize) {
        super(context, autoInitialize, "micgallery");
        this.mImpl = null;
        this.mImpl = new GallerySyncAdapterImpl(this.mContext);
    }

    protected void onPerformMiCloudSync(Bundle extras) throws CloudServerException {
        if (!CTA.canConnectNetwork()) {
            if (BuildUtil.isInternational()) {
                CTA.setCanConnectNetwork(true);
            } else {
                SyncLog.d("GallerySyncAdapter", "gallery cta can't connect network");
                throw new CloudServerException(-10001, 1000);
            }
        }
        try {
            this.mImpl.onPerformMiCloudSync(extras, this.mAccount, this.mSyncResult, new GalleryExtendedAuthToken(this.mExtToken));
        } catch (GalleryMiCloudServerException e) {
            throw ((CloudServerException) e.getCloudServerException());
        }
    }

    public void onSyncCanceled() {
        SyncLog.d("GallerySyncAdapter", "on sync canceled");
        this.mImpl.onSyncCanceled();
        super.onSyncCanceled();
    }
}
