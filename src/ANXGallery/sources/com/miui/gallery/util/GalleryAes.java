package com.miui.gallery.util;

import com.miui.gallery.util.DocumentProviderUtils.WriteHandler;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class GalleryAes {
    private static final byte[] sAesIv = new byte[]{(byte) 17, (byte) 19, (byte) 33, (byte) 35, (byte) 49, (byte) 51, (byte) 65, (byte) 67, (byte) 81, (byte) 83, (byte) 97, (byte) 102, (byte) 103, (byte) 104, (byte) 113, (byte) 114};
    private static final byte[] sRandomKey = new byte[16];

    public static boolean encryptFile(String enfile, String defile, byte[] key) {
        NoSuchAlgorithmException e;
        Throwable th;
        NoSuchPaddingException e2;
        InvalidKeyException e3;
        InvalidAlgorithmParameterException e4;
        FileNotFoundException e5;
        IOException e6;
        if (key == null || key.length != 16) {
            return false;
        }
        SecretKeySpec spec = new SecretKeySpec(key, "AES");
        IvParameterSpec ivSpec = new IvParameterSpec(sAesIv);
        FileInputStream in = null;
        CipherInputStream cin = null;
        try {
            Cipher cipher = Cipher.getInstance("AES/CTR/NoPadding");
            cipher.init(1, spec, ivSpec);
            FileInputStream in2 = new FileInputStream(enfile);
            try {
                CipherInputStream cin2 = new CipherInputStream(in2, cipher);
                try {
                    boolean booleanValue = ((Boolean) DocumentProviderUtils.safeWriteFile(cin2, new File(defile), new WriteHandler<Boolean>() {
                        public Boolean handle(InputStream cin, FileOutputStream out) {
                            try {
                                byte[] buffer = new byte[1024];
                                while (true) {
                                    int count = cin.read(buffer);
                                    if (count == -1) {
                                        return Boolean.valueOf(true);
                                    }
                                    out.write(buffer, 0, count);
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                                return Boolean.valueOf(false);
                            }
                        }
                    })).booleanValue();
                    GalleryUtils.closeStream(in2);
                    GalleryUtils.closeStream(cin2);
                    return booleanValue;
                } catch (NoSuchAlgorithmException e7) {
                    e = e7;
                    cin = cin2;
                    in = in2;
                    try {
                        e.printStackTrace();
                        GalleryUtils.closeStream(in);
                        GalleryUtils.closeStream(cin);
                        return false;
                    } catch (Throwable th2) {
                        th = th2;
                        GalleryUtils.closeStream(in);
                        GalleryUtils.closeStream(cin);
                        throw th;
                    }
                } catch (NoSuchPaddingException e8) {
                    e2 = e8;
                    cin = cin2;
                    in = in2;
                    e2.printStackTrace();
                    GalleryUtils.closeStream(in);
                    GalleryUtils.closeStream(cin);
                    return false;
                } catch (InvalidKeyException e9) {
                    e3 = e9;
                    cin = cin2;
                    in = in2;
                    e3.printStackTrace();
                    GalleryUtils.closeStream(in);
                    GalleryUtils.closeStream(cin);
                    return false;
                } catch (InvalidAlgorithmParameterException e10) {
                    e4 = e10;
                    cin = cin2;
                    in = in2;
                    e4.printStackTrace();
                    GalleryUtils.closeStream(in);
                    GalleryUtils.closeStream(cin);
                    return false;
                } catch (FileNotFoundException e11) {
                    e5 = e11;
                    cin = cin2;
                    in = in2;
                    e5.printStackTrace();
                    GalleryUtils.closeStream(in);
                    GalleryUtils.closeStream(cin);
                    return false;
                } catch (IOException e12) {
                    e6 = e12;
                    cin = cin2;
                    in = in2;
                    e6.printStackTrace();
                    GalleryUtils.closeStream(in);
                    GalleryUtils.closeStream(cin);
                    return false;
                } catch (Throwable th3) {
                    th = th3;
                    cin = cin2;
                    in = in2;
                    GalleryUtils.closeStream(in);
                    GalleryUtils.closeStream(cin);
                    throw th;
                }
            } catch (NoSuchAlgorithmException e13) {
                e = e13;
                in = in2;
                e.printStackTrace();
                GalleryUtils.closeStream(in);
                GalleryUtils.closeStream(cin);
                return false;
            } catch (NoSuchPaddingException e14) {
                e2 = e14;
                in = in2;
                e2.printStackTrace();
                GalleryUtils.closeStream(in);
                GalleryUtils.closeStream(cin);
                return false;
            } catch (InvalidKeyException e15) {
                e3 = e15;
                in = in2;
                e3.printStackTrace();
                GalleryUtils.closeStream(in);
                GalleryUtils.closeStream(cin);
                return false;
            } catch (InvalidAlgorithmParameterException e16) {
                e4 = e16;
                in = in2;
                e4.printStackTrace();
                GalleryUtils.closeStream(in);
                GalleryUtils.closeStream(cin);
                return false;
            } catch (FileNotFoundException e17) {
                e5 = e17;
                in = in2;
                e5.printStackTrace();
                GalleryUtils.closeStream(in);
                GalleryUtils.closeStream(cin);
                return false;
            } catch (IOException e18) {
                e6 = e18;
                in = in2;
                e6.printStackTrace();
                GalleryUtils.closeStream(in);
                GalleryUtils.closeStream(cin);
                return false;
            } catch (Throwable th4) {
                th = th4;
                in = in2;
                GalleryUtils.closeStream(in);
                GalleryUtils.closeStream(cin);
                throw th;
            }
        } catch (NoSuchAlgorithmException e19) {
            e = e19;
            e.printStackTrace();
            GalleryUtils.closeStream(in);
            GalleryUtils.closeStream(cin);
            return false;
        } catch (NoSuchPaddingException e20) {
            e2 = e20;
            e2.printStackTrace();
            GalleryUtils.closeStream(in);
            GalleryUtils.closeStream(cin);
            return false;
        } catch (InvalidKeyException e21) {
            e3 = e21;
            e3.printStackTrace();
            GalleryUtils.closeStream(in);
            GalleryUtils.closeStream(cin);
            return false;
        } catch (InvalidAlgorithmParameterException e22) {
            e4 = e22;
            e4.printStackTrace();
            GalleryUtils.closeStream(in);
            GalleryUtils.closeStream(cin);
            return false;
        } catch (FileNotFoundException e23) {
            e5 = e23;
            e5.printStackTrace();
            GalleryUtils.closeStream(in);
            GalleryUtils.closeStream(cin);
            return false;
        } catch (IOException e24) {
            e6 = e24;
            e6.printStackTrace();
            GalleryUtils.closeStream(in);
            GalleryUtils.closeStream(cin);
            return false;
        }
    }

    public static boolean decryptFile(String srcfile, String desfile, byte[] key) {
        NoSuchAlgorithmException e;
        Throwable th;
        NoSuchPaddingException e2;
        InvalidKeyException e3;
        InvalidAlgorithmParameterException e4;
        FileNotFoundException e5;
        IOException e6;
        if (key == null || key.length != 16) {
            return false;
        }
        SecretKeySpec spec = new SecretKeySpec(key, "AES");
        FileInputStream in = null;
        try {
            final Cipher cipher = Cipher.getInstance("AES/CTR/NoPadding");
            cipher.init(2, spec, new IvParameterSpec(sAesIv));
            FileInputStream in2 = new FileInputStream(srcfile);
            try {
                boolean booleanValue = ((Boolean) DocumentProviderUtils.safeWriteFile(in2, new File(desfile), new WriteHandler<Boolean>() {
                    public Boolean handle(InputStream in, FileOutputStream out) {
                        Boolean valueOf;
                        Exception e;
                        Throwable th;
                        CipherOutputStream cout = null;
                        try {
                            CipherOutputStream cout2 = new CipherOutputStream(out, cipher);
                            try {
                                byte[] buffer = new byte[1024];
                                while (true) {
                                    int count = in.read(buffer);
                                    if (count == -1) {
                                        break;
                                    }
                                    cout2.write(buffer, 0, count);
                                }
                                valueOf = Boolean.valueOf(true);
                                MiscUtil.closeSilently(cout2);
                                cout = cout2;
                            } catch (Exception e2) {
                                e = e2;
                                cout = cout2;
                                try {
                                    e.printStackTrace();
                                    valueOf = Boolean.valueOf(false);
                                    MiscUtil.closeSilently(cout);
                                    return valueOf;
                                } catch (Throwable th2) {
                                    th = th2;
                                    MiscUtil.closeSilently(cout);
                                    throw th;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                cout = cout2;
                                MiscUtil.closeSilently(cout);
                                throw th;
                            }
                        } catch (Exception e3) {
                            e = e3;
                            e.printStackTrace();
                            valueOf = Boolean.valueOf(false);
                            MiscUtil.closeSilently(cout);
                            return valueOf;
                        }
                        return valueOf;
                    }
                })).booleanValue();
                GalleryUtils.closeStream(in2);
                return booleanValue;
            } catch (NoSuchAlgorithmException e7) {
                e = e7;
                in = in2;
                try {
                    e.printStackTrace();
                    GalleryUtils.closeStream(in);
                    return false;
                } catch (Throwable th2) {
                    th = th2;
                    GalleryUtils.closeStream(in);
                    throw th;
                }
            } catch (NoSuchPaddingException e8) {
                e2 = e8;
                in = in2;
                e2.printStackTrace();
                GalleryUtils.closeStream(in);
                return false;
            } catch (InvalidKeyException e9) {
                e3 = e9;
                in = in2;
                e3.printStackTrace();
                GalleryUtils.closeStream(in);
                return false;
            } catch (InvalidAlgorithmParameterException e10) {
                e4 = e10;
                in = in2;
                e4.printStackTrace();
                GalleryUtils.closeStream(in);
                return false;
            } catch (FileNotFoundException e11) {
                e5 = e11;
                in = in2;
                e5.printStackTrace();
                GalleryUtils.closeStream(in);
                return false;
            } catch (IOException e12) {
                e6 = e12;
                in = in2;
                e6.printStackTrace();
                GalleryUtils.closeStream(in);
                return false;
            } catch (Throwable th3) {
                th = th3;
                in = in2;
                GalleryUtils.closeStream(in);
                throw th;
            }
        } catch (NoSuchAlgorithmException e13) {
            e = e13;
            e.printStackTrace();
            GalleryUtils.closeStream(in);
            return false;
        } catch (NoSuchPaddingException e14) {
            e2 = e14;
            e2.printStackTrace();
            GalleryUtils.closeStream(in);
            return false;
        } catch (InvalidKeyException e15) {
            e3 = e15;
            e3.printStackTrace();
            GalleryUtils.closeStream(in);
            return false;
        } catch (InvalidAlgorithmParameterException e16) {
            e4 = e16;
            e4.printStackTrace();
            GalleryUtils.closeStream(in);
            return false;
        } catch (FileNotFoundException e17) {
            e5 = e17;
            e5.printStackTrace();
            GalleryUtils.closeStream(in);
            return false;
        } catch (IOException e18) {
            e6 = e18;
            e6.printStackTrace();
            GalleryUtils.closeStream(in);
            return false;
        }
    }

    private static byte[] generateEmptyKey() {
        return new byte[16];
    }

    public static synchronized byte[] generateRandomKey() {
        byte[] key;
        synchronized (GalleryAes.class) {
            key = generateEmptyKey();
            new SecureRandom().nextBytes(sRandomKey);
            System.arraycopy(sRandomKey, 0, key, 0, sRandomKey.length);
        }
        return key;
    }
}
