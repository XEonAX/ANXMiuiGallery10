package com.larvalabs.svgandroid;

/* compiled from: ParserHelper */
public class a {
    private static final double[] e = new double[128];
    public int a;
    private char b;
    private CharSequence c;
    private int d;

    public a(CharSequence charSequence, int i) {
        this.c = charSequence;
        this.a = i;
        this.d = charSequence.length();
        this.b = charSequence.charAt(i);
    }

    private char f() {
        if (this.a < this.d) {
            this.a++;
        }
        if (this.a == this.d) {
            return 0;
        }
        return this.c.charAt(this.a);
    }

    public void a() {
        while (this.a < this.d && Character.isWhitespace(this.c.charAt(this.a))) {
            c();
        }
    }

    public void b() {
        while (this.a < this.d) {
            switch (this.c.charAt(this.a)) {
                case 9:
                case 10:
                case ' ':
                case ',':
                    c();
                default:
                    return;
            }
        }
    }

    public void c() {
        this.b = f();
    }

    /* JADX WARNING: Missing block: B:10:0x0023, code:
            if (r11.b != '.') goto L_0x0099;
     */
    /* JADX WARNING: Missing block: B:11:0x0025, code:
            r11.b = f();
     */
    /* JADX WARNING: Missing block: B:12:0x002d, code:
            switch(r11.b) {
                case 48: goto L_0x006b;
                case 49: goto L_0x0100;
                case 50: goto L_0x0100;
                case 51: goto L_0x0100;
                case 52: goto L_0x0100;
                case 53: goto L_0x0100;
                case 54: goto L_0x0100;
                case 55: goto L_0x0100;
                case 56: goto L_0x0100;
                case 57: goto L_0x0100;
                default: goto L_0x0030;
            };
     */
    /* JADX WARNING: Missing block: B:13:0x0030, code:
            if (r4 != 0) goto L_0x0099;
     */
    /* JADX WARNING: Missing block: B:14:0x0032, code:
            a(r11.b);
     */
    /* JADX WARNING: Missing block: B:15:0x0039, code:
            r11.b = f();
     */
    /* JADX WARNING: Missing block: B:16:0x0041, code:
            switch(r11.b) {
                case 46: goto L_0x0046;
                case 48: goto L_0x0039;
                case 49: goto L_0x004b;
                case 50: goto L_0x004b;
                case 51: goto L_0x004b;
                case 52: goto L_0x004b;
                case 53: goto L_0x004b;
                case 54: goto L_0x004b;
                case 55: goto L_0x004b;
                case 56: goto L_0x004b;
                case 57: goto L_0x004b;
                case 69: goto L_0x0046;
                case com.miui.gallery.assistant.jni.filter.BaiduSceneResult.SHOOTING :int: goto L_0x0046;
                default: goto L_0x0044;
            };
     */
    /* JADX WARNING: Missing block: B:18:0x0046, code:
            r3 = 0;
            r4 = 1;
            r5 = 0;
            r6 = 0;
     */
    /* JADX WARNING: Missing block: B:19:0x004b, code:
            r3 = 0;
            r4 = 0;
            r5 = 0;
     */
    /* JADX WARNING: Missing block: B:20:0x004e, code:
            if (r4 >= 9) goto L_0x0068;
     */
    /* JADX WARNING: Missing block: B:21:0x0050, code:
            r4 = r4 + 1;
            r5 = (r5 * 10) + (r11.b - 48);
     */
    /* JADX WARNING: Missing block: B:22:0x0059, code:
            r11.b = f();
     */
    /* JADX WARNING: Missing block: B:23:0x0061, code:
            switch(r11.b) {
                case 48: goto L_0x004e;
                case 49: goto L_0x004e;
                case 50: goto L_0x004e;
                case 51: goto L_0x004e;
                case 52: goto L_0x004e;
                case 53: goto L_0x004e;
                case 54: goto L_0x004e;
                case 55: goto L_0x004e;
                case 56: goto L_0x004e;
                case 57: goto L_0x004e;
                default: goto L_0x0064;
            };
     */
    /* JADX WARNING: Missing block: B:24:0x0064, code:
            r6 = r5;
            r5 = r4;
            r4 = 1;
     */
    /* JADX WARNING: Missing block: B:25:0x0068, code:
            r3 = r3 + 1;
     */
    /* JADX WARNING: Missing block: B:26:0x006b, code:
            if (r5 != 0) goto L_0x0100;
     */
    /* JADX WARNING: Missing block: B:27:0x006d, code:
            r11.b = f();
            r3 = r3 - 1;
     */
    /* JADX WARNING: Missing block: B:28:0x0077, code:
            switch(r11.b) {
                case 48: goto L_0x006d;
                case 49: goto L_0x007e;
                case 50: goto L_0x007e;
                case 51: goto L_0x007e;
                case 52: goto L_0x007e;
                case 53: goto L_0x007e;
                case 54: goto L_0x007e;
                case 55: goto L_0x007e;
                case 56: goto L_0x007e;
                case 57: goto L_0x007e;
                default: goto L_0x007a;
            };
     */
    /* JADX WARNING: Missing block: B:29:0x007a, code:
            if (r4 != 0) goto L_0x0099;
     */
    /* JADX WARNING: Missing block: B:31:0x007e, code:
            r4 = r5;
            r5 = r6;
     */
    /* JADX WARNING: Missing block: B:32:0x0080, code:
            if (r4 >= 9) goto L_0x008d;
     */
    /* JADX WARNING: Missing block: B:33:0x0082, code:
            r4 = r4 + 1;
            r5 = (r5 * 10) + (r11.b - 48);
            r3 = r3 - 1;
     */
    /* JADX WARNING: Missing block: B:34:0x008d, code:
            r11.b = f();
     */
    /* JADX WARNING: Missing block: B:35:0x0095, code:
            switch(r11.b) {
                case 48: goto L_0x0080;
                case 49: goto L_0x0080;
                case 50: goto L_0x0080;
                case 51: goto L_0x0080;
                case 52: goto L_0x0080;
                case 53: goto L_0x0080;
                case 54: goto L_0x0080;
                case 55: goto L_0x0080;
                case 56: goto L_0x0080;
                case 57: goto L_0x0080;
                default: goto L_0x0098;
            };
     */
    /* JADX WARNING: Missing block: B:36:0x0098, code:
            r6 = r5;
     */
    /* JADX WARNING: Missing block: B:38:0x009b, code:
            switch(r11.b) {
                case 69: goto L_0x00ab;
                case com.miui.gallery.assistant.jni.filter.BaiduSceneResult.SHOOTING :int: goto L_0x00ab;
                default: goto L_0x009e;
            };
     */
    /* JADX WARNING: Missing block: B:39:0x009e, code:
            if (r2 != 0) goto L_0x00a1;
     */
    /* JADX WARNING: Missing block: B:40:0x00a0, code:
            r1 = -r1;
     */
    /* JADX WARNING: Missing block: B:41:0x00a1, code:
            r1 = r1 + r3;
     */
    /* JADX WARNING: Missing block: B:42:0x00a2, code:
            if (r0 != 0) goto L_0x00a5;
     */
    /* JADX WARNING: Missing block: B:43:0x00a4, code:
            r6 = -r6;
     */
    /* JADX WARNING: Missing block: B:45:0x00ab, code:
            r11.b = f();
     */
    /* JADX WARNING: Missing block: B:46:0x00b3, code:
            switch(r11.b) {
                case 43: goto L_0x00bf;
                case 44: goto L_0x00b6;
                case 45: goto L_0x00be;
                case 46: goto L_0x00b6;
                case 47: goto L_0x00b6;
                case 48: goto L_0x00d2;
                case 49: goto L_0x00d2;
                case 50: goto L_0x00d2;
                case 51: goto L_0x00d2;
                case 52: goto L_0x00d2;
                case 53: goto L_0x00d2;
                case 54: goto L_0x00d2;
                case 55: goto L_0x00d2;
                case 56: goto L_0x00d2;
                case 57: goto L_0x00d2;
                default: goto L_0x00b6;
            };
     */
    /* JADX WARNING: Missing block: B:47:0x00b6, code:
            a(r11.b);
     */
    /* JADX WARNING: Missing block: B:48:0x00be, code:
            r2 = 0;
     */
    /* JADX WARNING: Missing block: B:49:0x00bf, code:
            r11.b = f();
     */
    /* JADX WARNING: Missing block: B:50:0x00c7, code:
            switch(r11.b) {
                case 48: goto L_0x00d2;
                case 49: goto L_0x00d2;
                case 50: goto L_0x00d2;
                case 51: goto L_0x00d2;
                case 52: goto L_0x00d2;
                case 53: goto L_0x00d2;
                case 54: goto L_0x00d2;
                case 55: goto L_0x00d2;
                case 56: goto L_0x00d2;
                case 57: goto L_0x00d2;
                default: goto L_0x00ca;
            };
     */
    /* JADX WARNING: Missing block: B:51:0x00ca, code:
            a(r11.b);
     */
    /* JADX WARNING: Missing block: B:53:0x00d4, code:
            switch(r11.b) {
                case 48: goto L_0x00d8;
                case 49: goto L_0x00fe;
                case 50: goto L_0x00fe;
                case 51: goto L_0x00fe;
                case 52: goto L_0x00fe;
                case 53: goto L_0x00fe;
                case 54: goto L_0x00fe;
                case 55: goto L_0x00fe;
                case 56: goto L_0x00fe;
                case 57: goto L_0x00fe;
                default: goto L_0x00d7;
            };
     */
    /* JADX WARNING: Missing block: B:54:0x00d8, code:
            r11.b = f();
     */
    /* JADX WARNING: Missing block: B:55:0x00e0, code:
            switch(r11.b) {
                case 48: goto L_0x00d8;
                case 49: goto L_0x00e4;
                case 50: goto L_0x00e4;
                case 51: goto L_0x00e4;
                case 52: goto L_0x00e4;
                case 53: goto L_0x00e4;
                case 54: goto L_0x00e4;
                case 55: goto L_0x00e4;
                case 56: goto L_0x00e4;
                case 57: goto L_0x00e4;
                default: goto L_0x00e3;
            };
     */
    /* JADX WARNING: Missing block: B:56:0x00e4, code:
            r4 = 0;
     */
    /* JADX WARNING: Missing block: B:58:0x00e6, code:
            if (r1 >= 3) goto L_0x00f1;
     */
    /* JADX WARNING: Missing block: B:59:0x00e8, code:
            r1 = r1 + 1;
            r4 = (r4 * 10) + (r11.b - 48);
     */
    /* JADX WARNING: Missing block: B:60:0x00f1, code:
            r11.b = f();
     */
    /* JADX WARNING: Missing block: B:61:0x00f9, code:
            switch(r11.b) {
                case 48: goto L_0x00e5;
                case 49: goto L_0x00e5;
                case 50: goto L_0x00e5;
                case 51: goto L_0x00e5;
                case 52: goto L_0x00e5;
                case 53: goto L_0x00e5;
                case 54: goto L_0x00e5;
                case 55: goto L_0x00e5;
                case 56: goto L_0x00e5;
                case 57: goto L_0x00e5;
                default: goto L_0x00fc;
            };
     */
    /* JADX WARNING: Missing block: B:62:0x00fc, code:
            r1 = r4;
     */
    /* JADX WARNING: Missing block: B:63:0x00fe, code:
            r4 = 0;
     */
    /* JADX WARNING: Missing block: B:64:0x0100, code:
            r4 = r5;
            r5 = r6;
     */
    /* JADX WARNING: Missing block: B:77:?, code:
            return 0.0f;
     */
    /* JADX WARNING: Missing block: B:78:?, code:
            return 0.0f;
     */
    /* JADX WARNING: Missing block: B:79:?, code:
            return 0.0f;
     */
    /* JADX WARNING: Missing block: B:80:?, code:
            return a(r6, r1);
     */
    /* JADX WARNING: Missing block: B:81:?, code:
            return 0.0f;
     */
    /* JADX WARNING: Missing block: B:82:?, code:
            return 0.0f;
     */
    public float d() {
        /*
        r11 = this;
        r10 = 9;
        r2 = 1;
        r7 = 0;
        r1 = 0;
        r0 = r11.b;
        switch(r0) {
            case 43: goto L_0x0104;
            case 44: goto L_0x000a;
            case 45: goto L_0x0013;
            default: goto L_0x000a;
        };
    L_0x000a:
        r0 = r2;
    L_0x000b:
        r3 = r11.b;
        switch(r3) {
            case 46: goto L_0x001b;
            case 47: goto L_0x0010;
            case 48: goto L_0x0039;
            case 49: goto L_0x004b;
            case 50: goto L_0x004b;
            case 51: goto L_0x004b;
            case 52: goto L_0x004b;
            case 53: goto L_0x004b;
            case 54: goto L_0x004b;
            case 55: goto L_0x004b;
            case 56: goto L_0x004b;
            case 57: goto L_0x004b;
            default: goto L_0x0010;
        };
    L_0x0010:
        r0 = 2143289344; // 0x7fc00000 float:NaN double:1.058925634E-314;
    L_0x0012:
        return r0;
    L_0x0013:
        r0 = r1;
    L_0x0014:
        r3 = r11.f();
        r11.b = r3;
        goto L_0x000b;
    L_0x001b:
        r3 = r1;
        r4 = r1;
        r5 = r1;
        r6 = r1;
    L_0x001f:
        r8 = r11.b;
        r9 = 46;
        if (r8 != r9) goto L_0x0099;
    L_0x0025:
        r8 = r11.f();
        r11.b = r8;
        r8 = r11.b;
        switch(r8) {
            case 48: goto L_0x006b;
            case 49: goto L_0x0100;
            case 50: goto L_0x0100;
            case 51: goto L_0x0100;
            case 52: goto L_0x0100;
            case 53: goto L_0x0100;
            case 54: goto L_0x0100;
            case 55: goto L_0x0100;
            case 56: goto L_0x0100;
            case 57: goto L_0x0100;
            default: goto L_0x0030;
        };
    L_0x0030:
        if (r4 != 0) goto L_0x0099;
    L_0x0032:
        r0 = r11.b;
        r11.a(r0);
        r0 = r7;
        goto L_0x0012;
    L_0x0039:
        r3 = r11.f();
        r11.b = r3;
        r3 = r11.b;
        switch(r3) {
            case 46: goto L_0x0046;
            case 48: goto L_0x0039;
            case 49: goto L_0x004b;
            case 50: goto L_0x004b;
            case 51: goto L_0x004b;
            case 52: goto L_0x004b;
            case 53: goto L_0x004b;
            case 54: goto L_0x004b;
            case 55: goto L_0x004b;
            case 56: goto L_0x004b;
            case 57: goto L_0x004b;
            case 69: goto L_0x0046;
            case 101: goto L_0x0046;
            default: goto L_0x0044;
        };
    L_0x0044:
        r0 = r7;
        goto L_0x0012;
    L_0x0046:
        r3 = r1;
        r4 = r2;
        r5 = r1;
        r6 = r1;
        goto L_0x001f;
    L_0x004b:
        r3 = r1;
        r4 = r1;
        r5 = r1;
    L_0x004e:
        if (r4 >= r10) goto L_0x0068;
    L_0x0050:
        r4 = r4 + 1;
        r5 = r5 * 10;
        r6 = r11.b;
        r6 = r6 + -48;
        r5 = r5 + r6;
    L_0x0059:
        r6 = r11.f();
        r11.b = r6;
        r6 = r11.b;
        switch(r6) {
            case 48: goto L_0x004e;
            case 49: goto L_0x004e;
            case 50: goto L_0x004e;
            case 51: goto L_0x004e;
            case 52: goto L_0x004e;
            case 53: goto L_0x004e;
            case 54: goto L_0x004e;
            case 55: goto L_0x004e;
            case 56: goto L_0x004e;
            case 57: goto L_0x004e;
            default: goto L_0x0064;
        };
    L_0x0064:
        r6 = r5;
        r5 = r4;
        r4 = r2;
        goto L_0x001f;
    L_0x0068:
        r3 = r3 + 1;
        goto L_0x0059;
    L_0x006b:
        if (r5 != 0) goto L_0x0100;
    L_0x006d:
        r8 = r11.f();
        r11.b = r8;
        r3 = r3 + -1;
        r8 = r11.b;
        switch(r8) {
            case 48: goto L_0x006d;
            case 49: goto L_0x007e;
            case 50: goto L_0x007e;
            case 51: goto L_0x007e;
            case 52: goto L_0x007e;
            case 53: goto L_0x007e;
            case 54: goto L_0x007e;
            case 55: goto L_0x007e;
            case 56: goto L_0x007e;
            case 57: goto L_0x007e;
            default: goto L_0x007a;
        };
    L_0x007a:
        if (r4 != 0) goto L_0x0099;
    L_0x007c:
        r0 = r7;
        goto L_0x0012;
    L_0x007e:
        r4 = r5;
        r5 = r6;
    L_0x0080:
        if (r4 >= r10) goto L_0x008d;
    L_0x0082:
        r4 = r4 + 1;
        r5 = r5 * 10;
        r6 = r11.b;
        r6 = r6 + -48;
        r5 = r5 + r6;
        r3 = r3 + -1;
    L_0x008d:
        r6 = r11.f();
        r11.b = r6;
        r6 = r11.b;
        switch(r6) {
            case 48: goto L_0x0080;
            case 49: goto L_0x0080;
            case 50: goto L_0x0080;
            case 51: goto L_0x0080;
            case 52: goto L_0x0080;
            case 53: goto L_0x0080;
            case 54: goto L_0x0080;
            case 55: goto L_0x0080;
            case 56: goto L_0x0080;
            case 57: goto L_0x0080;
            default: goto L_0x0098;
        };
    L_0x0098:
        r6 = r5;
    L_0x0099:
        r4 = r11.b;
        switch(r4) {
            case 69: goto L_0x00ab;
            case 101: goto L_0x00ab;
            default: goto L_0x009e;
        };
    L_0x009e:
        if (r2 != 0) goto L_0x00a1;
    L_0x00a0:
        r1 = -r1;
    L_0x00a1:
        r1 = r1 + r3;
        if (r0 != 0) goto L_0x00a5;
    L_0x00a4:
        r6 = -r6;
    L_0x00a5:
        r0 = a(r6, r1);
        goto L_0x0012;
    L_0x00ab:
        r4 = r11.f();
        r11.b = r4;
        r4 = r11.b;
        switch(r4) {
            case 43: goto L_0x00bf;
            case 44: goto L_0x00b6;
            case 45: goto L_0x00be;
            case 46: goto L_0x00b6;
            case 47: goto L_0x00b6;
            case 48: goto L_0x00d2;
            case 49: goto L_0x00d2;
            case 50: goto L_0x00d2;
            case 51: goto L_0x00d2;
            case 52: goto L_0x00d2;
            case 53: goto L_0x00d2;
            case 54: goto L_0x00d2;
            case 55: goto L_0x00d2;
            case 56: goto L_0x00d2;
            case 57: goto L_0x00d2;
            default: goto L_0x00b6;
        };
    L_0x00b6:
        r0 = r11.b;
        r11.a(r0);
        r0 = r7;
        goto L_0x0012;
    L_0x00be:
        r2 = r1;
    L_0x00bf:
        r4 = r11.f();
        r11.b = r4;
        r4 = r11.b;
        switch(r4) {
            case 48: goto L_0x00d2;
            case 49: goto L_0x00d2;
            case 50: goto L_0x00d2;
            case 51: goto L_0x00d2;
            case 52: goto L_0x00d2;
            case 53: goto L_0x00d2;
            case 54: goto L_0x00d2;
            case 55: goto L_0x00d2;
            case 56: goto L_0x00d2;
            case 57: goto L_0x00d2;
            default: goto L_0x00ca;
        };
    L_0x00ca:
        r0 = r11.b;
        r11.a(r0);
        r0 = r7;
        goto L_0x0012;
    L_0x00d2:
        r4 = r11.b;
        switch(r4) {
            case 48: goto L_0x00d8;
            case 49: goto L_0x00fe;
            case 50: goto L_0x00fe;
            case 51: goto L_0x00fe;
            case 52: goto L_0x00fe;
            case 53: goto L_0x00fe;
            case 54: goto L_0x00fe;
            case 55: goto L_0x00fe;
            case 56: goto L_0x00fe;
            case 57: goto L_0x00fe;
            default: goto L_0x00d7;
        };
    L_0x00d7:
        goto L_0x009e;
    L_0x00d8:
        r4 = r11.f();
        r11.b = r4;
        r4 = r11.b;
        switch(r4) {
            case 48: goto L_0x00d8;
            case 49: goto L_0x00e4;
            case 50: goto L_0x00e4;
            case 51: goto L_0x00e4;
            case 52: goto L_0x00e4;
            case 53: goto L_0x00e4;
            case 54: goto L_0x00e4;
            case 55: goto L_0x00e4;
            case 56: goto L_0x00e4;
            case 57: goto L_0x00e4;
            default: goto L_0x00e3;
        };
    L_0x00e3:
        goto L_0x009e;
    L_0x00e4:
        r4 = r1;
    L_0x00e5:
        r5 = 3;
        if (r1 >= r5) goto L_0x00f1;
    L_0x00e8:
        r1 = r1 + 1;
        r4 = r4 * 10;
        r5 = r11.b;
        r5 = r5 + -48;
        r4 = r4 + r5;
    L_0x00f1:
        r5 = r11.f();
        r11.b = r5;
        r5 = r11.b;
        switch(r5) {
            case 48: goto L_0x00e5;
            case 49: goto L_0x00e5;
            case 50: goto L_0x00e5;
            case 51: goto L_0x00e5;
            case 52: goto L_0x00e5;
            case 53: goto L_0x00e5;
            case 54: goto L_0x00e5;
            case 55: goto L_0x00e5;
            case 56: goto L_0x00e5;
            case 57: goto L_0x00e5;
            default: goto L_0x00fc;
        };
    L_0x00fc:
        r1 = r4;
        goto L_0x009e;
    L_0x00fe:
        r4 = r1;
        goto L_0x00e5;
    L_0x0100:
        r4 = r5;
        r5 = r6;
        goto L_0x0080;
    L_0x0104:
        r0 = r2;
        goto L_0x0014;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.larvalabs.svgandroid.a.d():float");
    }

    private void a(char c) {
        throw new RuntimeException("Unexpected char '" + c + "'.");
    }

    public static float a(int i, int i2) {
        if (i2 < -125 || i == 0) {
            return 0.0f;
        }
        if (i2 >= 128) {
            return i > 0 ? Float.POSITIVE_INFINITY : Float.NEGATIVE_INFINITY;
        } else {
            if (i2 == 0) {
                return (float) i;
            }
            if (i >= 67108864) {
                i++;
            }
            return (float) (i2 > 0 ? ((double) i) * e[i2] : ((double) i) / e[-i2]);
        }
    }

    static {
        for (int i = 0; i < e.length; i++) {
            e[i] = Math.pow(10.0d, (double) i);
        }
    }

    public float e() {
        a();
        float d = d();
        b();
        return d;
    }
}
