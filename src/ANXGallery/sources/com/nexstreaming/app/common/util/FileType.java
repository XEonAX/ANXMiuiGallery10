package com.nexstreaming.app.common.util;

import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import java.io.File;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public enum FileType {
    JPEG((String) FileCategory.Image, (int) new String[]{"jpeg", "jpg"}, (FileCategory) new int[][]{new int[]{255, 216, 255}}),
    PNG((String) FileCategory.Image, (int) new String[]{"png"}, (FileCategory) new int[][]{new int[]{BaiduSceneResult.JEWELRY, 80, 78, 71, 13, 10, 26, 10}}),
    SVG((String) FileCategory.Image, (int) new String[]{"svg"}, (FileCategory) new int[][]{new int[]{60, BaiduSceneResult.BUILDING_OTHER, BaiduSceneResult.SUBWAY, BaiduSceneResult.MOUNTAINEERING}, new int[]{60, 83, 86, 71}}),
    WEBP((String) FileCategory.Image, (int) new String[]{"webp"}, (FileCategory) new int[][]{new int[]{82, 73, 70, 70, -1, -1, -1, -1, 87, 69, 66, 80}}),
    GIF((String) FileCategory.Image, (int) new String[]{"gif"}, (FileCategory) new int[][]{new int[]{71, 73, 70, 56, 55, 97}, new int[]{71, 73, 70, 56, 57, 97}}),
    M4A((String) FileCategory.Audio, (int) new String[]{"m4a"}, (FileCategory) new int[][]{new int[]{0, 0, 0, 32, BaiduSceneResult.TAEKWONDO, BaiduSceneResult.CAR, BaiduSceneResult.STATION, BaiduSceneResult.STREET_VIEW, 77, 52, 65, 32}, new int[]{-1, -1, -1, -1, BaiduSceneResult.TAEKWONDO, BaiduSceneResult.CAR, BaiduSceneResult.STATION, BaiduSceneResult.STREET_VIEW, 77, 52, 65, 32}}),
    M4V((String) FileCategory.Video, (int) new String[]{"m4v"}, (FileCategory) new int[][]{new int[]{0, 0, 0, 24, BaiduSceneResult.TAEKWONDO, BaiduSceneResult.CAR, BaiduSceneResult.STATION, BaiduSceneResult.STREET_VIEW, BaiduSceneResult.CHURCH, BaiduSceneResult.STREET_VIEW, 52, 50}, new int[]{-1, -1, -1, -1, BaiduSceneResult.TAEKWONDO, BaiduSceneResult.CAR, BaiduSceneResult.STATION, BaiduSceneResult.STREET_VIEW, BaiduSceneResult.CHURCH, BaiduSceneResult.STREET_VIEW, 52, 50}}),
    MP4((String) FileCategory.Video, (int) new String[]{"mp4"}, (FileCategory) new int[][]{new int[]{0, 0, 0, 20, BaiduSceneResult.TAEKWONDO, BaiduSceneResult.CAR, BaiduSceneResult.STATION, BaiduSceneResult.STREET_VIEW, BaiduSceneResult.TEMPLE, BaiduSceneResult.BUILDING_OTHER, BaiduSceneResult.WESTERN_ARCHITECTURE, BaiduSceneResult.CHURCH}, new int[]{0, 0, 0, 24, BaiduSceneResult.TAEKWONDO, BaiduSceneResult.CAR, BaiduSceneResult.STATION, BaiduSceneResult.STREET_VIEW, BaiduSceneResult.TEMPLE, BaiduSceneResult.BUILDING_OTHER, BaiduSceneResult.WESTERN_ARCHITECTURE, BaiduSceneResult.CHURCH}, new int[]{0, 0, 0, 24, BaiduSceneResult.TAEKWONDO, BaiduSceneResult.CAR, BaiduSceneResult.STATION, BaiduSceneResult.STREET_VIEW, 51, BaiduSceneResult.MOUNTAINEERING, BaiduSceneResult.STREET_VIEW, 53}, new int[]{0, 0, 0, 28, BaiduSceneResult.TAEKWONDO, BaiduSceneResult.CAR, BaiduSceneResult.STATION, BaiduSceneResult.STREET_VIEW, 77, 83, 78, 86, 1, 41, 0, 70, 77, 83, 78, 86, BaiduSceneResult.CHURCH, BaiduSceneResult.STREET_VIEW, 52, 50}, new int[]{-1, -1, -1, -1, BaiduSceneResult.TAEKWONDO, BaiduSceneResult.CAR, BaiduSceneResult.STATION, BaiduSceneResult.STREET_VIEW, 51, BaiduSceneResult.MOUNTAINEERING, BaiduSceneResult.STREET_VIEW, 53}, new int[]{-1, -1, -1, -1, BaiduSceneResult.TAEKWONDO, BaiduSceneResult.CAR, BaiduSceneResult.STATION, BaiduSceneResult.STREET_VIEW, 77, 83, 78, 86}, new int[]{-1, -1, -1, -1, BaiduSceneResult.TAEKWONDO, BaiduSceneResult.CAR, BaiduSceneResult.STATION, BaiduSceneResult.STREET_VIEW, BaiduSceneResult.TEMPLE, BaiduSceneResult.BUILDING_OTHER, BaiduSceneResult.WESTERN_ARCHITECTURE, BaiduSceneResult.CHURCH}, new int[]{0, 0, 0, 24, BaiduSceneResult.TAEKWONDO, BaiduSceneResult.CAR, BaiduSceneResult.STATION, BaiduSceneResult.STREET_VIEW, BaiduSceneResult.CHURCH, BaiduSceneResult.STREET_VIEW, 52, 49}}),
    F_3GP((String) FileCategory.VideoOrAudio, (int) new String[]{"3gp", "3gpp", "3g2"}, (FileCategory) new int[][]{new int[]{0, 0, 0, -1, BaiduSceneResult.TAEKWONDO, BaiduSceneResult.CAR, BaiduSceneResult.STATION, BaiduSceneResult.STREET_VIEW, 51, BaiduSceneResult.MOUNTAINEERING, BaiduSceneResult.STREET_VIEW}, new int[]{0, 0, 0, -1, BaiduSceneResult.TAEKWONDO, BaiduSceneResult.CAR, BaiduSceneResult.STATION, BaiduSceneResult.STREET_VIEW, 51, BaiduSceneResult.MOUNTAINEERING, 50}}),
    K3G(FileCategory.Video, new String[]{"k3g"}),
    ACC(FileCategory.Video, new String[]{"acc"}),
    AVI((String) FileCategory.Video, (int) new String[]{"avi"}, (FileCategory) new int[][]{new int[]{82, 73, 70, 70, -1, -1, -1, -1, 65, 86, 73, 32, 76, 73, 83, 84}}),
    MOV((String) FileCategory.Video, (int) new String[]{"mov"}, (FileCategory) new int[][]{new int[]{0, 0, 0, 20, BaiduSceneResult.TAEKWONDO, BaiduSceneResult.CAR, BaiduSceneResult.STATION, BaiduSceneResult.STREET_VIEW, BaiduSceneResult.FOUNTAIN, BaiduSceneResult.CAR, 32, 32}, new int[]{BaiduSceneResult.TAEKWONDO, BaiduSceneResult.CAR, BaiduSceneResult.STATION, BaiduSceneResult.STREET_VIEW, BaiduSceneResult.FOUNTAIN, BaiduSceneResult.CAR, 32, 32}, new int[]{-1, -1, -1, -1, BaiduSceneResult.CHURCH, BaiduSceneResult.WESTERN_ARCHITECTURE, BaiduSceneResult.WESTERN_ARCHITECTURE, BaiduSceneResult.SUBWAY}}),
    WMV((String) FileCategory.Video, (int) new String[]{"wmv"}, (FileCategory) new int[][]{new int[]{48, 38, 178, BaiduSceneResult.FERRY, BaiduSceneResult.DIGITAL_PRODUCT, BaiduSceneResult.TAEKWONDO, 207, 17, 166, 217, 0, 170, 0, 98, 206, BaiduSceneResult.ANCIENT_CHINESE_ARCHITECTURE}}),
    MP3((String) FileCategory.Audio, (int) new String[]{"mp3"}, (FileCategory) new int[][]{new int[]{73, 68, 51}, new int[]{255, 251}}),
    AAC((String) FileCategory.Audio, (int) new String[]{"aac"}, (FileCategory) new int[][]{new int[]{255, 241}, new int[]{255, 249}}),
    BMP((String) FileCategory.Image, (int) new String[]{"bmp"}, (FileCategory) new int[][]{new int[]{66, 77}}),
    TTF(FileCategory.Font, new String[]{"ttf", "otf"}),
    WBMP((String) FileCategory.Image, (int) new String[]{"wbmp"}, (FileCategory) false);
    
    private static final int CHECK_SIZE = 32;
    private static final String LOG_TAG = "FileType";
    private static final byte[] WEBP_HEADER = null;
    private static final Map<String, FileType> extensionMap = null;
    private final FileCategory category;
    private final boolean extensionOnly;
    private final String[] extensions;
    private final a imp;
    private final boolean isSupportedFormat;

    private static abstract class a {
        abstract boolean a(byte[] bArr);

        private a() {
        }

        /* synthetic */ a(AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public enum FileCategory {
        private static final /* synthetic */ FileCategory[] $VALUES = null;
        public static final FileCategory Audio = null;
        public static final FileCategory Font = null;
        public static final FileCategory Image = null;
        public static final FileCategory Video = null;
        public static final FileCategory VideoOrAudio = null;

        private FileCategory(String str, int i) {
        }

        public static FileCategory valueOf(String str) {
            return (FileCategory) Enum.valueOf(FileCategory.class, str);
        }

        public static FileCategory[] values() {
            return (FileCategory[]) $VALUES.clone();
        }

        static {
            Audio = new FileCategory("Audio", 0);
            Video = new FileCategory("Video", 1);
            VideoOrAudio = new FileCategory("VideoOrAudio", 2);
            Image = new FileCategory("Image", 3);
            Font = new FileCategory("Font", 4);
            $VALUES = new FileCategory[]{Audio, Video, VideoOrAudio, Image, Font};
        }
    }

    static {
        extensionMap = new HashMap();
        WEBP_HEADER = new byte[]{(byte) 82, (byte) 73, (byte) 70, (byte) 70, (byte) 87, (byte) 69, (byte) 66, (byte) 80};
    }

    private FileType(FileCategory fileCategory, String[] strArr, boolean z) {
        this.imp = new a() {
            boolean a(byte[] bArr) {
                return false;
            }
        };
        this.category = fileCategory;
        this.extensions = strArr;
        this.extensionOnly = false;
        this.isSupportedFormat = z;
    }

    private FileType(FileCategory fileCategory, String[] strArr) {
        this.imp = new a() {
            boolean a(byte[] bArr) {
                return false;
            }
        };
        this.category = fileCategory;
        this.extensions = strArr;
        this.extensionOnly = true;
        this.isSupportedFormat = true;
    }

    private FileType(FileCategory fileCategory, String[] strArr, final int[]... iArr) {
        this.imp = new a() {
            boolean a(byte[] bArr) {
                for (int[] iArr : iArr) {
                    if (bArr.length >= iArr.length) {
                        int i = 0;
                        while (i < iArr.length) {
                            if (iArr[i] == -1 || bArr[i] == ((byte) iArr[i])) {
                                i++;
                            }
                        }
                        return true;
                    }
                }
                return false;
            }
        };
        this.category = fileCategory;
        this.extensions = strArr;
        this.extensionOnly = false;
        this.isSupportedFormat = true;
    }

    private static void a() {
        if (extensionMap.isEmpty()) {
            for (FileType fileType : values()) {
                for (Object put : fileType.extensions) {
                    extensionMap.put(put, fileType);
                }
            }
        }
    }

    public boolean isSupportedFormat() {
        return this.isSupportedFormat;
    }

    public boolean isImage() {
        return this.category == FileCategory.Image;
    }

    public boolean isVideo() {
        return this.category == FileCategory.Video || this.category == FileCategory.VideoOrAudio;
    }

    public boolean isAudio() {
        return this.category == FileCategory.Audio || this.category == FileCategory.VideoOrAudio;
    }

    public FileCategory getCategory() {
        return this.category;
    }

    public static FileType fromExtension(String str) {
        if (str == null) {
            return null;
        }
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf < 0 || lastIndexOf < str.lastIndexOf(47)) {
            return null;
        }
        String toLowerCase = str.substring(lastIndexOf + 1).toLowerCase(Locale.US);
        if (extensionMap.isEmpty()) {
            a();
        }
        return (FileType) extensionMap.get(toLowerCase);
    }

    public static FileType fromExtension(File file) {
        if (file == null) {
            return null;
        }
        Object toLowerCase;
        String name = file.getName();
        int lastIndexOf = name.lastIndexOf(46);
        if (lastIndexOf >= 0) {
            toLowerCase = name.substring(lastIndexOf + 1).toLowerCase(Locale.US);
        } else {
            toLowerCase = null;
        }
        if (toLowerCase == null) {
            return null;
        }
        if (extensionMap.isEmpty()) {
            a();
        }
        return (FileType) extensionMap.get(toLowerCase);
    }

    public static FileType fromFile(String str) {
        if (str == null) {
            return null;
        }
        return fromFile(new File(str));
    }

    /* JADX WARNING: Removed duplicated region for block: B:34:0x008a  */
    /* JADX WARNING: Removed duplicated region for block: B:82:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00da  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x008a  */
    /* JADX WARNING: Removed duplicated region for block: B:82:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00da  */
    public static com.nexstreaming.app.common.util.FileType fromFile(java.io.File r13) {
        /*
        r12 = 32;
        r3 = 0;
        r2 = 0;
        if (r13 != 0) goto L_0x0008;
    L_0x0006:
        r0 = r2;
    L_0x0007:
        return r0;
    L_0x0008:
        r0 = r13.getName();
        r1 = 46;
        r1 = r0.lastIndexOf(r1);
        if (r1 < 0) goto L_0x0056;
    L_0x0014:
        r1 = r1 + 1;
        r0 = r0.substring(r1);
        r6 = r0;
    L_0x001b:
        if (r6 == 0) goto L_0x005f;
    L_0x001d:
        r5 = values();
        r7 = r5.length;
        r4 = r3;
    L_0x0023:
        if (r4 >= r7) goto L_0x005f;
    L_0x0025:
        r0 = r5[r4];
        r8 = r0.extensions;
        r9 = r8.length;
        r1 = r3;
    L_0x002b:
        if (r1 >= r9) goto L_0x005b;
    L_0x002d:
        r10 = r8[r1];
        r11 = r0.extensionOnly;
        if (r11 == 0) goto L_0x0058;
    L_0x0033:
        r10 = r10.equalsIgnoreCase(r6);
        if (r10 == 0) goto L_0x0058;
    L_0x0039:
        r1 = "FileType";
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "FileType extension match: ";
        r2 = r2.append(r3);
        r3 = r0.name();
        r2 = r2.append(r3);
        r2 = r2.toString();
        android.util.Log.d(r1, r2);
        goto L_0x0007;
    L_0x0056:
        r6 = r2;
        goto L_0x001b;
    L_0x0058:
        r1 = r1 + 1;
        goto L_0x002b;
    L_0x005b:
        r0 = r4 + 1;
        r4 = r0;
        goto L_0x0023;
    L_0x005f:
        r0 = r13.exists();
        if (r0 == 0) goto L_0x0149;
    L_0x0065:
        r0 = r13.length();
        r4 = 32;
        r0 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1));
        if (r0 < 0) goto L_0x0149;
    L_0x006f:
        r4 = new byte[r12];
        r1 = new java.io.FileInputStream;	 Catch:{ IOException -> 0x012a }
        r1.<init>(r13);	 Catch:{ IOException -> 0x012a }
        r0 = r1.read(r4);	 Catch:{ all -> 0x0125 }
        r1.close();	 Catch:{ IOException -> 0x0145 }
    L_0x007d:
        if (r4 == 0) goto L_0x00d7;
    L_0x007f:
        if (r0 < r12) goto L_0x00d7;
    L_0x0081:
        r7 = values();
        r8 = r7.length;
        r5 = r3;
        r1 = r2;
    L_0x0088:
        if (r5 >= r8) goto L_0x0147;
    L_0x008a:
        r0 = r7[r5];
        r9 = r0.imp;
        r9 = r9.a(r4);
        if (r9 == 0) goto L_0x012f;
    L_0x0094:
        r9 = "FileType";
        r10 = new java.lang.StringBuilder;
        r10.<init>();
        r11 = "FileType analysis match: ";
        r10 = r10.append(r11);
        r11 = r0.name();
        r10 = r10.append(r11);
        r10 = r10.toString();
        android.util.Log.d(r9, r10);
        if (r1 == 0) goto L_0x0130;
    L_0x00b2:
        r1 = "FileType";
        r5 = new java.lang.StringBuilder;
        r5.<init>();
        r7 = "FileType analysis MULTIPLE match: ";
        r5 = r5.append(r7);
        r0 = r0.name();
        r0 = r5.append(r0);
        r5 = " (fall back to file extension)";
        r0 = r0.append(r5);
        r0 = r0.toString();
        android.util.Log.d(r1, r0);
        r0 = r2;
    L_0x00d5:
        if (r0 != 0) goto L_0x0007;
    L_0x00d7:
        r5 = r4;
    L_0x00d8:
        if (r6 == 0) goto L_0x0142;
    L_0x00da:
        r7 = values();
        r8 = r7.length;
        r4 = r3;
    L_0x00e0:
        if (r4 >= r8) goto L_0x0142;
    L_0x00e2:
        r1 = r7[r4];
        r9 = r1.extensions;
        r10 = r9.length;
        r0 = r3;
    L_0x00e8:
        if (r0 >= r10) goto L_0x013e;
    L_0x00ea:
        r11 = r9[r0];
        r11 = r11.equalsIgnoreCase(r6);
        if (r11 == 0) goto L_0x013b;
    L_0x00f2:
        r2 = "FileType";
        r0 = new java.lang.StringBuilder;
        r0.<init>();
        r3 = "FileType extension match: ";
        r0 = r0.append(r3);
        r3 = r1.name();
        r0 = r0.append(r3);
        r3 = " [";
        r3 = r0.append(r3);
        if (r5 != 0) goto L_0x0136;
    L_0x010f:
        r0 = "null";
    L_0x0111:
        r0 = r3.append(r0);
        r3 = "]";
        r0 = r0.append(r3);
        r0 = r0.toString();
        android.util.Log.d(r2, r0);
        r0 = r1;
        goto L_0x0007;
    L_0x0125:
        r0 = move-exception;
        r1.close();	 Catch:{ IOException -> 0x012a }
        throw r0;	 Catch:{ IOException -> 0x012a }
    L_0x012a:
        r0 = move-exception;
        r0 = r3;
    L_0x012c:
        r4 = r2;
        goto L_0x007d;
    L_0x012f:
        r0 = r1;
    L_0x0130:
        r1 = r5 + 1;
        r5 = r1;
        r1 = r0;
        goto L_0x0088;
    L_0x0136:
        r0 = com.nexstreaming.app.common.util.n.a(r5);
        goto L_0x0111;
    L_0x013b:
        r0 = r0 + 1;
        goto L_0x00e8;
    L_0x013e:
        r0 = r4 + 1;
        r4 = r0;
        goto L_0x00e0;
    L_0x0142:
        r0 = r2;
        goto L_0x0007;
    L_0x0145:
        r1 = move-exception;
        goto L_0x012c;
    L_0x0147:
        r0 = r1;
        goto L_0x00d5;
    L_0x0149:
        r5 = r2;
        goto L_0x00d8;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nexstreaming.app.common.util.FileType.fromFile(java.io.File):com.nexstreaming.app.common.util.FileType");
    }
}
