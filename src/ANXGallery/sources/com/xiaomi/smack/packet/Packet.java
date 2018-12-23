package com.xiaomi.smack.packet;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import com.xiaomi.smack.util.StringUtils;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.CopyOnWriteArrayList;

public abstract class Packet {
    protected static final String DEFAULT_LANGUAGE = Locale.getDefault().getLanguage().toLowerCase();
    private static String DEFAULT_XML_NS = null;
    public static final DateFormat XEP_0082_UTC_FORMAT = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
    private static long id = 0;
    private static String prefix = (StringUtils.randomString(5) + "-");
    private String chId = null;
    private XMPPError error = null;
    private String from = null;
    private String packageName = null;
    private List<CommonPacketExtension> packetExtensions = new CopyOnWriteArrayList();
    private String packetID = null;
    private final Map<String, Object> properties = new HashMap();
    private String to = null;
    private String xmlns = DEFAULT_XML_NS;

    public abstract String toXML();

    static {
        XEP_0082_UTC_FORMAT.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    public static synchronized String nextID() {
        String stringBuilder;
        synchronized (Packet.class) {
            StringBuilder append = new StringBuilder().append(prefix);
            long j = id;
            id = 1 + j;
            stringBuilder = append.append(Long.toString(j)).toString();
        }
        return stringBuilder;
    }

    public Packet(Bundle b) {
        this.to = b.getString("ext_to");
        this.from = b.getString("ext_from");
        this.chId = b.getString("ext_chid");
        this.packetID = b.getString("ext_pkt_id");
        Parcelable[] extBundles = b.getParcelableArray("ext_exts");
        if (extBundles != null) {
            this.packetExtensions = new ArrayList(extBundles.length);
            for (Parcelable p : extBundles) {
                CommonPacketExtension ext = CommonPacketExtension.parseFromBundle((Bundle) p);
                if (ext != null) {
                    this.packetExtensions.add(ext);
                }
            }
        }
        Bundle errBundle = b.getBundle("ext_ERROR");
        if (errBundle != null) {
            this.error = new XMPPError(errBundle);
        }
    }

    public String getPacketID() {
        if ("ID_NOT_AVAILABLE".equals(this.packetID)) {
            return null;
        }
        if (this.packetID == null) {
            this.packetID = nextID();
        }
        return this.packetID;
    }

    public void setPacketID(String packetID) {
        this.packetID = packetID;
    }

    public String getChannelId() {
        return this.chId;
    }

    public void setChannelId(String appId) {
        this.chId = appId;
    }

    public String getTo() {
        return this.to;
    }

    public void setTo(String to) {
        this.to = to;
    }

    public String getFrom() {
        return this.from;
    }

    public void setFrom(String from) {
        this.from = from;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public void setPackageName(String packageName) {
        this.packageName = packageName;
    }

    public XMPPError getError() {
        return this.error;
    }

    public void setError(XMPPError error) {
        this.error = error;
    }

    public synchronized Collection<CommonPacketExtension> getExtensions() {
        Collection<CommonPacketExtension> emptyList;
        if (this.packetExtensions == null) {
            emptyList = Collections.emptyList();
        } else {
            emptyList = Collections.unmodifiableList(new ArrayList(this.packetExtensions));
        }
        return emptyList;
    }

    public CommonPacketExtension getExtension(String elementName) {
        return getExtension(elementName, null);
    }

    public CommonPacketExtension getExtension(String elementName, String namespace) {
        for (CommonPacketExtension ext : this.packetExtensions) {
            if ((namespace == null || namespace.equals(ext.getNamespace())) && elementName.equals(ext.getElementName())) {
                return ext;
            }
        }
        return null;
    }

    public void addExtension(CommonPacketExtension extension) {
        this.packetExtensions.add(extension);
    }

    public synchronized Object getProperty(String name) {
        Object obj;
        if (this.properties == null) {
            obj = null;
        } else {
            obj = this.properties.get(name);
        }
        return obj;
    }

    public synchronized Collection<String> getPropertyNames() {
        Collection<String> emptySet;
        if (this.properties == null) {
            emptySet = Collections.emptySet();
        } else {
            emptySet = Collections.unmodifiableSet(new HashSet(this.properties.keySet()));
        }
        return emptySet;
    }

    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        if (!TextUtils.isEmpty(this.xmlns)) {
            bundle.putString("ext_ns", this.xmlns);
        }
        if (!TextUtils.isEmpty(this.from)) {
            bundle.putString("ext_from", this.from);
        }
        if (!TextUtils.isEmpty(this.to)) {
            bundle.putString("ext_to", this.to);
        }
        if (!TextUtils.isEmpty(this.packetID)) {
            bundle.putString("ext_pkt_id", this.packetID);
        }
        if (!TextUtils.isEmpty(this.chId)) {
            bundle.putString("ext_chid", this.chId);
        }
        if (this.error != null) {
            bundle.putBundle("ext_ERROR", this.error.toBundle());
        }
        if (this.packetExtensions != null) {
            Bundle[] extBundle = new Bundle[this.packetExtensions.size()];
            int i = 0;
            for (CommonPacketExtension ext : this.packetExtensions) {
                Bundle subBundle = ext.toBundle();
                if (subBundle != null) {
                    int i2 = i + 1;
                    extBundle[i] = subBundle;
                    i = i2;
                }
            }
            bundle.putParcelableArray("ext_exts", extBundle);
        }
        return bundle;
    }

    /* JADX WARNING: Removed duplicated region for block: B:55:0x0127 A:{SYNTHETIC, Splitter: B:55:0x0127} */
    /* JADX WARNING: Removed duplicated region for block: B:96:0x007e A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x012c A:{SYNTHETIC, Splitter: B:58:0x012c} */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x0127 A:{SYNTHETIC, Splitter: B:55:0x0127} */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x012c A:{SYNTHETIC, Splitter: B:58:0x012c} */
    /* JADX WARNING: Removed duplicated region for block: B:96:0x007e A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x013c A:{SYNTHETIC, Splitter: B:66:0x013c} */
    protected synchronized java.lang.String getExtensionsXML() {
        /*
        r13 = this;
        monitor-enter(r13);
        r0 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0022 }
        r0.<init>();	 Catch:{ all -> 0x0022 }
        r10 = r13.getExtensions();	 Catch:{ all -> 0x0022 }
        r10 = r10.iterator();	 Catch:{ all -> 0x0022 }
    L_0x000e:
        r11 = r10.hasNext();	 Catch:{ all -> 0x0022 }
        if (r11 == 0) goto L_0x0025;
    L_0x0014:
        r5 = r10.next();	 Catch:{ all -> 0x0022 }
        r5 = (com.xiaomi.smack.packet.PacketExtension) r5;	 Catch:{ all -> 0x0022 }
        r11 = r5.toXML();	 Catch:{ all -> 0x0022 }
        r0.append(r11);	 Catch:{ all -> 0x0022 }
        goto L_0x000e;
    L_0x0022:
        r10 = move-exception;
        monitor-exit(r13);
        throw r10;
    L_0x0025:
        r10 = r13.properties;	 Catch:{ all -> 0x0022 }
        if (r10 == 0) goto L_0x0145;
    L_0x0029:
        r10 = r13.properties;	 Catch:{ all -> 0x0022 }
        r10 = r10.isEmpty();	 Catch:{ all -> 0x0022 }
        if (r10 != 0) goto L_0x0145;
    L_0x0031:
        r10 = "<properties xmlns=\"http://www.jivesoftware.com/xmlns/xmpp/properties\">";
        r0.append(r10);	 Catch:{ all -> 0x0022 }
        r10 = r13.getPropertyNames();	 Catch:{ all -> 0x0022 }
        r10 = r10.iterator();	 Catch:{ all -> 0x0022 }
    L_0x003e:
        r11 = r10.hasNext();	 Catch:{ all -> 0x0022 }
        if (r11 == 0) goto L_0x0140;
    L_0x0044:
        r6 = r10.next();	 Catch:{ all -> 0x0022 }
        r6 = (java.lang.String) r6;	 Catch:{ all -> 0x0022 }
        r9 = r13.getProperty(r6);	 Catch:{ all -> 0x0022 }
        r11 = "<property>";
        r0.append(r11);	 Catch:{ all -> 0x0022 }
        r11 = "<name>";
        r11 = r0.append(r11);	 Catch:{ all -> 0x0022 }
        r12 = com.xiaomi.smack.util.StringUtils.escapeForXML(r6);	 Catch:{ all -> 0x0022 }
        r11 = r11.append(r12);	 Catch:{ all -> 0x0022 }
        r12 = "</name>";
        r11.append(r12);	 Catch:{ all -> 0x0022 }
        r11 = "<value type=\"";
        r0.append(r11);	 Catch:{ all -> 0x0022 }
        r11 = r9 instanceof java.lang.Integer;	 Catch:{ all -> 0x0022 }
        if (r11 == 0) goto L_0x0084;
    L_0x006f:
        r11 = "integer\">";
        r11 = r0.append(r11);	 Catch:{ all -> 0x0022 }
        r11 = r11.append(r9);	 Catch:{ all -> 0x0022 }
        r12 = "</value>";
        r11.append(r12);	 Catch:{ all -> 0x0022 }
    L_0x007e:
        r11 = "</property>";
        r0.append(r11);	 Catch:{ all -> 0x0022 }
        goto L_0x003e;
    L_0x0084:
        r11 = r9 instanceof java.lang.Long;	 Catch:{ all -> 0x0022 }
        if (r11 == 0) goto L_0x0098;
    L_0x0088:
        r11 = "long\">";
        r11 = r0.append(r11);	 Catch:{ all -> 0x0022 }
        r11 = r11.append(r9);	 Catch:{ all -> 0x0022 }
        r12 = "</value>";
        r11.append(r12);	 Catch:{ all -> 0x0022 }
        goto L_0x007e;
    L_0x0098:
        r11 = r9 instanceof java.lang.Float;	 Catch:{ all -> 0x0022 }
        if (r11 == 0) goto L_0x00ac;
    L_0x009c:
        r11 = "float\">";
        r11 = r0.append(r11);	 Catch:{ all -> 0x0022 }
        r11 = r11.append(r9);	 Catch:{ all -> 0x0022 }
        r12 = "</value>";
        r11.append(r12);	 Catch:{ all -> 0x0022 }
        goto L_0x007e;
    L_0x00ac:
        r11 = r9 instanceof java.lang.Double;	 Catch:{ all -> 0x0022 }
        if (r11 == 0) goto L_0x00c0;
    L_0x00b0:
        r11 = "double\">";
        r11 = r0.append(r11);	 Catch:{ all -> 0x0022 }
        r11 = r11.append(r9);	 Catch:{ all -> 0x0022 }
        r12 = "</value>";
        r11.append(r12);	 Catch:{ all -> 0x0022 }
        goto L_0x007e;
    L_0x00c0:
        r11 = r9 instanceof java.lang.Boolean;	 Catch:{ all -> 0x0022 }
        if (r11 == 0) goto L_0x00d4;
    L_0x00c4:
        r11 = "boolean\">";
        r11 = r0.append(r11);	 Catch:{ all -> 0x0022 }
        r11 = r11.append(r9);	 Catch:{ all -> 0x0022 }
        r12 = "</value>";
        r11.append(r12);	 Catch:{ all -> 0x0022 }
        goto L_0x007e;
    L_0x00d4:
        r11 = r9 instanceof java.lang.String;	 Catch:{ all -> 0x0022 }
        if (r11 == 0) goto L_0x00ed;
    L_0x00d8:
        r11 = "string\">";
        r0.append(r11);	 Catch:{ all -> 0x0022 }
        r9 = (java.lang.String) r9;	 Catch:{ all -> 0x0022 }
        r11 = com.xiaomi.smack.util.StringUtils.escapeForXML(r9);	 Catch:{ all -> 0x0022 }
        r0.append(r11);	 Catch:{ all -> 0x0022 }
        r11 = "</value>";
        r0.append(r11);	 Catch:{ all -> 0x0022 }
        goto L_0x007e;
    L_0x00ed:
        r1 = 0;
        r7 = 0;
        r2 = new java.io.ByteArrayOutputStream;	 Catch:{ Exception -> 0x0121 }
        r2.<init>();	 Catch:{ Exception -> 0x0121 }
        r8 = new java.io.ObjectOutputStream;	 Catch:{ Exception -> 0x015a, all -> 0x0153 }
        r8.<init>(r2);	 Catch:{ Exception -> 0x015a, all -> 0x0153 }
        r8.writeObject(r9);	 Catch:{ Exception -> 0x015d, all -> 0x0156 }
        r11 = "java-object\">";
        r0.append(r11);	 Catch:{ Exception -> 0x015d, all -> 0x0156 }
        r11 = r2.toByteArray();	 Catch:{ Exception -> 0x015d, all -> 0x0156 }
        r4 = com.xiaomi.smack.util.StringUtils.encodeBase64(r11);	 Catch:{ Exception -> 0x015d, all -> 0x0156 }
        r11 = r0.append(r4);	 Catch:{ Exception -> 0x015d, all -> 0x0156 }
        r12 = "</value>";
        r11.append(r12);	 Catch:{ Exception -> 0x015d, all -> 0x0156 }
        if (r8 == 0) goto L_0x0117;
    L_0x0114:
        r8.close();	 Catch:{ Exception -> 0x014b }
    L_0x0117:
        if (r2 == 0) goto L_0x007e;
    L_0x0119:
        r2.close();	 Catch:{ Exception -> 0x011e }
        goto L_0x007e;
    L_0x011e:
        r11 = move-exception;
        goto L_0x007e;
    L_0x0121:
        r3 = move-exception;
    L_0x0122:
        r3.printStackTrace();	 Catch:{ all -> 0x0134 }
        if (r7 == 0) goto L_0x012a;
    L_0x0127:
        r7.close();	 Catch:{ Exception -> 0x014d }
    L_0x012a:
        if (r1 == 0) goto L_0x007e;
    L_0x012c:
        r1.close();	 Catch:{ Exception -> 0x0131 }
        goto L_0x007e;
    L_0x0131:
        r11 = move-exception;
        goto L_0x007e;
    L_0x0134:
        r10 = move-exception;
    L_0x0135:
        if (r7 == 0) goto L_0x013a;
    L_0x0137:
        r7.close();	 Catch:{ Exception -> 0x014f }
    L_0x013a:
        if (r1 == 0) goto L_0x013f;
    L_0x013c:
        r1.close();	 Catch:{ Exception -> 0x0151 }
    L_0x013f:
        throw r10;	 Catch:{ all -> 0x0022 }
    L_0x0140:
        r10 = "</properties>";
        r0.append(r10);	 Catch:{ all -> 0x0022 }
    L_0x0145:
        r10 = r0.toString();	 Catch:{ all -> 0x0022 }
        monitor-exit(r13);
        return r10;
    L_0x014b:
        r11 = move-exception;
        goto L_0x0117;
    L_0x014d:
        r11 = move-exception;
        goto L_0x012a;
    L_0x014f:
        r11 = move-exception;
        goto L_0x013a;
    L_0x0151:
        r11 = move-exception;
        goto L_0x013f;
    L_0x0153:
        r10 = move-exception;
        r1 = r2;
        goto L_0x0135;
    L_0x0156:
        r10 = move-exception;
        r7 = r8;
        r1 = r2;
        goto L_0x0135;
    L_0x015a:
        r3 = move-exception;
        r1 = r2;
        goto L_0x0122;
    L_0x015d:
        r3 = move-exception;
        r7 = r8;
        r1 = r2;
        goto L_0x0122;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.smack.packet.Packet.getExtensionsXML():java.lang.String");
    }

    public String getXmlns() {
        return this.xmlns;
    }

    public static String getDefaultLanguage() {
        return DEFAULT_LANGUAGE;
    }

    public boolean equals(Object o) {
        boolean z = true;
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        Packet packet = (Packet) o;
        if (this.error != null) {
            if (!this.error.equals(packet.error)) {
                return false;
            }
        } else if (packet.error != null) {
            return false;
        }
        if (this.from != null) {
            if (!this.from.equals(packet.from)) {
                return false;
            }
        } else if (packet.from != null) {
            return false;
        }
        if (!this.packetExtensions.equals(packet.packetExtensions)) {
            return false;
        }
        if (this.packetID != null) {
            if (!this.packetID.equals(packet.packetID)) {
                return false;
            }
        } else if (packet.packetID != null) {
            return false;
        }
        if (this.chId != null) {
            if (!this.chId.equals(packet.chId)) {
                return false;
            }
        } else if (packet.chId != null) {
            return false;
        }
        if (this.properties != null) {
            if (!this.properties.equals(packet.properties)) {
                return false;
            }
        } else if (packet.properties != null) {
            return false;
        }
        if (this.to != null) {
            if (!this.to.equals(packet.to)) {
                return false;
            }
        } else if (packet.to != null) {
            return false;
        }
        if (this.xmlns == null ? packet.xmlns != null : !this.xmlns.equals(packet.xmlns)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int result;
        int hashCode;
        int i = 0;
        if (this.xmlns != null) {
            result = this.xmlns.hashCode();
        } else {
            result = 0;
        }
        int i2 = result * 31;
        if (this.packetID != null) {
            hashCode = this.packetID.hashCode();
        } else {
            hashCode = 0;
        }
        i2 = (i2 + hashCode) * 31;
        if (this.to != null) {
            hashCode = this.to.hashCode();
        } else {
            hashCode = 0;
        }
        i2 = (i2 + hashCode) * 31;
        if (this.from != null) {
            hashCode = this.from.hashCode();
        } else {
            hashCode = 0;
        }
        i2 = (i2 + hashCode) * 31;
        if (this.chId != null) {
            hashCode = this.chId.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode = (((((i2 + hashCode) * 31) + this.packetExtensions.hashCode()) * 31) + this.properties.hashCode()) * 31;
        if (this.error != null) {
            i = this.error.hashCode();
        }
        return hashCode + i;
    }
}
