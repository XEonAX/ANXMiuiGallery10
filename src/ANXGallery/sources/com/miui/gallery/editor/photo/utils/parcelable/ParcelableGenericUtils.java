package com.miui.gallery.editor.photo.utils.parcelable;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

public class ParcelableGenericUtils {
    public static <T extends Parcelable> void writeList(Parcel dest, int flags, List<T> list) {
        if (list == null) {
            dest.writeInt(-1);
        }
        dest.writeInt(list.size());
        for (T t : list) {
            dest.writeString(t.getClass().getName());
            dest.writeParcelable(t, flags);
        }
    }

    public static <T extends Parcelable> List<T> readList(Parcel in) {
        int size = in.readInt();
        if (size == -1) {
            return null;
        }
        List<T> list = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            try {
                list.add(in.readParcelable(Class.forName(in.readString()).getClassLoader()));
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
        }
        return list;
    }

    public static <T extends Parcelable> void writeObject(Parcel dest, int flags, T t) {
        if (t == null) {
            dest.writeString("NULL");
            return;
        }
        dest.writeString(t.getClass().getName());
        dest.writeParcelable(t, flags);
    }

    public static <T extends Parcelable> T readObject(Parcel in) {
        try {
            String className = in.readString();
            if (TextUtils.equals(className, "NULL")) {
                return null;
            }
            return in.readParcelable(Class.forName(className).getClassLoader());
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }
}
