package miui.util.async.tasks;

import android.content.ContentValues;
import android.net.Uri;
import miui.util.AppConstants;
import miui.util.C0010Pools;
import miui.util.async.Task;

public class ContentResolverBulkInsertTask extends Task<Integer> {
    private final ContentValues[] La;
    private String hE;
    private final Uri zO;

    public ContentResolverBulkInsertTask(Uri uri, ContentValues[] contentValuesArr) {
        this.zO = uri;
        this.La = contentValuesArr;
    }

    public String getDescription() {
        if (this.hE == null) {
            StringBuilder stringBuilder = (StringBuilder) C0010Pools.getStringBuilderPool().acquire();
            stringBuilder.append('[');
            if (this.La.length == 0) {
                stringBuilder.append("NULL");
            } else {
                stringBuilder.append(this.La[0]);
                int length = this.La.length;
                for (int i = 1; i < length; i++) {
                    stringBuilder.append("; ");
                    stringBuilder.append(this.La[i]);
                }
            }
            stringBuilder.append("]@");
            stringBuilder.append(this.zO);
            this.hE = stringBuilder.toString();
            C0010Pools.getStringBuilderPool().release(stringBuilder);
        }
        return this.hE;
    }

    public Integer doLoad() throws Exception {
        return Integer.valueOf(AppConstants.getCurrentApplication().getContentResolver().bulkInsert(this.zO, this.La));
    }
}
