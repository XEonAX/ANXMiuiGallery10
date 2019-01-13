package miui.util.async.tasks;

import android.content.ContentValues;
import android.net.Uri;
import miui.util.AppConstants;
import miui.util.async.Task;

public class ContentResolverInsertTask extends Task<Uri> {
    private final ContentValues Ld;
    private String hE;
    private final Uri zO;

    public ContentResolverInsertTask(Uri uri, ContentValues contentValues) {
        this.zO = uri;
        this.Ld = contentValues;
    }

    public String getDescription() {
        if (this.hE == null) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(this.Ld.toString());
            stringBuilder.append('@');
            stringBuilder.append(this.zO);
            this.hE = stringBuilder.toString();
        }
        return this.hE;
    }

    public Uri doLoad() throws Exception {
        return AppConstants.getCurrentApplication().getContentResolver().insert(this.zO, this.Ld);
    }
}
