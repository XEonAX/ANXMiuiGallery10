package miui.util;

import android.util.Log;
import java.util.Collection;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class ArrayMap<K, V> implements Map<K, V> {
    private static final int CACHE_SIZE = 10;
    private static final boolean DEBUG = false;
    private static final int GX = 4;
    static Object[] GZ = null;
    static int Ha = 0;
    static Object[] Hb = null;
    static int Hc = 0;
    private static final String TAG = "ArrayMap";
    int[] Hd;
    Object[] He;
    int Hf;
    MapCollections<K, V> Hg;

    int indexOf(Object obj, int i) {
        int i2 = this.Hf;
        if (i2 == 0) {
            return -1;
        }
        int a = a.a(this.Hd, i2, i);
        if (a < 0 || obj.equals(this.He[a << 1])) {
            return a;
        }
        int i3 = a + 1;
        while (i3 < i2 && this.Hd[i3] == i) {
            if (obj.equals(this.He[i3 << 1])) {
                return i3;
            }
            i3++;
        }
        a--;
        while (a >= 0 && this.Hd[a] == i) {
            if (obj.equals(this.He[a << 1])) {
                return a;
            }
            a--;
        }
        return ~i3;
    }

    int df() {
        int i = this.Hf;
        if (i == 0) {
            return -1;
        }
        int a = a.a(this.Hd, i, 0);
        if (a < 0 || this.He[a << 1] == null) {
            return a;
        }
        int i2 = a + 1;
        while (i2 < i && this.Hd[i2] == 0) {
            if (this.He[i2 << 1] == null) {
                return i2;
            }
            i2++;
        }
        a--;
        while (a >= 0 && this.Hd[a] == 0) {
            if (this.He[a << 1] == null) {
                return a;
            }
            a--;
        }
        return ~i2;
    }

    private void R(int i) {
        Object[] objArr;
        if (i == 8) {
            synchronized (ArrayMap.class) {
                if (Hb != null) {
                    objArr = Hb;
                    this.He = objArr;
                    Hb = (Object[]) objArr[0];
                    this.Hd = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    Hc--;
                    return;
                }
            }
        } else if (i == 4) {
            synchronized (ArrayMap.class) {
                if (GZ != null) {
                    objArr = GZ;
                    this.He = objArr;
                    GZ = (Object[]) objArr[0];
                    this.Hd = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    Ha--;
                    return;
                }
            }
        }
        this.Hd = new int[i];
        this.He = new Object[(i << 1)];
    }

    private static void a(int[] iArr, Object[] objArr, int i) {
        int i2;
        if (iArr.length == 8) {
            synchronized (ArrayMap.class) {
                if (Hc < 10) {
                    objArr[0] = Hb;
                    objArr[1] = iArr;
                    for (i2 = (i << 1) - 1; i2 >= 2; i2--) {
                        objArr[i2] = null;
                    }
                    Hb = objArr;
                    Hc++;
                }
            }
        } else if (iArr.length == 4) {
            synchronized (ArrayMap.class) {
                if (Ha < 10) {
                    objArr[0] = GZ;
                    objArr[1] = iArr;
                    for (i2 = (i << 1) - 1; i2 >= 2; i2--) {
                        objArr[i2] = null;
                    }
                    GZ = objArr;
                    Ha++;
                }
            }
        }
    }

    public ArrayMap() {
        this.Hd = a.Ho;
        this.He = a.Hq;
        this.Hf = 0;
    }

    public ArrayMap(int i) {
        if (i == 0) {
            this.Hd = a.Ho;
            this.He = a.Hq;
        } else {
            R(i);
        }
        this.Hf = 0;
    }

    public ArrayMap(ArrayMap arrayMap) {
        this();
        if (arrayMap != null) {
            putAll(arrayMap);
        }
    }

    public void clear() {
        if (this.Hf > 0) {
            a(this.Hd, this.He, this.Hf);
            this.Hd = a.Ho;
            this.He = a.Hq;
            this.Hf = 0;
        }
    }

    public void erase() {
        if (this.Hf > 0) {
            int i = this.Hf << 1;
            Object[] objArr = this.He;
            for (int i2 = 0; i2 < i; i2++) {
                objArr[i2] = null;
            }
            this.Hf = 0;
        }
    }

    public void ensureCapacity(int i) {
        if (this.Hd.length < i) {
            Object obj = this.Hd;
            Object obj2 = this.He;
            R(i);
            if (this.Hf > 0) {
                System.arraycopy(obj, 0, this.Hd, 0, this.Hf);
                System.arraycopy(obj2, 0, this.He, 0, this.Hf << 1);
            }
            a(obj, obj2, this.Hf);
        }
    }

    public boolean containsKey(Object obj) {
        if (obj == null) {
            if (df() < 0) {
                return false;
            }
        } else if (indexOf(obj, obj.hashCode()) < 0) {
            return false;
        }
        return true;
    }

    int indexOfValue(Object obj) {
        int i = this.Hf * 2;
        Object[] objArr = this.He;
        if (obj == null) {
            for (int i2 = 1; i2 < i; i2 += 2) {
                if (objArr[i2] == null) {
                    return i2 >> 1;
                }
            }
        } else {
            for (int i3 = 1; i3 < i; i3 += 2) {
                if (obj.equals(objArr[i3])) {
                    return i3 >> 1;
                }
            }
        }
        return -1;
    }

    public boolean containsValue(Object obj) {
        return indexOfValue(obj) >= 0;
    }

    public V get(Object obj) {
        int df = obj == null ? df() : indexOf(obj, obj.hashCode());
        return df >= 0 ? this.He[(df << 1) + 1] : null;
    }

    public K keyAt(int i) {
        return this.He[i << 1];
    }

    public V valueAt(int i) {
        return this.He[(i << 1) + 1];
    }

    public V setValueAt(int i, V v) {
        i = (i << 1) + 1;
        V v2 = this.He[i];
        this.He[i] = v;
        return v2;
    }

    public boolean isEmpty() {
        return this.Hf <= 0;
    }

    public V put(K k, V v) {
        int df;
        int i;
        if (k == null) {
            df = df();
            i = 0;
        } else {
            df = k.hashCode();
            i = df;
            df = indexOf(k, df);
        }
        if (df >= 0) {
            int i2 = (df << 1) + 1;
            V v2 = this.He[i2];
            this.He[i2] = v;
            return v2;
        }
        int i3;
        df = ~df;
        if (this.Hf >= this.Hd.length) {
            i3 = 4;
            if (this.Hf >= 8) {
                i3 = (this.Hf >> 1) + this.Hf;
            } else if (this.Hf >= 4) {
                i3 = 8;
            }
            Object obj = this.Hd;
            Object obj2 = this.He;
            R(i3);
            if (this.Hd.length > 0) {
                System.arraycopy(obj, 0, this.Hd, 0, obj.length);
                System.arraycopy(obj2, 0, this.He, 0, obj2.length);
            }
            a(obj, obj2, this.Hf);
        }
        if (df < this.Hf) {
            i3 = df + 1;
            System.arraycopy(this.Hd, df, this.Hd, i3, this.Hf - df);
            System.arraycopy(this.He, df << 1, this.He, i3 << 1, (this.Hf - df) << 1);
        }
        this.Hd[df] = i;
        df <<= 1;
        this.He[df] = k;
        this.He[df + 1] = v;
        this.Hf++;
        return null;
    }

    public void append(K k, V v) {
        int i = this.Hf;
        int hashCode = k == null ? 0 : k.hashCode();
        if (i < this.Hd.length) {
            if (i > 0) {
                int i2 = i - 1;
                if (this.Hd[i2] > hashCode) {
                    Throwable runtimeException = new RuntimeException("here");
                    runtimeException.fillInStackTrace();
                    String str = TAG;
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("New hash ");
                    stringBuilder.append(hashCode);
                    stringBuilder.append(" is before end of array hash ");
                    stringBuilder.append(this.Hd[i2]);
                    stringBuilder.append(" at index ");
                    stringBuilder.append(i);
                    stringBuilder.append(" key ");
                    stringBuilder.append(k);
                    Log.w(str, stringBuilder.toString(), runtimeException);
                    put(k, v);
                    return;
                }
            }
            this.Hf = i + 1;
            this.Hd[i] = hashCode;
            i <<= 1;
            this.He[i] = k;
            this.He[i + 1] = v;
            return;
        }
        throw new IllegalStateException("Array is full");
    }

    public void putAll(ArrayMap<? extends K, ? extends V> arrayMap) {
        int i = arrayMap.Hf;
        ensureCapacity(this.Hf + i);
        int i2 = 0;
        if (this.Hf != 0) {
            while (i2 < i) {
                put(arrayMap.keyAt(i2), arrayMap.valueAt(i2));
                i2++;
            }
        } else if (i > 0) {
            System.arraycopy(arrayMap.Hd, 0, this.Hd, 0, i);
            System.arraycopy(arrayMap.He, 0, this.He, 0, i << 1);
            this.Hf = i;
        }
    }

    public V remove(Object obj) {
        int df = obj == null ? df() : indexOf(obj, obj.hashCode());
        if (df >= 0) {
            return removeAt(df);
        }
        return null;
    }

    public V removeAt(int i) {
        int i2 = i << 1;
        V v = this.He[i2 + 1];
        if (this.Hf <= 1) {
            a(this.Hd, this.He, this.Hf);
            this.Hd = a.Ho;
            this.He = a.Hq;
            this.Hf = 0;
        } else {
            int i3 = 8;
            int i4;
            if (this.Hd.length <= 8 || this.Hf >= this.Hd.length / 3) {
                this.Hf--;
                if (i < this.Hf) {
                    i4 = i + 1;
                    System.arraycopy(this.Hd, i4, this.Hd, i, this.Hf - i);
                    System.arraycopy(this.He, i4 << 1, this.He, i2, (this.Hf - i) << 1);
                }
                this.He[this.Hf << 1] = null;
                this.He[(this.Hf << 1) + 1] = null;
            } else {
                if (this.Hf > 8) {
                    i3 = (this.Hf >> 1) + this.Hf;
                }
                Object obj = this.Hd;
                Object obj2 = this.He;
                R(i3);
                this.Hf--;
                if (i > 0) {
                    System.arraycopy(obj, 0, this.Hd, 0, i);
                    System.arraycopy(obj2, 0, this.He, 0, i2);
                }
                if (i < this.Hf) {
                    i4 = i + 1;
                    System.arraycopy(obj, i4, this.Hd, i, this.Hf - i);
                    System.arraycopy(obj2, i4 << 1, this.He, i2, (this.Hf - i) << 1);
                }
            }
        }
        return v;
    }

    public int size() {
        return this.Hf;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        if (size() != map.size()) {
            return false;
        }
        int i = 0;
        while (i < this.Hf) {
            try {
                Object keyAt = keyAt(i);
                Object valueAt = valueAt(i);
                Object obj2 = map.get(keyAt);
                if (valueAt == null) {
                    if (obj2 != null || !map.containsKey(keyAt)) {
                        return false;
                    }
                } else if (!valueAt.equals(obj2)) {
                    return false;
                }
                i++;
            } catch (NullPointerException e) {
                return false;
            } catch (ClassCastException e2) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int[] iArr = this.Hd;
        Object[] objArr = this.He;
        int i = this.Hf;
        int i2 = 1;
        int i3 = 0;
        int i4 = i3;
        while (i3 < i) {
            Object obj = objArr[i2];
            i4 += (obj == null ? 0 : obj.hashCode()) ^ iArr[i3];
            i3++;
            i2 += 2;
        }
        return i4;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder stringBuilder = new StringBuilder(this.Hf * 28);
        stringBuilder.append('{');
        for (int i = 0; i < this.Hf; i++) {
            if (i > 0) {
                stringBuilder.append(", ");
            }
            ArrayMap keyAt = keyAt(i);
            if (keyAt != this) {
                stringBuilder.append(keyAt);
            } else {
                stringBuilder.append("(this Map)");
            }
            stringBuilder.append('=');
            keyAt = valueAt(i);
            if (keyAt != this) {
                stringBuilder.append(keyAt);
            } else {
                stringBuilder.append("(this Map)");
            }
        }
        stringBuilder.append('}');
        return stringBuilder.toString();
    }

    private MapCollections<K, V> dg() {
        if (this.Hg == null) {
            this.Hg = new MapCollections<K, V>() {
                protected int dh() {
                    return ArrayMap.this.Hf;
                }

                protected Object k(int i, int i2) {
                    return ArrayMap.this.He[(i << 1) + i2];
                }

                protected int c(Object obj) {
                    return obj == null ? ArrayMap.this.df() : ArrayMap.this.indexOf(obj, obj.hashCode());
                }

                protected int d(Object obj) {
                    return ArrayMap.this.indexOfValue(obj);
                }

                protected Map<K, V> di() {
                    return ArrayMap.this;
                }

                protected void b(K k, V v) {
                    ArrayMap.this.put(k, v);
                }

                protected V a(int i, V v) {
                    return ArrayMap.this.setValueAt(i, v);
                }

                protected void S(int i) {
                    ArrayMap.this.removeAt(i);
                }

                protected void dj() {
                    ArrayMap.this.clear();
                }
            };
        }
        return this.Hg;
    }

    public boolean containsAll(Collection<?> collection) {
        return MapCollections.a((Map) this, (Collection) collection);
    }

    public void putAll(Map<? extends K, ? extends V> map) {
        ensureCapacity(this.Hf + map.size());
        for (Entry entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    public boolean removeAll(Collection<?> collection) {
        return MapCollections.b((Map) this, (Collection) collection);
    }

    public boolean retainAll(Collection<?> collection) {
        return MapCollections.c(this, collection);
    }

    public Set<Entry<K, V>> entrySet() {
        return dg().dy();
    }

    public Set<K> keySet() {
        return dg().dz();
    }

    public Collection<V> values() {
        return dg().dA();
    }
}
