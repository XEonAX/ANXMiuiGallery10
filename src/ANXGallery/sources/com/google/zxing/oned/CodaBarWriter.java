package com.google.zxing.oned;

public final class CodaBarWriter extends OneDimensionalCodeWriter {
    private static final char[] ALT_START_END_CHARS = new char[]{'T', 'N', '*', 'E'};
    private static final char[] CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED = new char[]{'/', ':', '+', '.'};
    private static final char[] START_END_CHARS = new char[]{'A', 'B', 'C', 'D'};

    /* JADX WARNING: Removed duplicated region for block: B:63:0x0149  */
    /* JADX WARNING: Removed duplicated region for block: B:78:0x012b A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x0126  */
    public boolean[] encode(java.lang.String r19) {
        /*
        r18 = this;
        r15 = r19.length();
        r16 = 2;
        r0 = r16;
        if (r15 >= r0) goto L_0x0012;
    L_0x000a:
        r15 = new java.lang.IllegalArgumentException;
        r16 = "Codabar should start/end with start/stop symbols";
        r15.<init>(r16);
        throw r15;
    L_0x0012:
        r15 = 0;
        r0 = r19;
        r15 = r0.charAt(r15);
        r6 = java.lang.Character.toUpperCase(r15);
        r15 = r19.length();
        r15 = r15 + -1;
        r0 = r19;
        r15 = r0.charAt(r15);
        r9 = java.lang.Character.toUpperCase(r15);
        r15 = START_END_CHARS;
        r15 = com.google.zxing.oned.CodaBarReader.arrayContains(r15, r6);
        if (r15 == 0) goto L_0x007e;
    L_0x0035:
        r15 = START_END_CHARS;
        r15 = com.google.zxing.oned.CodaBarReader.arrayContains(r15, r9);
        if (r15 == 0) goto L_0x007e;
    L_0x003d:
        r14 = 1;
    L_0x003e:
        r15 = ALT_START_END_CHARS;
        r15 = com.google.zxing.oned.CodaBarReader.arrayContains(r15, r6);
        if (r15 == 0) goto L_0x0080;
    L_0x0046:
        r15 = ALT_START_END_CHARS;
        r15 = com.google.zxing.oned.CodaBarReader.arrayContains(r15, r9);
        if (r15 == 0) goto L_0x0080;
    L_0x004e:
        r13 = 1;
    L_0x004f:
        if (r14 != 0) goto L_0x0082;
    L_0x0051:
        if (r13 != 0) goto L_0x0082;
    L_0x0053:
        r15 = new java.lang.IllegalArgumentException;
        r16 = new java.lang.StringBuilder;
        r17 = "Codabar should start/end with ";
        r16.<init>(r17);
        r17 = START_END_CHARS;
        r17 = java.util.Arrays.toString(r17);
        r16 = r16.append(r17);
        r17 = ", or start/end with ";
        r16 = r16.append(r17);
        r17 = ALT_START_END_CHARS;
        r17 = java.util.Arrays.toString(r17);
        r16 = r16.append(r17);
        r16 = r16.toString();
        r15.<init>(r16);
        throw r15;
    L_0x007e:
        r14 = 0;
        goto L_0x003e;
    L_0x0080:
        r13 = 0;
        goto L_0x004f;
    L_0x0082:
        r12 = 20;
        r7 = 1;
    L_0x0085:
        r15 = r19.length();
        r15 = r15 + -1;
        if (r7 < r15) goto L_0x009f;
    L_0x008d:
        r15 = r19.length();
        r15 = r15 + -1;
        r12 = r12 + r15;
        r11 = new boolean[r12];
        r10 = 0;
        r8 = 0;
    L_0x0098:
        r15 = r19.length();
        if (r8 < r15) goto L_0x00fa;
    L_0x009e:
        return r11;
    L_0x009f:
        r0 = r19;
        r15 = r0.charAt(r7);
        r15 = java.lang.Character.isDigit(r15);
        if (r15 != 0) goto L_0x00c3;
    L_0x00ab:
        r0 = r19;
        r15 = r0.charAt(r7);
        r16 = 45;
        r0 = r16;
        if (r15 == r0) goto L_0x00c3;
    L_0x00b7:
        r0 = r19;
        r15 = r0.charAt(r7);
        r16 = 36;
        r0 = r16;
        if (r15 != r0) goto L_0x00c8;
    L_0x00c3:
        r12 = r12 + 9;
    L_0x00c5:
        r7 = r7 + 1;
        goto L_0x0085;
    L_0x00c8:
        r15 = CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED;
        r0 = r19;
        r16 = r0.charAt(r7);
        r15 = com.google.zxing.oned.CodaBarReader.arrayContains(r15, r16);
        if (r15 == 0) goto L_0x00d9;
    L_0x00d6:
        r12 = r12 + 10;
        goto L_0x00c5;
    L_0x00d9:
        r15 = new java.lang.IllegalArgumentException;
        r16 = new java.lang.StringBuilder;
        r17 = "Cannot encode : '";
        r16.<init>(r17);
        r0 = r19;
        r17 = r0.charAt(r7);
        r16 = r16.append(r17);
        r17 = 39;
        r16 = r16.append(r17);
        r16 = r16.toString();
        r15.<init>(r16);
        throw r15;
    L_0x00fa:
        r0 = r19;
        r15 = r0.charAt(r8);
        r2 = java.lang.Character.toUpperCase(r15);
        if (r8 == 0) goto L_0x010e;
    L_0x0106:
        r15 = r19.length();
        r15 = r15 + -1;
        if (r8 != r15) goto L_0x0111;
    L_0x010e:
        switch(r2) {
            case 42: goto L_0x0135;
            case 69: goto L_0x0138;
            case 78: goto L_0x0132;
            case 84: goto L_0x012f;
            default: goto L_0x0111;
        };
    L_0x0111:
        r3 = 0;
        r7 = 0;
    L_0x0113:
        r15 = com.google.zxing.oned.CodaBarReader.ALPHABET;
        r15 = r15.length;
        if (r7 < r15) goto L_0x013b;
    L_0x0118:
        r4 = 1;
        r5 = 0;
        r1 = 0;
    L_0x011b:
        r15 = 7;
        if (r1 < r15) goto L_0x0149;
    L_0x011e:
        r15 = r19.length();
        r15 = r15 + -1;
        if (r8 >= r15) goto L_0x012b;
    L_0x0126:
        r15 = 0;
        r11[r10] = r15;
        r10 = r10 + 1;
    L_0x012b:
        r8 = r8 + 1;
        goto L_0x0098;
    L_0x012f:
        r2 = 65;
        goto L_0x0111;
    L_0x0132:
        r2 = 66;
        goto L_0x0111;
    L_0x0135:
        r2 = 67;
        goto L_0x0111;
    L_0x0138:
        r2 = 68;
        goto L_0x0111;
    L_0x013b:
        r15 = com.google.zxing.oned.CodaBarReader.ALPHABET;
        r15 = r15[r7];
        if (r2 != r15) goto L_0x0146;
    L_0x0141:
        r15 = com.google.zxing.oned.CodaBarReader.CHARACTER_ENCODINGS;
        r3 = r15[r7];
        goto L_0x0118;
    L_0x0146:
        r7 = r7 + 1;
        goto L_0x0113;
    L_0x0149:
        r11[r10] = r4;
        r10 = r10 + 1;
        r15 = 6 - r1;
        r15 = r3 >> r15;
        r15 = r15 & 1;
        if (r15 == 0) goto L_0x0158;
    L_0x0155:
        r15 = 1;
        if (r5 != r15) goto L_0x0161;
    L_0x0158:
        if (r4 == 0) goto L_0x015f;
    L_0x015a:
        r4 = 0;
    L_0x015b:
        r1 = r1 + 1;
        r5 = 0;
        goto L_0x011b;
    L_0x015f:
        r4 = 1;
        goto L_0x015b;
    L_0x0161:
        r5 = r5 + 1;
        goto L_0x011b;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.oned.CodaBarWriter.encode(java.lang.String):boolean[]");
    }
}
