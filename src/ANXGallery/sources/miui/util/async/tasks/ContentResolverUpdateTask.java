package miui.util.async.tasks;

import android.content.ContentValues;
import android.net.Uri;
import miui.util.AppConstants;
import miui.util.C0010Pools;
import miui.util.async.Task;

public class ContentResolverUpdateTask extends Task<Integer> {
    private final String Lb;
    private final String[] Lc;
    private final ContentValues Ld;
    private String hE;
    private final Uri zO;

    public ContentResolverUpdateTask(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        this.zO = uri;
        this.Ld = contentValues;
        this.Lb = str;
        this.Lc = strArr;
    }

    public String getDescription() {
        if (this.hE == null) {
            if (this.Lb == null) {
                this.hE = this.zO.toString();
            } else {
                StringBuilder stringBuilder = (StringBuilder) C0010Pools.getStringBuilderPool().acquire();
                stringBuilder.append(this.zO.toString());
                stringBuilder.append(" WHERE ");
                if (this.Lc != null) {
                    stringBuilder.append('[');
                    stringBuilder.append(this.Lc[0]);
                    for (int i = 1; i < this.Lc.length; i++) {
                        stringBuilder.append(';');
                        stringBuilder.append(this.Lc[i]);
                    }
                    stringBuilder.append("]@");
                }
                stringBuilder.append(this.Lb);
                this.hE = stringBuilder.toString();
                C0010Pools.getStringBuilderPool().release(stringBuilder);
            }
        }
        return this.hE;
    }

    public Integer doLoad() throws Exception {
        return Integer.valueOf(AppConstants.getCurrentApplication().getContentResolver().update(this.zO, this.Ld, this.Lb, this.Lc));
    }
}
