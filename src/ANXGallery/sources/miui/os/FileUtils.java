package miui.os;

import com.miui.internal.os.Native;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.charset.Charset;
import java.util.regex.Pattern;
import org.keyczar.Keyczar;

public class FileUtils {
    private static final Pattern DY = Pattern.compile("[\\w%+,./=_-]+");
    public static final int S_IRGRP = 32;
    public static final int S_IROTH = 4;
    public static final int S_IRUSR = 256;
    public static final int S_IRWXG = 56;
    public static final int S_IRWXO = 7;
    public static final int S_IRWXU = 448;
    public static final int S_IWGRP = 16;
    public static final int S_IWOTH = 2;
    public static final int S_IWUSR = 128;
    public static final int S_IXGRP = 8;
    public static final int S_IXOTH = 1;
    public static final int S_IXUSR = 64;

    protected FileUtils() throws InstantiationException {
        throw new InstantiationException("Cannot instantiate utility class");
    }

    public static boolean chmod(String str, int i) {
        if (str == null || str.length() == 0) {
            return false;
        }
        if (i < 0) {
            return true;
        }
        return Native.chmod(str, i, 1);
    }

    public static boolean chown(String str, int i, int i2) {
        if (str == null || str.length() == 0) {
            return false;
        }
        if (i < 0 && i2 < 0) {
            return true;
        }
        if (i < 0) {
            i = -1;
        } else if (i2 < 0) {
            i2 = -1;
        }
        return Native.chown(str, i, i2, 1);
    }

    public static int umask(int i) {
        return Native.umask(i);
    }

    public static boolean sync(FileOutputStream fileOutputStream) {
        if (fileOutputStream != null) {
            try {
                fileOutputStream.getFD().sync();
            } catch (IOException e) {
                return false;
            }
        }
        return true;
    }

    public static boolean copyFile(File file, File file2) {
        InputStream fileInputStream;
        try {
            fileInputStream = new FileInputStream(file);
            boolean copyToFile = copyToFile(fileInputStream, file2);
            fileInputStream.close();
            return copyToFile;
        } catch (IOException e) {
            return false;
        } catch (Throwable th) {
            fileInputStream.close();
        }
    }

    public static boolean copyToFile(InputStream inputStream, File file) {
        FileOutputStream fileOutputStream;
        try {
            if (file.exists() && !file.delete()) {
                return false;
            }
            fileOutputStream = new FileOutputStream(file);
            byte[] bArr = new byte[4096];
            while (true) {
                int read = inputStream.read(bArr);
                if (read < 0) {
                    break;
                }
                fileOutputStream.write(bArr, 0, read);
            }
            fileOutputStream.flush();
            try {
                fileOutputStream.getFD().sync();
            } catch (IOException e) {
            }
            fileOutputStream.close();
            return true;
        } catch (IOException e2) {
            return false;
        } catch (Throwable th) {
            fileOutputStream.flush();
            try {
                fileOutputStream.getFD().sync();
            } catch (IOException e3) {
            }
            fileOutputStream.close();
        }
    }

    public static boolean isFilenameSafe(File file) {
        return DY.matcher(file.getPath()).matches();
    }

    public static String readTextFile(File file, int i, String str) throws IOException {
        InputStream fileInputStream = new FileInputStream(file);
        try {
            long length = file.length();
            String str2;
            String str3;
            if (i > 0 || (length > 0 && i == 0)) {
                if (length > 0 && (i == 0 || length < ((long) i))) {
                    i = (int) length;
                }
                byte[] bArr = new byte[(i + 1)];
                int read = fileInputStream.read(bArr);
                if (read <= 0) {
                    str2 = "";
                    fileInputStream.close();
                    return str2;
                } else if (read <= i) {
                    str3 = new String(bArr, 0, read);
                    fileInputStream.close();
                    return str3;
                } else if (str == null) {
                    str = new String(bArr, 0, i);
                    fileInputStream.close();
                    return str;
                } else {
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append(new String(bArr, 0, i));
                    stringBuilder.append(str);
                    str2 = stringBuilder.toString();
                    fileInputStream.close();
                    return str2;
                }
            } else if (i < 0) {
                int read2;
                Object obj = null;
                int i2 = 0;
                Object obj2 = null;
                while (true) {
                    if (obj != null) {
                        i2 = 1;
                    }
                    if (obj == null) {
                        obj = new byte[(-i)];
                    }
                    read2 = fileInputStream.read(obj);
                    if (read2 != obj.length) {
                        break;
                    }
                    Object obj3 = obj2;
                    obj2 = obj;
                    obj = obj3;
                }
                if (obj2 == null && read2 <= 0) {
                    str2 = "";
                    return str2;
                } else if (obj2 == null) {
                    str3 = new String(obj, 0, read2);
                    fileInputStream.close();
                    return str3;
                } else {
                    if (read2 > 0) {
                        System.arraycopy(obj2, read2, obj2, 0, obj2.length - read2);
                        System.arraycopy(obj, 0, obj2, obj2.length - read2, read2);
                        i2 = 1;
                    }
                    if (str == null || r3 == 0) {
                        str2 = new String(obj2);
                        fileInputStream.close();
                        return str2;
                    }
                    StringBuilder stringBuilder2 = new StringBuilder();
                    stringBuilder2.append(str);
                    stringBuilder2.append(new String(obj2));
                    str2 = stringBuilder2.toString();
                    fileInputStream.close();
                    return str2;
                }
            } else {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte[] bArr2 = new byte[1024];
                while (true) {
                    int read3 = fileInputStream.read(bArr2);
                    if (read3 > 0) {
                        byteArrayOutputStream.write(bArr2, 0, read3);
                    }
                    if (read3 != bArr2.length) {
                        str2 = byteArrayOutputStream.toString();
                        fileInputStream.close();
                        return str2;
                    }
                }
            }
        } finally {
            fileInputStream.close();
        }
    }

    public static void stringToFile(String str, String str2) throws IOException {
        FileWriter fileWriter = new FileWriter(str);
        try {
            fileWriter.write(str2);
        } finally {
            fileWriter.close();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x002d A:{SYNTHETIC, Splitter: B:18:0x002d} */
    public static long checksumCrc32(java.io.File r4) throws java.io.IOException {
        /*
        r0 = new java.util.zip.CRC32;
        r0.<init>();
        r1 = 0;
        r2 = new java.util.zip.CheckedInputStream;	 Catch:{ all -> 0x002a }
        r3 = new java.io.FileInputStream;	 Catch:{ all -> 0x002a }
        r3.<init>(r4);	 Catch:{ all -> 0x002a }
        r2.<init>(r3, r0);	 Catch:{ all -> 0x002a }
        r4 = 128; // 0x80 float:1.794E-43 double:6.32E-322;
        r4 = new byte[r4];	 Catch:{ all -> 0x0027 }
    L_0x0015:
        r1 = r2.read(r4);	 Catch:{ all -> 0x0027 }
        if (r1 < 0) goto L_0x001c;
    L_0x001b:
        goto L_0x0015;
    L_0x001c:
        r0 = r0.getValue();	 Catch:{ all -> 0x0027 }
        r2.close();	 Catch:{ IOException -> 0x0025 }
        goto L_0x0026;
    L_0x0025:
        r4 = move-exception;
    L_0x0026:
        return r0;
    L_0x0027:
        r4 = move-exception;
        r1 = r2;
        goto L_0x002b;
    L_0x002a:
        r4 = move-exception;
    L_0x002b:
        if (r1 == 0) goto L_0x0032;
    L_0x002d:
        r1.close();	 Catch:{ IOException -> 0x0031 }
        goto L_0x0032;
    L_0x0031:
        r0 = move-exception;
    L_0x0032:
        throw r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: miui.os.FileUtils.checksumCrc32(java.io.File):long");
    }

    public static boolean mkdirs(File file, int i, int i2, int i3) {
        if (file.exists()) {
            return file.isDirectory();
        }
        boolean z = false;
        if (!mkdirs(file.getParentFile(), i, i2, i3)) {
            return false;
        }
        if (file.mkdir() && chmod(file.getPath(), i) && chown(file.getPath(), i2, i3)) {
            z = true;
        }
        return z;
    }

    public static boolean rm(String str) {
        return Native.rm(str, 1);
    }

    public static String getExtension(String str) {
        if (str == null || str.length() == 0) {
            return "";
        }
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf > -1) {
            return str.substring(lastIndexOf + 1);
        }
        return "";
    }

    public static String getName(String str) {
        if (str == null || str.length() == 0) {
            return "";
        }
        int lastIndexOf = str.lastIndexOf(File.separatorChar);
        if (lastIndexOf < 0) {
            lastIndexOf = -1;
        }
        int lastIndexOf2 = str.lastIndexOf(".");
        return lastIndexOf2 < 0 ? str.substring(lastIndexOf + 1) : str.substring(lastIndexOf + 1, lastIndexOf2);
    }

    public static String getFileName(String str) {
        if (str == null || str.length() == 0) {
            return "";
        }
        int lastIndexOf = str.lastIndexOf(File.separatorChar);
        if (lastIndexOf > -1) {
            return str.substring(lastIndexOf + 1);
        }
        return str;
    }

    public static boolean addNoMedia(String str) {
        File file = new File(str);
        if (file.isDirectory()) {
            try {
                return new File(file, ".nomedia").createNewFile();
            } catch (IOException e) {
            }
        }
        return false;
    }

    public static String normalizeDirectoryName(String str) {
        if (str.charAt(str.length() - 1) == File.separatorChar) {
            return str;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str);
        stringBuilder.append(File.separator);
        return stringBuilder.toString();
    }

    public static long getFolderSize(File file) {
        long j = 0;
        if (!file.exists()) {
            return 0;
        }
        if (!file.isDirectory()) {
            return file.length();
        }
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File folderSize : listFiles) {
                j += getFolderSize(folderSize);
            }
        }
        return j;
    }

    public static String readFileAsString(String str) throws IOException {
        return new String(H(str), Charset.forName(Keyczar.DEFAULT_ENCODING));
    }

    private static byte[] H(String str) throws IOException {
        Throwable th;
        RandomAccessFile randomAccessFile;
        try {
            randomAccessFile = new RandomAccessFile(str, "r");
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream((int) randomAccessFile.length());
                byte[] bArr = new byte[8192];
                while (true) {
                    int read = randomAccessFile.read(bArr);
                    if (read == -1) {
                        byte[] toByteArray = byteArrayOutputStream.toByteArray();
                        try {
                            randomAccessFile.close();
                        } catch (IOException e) {
                        }
                        return toByteArray;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            randomAccessFile = null;
            if (randomAccessFile != null) {
                try {
                    randomAccessFile.close();
                } catch (IOException e2) {
                }
            }
            throw th;
        }
    }
}
