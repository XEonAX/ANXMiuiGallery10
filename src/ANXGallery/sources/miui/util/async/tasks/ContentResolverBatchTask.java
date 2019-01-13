package miui.util.async.tasks;

import android.content.ContentProviderOperation;
import android.content.ContentProviderResult;
import java.util.ArrayList;
import miui.util.AppConstants;
import miui.util.C0010Pools;
import miui.util.async.Task;

public class ContentResolverBatchTask extends Task<ContentProviderResult[]> {
    private final String KX;
    private final ArrayList<ContentProviderOperation> KZ;
    private String hE;

    public ContentResolverBatchTask(String str, ArrayList<ContentProviderOperation> arrayList) {
        this.KX = str;
        this.KZ = arrayList;
    }

    public String getDescription() {
        if (this.hE == null) {
            StringBuilder stringBuilder = (StringBuilder) C0010Pools.getStringBuilderPool().acquire();
            stringBuilder.append('[');
            if (this.KZ.size() == 0) {
                stringBuilder.append("NULL");
            } else {
                stringBuilder.append(this.KZ.get(0));
                int size = this.KZ.size();
                for (int i = 1; i < size; i++) {
                    stringBuilder.append("; ");
                    stringBuilder.append(this.KZ.get(i));
                }
            }
            stringBuilder.append("]@");
            stringBuilder.append(this.KX);
            this.hE = stringBuilder.toString();
            C0010Pools.getStringBuilderPool().release(stringBuilder);
        }
        return this.hE;
    }

    public ContentProviderResult[] doLoad() throws Exception {
        return AppConstants.getCurrentApplication().getContentResolver().applyBatch(this.KX, this.KZ);
    }
}
