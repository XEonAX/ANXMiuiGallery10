package com.larvalabs.svgandroid;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Path.FillType;
import android.graphics.Picture;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Shader.TileMode;
import android.util.Log;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import java.io.InputStream;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.DefaultHandler;

public class SVGParser {

    private enum Prefix {
        matrix,
        translate,
        scale,
        skewX,
        skewY,
        rotate
    }

    private static class a {
        String a;
        String b;
        boolean c;
        float d;
        float e;
        float f;
        float g;
        float h;
        float i;
        float j;
        ArrayList<Float> k;
        ArrayList<Integer> l;
        Matrix m;

        private a() {
            this.k = new ArrayList();
            this.l = new ArrayList();
            this.m = null;
        }

        public a a(a aVar) {
            a aVar2 = new a();
            aVar2.a = aVar.a;
            aVar2.b = this.a;
            aVar2.c = aVar.c;
            aVar2.d = aVar.d;
            aVar2.f = aVar.f;
            aVar2.e = aVar.e;
            aVar2.g = aVar.g;
            aVar2.h = aVar.h;
            aVar2.i = aVar.i;
            aVar2.j = aVar.j;
            aVar2.k = this.k;
            aVar2.l = this.l;
            aVar2.m = this.m;
            if (aVar.m != null) {
                if (this.m == null) {
                    aVar2.m = aVar.m;
                } else {
                    Matrix matrix = new Matrix(this.m);
                    matrix.preConcat(aVar.m);
                    aVar2.m = matrix;
                }
            }
            return aVar2;
        }
    }

    private static class b {
        private ArrayList<Float> a;
        private int b;

        public b(ArrayList<Float> arrayList, int i) {
            this.a = arrayList;
            this.b = i;
        }

        public int a() {
            return this.b;
        }
    }

    public static class c {
        private boolean a = false;
        private int b = 0;
        private boolean c = false;
        private int d = 0;
        private float e = 0.0f;
        private int f = 0;
        private int g = 0;
        private Map<Integer, Integer> h;
        private Set<Integer> i = new HashSet();
        private int j;

        public c(c cVar) {
            if (cVar != null) {
                this.a = cVar.a;
                this.b = cVar.b;
                this.c = cVar.c;
                this.d = cVar.d;
                this.e = cVar.e;
                this.f = cVar.f;
                this.g = cVar.g;
                if (cVar.h != null) {
                    this.h = new HashMap();
                    this.h.putAll(cVar.h);
                }
                this.j = cVar.j;
                this.i.addAll(cVar.i);
            }
        }

        public void a(Map<Integer, Integer> map, int i) {
            this.h = map;
            this.j = i;
        }

        private int a(int i) {
            Log.d("SVGAndroid", "mapColor");
            if (this.h == null || !this.h.containsKey(Integer.valueOf(i))) {
                if (this.h != null && this.j > 0) {
                    for (Entry entry : this.h.entrySet()) {
                        int intValue = ((Integer) entry.getKey()).intValue();
                        if (Math.max(Math.max(Math.abs(Color.red(intValue) - Color.red(i)), Math.abs(Color.green(intValue) - Color.green(i))), Math.abs(Color.blue(intValue) - Color.blue(i))) <= this.j) {
                            Log.d("SVGAndroid", "mapColor : SIMILAR");
                            int intValue2 = ((Integer) entry.getValue()).intValue();
                            return Color.rgb(Math.max(0, Math.min(255, (Color.red(i) - Color.red(intValue)) + Color.red(intValue2))), Math.max(0, Math.min(255, (Color.green(i) - Color.green(intValue)) + Color.green(intValue2))), Math.max(0, Math.min(255, Color.blue(intValue2) + (Color.blue(i) - Color.blue(intValue)))));
                        }
                    }
                }
                Log.d("SVGAndroid", "mapColor : NO CHANGE");
                return i;
            }
            Log.d("SVGAndroid", "mapColor : EXACT");
            return ((Integer) this.h.get(Integer.valueOf(i))).intValue();
        }
    }

    private static class d {
        g a;
        Attributes b;
        Set<String> c;

        private d(Attributes attributes) {
            this.a = null;
            this.c = null;
            this.b = attributes;
            String a = SVGParser.e("style", attributes);
            if (a != null) {
                this.a = new g(a);
            }
        }

        public void a(String str) {
            if (this.c == null) {
                this.c = new HashSet();
            }
            this.c.add(str);
        }

        public String b(String str) {
            String str2 = null;
            if (this.c != null && this.c.contains(str)) {
                return null;
            }
            if (this.a != null) {
                str2 = this.a.a(str);
            }
            if (str2 == null) {
                return SVGParser.e(str, this.b);
            }
            return str2;
        }

        public String c(String str) {
            return b(str);
        }

        public Integer d(String str) {
            Integer num = null;
            String b = b(str);
            if (b == null || !b.startsWith("#")) {
                return num;
            }
            try {
                return Integer.valueOf(Integer.parseInt(b.substring(1), 16));
            } catch (NumberFormatException e) {
                return num;
            }
        }

        public Float e(String str) {
            Float f = null;
            String b = b(str);
            if (b == null) {
                return f;
            }
            try {
                return Float.valueOf(Float.parseFloat(b));
            } catch (NumberFormatException e) {
                return f;
            }
        }
    }

    private static class e extends DefaultHandler {
        Picture a;
        Canvas b;
        Paint c;
        RectF d;
        RectF e;
        RectF f;
        Deque<f> g;
        c h;
        boolean i;
        HashMap<String, Shader> j;
        HashMap<String, a> k;
        a l;
        private boolean m;
        private int n;
        private boolean o;

        private e(Picture picture, c cVar) {
            this.d = new RectF();
            this.e = null;
            this.f = new RectF(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY);
            this.g = new ArrayDeque();
            this.i = false;
            this.j = new HashMap();
            this.k = new HashMap();
            this.l = null;
            this.m = false;
            this.n = 0;
            this.o = false;
            Log.d("SVGAndroid", "SVGHandler Constructed");
            this.a = picture;
            this.c = new Paint();
            this.c.setAntiAlias(true);
            f fVar = new f();
            fVar.h = true;
            this.g.push(fVar);
            this.h = new c(cVar);
        }

        public c a() {
            return this.h;
        }

        public void startDocument() throws SAXException {
        }

        public void endDocument() throws SAXException {
        }

        private boolean a(d dVar, HashMap<String, Shader> hashMap, f fVar) {
            Log.d("SVGAndroid", "doFill : IN");
            if ("none".equals(dVar.c("display"))) {
                return false;
            }
            String c = dVar.c("fill-rule");
            if (c != null) {
                if ("nonzero".equals(c)) {
                    fVar.a(FillType.WINDING);
                } else if ("evenodd".equals(c)) {
                    fVar.a(FillType.EVEN_ODD);
                }
            }
            if (this.h.a) {
                fVar.a(this.h.b);
                return true;
            }
            c = dVar.c("fill");
            if (c == null || !c.startsWith("url(#")) {
                if (c == null || !c.equals("none")) {
                    Integer d = dVar.d("fill");
                    if (d != null) {
                        Log.d("SVGAndroid", "doFill :   c=" + com.nexstreaming.app.common.util.c.a(d.intValue()));
                        fVar.a(a(dVar, d, true));
                        return true;
                    } else if (dVar.c("fill") == null && dVar.c("stroke") == null) {
                        Log.d("SVGAndroid", "doFill :   no fill & no stroke");
                        return true;
                    }
                }
                Log.d("SVGAndroid", "doFill :   none");
                fVar.h = false;
                Log.d("SVGAndroid", "doFill :   no fill");
                return false;
            }
            Log.d("SVGAndroid", "doFill :   gradient>>" + c);
            Shader shader = (Shader) hashMap.get(c.substring("url(#".length(), c.length() - 1));
            if (shader == null) {
                return false;
            }
            fVar.a(shader);
            return true;
        }

        private boolean a(d dVar, f fVar) {
            Log.d("SVGAndroid", "doStroke : IN");
            if ("none".equals(dVar.c("display"))) {
                return false;
            }
            if (this.h.c) {
                fVar.b(this.h.d);
                fVar.a(this.h.e);
                return true;
            }
            String c = dVar.c("stroke");
            if (c == null || !c.equals("none")) {
                Integer d = dVar.d("stroke");
                if (d == null) {
                    return false;
                }
                fVar.b(a(dVar, d, false));
                Float e = dVar.e("stroke-width");
                if (e != null) {
                    fVar.a(e.floatValue());
                }
                String c2 = dVar.c("stroke-linecap");
                if ("round".equals(c2)) {
                    fVar.a(Cap.ROUND);
                } else if ("square".equals(c2)) {
                    fVar.a(Cap.SQUARE);
                } else if ("butt".equals(c2)) {
                    fVar.a(Cap.BUTT);
                }
                c2 = dVar.c("stroke-linejoin");
                if ("miter".equals(c2)) {
                    fVar.a(Join.MITER);
                } else if ("round".equals(c2)) {
                    fVar.a(Join.ROUND);
                } else if ("bevel".equals(c2)) {
                    fVar.a(Join.BEVEL);
                }
                return true;
            }
            fVar.g = false;
            return true;
        }

        private a a(boolean z, Attributes attributes) {
            Log.d("SVGAndroid", "doGradient : IN");
            a aVar = new a();
            aVar.a = SVGParser.e("id", attributes);
            aVar.c = z;
            if (z) {
                aVar.d = SVGParser.b("x1", attributes, Float.valueOf(0.0f)).floatValue();
                aVar.f = SVGParser.b("x2", attributes, Float.valueOf(0.0f)).floatValue();
                aVar.e = SVGParser.b("y1", attributes, Float.valueOf(0.0f)).floatValue();
                aVar.g = SVGParser.b("y2", attributes, Float.valueOf(0.0f)).floatValue();
            } else {
                aVar.h = SVGParser.b("cx", attributes, Float.valueOf(0.0f)).floatValue();
                aVar.i = SVGParser.b("cy", attributes, Float.valueOf(0.0f)).floatValue();
                aVar.j = SVGParser.b("r", attributes, Float.valueOf(0.0f)).floatValue();
            }
            String a = SVGParser.e("gradientTransform", attributes);
            if (a != null) {
                aVar.m = SVGParser.e(a);
            }
            a = SVGParser.e("href", attributes);
            if (a != null) {
                if (a.startsWith("#")) {
                    a = a.substring(1);
                }
                aVar.b = a;
            }
            return aVar;
        }

        private int a(d dVar, Integer num, boolean z) {
            Log.d("SVGAndroid", "getColor : fillMode=" + z + " color=" + com.nexstreaming.app.common.util.c.a(num.intValue()));
            if (z && this.h.a) {
                Log.d("SVGAndroid", "getColor : FILL OVERRIDE");
                return this.h.b;
            }
            int intValue = (num.intValue() & 16777215) | -16777216;
            if (this.h.i != null) {
                this.h.i.add(Integer.valueOf(intValue));
            }
            if (this.h.f == intValue) {
                Log.d("SVGAndroid", "getColor : REPLACE COLOR");
                intValue = this.h.g;
            }
            if (this.h.h != null) {
                Log.d("SVGAndroid", "getColor : MAP COLOR");
                intValue = this.h.a(intValue);
            }
            Float e = dVar.e("opacity");
            if (e == null) {
                e = dVar.e(z ? "fill-opacity" : "stroke-opacity");
            }
            if (e != null) {
                return (intValue & 16777215) | ((((int) (e.floatValue() * 255.0f)) << 24) & -16777216);
            }
            return intValue;
        }

        private void a(float f, float f2) {
            if (f < this.f.left) {
                this.f.left = f;
            }
            if (f > this.f.right) {
                this.f.right = f;
            }
            if (f2 < this.f.top) {
                this.f.top = f2;
            }
            if (f2 > this.f.bottom) {
                this.f.bottom = f2;
            }
        }

        private void a(float f, float f2, float f3, float f4) {
            a(f, f2);
            a(f + f3, f2 + f4);
        }

        private void a(Path path) {
            path.computeBounds(this.d, false);
            a(this.d.left, this.d.top);
            a(this.d.right, this.d.bottom);
        }

        private void a(Attributes attributes) {
            String a = SVGParser.e("transform", attributes);
            this.i = a != null;
            if (this.i) {
                Matrix b = SVGParser.e(a);
                this.b.save();
                this.b.concat(b);
            }
        }

        private void b() {
            if (this.i) {
                this.b.restore();
            }
        }

        /* JADX WARNING: Missing block: B:156:0x075b, code:
            if (r19.equals("polyline") != false) goto L_0x075d;
     */
        public void startElement(java.lang.String r18, java.lang.String r19, java.lang.String r20, org.xml.sax.Attributes r21) throws org.xml.sax.SAXException {
            /*
            r17 = this;
            r2 = "SVGAndroid";
            r3 = new java.lang.StringBuilder;
            r3.<init>();
            r4 = "startElement : ";
            r3 = r3.append(r4);
            r0 = r19;
            r3 = r3.append(r0);
            r4 = " atts=";
            r3 = r3.append(r4);
            r4 = r21.toString();
            r3 = r3.append(r4);
            r3 = r3.toString();
            android.util.Log.d(r2, r3);
            r0 = r17;
            r2 = r0.o;
            if (r2 == 0) goto L_0x008d;
        L_0x002f:
            r2 = "rect";
            r0 = r19;
            r2 = r0.equals(r2);
            if (r2 == 0) goto L_0x008c;
        L_0x0039:
            r2 = "x";
            r0 = r21;
            r2 = com.larvalabs.svgandroid.SVGParser.f(r2, r0);
            if (r2 != 0) goto L_0x0049;
        L_0x0044:
            r2 = 0;
            r2 = java.lang.Float.valueOf(r2);
        L_0x0049:
            r3 = "y";
            r0 = r21;
            r3 = com.larvalabs.svgandroid.SVGParser.f(r3, r0);
            if (r3 != 0) goto L_0x0059;
        L_0x0054:
            r3 = 0;
            r3 = java.lang.Float.valueOf(r3);
        L_0x0059:
            r4 = "width";
            r0 = r21;
            r4 = com.larvalabs.svgandroid.SVGParser.f(r4, r0);
            r5 = "height";
            r0 = r21;
            com.larvalabs.svgandroid.SVGParser.f(r5, r0);
            r5 = new android.graphics.RectF;
            r6 = r2.floatValue();
            r7 = r3.floatValue();
            r2 = r2.floatValue();
            r8 = r4.floatValue();
            r2 = r2 + r8;
            r3 = r3.floatValue();
            r4 = r4.floatValue();
            r3 = r3 + r4;
            r5.<init>(r6, r7, r2, r3);
            r0 = r17;
            r0.e = r5;
        L_0x008c:
            return;
        L_0x008d:
            r2 = "svg";
            r0 = r19;
            r2 = r0.equals(r2);
            if (r2 == 0) goto L_0x01a1;
        L_0x0098:
            r2 = "width";
            r0 = r21;
            r2 = com.larvalabs.svgandroid.SVGParser.f(r2, r0);
            r3 = "height";
            r0 = r21;
            r6 = com.larvalabs.svgandroid.SVGParser.f(r3, r0);
            r4 = 0;
            r3 = 0;
            if (r2 == 0) goto L_0x00af;
        L_0x00ad:
            if (r6 != 0) goto L_0x017e;
        L_0x00af:
            r2 = "viewBox";
            r0 = r21;
            r2 = com.larvalabs.svgandroid.SVGParser.e(r2, r0);
            if (r2 != 0) goto L_0x0111;
        L_0x00ba:
            r2 = 100;
            r5 = "SVGHandler";
            r6 = "Missing SVG bounds! Defaulting to 100x100";
            android.util.Log.e(r5, r6);
            r5 = r4;
            r4 = r3;
            r3 = r2;
        L_0x00c6:
            r6 = "SVGAndroid";
            r7 = new java.lang.StringBuilder;
            r7.<init>();
            r8 = "BEGIN REC: dx,dy=";
            r7 = r7.append(r8);
            r7 = r7.append(r5);
            r8 = ",";
            r7 = r7.append(r8);
            r7 = r7.append(r4);
            r8 = "  w,h=";
            r7 = r7.append(r8);
            r7 = r7.append(r3);
            r8 = ",";
            r7 = r7.append(r8);
            r7 = r7.append(r2);
            r7 = r7.toString();
            android.util.Log.d(r6, r7);
            r0 = r17;
            r6 = r0.a;
            r2 = r6.beginRecording(r3, r2);
            r0 = r17;
            r0.b = r2;
            r0 = r17;
            r2 = r0.b;
            r2.translate(r5, r4);
            goto L_0x008c;
        L_0x0111:
            r6 = com.larvalabs.svgandroid.SVGParser.d(r2);
            r2 = r6.a;
            r2 = r2.size();
            r5 = 4;
            if (r2 >= r5) goto L_0x012d;
        L_0x0120:
            r2 = 100;
            r5 = "SVGHandler";
            r6 = "Malformed SVG bounds! Defaulting to 100x100";
            android.util.Log.e(r5, r6);
            r5 = r4;
            r4 = r3;
            r3 = r2;
            goto L_0x00c6;
        L_0x012d:
            r2 = r6.a;
            r3 = 0;
            r2 = r2.get(r3);
            r2 = (java.lang.Float) r2;
            r5 = r2.floatValue();
            r2 = r6.a;
            r3 = 1;
            r2 = r2.get(r3);
            r2 = (java.lang.Float) r2;
            r4 = r2.floatValue();
            r2 = r6.a;
            r3 = 2;
            r2 = r2.get(r3);
            r2 = (java.lang.Float) r2;
            r2 = r2.floatValue();
            r2 = (double) r2;
            r2 = java.lang.Math.ceil(r2);
            r3 = (int) r2;
            r2 = r6.a;
            r6 = 3;
            r2 = r2.get(r6);
            r2 = (java.lang.Float) r2;
            r2 = r2.floatValue();
            r6 = (double) r2;
            r6 = java.lang.Math.ceil(r6);
            r2 = (int) r6;
            r6 = "SVGAndroid";
            r7 = "Used viewBox";
            android.util.Log.d(r6, r7);
            goto L_0x00c6;
        L_0x017e:
            r2 = r2.floatValue();
            r8 = (double) r2;
            r8 = java.lang.Math.ceil(r8);
            r5 = (int) r8;
            r2 = r6.floatValue();
            r6 = (double) r2;
            r6 = java.lang.Math.ceil(r6);
            r2 = (int) r6;
            r6 = "SVGAndroid";
            r7 = "Used width, height";
            android.util.Log.d(r6, r7);
            r16 = r5;
            r5 = r4;
            r4 = r3;
            r3 = r16;
            goto L_0x00c6;
        L_0x01a1:
            r2 = "defs";
            r0 = r19;
            r2 = r0.equals(r2);
            if (r2 != 0) goto L_0x008c;
        L_0x01ab:
            r2 = "linearGradient";
            r0 = r19;
            r2 = r0.equals(r2);
            if (r2 == 0) goto L_0x01c4;
        L_0x01b5:
            r2 = 1;
            r0 = r17;
            r1 = r21;
            r2 = r0.a(r2, r1);
            r0 = r17;
            r0.l = r2;
            goto L_0x008c;
        L_0x01c4:
            r2 = "radialGradient";
            r0 = r19;
            r2 = r0.equals(r2);
            if (r2 == 0) goto L_0x01dd;
        L_0x01ce:
            r2 = 0;
            r0 = r17;
            r1 = r21;
            r2 = r0.a(r2, r1);
            r0 = r17;
            r0.l = r2;
            goto L_0x008c;
        L_0x01dd:
            r2 = "stop";
            r0 = r19;
            r2 = r0.equals(r2);
            if (r2 == 0) goto L_0x028d;
        L_0x01e8:
            r0 = r17;
            r2 = r0.l;
            if (r2 == 0) goto L_0x008c;
        L_0x01ee:
            r2 = "offset";
            r0 = r21;
            r2 = com.larvalabs.svgandroid.SVGParser.f(r2, r0);
            r4 = r2.floatValue();
            r2 = "style";
            r0 = r21;
            com.larvalabs.svgandroid.SVGParser.e(r2, r0);
            r3 = new com.larvalabs.svgandroid.SVGParser$d;
            r2 = 0;
            r0 = r21;
            r3.<init>(r0);
            r2 = "stop-color";
            r5 = r3.b(r2);
            r2 = -16777216; // 0xffffffffff000000 float:-1.7014118E38 double:NaN;
            if (r5 == 0) goto L_0x0228;
        L_0x0215:
            r2 = "#";
            r2 = r5.startsWith(r2);
            if (r2 == 0) goto L_0x0282;
        L_0x021d:
            r2 = 1;
            r2 = r5.substring(r2);
            r5 = 16;
            r2 = java.lang.Integer.parseInt(r2, r5);
        L_0x0228:
            r5 = "stop-opacity";
            r3 = r3.b(r5);
            if (r3 == 0) goto L_0x0289;
        L_0x0231:
            r3 = java.lang.Float.parseFloat(r3);
            r5 = 1132396544; // 0x437f0000 float:255.0 double:5.5947823E-315;
            r3 = r3 * r5;
            r3 = java.lang.Math.round(r3);
            r5 = 255; // 0xff float:3.57E-43 double:1.26E-321;
            if (r3 <= r5) goto L_0x0242;
        L_0x0240:
            r3 = 255; // 0xff float:3.57E-43 double:1.26E-321;
        L_0x0242:
            r3 = r3 << 24;
            r2 = r2 | r3;
        L_0x0245:
            r0 = r17;
            r3 = r0.l;
            r3 = r3.k;
            r4 = java.lang.Float.valueOf(r4);
            r3.add(r4);
            r0 = r17;
            r3 = r0.h;
            r3 = r3.i;
            if (r3 == 0) goto L_0x026b;
        L_0x025c:
            r0 = r17;
            r3 = r0.h;
            r3 = r3.i;
            r4 = java.lang.Integer.valueOf(r2);
            r3.add(r4);
        L_0x026b:
            r0 = r17;
            r3 = r0.h;
            r2 = r3.a(r2);
            r0 = r17;
            r3 = r0.l;
            r3 = r3.l;
            r2 = java.lang.Integer.valueOf(r2);
            r3.add(r2);
            goto L_0x008c;
        L_0x0282:
            r2 = 16;
            r2 = java.lang.Integer.parseInt(r5, r2);
            goto L_0x0228;
        L_0x0289:
            r3 = -16777216; // 0xffffffffff000000 float:-1.7014118E38 double:NaN;
            r2 = r2 | r3;
            goto L_0x0245;
        L_0x028d:
            r2 = "g";
            r0 = r19;
            r2 = r0.equals(r2);
            if (r2 == 0) goto L_0x0347;
        L_0x0297:
            r2 = "bounds";
            r3 = "id";
            r0 = r21;
            r3 = com.larvalabs.svgandroid.SVGParser.e(r3, r0);
            r2 = r2.equalsIgnoreCase(r3);
            if (r2 == 0) goto L_0x02ac;
        L_0x02a7:
            r2 = 1;
            r0 = r17;
            r0.o = r2;
        L_0x02ac:
            r0 = r17;
            r2 = r0.m;
            if (r2 == 0) goto L_0x02bc;
        L_0x02b2:
            r0 = r17;
            r2 = r0.n;
            r2 = r2 + 1;
            r0 = r17;
            r0.n = r2;
        L_0x02bc:
            r3 = new com.larvalabs.svgandroid.SVGParser$f;
            r0 = r17;
            r2 = r0.g;
            r2 = r2.peek();
            r2 = (com.larvalabs.svgandroid.SVGParser.f) r2;
            r3.<init>(r2);
            r4 = new com.larvalabs.svgandroid.SVGParser$d;
            r2 = 0;
            r0 = r21;
            r4.<init>(r0);
            r2 = "opacity";
            r2 = r4.e(r2);
            if (r2 != 0) goto L_0x032b;
        L_0x02db:
            r2 = 255; // 0xff float:3.57E-43 double:1.26E-321;
        L_0x02dd:
            r5 = 255; // 0xff float:3.57E-43 double:1.26E-321;
            if (r2 >= r5) goto L_0x033f;
        L_0x02e1:
            if (r2 <= 0) goto L_0x033f;
        L_0x02e3:
            r0 = r17;
            r5 = r0.b;
            r6 = 0;
            r7 = 31;
            r5.saveLayerAlpha(r6, r2, r7);
            r5 = "opacity";
            r4.a(r5);
        L_0x02f2:
            r0 = r17;
            r5 = r0.j;
            r0 = r17;
            r0.a(r4, r5, r3);
            r0 = r17;
            r0.a(r4, r3);
            r0 = r17;
            r4 = r0.g;
            r4.push(r3);
            if (r2 <= 0) goto L_0x0319;
        L_0x0309:
            r2 = "none";
            r3 = "display";
            r0 = r21;
            r3 = com.larvalabs.svgandroid.SVGParser.e(r3, r0);
            r2 = r2.equals(r3);
            if (r2 == 0) goto L_0x008c;
        L_0x0319:
            r0 = r17;
            r2 = r0.m;
            if (r2 != 0) goto L_0x008c;
        L_0x031f:
            r2 = 1;
            r0 = r17;
            r0.m = r2;
            r2 = 1;
            r0 = r17;
            r0.n = r2;
            goto L_0x008c;
        L_0x032b:
            r5 = 0;
            r6 = 255; // 0xff float:3.57E-43 double:1.26E-321;
            r2 = r2.floatValue();
            r7 = 1132396544; // 0x437f0000 float:255.0 double:5.5947823E-315;
            r2 = r2 * r7;
            r2 = (int) r2;
            r2 = java.lang.Math.min(r6, r2);
            r2 = java.lang.Math.max(r5, r2);
            goto L_0x02dd;
        L_0x033f:
            r0 = r17;
            r5 = r0.b;
            r5.save();
            goto L_0x02f2;
        L_0x0347:
            r0 = r17;
            r2 = r0.m;
            if (r2 != 0) goto L_0x04e5;
        L_0x034d:
            r2 = "rect";
            r0 = r19;
            r2 = r0.equals(r2);
            if (r2 == 0) goto L_0x04e5;
        L_0x0357:
            r2 = "x";
            r0 = r21;
            r2 = com.larvalabs.svgandroid.SVGParser.f(r2, r0);
            if (r2 != 0) goto L_0x08d5;
        L_0x0362:
            r2 = 0;
            r2 = java.lang.Float.valueOf(r2);
            r8 = r2;
        L_0x0368:
            r2 = "y";
            r0 = r21;
            r2 = com.larvalabs.svgandroid.SVGParser.f(r2, r0);
            if (r2 != 0) goto L_0x08d2;
        L_0x0373:
            r2 = 0;
            r2 = java.lang.Float.valueOf(r2);
            r9 = r2;
        L_0x0379:
            r2 = "rx";
            r0 = r21;
            r3 = com.larvalabs.svgandroid.SVGParser.f(r2, r0);
            r2 = "ry";
            r0 = r21;
            r2 = com.larvalabs.svgandroid.SVGParser.f(r2, r0);
            if (r3 != 0) goto L_0x048c;
        L_0x038b:
            if (r2 != 0) goto L_0x048c;
        L_0x038d:
            r2 = 0;
            r3 = java.lang.Float.valueOf(r2);
            r2 = 0;
            r2 = java.lang.Float.valueOf(r2);
            r10 = r2;
            r11 = r3;
        L_0x0399:
            r2 = "width";
            r0 = r21;
            r12 = com.larvalabs.svgandroid.SVGParser.f(r2, r0);
            r2 = "height";
            r0 = r21;
            r13 = com.larvalabs.svgandroid.SVGParser.f(r2, r0);
            r0 = r17;
            r1 = r21;
            r0.a(r1);
            r3 = new com.larvalabs.svgandroid.SVGParser$d;
            r2 = 0;
            r0 = r21;
            r3.<init>(r0);
            r14 = new com.larvalabs.svgandroid.SVGParser$f;
            r0 = r17;
            r2 = r0.g;
            r2 = r2.peek();
            r2 = (com.larvalabs.svgandroid.SVGParser.f) r2;
            r14.<init>(r2);
            r0 = r17;
            r2 = r0.j;
            r0 = r17;
            r0.a(r3, r2, r14);
            r0 = r17;
            r0.a(r3, r14);
            r0 = r17;
            r2 = r0.c;
            r2 = r14.a(r2);
            if (r2 == 0) goto L_0x0439;
        L_0x03e0:
            r2 = r8.floatValue();
            r3 = r9.floatValue();
            r4 = r12.floatValue();
            r5 = r13.floatValue();
            r0 = r17;
            r0.a(r2, r3, r4, r5);
            r2 = r11.floatValue();
            r3 = 0;
            r2 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1));
            if (r2 <= 0) goto L_0x0498;
        L_0x03fe:
            r2 = r10.floatValue();
            r3 = 0;
            r2 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1));
            if (r2 <= 0) goto L_0x0498;
        L_0x0407:
            r0 = r17;
            r2 = r0.b;
            r3 = new android.graphics.RectF;
            r4 = r8.floatValue();
            r5 = r9.floatValue();
            r6 = r8.floatValue();
            r7 = r12.floatValue();
            r6 = r6 + r7;
            r7 = r9.floatValue();
            r15 = r13.floatValue();
            r7 = r7 + r15;
            r3.<init>(r4, r5, r6, r7);
            r4 = r11.floatValue();
            r5 = r10.floatValue();
            r0 = r17;
            r6 = r0.c;
            r2.drawRoundRect(r3, r4, r5, r6);
        L_0x0439:
            r0 = r17;
            r2 = r0.c;
            r2 = r14.b(r2);
            if (r2 == 0) goto L_0x0487;
        L_0x0443:
            r2 = r11.floatValue();
            r3 = 0;
            r2 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1));
            if (r2 <= 0) goto L_0x04bf;
        L_0x044c:
            r2 = r10.floatValue();
            r3 = 0;
            r2 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1));
            if (r2 <= 0) goto L_0x04bf;
        L_0x0455:
            r0 = r17;
            r2 = r0.b;
            r3 = new android.graphics.RectF;
            r4 = r8.floatValue();
            r5 = r9.floatValue();
            r6 = r8.floatValue();
            r7 = r12.floatValue();
            r6 = r6 + r7;
            r7 = r9.floatValue();
            r8 = r13.floatValue();
            r7 = r7 + r8;
            r3.<init>(r4, r5, r6, r7);
            r4 = r11.floatValue();
            r5 = r10.floatValue();
            r0 = r17;
            r6 = r0.c;
            r2.drawRoundRect(r3, r4, r5, r6);
        L_0x0487:
            r17.b();
            goto L_0x008c;
        L_0x048c:
            if (r3 != 0) goto L_0x0492;
        L_0x048e:
            r10 = r2;
            r11 = r2;
            goto L_0x0399;
        L_0x0492:
            if (r2 != 0) goto L_0x08ce;
        L_0x0494:
            r10 = r3;
            r11 = r3;
            goto L_0x0399;
        L_0x0498:
            r0 = r17;
            r2 = r0.b;
            r3 = r8.floatValue();
            r4 = r9.floatValue();
            r5 = r8.floatValue();
            r6 = r12.floatValue();
            r5 = r5 + r6;
            r6 = r9.floatValue();
            r7 = r13.floatValue();
            r6 = r6 + r7;
            r0 = r17;
            r7 = r0.c;
            r2.drawRect(r3, r4, r5, r6, r7);
            goto L_0x0439;
        L_0x04bf:
            r0 = r17;
            r2 = r0.b;
            r3 = r8.floatValue();
            r4 = r9.floatValue();
            r5 = r8.floatValue();
            r6 = r12.floatValue();
            r5 = r5 + r6;
            r6 = r9.floatValue();
            r7 = r13.floatValue();
            r6 = r6 + r7;
            r0 = r17;
            r7 = r0.c;
            r2.drawRect(r3, r4, r5, r6, r7);
            goto L_0x0487;
        L_0x04e5:
            r0 = r17;
            r2 = r0.m;
            if (r2 != 0) goto L_0x0580;
        L_0x04eb:
            r2 = "line";
            r0 = r19;
            r2 = r0.equals(r2);
            if (r2 == 0) goto L_0x0580;
        L_0x04f5:
            r2 = "x1";
            r0 = r21;
            r3 = com.larvalabs.svgandroid.SVGParser.f(r2, r0);
            r2 = "x2";
            r0 = r21;
            r5 = com.larvalabs.svgandroid.SVGParser.f(r2, r0);
            r2 = "y1";
            r0 = r21;
            r4 = com.larvalabs.svgandroid.SVGParser.f(r2, r0);
            r2 = "y2";
            r0 = r21;
            r6 = com.larvalabs.svgandroid.SVGParser.f(r2, r0);
            r7 = new com.larvalabs.svgandroid.SVGParser$d;
            r2 = 0;
            r0 = r21;
            r7.<init>(r0);
            r8 = new com.larvalabs.svgandroid.SVGParser$f;
            r0 = r17;
            r2 = r0.g;
            r2 = r2.peek();
            r2 = (com.larvalabs.svgandroid.SVGParser.f) r2;
            r8.<init>(r2);
            r0 = r17;
            r0.a(r7, r8);
            r0 = r17;
            r2 = r0.c;
            r2 = r8.b(r2);
            if (r2 == 0) goto L_0x008c;
        L_0x053f:
            r0 = r17;
            r1 = r21;
            r0.a(r1);
            r2 = r3.floatValue();
            r7 = r4.floatValue();
            r0 = r17;
            r0.a(r2, r7);
            r2 = r5.floatValue();
            r7 = r6.floatValue();
            r0 = r17;
            r0.a(r2, r7);
            r0 = r17;
            r2 = r0.b;
            r3 = r3.floatValue();
            r4 = r4.floatValue();
            r5 = r5.floatValue();
            r6 = r6.floatValue();
            r0 = r17;
            r7 = r0.c;
            r2.drawLine(r3, r4, r5, r6, r7);
            r17.b();
            goto L_0x008c;
        L_0x0580:
            r0 = r17;
            r2 = r0.m;
            if (r2 != 0) goto L_0x064f;
        L_0x0586:
            r2 = "circle";
            r0 = r19;
            r2 = r0.equals(r2);
            if (r2 == 0) goto L_0x064f;
        L_0x0590:
            r2 = "cx";
            r0 = r21;
            r3 = com.larvalabs.svgandroid.SVGParser.f(r2, r0);
            r2 = "cy";
            r0 = r21;
            r4 = com.larvalabs.svgandroid.SVGParser.f(r2, r0);
            r2 = "r";
            r0 = r21;
            r5 = com.larvalabs.svgandroid.SVGParser.f(r2, r0);
            if (r3 == 0) goto L_0x008c;
        L_0x05aa:
            if (r4 == 0) goto L_0x008c;
        L_0x05ac:
            if (r5 == 0) goto L_0x008c;
        L_0x05ae:
            r0 = r17;
            r1 = r21;
            r0.a(r1);
            r6 = new com.larvalabs.svgandroid.SVGParser$d;
            r2 = 0;
            r0 = r21;
            r6.<init>(r0);
            r7 = new com.larvalabs.svgandroid.SVGParser$f;
            r0 = r17;
            r2 = r0.g;
            r2 = r2.peek();
            r2 = (com.larvalabs.svgandroid.SVGParser.f) r2;
            r7.<init>(r2);
            r0 = r17;
            r2 = r0.j;
            r0 = r17;
            r0.a(r6, r2, r7);
            r0 = r17;
            r0.a(r6, r7);
            r0 = r17;
            r2 = r0.c;
            r2 = r7.a(r2);
            if (r2 == 0) goto L_0x0629;
        L_0x05e4:
            r2 = r3.floatValue();
            r6 = r5.floatValue();
            r2 = r2 - r6;
            r6 = r4.floatValue();
            r8 = r5.floatValue();
            r6 = r6 - r8;
            r0 = r17;
            r0.a(r2, r6);
            r2 = r3.floatValue();
            r6 = r5.floatValue();
            r2 = r2 + r6;
            r6 = r4.floatValue();
            r8 = r5.floatValue();
            r6 = r6 + r8;
            r0 = r17;
            r0.a(r2, r6);
            r0 = r17;
            r2 = r0.b;
            r6 = r3.floatValue();
            r8 = r4.floatValue();
            r9 = r5.floatValue();
            r0 = r17;
            r10 = r0.c;
            r2.drawCircle(r6, r8, r9, r10);
        L_0x0629:
            r0 = r17;
            r2 = r0.c;
            r2 = r7.b(r2);
            if (r2 == 0) goto L_0x064a;
        L_0x0633:
            r0 = r17;
            r2 = r0.b;
            r3 = r3.floatValue();
            r4 = r4.floatValue();
            r5 = r5.floatValue();
            r0 = r17;
            r6 = r0.c;
            r2.drawCircle(r3, r4, r5, r6);
        L_0x064a:
            r17.b();
            goto L_0x008c;
        L_0x064f:
            r0 = r17;
            r2 = r0.m;
            if (r2 != 0) goto L_0x0743;
        L_0x0655:
            r2 = "ellipse";
            r0 = r19;
            r2 = r0.equals(r2);
            if (r2 == 0) goto L_0x0743;
        L_0x065f:
            r2 = "cx";
            r0 = r21;
            r3 = com.larvalabs.svgandroid.SVGParser.f(r2, r0);
            r2 = "cy";
            r0 = r21;
            r4 = com.larvalabs.svgandroid.SVGParser.f(r2, r0);
            r2 = "rx";
            r0 = r21;
            r5 = com.larvalabs.svgandroid.SVGParser.f(r2, r0);
            r2 = "ry";
            r0 = r21;
            r6 = com.larvalabs.svgandroid.SVGParser.f(r2, r0);
            if (r3 == 0) goto L_0x008c;
        L_0x0681:
            if (r4 == 0) goto L_0x008c;
        L_0x0683:
            if (r5 == 0) goto L_0x008c;
        L_0x0685:
            if (r6 == 0) goto L_0x008c;
        L_0x0687:
            r0 = r17;
            r1 = r21;
            r0.a(r1);
            r7 = new com.larvalabs.svgandroid.SVGParser$d;
            r2 = 0;
            r0 = r21;
            r7.<init>(r0);
            r8 = new com.larvalabs.svgandroid.SVGParser$f;
            r0 = r17;
            r2 = r0.g;
            r2 = r2.peek();
            r2 = (com.larvalabs.svgandroid.SVGParser.f) r2;
            r8.<init>(r2);
            r0 = r17;
            r2 = r0.j;
            r0 = r17;
            r0.a(r7, r2, r8);
            r0 = r17;
            r0.a(r7, r8);
            r0 = r17;
            r2 = r0.d;
            r7 = r3.floatValue();
            r9 = r5.floatValue();
            r7 = r7 - r9;
            r9 = r4.floatValue();
            r10 = r6.floatValue();
            r9 = r9 - r10;
            r10 = r3.floatValue();
            r11 = r5.floatValue();
            r10 = r10 + r11;
            r11 = r4.floatValue();
            r12 = r6.floatValue();
            r11 = r11 + r12;
            r2.set(r7, r9, r10, r11);
            r0 = r17;
            r2 = r0.c;
            r2 = r8.a(r2);
            if (r2 == 0) goto L_0x0725;
        L_0x06e8:
            r2 = r3.floatValue();
            r7 = r5.floatValue();
            r2 = r2 - r7;
            r7 = r4.floatValue();
            r9 = r6.floatValue();
            r7 = r7 - r9;
            r0 = r17;
            r0.a(r2, r7);
            r2 = r3.floatValue();
            r3 = r5.floatValue();
            r2 = r2 + r3;
            r3 = r4.floatValue();
            r4 = r6.floatValue();
            r3 = r3 + r4;
            r0 = r17;
            r0.a(r2, r3);
            r0 = r17;
            r2 = r0.b;
            r0 = r17;
            r3 = r0.d;
            r0 = r17;
            r4 = r0.c;
            r2.drawOval(r3, r4);
        L_0x0725:
            r0 = r17;
            r2 = r0.c;
            r2 = r8.b(r2);
            if (r2 == 0) goto L_0x073e;
        L_0x072f:
            r0 = r17;
            r2 = r0.b;
            r0 = r17;
            r3 = r0.d;
            r0 = r17;
            r4 = r0.c;
            r2.drawOval(r3, r4);
        L_0x073e:
            r17.b();
            goto L_0x008c;
        L_0x0743:
            r0 = r17;
            r2 = r0.m;
            if (r2 != 0) goto L_0x0829;
        L_0x0749:
            r2 = "polygon";
            r0 = r19;
            r2 = r0.equals(r2);
            if (r2 != 0) goto L_0x075d;
        L_0x0753:
            r2 = "polyline";
            r0 = r19;
            r2 = r0.equals(r2);
            if (r2 == 0) goto L_0x0829;
        L_0x075d:
            r2 = "points";
            r0 = r21;
            r2 = com.larvalabs.svgandroid.SVGParser.d(r2, r0);
            if (r2 == 0) goto L_0x008c;
        L_0x0767:
            r4 = new android.graphics.Path;
            r4.<init>();
            r5 = r2.a;
            r2 = r5.size();
            r3 = 1;
            if (r2 <= r3) goto L_0x008c;
        L_0x0777:
            r0 = r17;
            r1 = r21;
            r0.a(r1);
            r3 = new com.larvalabs.svgandroid.SVGParser$d;
            r2 = 0;
            r0 = r21;
            r3.<init>(r0);
            r6 = new com.larvalabs.svgandroid.SVGParser$f;
            r0 = r17;
            r2 = r0.g;
            r2 = r2.peek();
            r2 = (com.larvalabs.svgandroid.SVGParser.f) r2;
            r6.<init>(r2);
            r0 = r17;
            r2 = r0.j;
            r0 = r17;
            r0.a(r3, r2, r6);
            r0 = r17;
            r0.a(r3, r6);
            r2 = 0;
            r2 = r5.get(r2);
            r2 = (java.lang.Float) r2;
            r3 = r2.floatValue();
            r2 = 1;
            r2 = r5.get(r2);
            r2 = (java.lang.Float) r2;
            r2 = r2.floatValue();
            r4.moveTo(r3, r2);
            r2 = 2;
            r3 = r2;
        L_0x07be:
            r2 = r5.size();
            if (r3 >= r2) goto L_0x07e1;
        L_0x07c4:
            r2 = r5.get(r3);
            r2 = (java.lang.Float) r2;
            r7 = r2.floatValue();
            r2 = r3 + 1;
            r2 = r5.get(r2);
            r2 = (java.lang.Float) r2;
            r2 = r2.floatValue();
            r4.lineTo(r7, r2);
            r2 = r3 + 2;
            r3 = r2;
            goto L_0x07be;
        L_0x07e1:
            r2 = "polygon";
            r0 = r19;
            r2 = r0.equals(r2);
            if (r2 == 0) goto L_0x07ee;
        L_0x07eb:
            r4.close();
        L_0x07ee:
            r0 = r17;
            r2 = r0.c;
            r2 = r6.a(r2);
            if (r2 == 0) goto L_0x080f;
        L_0x07f8:
            r2 = r6.a();
            r4.setFillType(r2);
            r0 = r17;
            r0.a(r4);
            r0 = r17;
            r2 = r0.b;
            r0 = r17;
            r3 = r0.c;
            r2.drawPath(r4, r3);
        L_0x080f:
            r0 = r17;
            r2 = r0.c;
            r2 = r6.b(r2);
            if (r2 == 0) goto L_0x0824;
        L_0x0819:
            r0 = r17;
            r2 = r0.b;
            r0 = r17;
            r3 = r0.c;
            r2.drawPath(r4, r3);
        L_0x0824:
            r17.b();
            goto L_0x008c;
        L_0x0829:
            r0 = r17;
            r2 = r0.m;
            if (r2 != 0) goto L_0x08ac;
        L_0x082f:
            r2 = "path";
            r0 = r19;
            r2 = r0.equals(r2);
            if (r2 == 0) goto L_0x08ac;
        L_0x0839:
            r2 = "d";
            r0 = r21;
            r2 = com.larvalabs.svgandroid.SVGParser.e(r2, r0);
            r3 = com.larvalabs.svgandroid.SVGParser.f(r2);
            r0 = r17;
            r1 = r21;
            r0.a(r1);
            r4 = new com.larvalabs.svgandroid.SVGParser$d;
            r2 = 0;
            r0 = r21;
            r4.<init>(r0);
            r5 = new com.larvalabs.svgandroid.SVGParser$f;
            r0 = r17;
            r2 = r0.g;
            r2 = r2.peek();
            r2 = (com.larvalabs.svgandroid.SVGParser.f) r2;
            r5.<init>(r2);
            r0 = r17;
            r2 = r0.j;
            r0 = r17;
            r0.a(r4, r2, r5);
            r0 = r17;
            r0.a(r4, r5);
            r0 = r17;
            r2 = r0.c;
            r2 = r5.a(r2);
            if (r2 == 0) goto L_0x0892;
        L_0x087b:
            r2 = r5.a();
            r3.setFillType(r2);
            r0 = r17;
            r0.a(r3);
            r0 = r17;
            r2 = r0.b;
            r0 = r17;
            r4 = r0.c;
            r2.drawPath(r3, r4);
        L_0x0892:
            r0 = r17;
            r2 = r0.c;
            r2 = r5.b(r2);
            if (r2 == 0) goto L_0x08a7;
        L_0x089c:
            r0 = r17;
            r2 = r0.b;
            r0 = r17;
            r4 = r0.c;
            r2.drawPath(r3, r4);
        L_0x08a7:
            r17.b();
            goto L_0x008c;
        L_0x08ac:
            r0 = r17;
            r2 = r0.m;
            if (r2 != 0) goto L_0x008c;
        L_0x08b2:
            r2 = "SVGAndroid";
            r3 = new java.lang.StringBuilder;
            r3.<init>();
            r4 = "UNRECOGNIZED SVG COMMAND: ";
            r3 = r3.append(r4);
            r0 = r19;
            r3 = r3.append(r0);
            r3 = r3.toString();
            android.util.Log.w(r2, r3);
            goto L_0x008c;
        L_0x08ce:
            r10 = r2;
            r11 = r3;
            goto L_0x0399;
        L_0x08d2:
            r9 = r2;
            goto L_0x0379;
        L_0x08d5:
            r8 = r2;
            goto L_0x0368;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.larvalabs.svgandroid.SVGParser.e.startElement(java.lang.String, java.lang.String, java.lang.String, org.xml.sax.Attributes):void");
        }

        public void characters(char[] cArr, int i, int i2) {
        }

        public void endElement(String str, String str2, String str3) throws SAXException {
            int i = 0;
            a aVar;
            int i2;
            if (str2.equals("svg")) {
                this.a.endRecording();
            } else if (str2.equals("linearGradient")) {
                if (this.l.a != null) {
                    if (this.l.b != null) {
                        aVar = (a) this.k.get(this.l.b);
                        if (aVar != null) {
                            this.l = aVar.a(this.l);
                        }
                    }
                    int[] iArr = new int[this.l.l.size()];
                    for (i2 = 0; i2 < iArr.length; i2++) {
                        iArr[i2] = ((Integer) this.l.l.get(i2)).intValue();
                    }
                    float[] fArr = new float[this.l.k.size()];
                    while (i < fArr.length) {
                        fArr[i] = ((Float) this.l.k.get(i)).floatValue();
                        i++;
                    }
                    if (iArr.length == 0) {
                        Log.d("BAD", "BAD");
                    }
                    LinearGradient linearGradient = new LinearGradient(this.l.d, this.l.e, this.l.f, this.l.g, iArr, fArr, TileMode.CLAMP);
                    if (this.l.m != null) {
                        linearGradient.setLocalMatrix(this.l.m);
                    }
                    this.j.put(this.l.a, linearGradient);
                    this.k.put(this.l.a, this.l);
                }
            } else if (str2.equals("radialGradient")) {
                if (this.l.a != null) {
                    if (this.l.b != null) {
                        aVar = (a) this.k.get(this.l.b);
                        if (aVar != null) {
                            this.l = aVar.a(this.l);
                        }
                    }
                    int[] iArr2 = new int[this.l.l.size()];
                    for (i2 = 0; i2 < iArr2.length; i2++) {
                        iArr2[i2] = ((Integer) this.l.l.get(i2)).intValue();
                    }
                    float[] fArr2 = new float[this.l.k.size()];
                    while (i < fArr2.length) {
                        fArr2[i] = ((Float) this.l.k.get(i)).floatValue();
                        i++;
                    }
                    if (this.l.b != null) {
                        aVar = (a) this.k.get(this.l.b);
                        if (aVar != null) {
                            this.l = aVar.a(this.l);
                        }
                    }
                    RadialGradient radialGradient = new RadialGradient(this.l.h, this.l.i, this.l.j, iArr2, fArr2, TileMode.CLAMP);
                    if (this.l.m != null) {
                        radialGradient.setLocalMatrix(this.l.m);
                    }
                    this.j.put(this.l.a, radialGradient);
                    this.k.put(this.l.a, this.l);
                }
            } else if (str2.equals("g")) {
                this.g.pop();
                if (this.o) {
                    this.o = false;
                }
                this.b.restore();
                if (this.m) {
                    this.n--;
                    if (this.n == 0) {
                        this.m = false;
                    }
                }
            }
        }
    }

    private static class f {
        private int a = -16777216;
        private int b = -16777216;
        private Shader c = null;
        private float d = 1.0f;
        private Cap e = Cap.BUTT;
        private Join f = Join.MITER;
        private boolean g = false;
        private boolean h = false;
        private FillType i;

        public f(f fVar) {
            this.a = fVar.a;
            this.b = fVar.b;
            this.c = fVar.c;
            this.d = fVar.d;
            this.e = fVar.e;
            this.f = fVar.f;
            this.g = fVar.g;
            this.h = fVar.h;
        }

        public void a(int i) {
            this.a = i;
            this.c = null;
            this.h = true;
        }

        public void b(int i) {
            this.b = i;
            this.g = true;
        }

        public boolean a(Paint paint) {
            if (!this.h) {
                return false;
            }
            paint.setStyle(Style.FILL);
            paint.setShader(this.c);
            paint.setColor(this.a);
            return true;
        }

        public boolean b(Paint paint) {
            if (!this.g) {
                return false;
            }
            paint.setStyle(Style.STROKE);
            paint.setShader(null);
            paint.setColor(this.b);
            paint.setStrokeWidth(this.d);
            paint.setStrokeCap(this.e);
            paint.setStrokeJoin(this.f);
            return true;
        }

        public void a(float f) {
            this.d = f;
        }

        public void a(Shader shader) {
            this.c = shader;
            this.a = -16777216;
            this.h = true;
        }

        public void a(Cap cap) {
            this.e = cap;
        }

        public void a(Join join) {
            this.f = join;
        }

        public void a(FillType fillType) {
            this.i = fillType;
        }

        public FillType a() {
            return this.i == null ? FillType.WINDING : this.i;
        }
    }

    private static class g {
        HashMap<String, String> a;

        private g(String str) {
            this.a = new HashMap();
            for (String split : str.split(";")) {
                String[] split2 = split.split(":");
                if (split2.length == 2) {
                    this.a.put(split2[0], split2[1]);
                }
            }
        }

        public String a(String str) {
            return (String) this.a.get(str);
        }
    }

    private static class h {
        private final String a;
        private Matrix b = null;

        public h(String str) {
            this.a = str;
        }

        public Matrix a() {
            if (this.b == null) {
                b();
            }
            return this.b;
        }

        private void b() {
            this.b = new Matrix();
            int length = this.a.length();
            int i = 0;
            while (i < length) {
                char charAt = this.a.charAt(i);
                if (charAt >= 'a' && charAt <= 'z') {
                    for (Prefix prefix : Prefix.values()) {
                        String name = prefix.name();
                        if (this.a.startsWith(name, i) && this.a.charAt(name.length() + i) == '(') {
                            i += name.length();
                            b a = SVGParser.d(this.a.substring(i + 1));
                            i += a.a();
                            Matrix a2 = SVGParser.b(prefix, a);
                            if (a2 != null) {
                                this.b.preConcat(a2);
                            }
                        }
                    }
                }
                i++;
            }
        }
    }

    public static b a(InputStream inputStream) throws SVGParseException {
        return a(inputStream, null);
    }

    public static b a(InputStream inputStream, Map<Integer, Integer> map, int i) throws SVGParseException {
        c cVar = new c();
        cVar.a((Map) map, i);
        return a(inputStream, cVar);
    }

    private static b a(InputStream inputStream, c cVar) throws SVGParseException {
        Log.d("SVGAndroid", "Parse IN");
        try {
            System.currentTimeMillis();
            XMLReader xMLReader = SAXParserFactory.newInstance().newSAXParser().getXMLReader();
            Picture picture = new Picture();
            e eVar = new e(picture, cVar);
            xMLReader.setContentHandler(eVar);
            xMLReader.parse(new InputSource(inputStream));
            b bVar = new b(picture, eVar.e, eVar.a().i);
            if (!Float.isInfinite(eVar.f.top)) {
                bVar.a(eVar.f);
            }
            Log.d("SVGAndroid", "Parse OUT");
            return bVar;
        } catch (Throwable e) {
            Log.w("SVGAndroid", "Parse Error", e);
            throw new SVGParseException(e);
        }
    }

    private static b d(String str) {
        String substring;
        int length = str.length();
        ArrayList arrayList = new ArrayList();
        Object obj = null;
        int i = 0;
        for (int i2 = 1; i2 < length; i2++) {
            if (obj == null) {
                char charAt = str.charAt(i2);
                switch (charAt) {
                    case 9:
                    case 10:
                    case ' ':
                    case ',':
                        String substring2 = str.substring(i, i2);
                        if (substring2.trim().length() <= 0) {
                            i++;
                            break;
                        }
                        arrayList.add(Float.valueOf(Float.parseFloat(substring2)));
                        if (charAt != '-') {
                            i = i2 + 1;
                            int obj2 = 1;
                            break;
                        }
                        i = i2;
                        break;
                    case ')':
                    case 'A':
                    case 'C':
                    case 'H':
                    case 'L':
                    case 'M':
                    case BaiduSceneResult.SWIM /*81*/:
                    case BaiduSceneResult.RUN /*83*/:
                    case BaiduSceneResult.FOOTBALL /*84*/:
                    case BaiduSceneResult.TENNIS /*86*/:
                    case 'Z':
                    case BaiduSceneResult.SKATEBOARD /*97*/:
                    case BaiduSceneResult.VOLLEYBALL /*99*/:
                    case BaiduSceneResult.SPORTS_OTHER /*104*/:
                    case BaiduSceneResult.ANCIENT_CHINESE_ARCHITECTURE /*108*/:
                    case BaiduSceneResult.CHURCH /*109*/:
                    case BaiduSceneResult.FOUNTAIN /*113*/:
                    case BaiduSceneResult.BUILDING_OTHER /*115*/:
                    case BaiduSceneResult.CAR /*116*/:
                    case BaiduSceneResult.SUBWAY /*118*/:
                    case 'z':
                        substring = str.substring(i, i2);
                        if (substring.trim().length() > 0) {
                            arrayList.add(Float.valueOf(Float.parseFloat(substring)));
                        }
                        return new b(arrayList, i2);
                    default:
                        break;
                }
            }
            obj2 = null;
        }
        substring = str.substring(i);
        if (substring.length() > 0) {
            try {
                arrayList.add(Float.valueOf(Float.parseFloat(substring)));
            } catch (NumberFormatException e) {
            }
            i = str.length();
        }
        return new b(arrayList, i);
    }

    private static Matrix b(Prefix prefix, b bVar) {
        float f = 0.0f;
        Matrix matrix;
        float floatValue;
        float floatValue2;
        Matrix matrix2;
        switch (prefix) {
            case matrix:
                if (bVar.a.size() == 6) {
                    matrix = new Matrix();
                    matrix.setValues(new float[]{((Float) bVar.a.get(0)).floatValue(), ((Float) bVar.a.get(2)).floatValue(), ((Float) bVar.a.get(4)).floatValue(), ((Float) bVar.a.get(1)).floatValue(), ((Float) bVar.a.get(3)).floatValue(), ((Float) bVar.a.get(5)).floatValue(), 0.0f, 0.0f, 1.0f});
                    return matrix;
                }
                break;
            case translate:
                if (bVar.a.size() > 0) {
                    floatValue = ((Float) bVar.a.get(0)).floatValue();
                    if (bVar.a.size() > 1) {
                        floatValue2 = ((Float) bVar.a.get(1)).floatValue();
                    } else {
                        floatValue2 = 0.0f;
                    }
                    Matrix matrix3 = new Matrix();
                    matrix3.postTranslate(floatValue, floatValue2);
                    return matrix3;
                }
                break;
            case scale:
                if (bVar.a.size() > 0) {
                    floatValue = ((Float) bVar.a.get(0)).floatValue();
                    if (bVar.a.size() > 1) {
                        f = ((Float) bVar.a.get(1)).floatValue();
                    }
                    matrix2 = new Matrix();
                    matrix2.postScale(floatValue, f);
                    return matrix2;
                }
                break;
            case skewX:
                if (bVar.a.size() > 0) {
                    floatValue = ((Float) bVar.a.get(0)).floatValue();
                    matrix2 = new Matrix();
                    matrix2.postSkew((float) Math.tan((double) floatValue), 0.0f);
                    return matrix2;
                }
                break;
            case skewY:
                if (bVar.a.size() > 0) {
                    floatValue = ((Float) bVar.a.get(0)).floatValue();
                    matrix2 = new Matrix();
                    matrix2.postSkew(0.0f, (float) Math.tan((double) floatValue));
                    return matrix2;
                }
                break;
            case rotate:
                if (bVar.a.size() > 0) {
                    float floatValue3 = ((Float) bVar.a.get(0)).floatValue();
                    if (bVar.a.size() > 2) {
                        floatValue = ((Float) bVar.a.get(1)).floatValue();
                        f = ((Float) bVar.a.get(2)).floatValue();
                        floatValue2 = floatValue;
                    } else {
                        floatValue2 = 0.0f;
                    }
                    matrix = new Matrix();
                    matrix.postTranslate(floatValue2, f);
                    matrix.postRotate(floatValue3);
                    matrix.postTranslate(-floatValue2, -f);
                    return matrix;
                }
                break;
        }
        return null;
    }

    private static Matrix e(String str) {
        return new h(str).a();
    }

    private static android.graphics.Path f(java.lang.String r23) {
        /*
        r19 = r23.length();
        r20 = new com.larvalabs.svgandroid.a;
        r2 = 0;
        r0 = r20;
        r1 = r23;
        r0.<init>(r1, r2);
        r20.a();
        r2 = new android.graphics.Path;
        r2.<init>();
        r9 = 0;
        r8 = 0;
        r7 = 0;
        r6 = 0;
        r5 = 0;
        r4 = 0;
        r3 = 0;
        r13 = r4;
        r14 = r5;
        r15 = r6;
        r16 = r7;
        r5 = r3;
        r4 = r8;
        r3 = r9;
    L_0x0025:
        r0 = r20;
        r6 = r0.a;
        r0 = r19;
        if (r6 >= r0) goto L_0x01da;
    L_0x002d:
        r0 = r20;
        r6 = r0.a;
        r0 = r23;
        r6 = r0.charAt(r6);
        switch(r6) {
            case 43: goto L_0x005e;
            case 44: goto L_0x003a;
            case 45: goto L_0x005e;
            case 46: goto L_0x003a;
            case 47: goto L_0x003a;
            case 48: goto L_0x005e;
            case 49: goto L_0x005e;
            case 50: goto L_0x005e;
            case 51: goto L_0x005e;
            case 52: goto L_0x005e;
            case 53: goto L_0x005e;
            case 54: goto L_0x005e;
            case 55: goto L_0x005e;
            case 56: goto L_0x005e;
            case 57: goto L_0x005e;
            default: goto L_0x003a;
        };
    L_0x003a:
        r20.c();
        r18 = r6;
        r12 = r6;
    L_0x0040:
        r17 = 0;
        switch(r18) {
            case 65: goto L_0x01ae;
            case 67: goto L_0x013f;
            case 72: goto L_0x00ef;
            case 76: goto L_0x00c0;
            case 77: goto L_0x0085;
            case 83: goto L_0x0179;
            case 86: goto L_0x0117;
            case 90: goto L_0x00b1;
            case 97: goto L_0x01ae;
            case 99: goto L_0x013f;
            case 104: goto L_0x00ef;
            case 108: goto L_0x00c0;
            case 109: goto L_0x0085;
            case 115: goto L_0x0179;
            case 118: goto L_0x0117;
            case 122: goto L_0x00b1;
            default: goto L_0x0045;
        };
    L_0x0045:
        r9 = r17;
        r5 = r15;
        r6 = r16;
        r7 = r4;
        r8 = r3;
        r3 = r13;
        r4 = r14;
    L_0x004e:
        if (r9 != 0) goto L_0x0052;
    L_0x0050:
        r5 = r7;
        r6 = r8;
    L_0x0052:
        r20.a();
        r13 = r3;
        r14 = r4;
        r15 = r5;
        r16 = r6;
        r5 = r12;
        r4 = r7;
        r3 = r8;
        goto L_0x0025;
    L_0x005e:
        r7 = 109; // 0x6d float:1.53E-43 double:5.4E-322;
        if (r5 == r7) goto L_0x0066;
    L_0x0062:
        r7 = 77;
        if (r5 != r7) goto L_0x006d;
    L_0x0066:
        r6 = r5 + -1;
        r6 = (char) r6;
        r18 = r6;
        r12 = r5;
        goto L_0x0040;
    L_0x006d:
        r7 = 99;
        if (r5 == r7) goto L_0x0075;
    L_0x0071:
        r7 = 67;
        if (r5 != r7) goto L_0x0079;
    L_0x0075:
        r18 = r5;
        r12 = r5;
        goto L_0x0040;
    L_0x0079:
        r7 = 108; // 0x6c float:1.51E-43 double:5.34E-322;
        if (r5 == r7) goto L_0x0081;
    L_0x007d:
        r7 = 76;
        if (r5 != r7) goto L_0x003a;
    L_0x0081:
        r18 = r5;
        r12 = r5;
        goto L_0x0040;
    L_0x0085:
        r6 = r20.e();
        r5 = r20.e();
        r7 = 109; // 0x6d float:1.53E-43 double:5.4E-322;
        r0 = r18;
        if (r0 != r7) goto L_0x00a4;
    L_0x0093:
        r14 = r14 + r6;
        r13 = r13 + r5;
        r2.rMoveTo(r6, r5);
        r3 = r3 + r6;
        r4 = r4 + r5;
        r9 = r17;
        r5 = r15;
        r6 = r16;
        r7 = r4;
        r8 = r3;
        r3 = r13;
        r4 = r14;
        goto L_0x004e;
    L_0x00a4:
        r2.moveTo(r6, r5);
        r9 = r17;
        r3 = r5;
        r4 = r6;
        r7 = r5;
        r8 = r6;
        r5 = r15;
        r6 = r16;
        goto L_0x004e;
    L_0x00b1:
        r2.close();
        r2.moveTo(r14, r13);
        r3 = 1;
        r9 = r3;
        r4 = r14;
        r5 = r13;
        r6 = r14;
        r7 = r13;
        r8 = r14;
        r3 = r13;
        goto L_0x004e;
    L_0x00c0:
        r7 = r20.e();
        r8 = r20.e();
        r5 = 108; // 0x6c float:1.51E-43 double:5.34E-322;
        r0 = r18;
        if (r0 != r5) goto L_0x00de;
    L_0x00ce:
        r2.rLineTo(r7, r8);
        r3 = r3 + r7;
        r4 = r4 + r8;
        r9 = r17;
        r5 = r15;
        r6 = r16;
        r7 = r4;
        r8 = r3;
        r3 = r13;
        r4 = r14;
        goto L_0x004e;
    L_0x00de:
        r2.lineTo(r7, r8);
        r9 = r17;
        r3 = r13;
        r4 = r14;
        r5 = r15;
        r6 = r16;
        r21 = r8;
        r8 = r7;
        r7 = r21;
        goto L_0x004e;
    L_0x00ef:
        r7 = r20.e();
        r5 = 104; // 0x68 float:1.46E-43 double:5.14E-322;
        r0 = r18;
        if (r0 != r5) goto L_0x0109;
    L_0x00f9:
        r5 = 0;
        r2.rLineTo(r7, r5);
        r3 = r3 + r7;
        r9 = r17;
        r5 = r15;
        r6 = r16;
        r7 = r4;
        r8 = r3;
        r3 = r13;
        r4 = r14;
        goto L_0x004e;
    L_0x0109:
        r2.lineTo(r7, r4);
        r9 = r17;
        r3 = r13;
        r5 = r15;
        r6 = r16;
        r8 = r7;
        r7 = r4;
        r4 = r14;
        goto L_0x004e;
    L_0x0117:
        r8 = r20.e();
        r5 = 118; // 0x76 float:1.65E-43 double:5.83E-322;
        r0 = r18;
        if (r0 != r5) goto L_0x0131;
    L_0x0121:
        r5 = 0;
        r2.rLineTo(r5, r8);
        r4 = r4 + r8;
        r9 = r17;
        r5 = r15;
        r6 = r16;
        r7 = r4;
        r8 = r3;
        r3 = r13;
        r4 = r14;
        goto L_0x004e;
    L_0x0131:
        r2.lineTo(r3, r8);
        r9 = r17;
        r4 = r14;
        r5 = r15;
        r6 = r16;
        r7 = r8;
        r8 = r3;
        r3 = r13;
        goto L_0x004e;
    L_0x013f:
        r11 = 1;
        r10 = r20.e();
        r9 = r20.e();
        r5 = r20.e();
        r6 = r20.e();
        r7 = r20.e();
        r8 = r20.e();
        r15 = 99;
        r0 = r18;
        if (r0 != r15) goto L_0x01db;
    L_0x015e:
        r10 = r10 + r3;
        r5 = r5 + r3;
        r7 = r7 + r3;
        r3 = r9 + r4;
        r6 = r6 + r4;
        r8 = r8 + r4;
        r4 = r3;
        r3 = r10;
    L_0x0167:
        r2.cubicTo(r3, r4, r5, r6, r7, r8);
        r9 = r11;
        r3 = r13;
        r4 = r14;
        r21 = r6;
        r6 = r5;
        r5 = r21;
        r22 = r8;
        r8 = r7;
        r7 = r22;
        goto L_0x004e;
    L_0x0179:
        r9 = 1;
        r5 = r20.e();
        r6 = r20.e();
        r7 = r20.e();
        r8 = r20.e();
        r10 = 115; // 0x73 float:1.61E-43 double:5.7E-322;
        r0 = r18;
        if (r0 != r10) goto L_0x0194;
    L_0x0190:
        r5 = r5 + r3;
        r7 = r7 + r3;
        r6 = r6 + r4;
        r8 = r8 + r4;
    L_0x0194:
        r10 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r3 = r3 * r10;
        r3 = r3 - r16;
        r10 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r4 = r4 * r10;
        r4 = r4 - r15;
        r2.cubicTo(r3, r4, r5, r6, r7, r8);
        r3 = r13;
        r4 = r14;
        r21 = r6;
        r6 = r5;
        r5 = r21;
        r22 = r8;
        r8 = r7;
        r7 = r22;
        goto L_0x004e;
    L_0x01ae:
        r7 = r20.e();
        r8 = r20.e();
        r9 = r20.e();
        r5 = r20.e();
        r10 = (int) r5;
        r5 = r20.e();
        r11 = (int) r5;
        r5 = r20.e();
        r6 = r20.e();
        a(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11);
        r9 = r17;
        r3 = r13;
        r4 = r14;
        r7 = r6;
        r8 = r5;
        r5 = r15;
        r6 = r16;
        goto L_0x004e;
    L_0x01da:
        return r2;
    L_0x01db:
        r4 = r9;
        r3 = r10;
        goto L_0x0167;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.larvalabs.svgandroid.SVGParser.f(java.lang.String):android.graphics.Path");
    }

    private static void a(Path path, float f, float f2, float f3, float f4, float f5, float f6, float f7, int i, int i2) {
    }

    private static b d(String str, Attributes attributes) {
        int length = attributes.getLength();
        for (int i = 0; i < length; i++) {
            if (attributes.getLocalName(i).equals(str)) {
                return d(attributes.getValue(i));
            }
        }
        return null;
    }

    private static String e(String str, Attributes attributes) {
        int length = attributes.getLength();
        for (int i = 0; i < length; i++) {
            if (attributes.getLocalName(i).equals(str)) {
                return attributes.getValue(i);
            }
        }
        return null;
    }

    private static Float f(String str, Attributes attributes) {
        return b(str, attributes, null);
    }

    private static Float b(String str, Attributes attributes, Float f) {
        String e = e(str, attributes);
        if (e == null) {
            return f;
        }
        if (e.endsWith("%")) {
            return Float.valueOf(Float.parseFloat(e.substring(0, e.length() - 1)) / 100.0f);
        }
        if (e.endsWith("px")) {
            e = e.substring(0, e.length() - 2);
        }
        return Float.valueOf(Float.parseFloat(e));
    }
}
