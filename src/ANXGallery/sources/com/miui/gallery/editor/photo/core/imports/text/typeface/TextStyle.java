package com.miui.gallery.editor.photo.core.imports.text.typeface;

import android.content.Context;
import android.graphics.Typeface;
import android.os.AsyncTask;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.util.Log;
import com.miui.gallery.R;
import com.nostra13.universalimageloader.core.download.ImageDownloader.Scheme;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

public class TextStyle implements Parcelable {
    public static final Creator<TextStyle> CREATOR = new Creator<TextStyle>() {
        public TextStyle createFromParcel(Parcel source) {
            return new TextStyle(source);
        }

        public TextStyle[] newArray(int size) {
            return new TextStyle[size];
        }
    };
    private static final TextStyle[] preInstalledTextStyle = new TextStyle[]{new TextStyle(null, null, null, null, 0), new TextStyle(null, null, null, null, 1)};
    private boolean extra;
    private String fontUri;
    private String iconUriNormal;
    private String iconUriPressed;
    private String name;
    private int type = 0;
    private Typeface typeFace;

    public interface LoadListener {
        void onLoadSuccess(List<TextStyle> list);
    }

    public TextStyle(Typeface typeface, String fontUri, String iconUriNormal, String iconUriPressed, int type) {
        this.iconUriNormal = iconUriNormal;
        this.fontUri = fontUri;
        this.iconUriPressed = iconUriPressed;
        this.type = type;
        this.typeFace = typeface;
    }

    public TextStyle(Typeface typeface, String fontUri, String iconUriNormal, String iconUriPressed, int type, boolean extra) {
        this.iconUriNormal = iconUriNormal;
        this.fontUri = fontUri;
        this.iconUriPressed = iconUriPressed;
        this.type = type;
        this.typeFace = typeface;
        this.extra = extra;
    }

    public Typeface getTypeFace() {
        return this.typeFace;
    }

    public String getName() {
        return this.name;
    }

    public static void loadTextStyleLocal(final Context context, final LoadListener listener) {
        new AsyncTask<Void, Void, ArrayList<TextStyle>>() {
            protected ArrayList<TextStyle> doInBackground(Void... params) {
                ArrayList<TextStyle> textStyles = new ArrayList();
                TextStyle defaultStyle = new TextStyle(Typeface.DEFAULT, null, null, null, 1);
                defaultStyle.name = context.getString(R.string.text_edit_dialog_font_default);
                textStyles.add(defaultStyle);
                textStyles.addAll(TextStyle.loadTextStylesFromAssets(context));
                return textStyles;
            }

            protected void onPostExecute(ArrayList<TextStyle> textStyle) {
                super.onPostExecute(textStyle);
                listener.onLoadSuccess(textStyle);
            }
        }.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    public void readTypeface(Context context) {
        this.typeFace = getTypefaceByUri(context, this.fontUri);
    }

    private static List<TextStyle> loadTextStylesFromAssets(Context context) {
        List<TextStyle> styleList = new ArrayList();
        ArrayList<JSONObject> jsonObjects = new ResourceManager().loadAllResourceFromAssets(context.getAssets(), "fonts");
        if (!(jsonObjects == null || jsonObjects.isEmpty())) {
            Iterator it = jsonObjects.iterator();
            while (it.hasNext()) {
                TextStyle textStyle = paraseJsonObject(context, (JSONObject) it.next());
                if (textStyle != null) {
                    Log.d("localAudio", textStyle.toString());
                    styleList.add(textStyle);
                }
            }
        }
        return styleList;
    }

    private static TextStyle paraseJsonObject(Context context, JSONObject jsonObject) {
        try {
            String fontUri = jsonObject.getString("uri");
            boolean extra = jsonObject.optBoolean("extra");
            String iconUri = jsonObject.optString("iconUri");
            String name = jsonObject.optString("name");
            Typeface typeface = null;
            if (!TextUtils.isEmpty(fontUri)) {
                try {
                    switch (Scheme.ofUri(fontUri)) {
                        case FILE:
                            typeface = Typeface.createFromFile(Scheme.FILE.crop(fontUri));
                            break;
                        case ASSETS:
                            typeface = Typeface.createFromAsset(context.getAssets(), Scheme.ASSETS.crop(fontUri));
                            break;
                    }
                } catch (Exception e) {
                    Log.d("TextStyle", "create TypeFace error :" + e.toString());
                    return null;
                }
            }
            TextStyle textStyle = new TextStyle(typeface, fontUri, iconUri, iconUri, 1, extra);
            textStyle.name = name;
            return textStyle;
        } catch (Exception e2) {
            Log.d("TextStyle", "paraseJsonObject " + e2.toString());
            return null;
        }
    }

    public static Typeface getTypefaceByUri(Context context, String fontUri) {
        if (TextUtils.isEmpty(fontUri)) {
            return null;
        }
        try {
            switch (Scheme.ofUri(fontUri)) {
                case FILE:
                    return Typeface.createFromFile(Scheme.FILE.crop(fontUri));
                case ASSETS:
                    return Typeface.createFromAsset(context.getAssets(), Scheme.ASSETS.crop(fontUri));
                default:
                    return null;
            }
        } catch (Exception e) {
            Log.d("TextStyle", "create TypeFace error :" + e.toString());
            return null;
        }
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.type);
        dest.writeString(this.fontUri);
        dest.writeString(this.iconUriPressed);
        dest.writeString(this.iconUriNormal);
        dest.writeByte(this.extra ? (byte) 1 : (byte) 0);
        dest.writeString(this.name);
    }

    protected TextStyle(Parcel in) {
        boolean z = false;
        this.type = in.readInt();
        this.fontUri = in.readString();
        this.iconUriPressed = in.readString();
        this.iconUriNormal = in.readString();
        if (in.readByte() != (byte) 0) {
            z = true;
        }
        this.extra = z;
        this.name = in.readString();
    }
}
