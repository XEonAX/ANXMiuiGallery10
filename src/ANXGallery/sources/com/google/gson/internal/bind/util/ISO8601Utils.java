package com.google.gson.internal.bind.util;

import java.util.TimeZone;

public class ISO8601Utils {
    private static final TimeZone TIMEZONE_UTC = TimeZone.getTimeZone("UTC");

    /* JADX WARNING: Removed duplicated region for block: B:86:0x0315  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x0150  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x0150  */
    /* JADX WARNING: Removed duplicated region for block: B:86:0x0315  */
    public static java.util.Date parse(java.lang.String r32, java.text.ParsePosition r33) throws java.text.ParseException {
        /*
        r11 = 0;
        r20 = r33.getIndex();	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r21 = r20 + 4;
        r0 = r32;
        r1 = r20;
        r2 = r21;
        r28 = parseInt(r0, r1, r2);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r29 = 45;
        r0 = r32;
        r1 = r21;
        r2 = r29;
        r29 = checkOffset(r0, r1, r2);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        if (r29 == 0) goto L_0x0023;
    L_0x001f:
        r20 = r21 + 1;
        r21 = r20;
    L_0x0023:
        r20 = r21 + 2;
        r0 = r32;
        r1 = r21;
        r2 = r20;
        r18 = parseInt(r0, r1, r2);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r29 = 45;
        r0 = r32;
        r1 = r20;
        r2 = r29;
        r29 = checkOffset(r0, r1, r2);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        if (r29 == 0) goto L_0x033c;
    L_0x003d:
        r20 = r20 + 1;
        r21 = r20;
    L_0x0041:
        r20 = r21 + 2;
        r0 = r32;
        r1 = r21;
        r2 = r20;
        r7 = parseInt(r0, r1, r2);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r14 = 0;
        r17 = 0;
        r23 = 0;
        r16 = 0;
        r29 = 84;
        r0 = r32;
        r1 = r20;
        r2 = r29;
        r13 = checkOffset(r0, r1, r2);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        if (r13 != 0) goto L_0x0083;
    L_0x0062:
        r29 = r32.length();	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r0 = r29;
        r1 = r20;
        if (r0 > r1) goto L_0x0083;
    L_0x006c:
        r5 = new java.util.GregorianCalendar;	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r29 = r18 + -1;
        r0 = r28;
        r1 = r29;
        r5.<init>(r0, r1, r7);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r0 = r33;
        r1 = r20;
        r0.setIndex(r1);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r29 = r5.getTime();	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
    L_0x0082:
        return r29;
    L_0x0083:
        if (r13 == 0) goto L_0x013a;
    L_0x0085:
        r20 = r20 + 1;
        r21 = r20 + 2;
        r0 = r32;
        r1 = r20;
        r2 = r21;
        r14 = parseInt(r0, r1, r2);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r29 = 58;
        r0 = r32;
        r1 = r21;
        r2 = r29;
        r29 = checkOffset(r0, r1, r2);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        if (r29 == 0) goto L_0x00a5;
    L_0x00a1:
        r20 = r21 + 1;
        r21 = r20;
    L_0x00a5:
        r20 = r21 + 2;
        r0 = r32;
        r1 = r21;
        r2 = r20;
        r17 = parseInt(r0, r1, r2);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r29 = 58;
        r0 = r32;
        r1 = r20;
        r2 = r29;
        r29 = checkOffset(r0, r1, r2);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        if (r29 == 0) goto L_0x0338;
    L_0x00bf:
        r20 = r20 + 1;
        r21 = r20;
    L_0x00c3:
        r29 = r32.length();	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r0 = r29;
        r1 = r21;
        if (r0 <= r1) goto L_0x0334;
    L_0x00cd:
        r0 = r32;
        r1 = r21;
        r4 = r0.charAt(r1);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r29 = 90;
        r0 = r29;
        if (r4 == r0) goto L_0x0334;
    L_0x00db:
        r29 = 43;
        r0 = r29;
        if (r4 == r0) goto L_0x0334;
    L_0x00e1:
        r29 = 45;
        r0 = r29;
        if (r4 == r0) goto L_0x0334;
    L_0x00e7:
        r20 = r21 + 2;
        r0 = r32;
        r1 = r21;
        r2 = r20;
        r23 = parseInt(r0, r1, r2);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r29 = 59;
        r0 = r23;
        r1 = r29;
        if (r0 <= r1) goto L_0x0105;
    L_0x00fb:
        r29 = 63;
        r0 = r23;
        r1 = r29;
        if (r0 >= r1) goto L_0x0105;
    L_0x0103:
        r23 = 59;
    L_0x0105:
        r29 = 46;
        r0 = r32;
        r1 = r20;
        r2 = r29;
        r29 = checkOffset(r0, r1, r2);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        if (r29 == 0) goto L_0x013a;
    L_0x0113:
        r20 = r20 + 1;
        r29 = r20 + 1;
        r0 = r32;
        r1 = r29;
        r9 = indexOfNonDigit(r0, r1);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r29 = r20 + 3;
        r0 = r29;
        r22 = java.lang.Math.min(r9, r0);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r0 = r32;
        r1 = r20;
        r2 = r22;
        r12 = parseInt(r0, r1, r2);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r29 = r22 - r20;
        switch(r29) {
            case 1: goto L_0x01b5;
            case 2: goto L_0x01b2;
            default: goto L_0x0136;
        };	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
    L_0x0136:
        r16 = r12;
    L_0x0138:
        r20 = r9;
    L_0x013a:
        r29 = r32.length();	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r0 = r29;
        r1 = r20;
        if (r0 > r1) goto L_0x01b8;
    L_0x0144:
        r29 = new java.lang.IllegalArgumentException;	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r30 = "No time zone indicator";
        r29.<init>(r30);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        throw r29;	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
    L_0x014c:
        r8 = move-exception;
        r11 = r8;
    L_0x014e:
        if (r32 != 0) goto L_0x0315;
    L_0x0150:
        r15 = 0;
    L_0x0151:
        r19 = r11.getMessage();
        if (r19 == 0) goto L_0x015d;
    L_0x0157:
        r29 = r19.isEmpty();
        if (r29 == 0) goto L_0x017e;
    L_0x015d:
        r29 = new java.lang.StringBuilder;
        r29.<init>();
        r30 = "(";
        r29 = r29.append(r30);
        r30 = r11.getClass();
        r30 = r30.getName();
        r29 = r29.append(r30);
        r30 = ")";
        r29 = r29.append(r30);
        r19 = r29.toString();
    L_0x017e:
        r10 = new java.text.ParseException;
        r29 = new java.lang.StringBuilder;
        r29.<init>();
        r30 = "Failed to parse date [";
        r29 = r29.append(r30);
        r0 = r29;
        r29 = r0.append(r15);
        r30 = "]: ";
        r29 = r29.append(r30);
        r0 = r29;
        r1 = r19;
        r29 = r0.append(r1);
        r29 = r29.toString();
        r30 = r33.getIndex();
        r0 = r29;
        r1 = r30;
        r10.<init>(r0, r1);
        r10.initCause(r11);
        throw r10;
    L_0x01b2:
        r16 = r12 * 10;
        goto L_0x0138;
    L_0x01b5:
        r16 = r12 * 100;
        goto L_0x0138;
    L_0x01b8:
        r24 = 0;
        r0 = r32;
        r1 = r20;
        r26 = r0.charAt(r1);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r29 = 90;
        r0 = r26;
        r1 = r29;
        if (r0 != r1) goto L_0x0226;
    L_0x01ca:
        r24 = TIMEZONE_UTC;	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r20 = r20 + 1;
    L_0x01ce:
        r5 = new java.util.GregorianCalendar;	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r0 = r24;
        r5.<init>(r0);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r29 = 0;
        r0 = r29;
        r5.setLenient(r0);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r29 = 1;
        r0 = r29;
        r1 = r28;
        r5.set(r0, r1);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r29 = 2;
        r30 = r18 + -1;
        r0 = r29;
        r1 = r30;
        r5.set(r0, r1);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r29 = 5;
        r0 = r29;
        r5.set(r0, r7);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r29 = 11;
        r0 = r29;
        r5.set(r0, r14);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r29 = 12;
        r0 = r29;
        r1 = r17;
        r5.set(r0, r1);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r29 = 13;
        r0 = r29;
        r1 = r23;
        r5.set(r0, r1);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r29 = 14;
        r0 = r29;
        r1 = r16;
        r5.set(r0, r1);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r0 = r33;
        r1 = r20;
        r0.setIndex(r1);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r29 = r5.getTime();	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        goto L_0x0082;
    L_0x0226:
        r29 = 43;
        r0 = r26;
        r1 = r29;
        if (r0 == r1) goto L_0x0236;
    L_0x022e:
        r29 = 45;
        r0 = r26;
        r1 = r29;
        if (r0 != r1) goto L_0x02ee;
    L_0x0236:
        r0 = r32;
        r1 = r20;
        r27 = r0.substring(r1);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r29 = r27.length();	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r30 = 5;
        r0 = r29;
        r1 = r30;
        if (r0 < r1) goto L_0x026c;
    L_0x024a:
        r29 = r27.length();	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r20 = r20 + r29;
        r29 = "+0000";
        r0 = r29;
        r1 = r27;
        r29 = r0.equals(r1);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        if (r29 != 0) goto L_0x0268;
    L_0x025c:
        r29 = "+00:00";
        r0 = r29;
        r1 = r27;
        r29 = r0.equals(r1);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        if (r29 == 0) goto L_0x0284;
    L_0x0268:
        r24 = TIMEZONE_UTC;	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        goto L_0x01ce;
    L_0x026c:
        r29 = new java.lang.StringBuilder;	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r29.<init>();	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r0 = r29;
        r1 = r27;
        r29 = r0.append(r1);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r30 = "00";
        r29 = r29.append(r30);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r27 = r29.toString();	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        goto L_0x024a;
    L_0x0284:
        r29 = new java.lang.StringBuilder;	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r29.<init>();	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r30 = "GMT";
        r29 = r29.append(r30);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r0 = r29;
        r1 = r27;
        r29 = r0.append(r1);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r25 = r29.toString();	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r24 = java.util.TimeZone.getTimeZone(r25);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r3 = r24.getID();	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r0 = r25;
        r29 = r3.equals(r0);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        if (r29 != 0) goto L_0x01ce;
    L_0x02ab:
        r29 = ":";
        r30 = "";
        r0 = r29;
        r1 = r30;
        r6 = r3.replace(r0, r1);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r0 = r25;
        r29 = r6.equals(r0);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        if (r29 != 0) goto L_0x01ce;
    L_0x02bf:
        r29 = new java.lang.IndexOutOfBoundsException;	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r30 = new java.lang.StringBuilder;	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r30.<init>();	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r31 = "Mismatching time zone indicator: ";
        r30 = r30.append(r31);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r0 = r30;
        r1 = r25;
        r30 = r0.append(r1);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r31 = " given, resolves to ";
        r30 = r30.append(r31);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r31 = r24.getID();	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r30 = r30.append(r31);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r30 = r30.toString();	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r29.<init>(r30);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        throw r29;	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
    L_0x02ea:
        r8 = move-exception;
        r11 = r8;
        goto L_0x014e;
    L_0x02ee:
        r29 = new java.lang.IndexOutOfBoundsException;	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r30 = new java.lang.StringBuilder;	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r30.<init>();	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r31 = "Invalid time zone indicator '";
        r30 = r30.append(r31);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r0 = r30;
        r1 = r26;
        r30 = r0.append(r1);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r31 = "'";
        r30 = r30.append(r31);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r30 = r30.toString();	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        r29.<init>(r30);	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
        throw r29;	 Catch:{ IndexOutOfBoundsException -> 0x014c, NumberFormatException -> 0x02ea, IllegalArgumentException -> 0x0311 }
    L_0x0311:
        r8 = move-exception;
        r11 = r8;
        goto L_0x014e;
    L_0x0315:
        r29 = new java.lang.StringBuilder;
        r29.<init>();
        r30 = 34;
        r29 = r29.append(r30);
        r0 = r29;
        r1 = r32;
        r29 = r0.append(r1);
        r30 = "'";
        r29 = r29.append(r30);
        r15 = r29.toString();
        goto L_0x0151;
    L_0x0334:
        r20 = r21;
        goto L_0x013a;
    L_0x0338:
        r21 = r20;
        goto L_0x00c3;
    L_0x033c:
        r21 = r20;
        goto L_0x0041;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.bind.util.ISO8601Utils.parse(java.lang.String, java.text.ParsePosition):java.util.Date");
    }

    private static boolean checkOffset(String value, int offset, char expected) {
        return offset < value.length() && value.charAt(offset) == expected;
    }

    private static int parseInt(String value, int beginIndex, int endIndex) throws NumberFormatException {
        if (beginIndex < 0 || endIndex > value.length() || beginIndex > endIndex) {
            throw new NumberFormatException(value);
        }
        int i;
        int digit;
        int i2 = beginIndex;
        int result = 0;
        if (i2 < endIndex) {
            i = i2 + 1;
            digit = Character.digit(value.charAt(i2), 10);
            if (digit < 0) {
                throw new NumberFormatException("Invalid number: " + value.substring(beginIndex, endIndex));
            }
            result = -digit;
        } else {
            i = i2;
        }
        while (i < endIndex) {
            i2 = i + 1;
            digit = Character.digit(value.charAt(i), 10);
            if (digit < 0) {
                throw new NumberFormatException("Invalid number: " + value.substring(beginIndex, endIndex));
            }
            result = (result * 10) - digit;
            i = i2;
        }
        return -result;
    }

    private static int indexOfNonDigit(String string, int offset) {
        int i = offset;
        while (i < string.length()) {
            char c = string.charAt(i);
            if (c < '0' || c > '9') {
                return i;
            }
            i++;
        }
        return string.length();
    }
}
