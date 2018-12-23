package com.miui.gallery3d.exif;

import android.util.Log;
import java.io.IOException;
import java.io.InputStream;

class ExifReader {
    private static final String TAG = "ExifReader";
    private final ExifInterface mInterface;

    ExifReader(ExifInterface iRef) {
        this.mInterface = iRef;
    }

    protected ExifData read(InputStream inputStream) throws ExifInvalidFormatException, IOException {
        ExifParser parser = ExifParser.parse(inputStream, this.mInterface);
        ExifData exifData = new ExifData(parser.getByteOrder());
        for (int event = parser.next(); event != 5; event = parser.next()) {
            ExifTag tag;
            switch (event) {
                case 0:
                    exifData.addIfdData(new IfdData(parser.getCurrentIfd()));
                    break;
                case 1:
                    tag = parser.getTag();
                    if (!tag.hasValue()) {
                        parser.registerForTagValue(tag);
                        break;
                    }
                    exifData.getIfdData(tag.getIfd()).setTag(tag);
                    break;
                case 2:
                    tag = parser.getTag();
                    if (tag.getDataType() == (short) 7) {
                        parser.readFullTagValue(tag);
                    }
                    exifData.getIfdData(tag.getIfd()).setTag(tag);
                    break;
                case 3:
                    int len = parser.getCompressedImageSize();
                    if (len <= 0) {
                        String str = TAG;
                        StringBuilder stringBuilder = new StringBuilder();
                        stringBuilder.append("compressedImageSize=");
                        stringBuilder.append(len);
                        Log.d(str, stringBuilder.toString());
                        break;
                    }
                    byte[] buf = new byte[len];
                    if (buf.length != parser.read(buf)) {
                        Log.w(TAG, "Failed to read the compressed thumbnail");
                        break;
                    }
                    exifData.setCompressedThumbnail(buf);
                    break;
                case 4:
                    byte[] buf2 = new byte[parser.getStripSize()];
                    if (buf2.length != parser.read(buf2)) {
                        Log.w(TAG, "Failed to read the strip bytes");
                        break;
                    }
                    exifData.setStripBytes(parser.getStripIndex(), buf2);
                    break;
                default:
                    break;
            }
        }
        return exifData;
    }
}
