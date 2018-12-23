package android.support.v4.provider;

import android.content.Context;
import android.net.Uri;

class TreeDocumentFile extends DocumentFile {
    private Context mContext;
    private Uri mUri;

    TreeDocumentFile(DocumentFile parent, Context context, Uri uri) {
        super(parent);
        this.mContext = context;
        this.mUri = uri;
    }

    public DocumentFile createFile(String mimeType, String displayName) {
        Uri result = DocumentsContractApi21.createFile(this.mContext, this.mUri, mimeType, displayName);
        return result != null ? new TreeDocumentFile(this, this.mContext, result) : null;
    }

    public DocumentFile createDirectory(String displayName) {
        Uri result = DocumentsContractApi21.createDirectory(this.mContext, this.mUri, displayName);
        return result != null ? new TreeDocumentFile(this, this.mContext, result) : null;
    }

    public Uri getUri() {
        return this.mUri;
    }

    public String getName() {
        return DocumentsContractApi19.getName(this.mContext, this.mUri);
    }

    public boolean isDirectory() {
        return DocumentsContractApi19.isDirectory(this.mContext, this.mUri);
    }

    public boolean delete() {
        return DocumentsContractApi19.delete(this.mContext, this.mUri);
    }

    public DocumentFile[] listFiles() {
        Uri[] result = DocumentsContractApi21.listFiles(this.mContext, this.mUri);
        DocumentFile[] resultFiles = new DocumentFile[result.length];
        for (int i = 0; i < result.length; i++) {
            resultFiles[i] = new TreeDocumentFile(this, this.mContext, result[i]);
        }
        return resultFiles;
    }
}
