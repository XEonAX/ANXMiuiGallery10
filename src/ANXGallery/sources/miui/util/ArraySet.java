package miui.util;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class ArraySet<E> implements Collection<E>, Set<E> {
    private static final int CACHE_SIZE = 10;
    private static final boolean DEBUG = false;
    private static final int GX = 4;
    static Object[] GZ = null;
    static int Ha = 0;
    static Object[] Hb = null;
    static int Hc = 0;
    private static final String TAG = "ArraySet";
    int[] Hd;
    Object[] He;
    int Hf;
    MapCollections<E, E> Hg;

    private int indexOf(Object obj, int i) {
        int i2 = this.Hf;
        if (i2 == 0) {
            return -1;
        }
        int a = a.a(this.Hd, i2, i);
        if (a < 0 || obj.equals(this.He[a])) {
            return a;
        }
        int i3 = a + 1;
        while (i3 < i2 && this.Hd[i3] == i) {
            if (obj.equals(this.He[i3])) {
                return i3;
            }
            i3++;
        }
        a--;
        while (a >= 0 && this.Hd[a] == i) {
            if (obj.equals(this.He[a])) {
                return a;
            }
            a--;
        }
        return ~i3;
    }

    private int df() {
        int i = this.Hf;
        if (i == 0) {
            return -1;
        }
        int a = a.a(this.Hd, i, 0);
        if (a < 0 || this.He[a] == null) {
            return a;
        }
        int i2 = a + 1;
        while (i2 < i && this.Hd[i2] == 0) {
            if (this.He[i2] == null) {
                return i2;
            }
            i2++;
        }
        a--;
        while (a >= 0 && this.Hd[a] == 0) {
            if (this.He[a] == null) {
                return a;
            }
            a--;
        }
        return ~i2;
    }

    private void R(int i) {
        Object[] objArr;
        if (i == 8) {
            synchronized (ArraySet.class) {
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
            synchronized (ArraySet.class) {
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
        this.He = new Object[i];
    }

    private static void a(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (ArraySet.class) {
                if (Hc < 10) {
                    objArr[0] = Hb;
                    objArr[1] = iArr;
                    for (i--; i >= 2; i--) {
                        objArr[i] = null;
                    }
                    Hb = objArr;
                    Hc++;
                }
            }
        } else if (iArr.length == 4) {
            synchronized (ArraySet.class) {
                if (Ha < 10) {
                    objArr[0] = GZ;
                    objArr[1] = iArr;
                    for (i--; i >= 2; i--) {
                        objArr[i] = null;
                    }
                    GZ = objArr;
                    Ha++;
                }
            }
        }
    }

    public ArraySet() {
        this.Hd = a.Ho;
        this.He = a.Hq;
        this.Hf = 0;
    }

    public ArraySet(int i) {
        if (i == 0) {
            this.Hd = a.Ho;
            this.He = a.Hq;
        } else {
            R(i);
        }
        this.Hf = 0;
    }

    public ArraySet(ArraySet arraySet) {
        this();
        if (arraySet != null) {
            addAll(arraySet);
        }
    }

    public void clear() {
        if (this.Hf != 0) {
            a(this.Hd, this.He, this.Hf);
            this.Hd = a.Ho;
            this.He = a.Hq;
            this.Hf = 0;
        }
    }

    public void ensureCapacity(int i) {
        if (this.Hd.length < i) {
            int[] iArr = this.Hd;
            Object[] objArr = this.He;
            R(i);
            if (this.Hf > 0) {
                System.arraycopy(iArr, 0, this.Hd, 0, this.Hf);
                System.arraycopy(objArr, 0, this.He, 0, this.Hf);
            }
            a(iArr, objArr, this.Hf);
        }
    }

    public boolean contains(Object obj) {
        if (obj == null) {
            if (df() < 0) {
                return false;
            }
        } else if (indexOf(obj, obj.hashCode()) < 0) {
            return false;
        }
        return true;
    }

    public E valueAt(int i) {
        return this.He[i];
    }

    public boolean isEmpty() {
        return this.Hf <= 0;
    }

    public boolean add(E e) {
        int df;
        boolean z;
        if (e == null) {
            df = df();
            z = false;
        } else {
            boolean hashCode = e.hashCode();
            z = hashCode;
            df = indexOf(e, hashCode);
        }
        if (df >= 0) {
            return false;
        }
        int i;
        df = ~df;
        if (this.Hf >= this.Hd.length) {
            i = 4;
            if (this.Hf >= 8) {
                i = (this.Hf >> 1) + this.Hf;
            } else if (this.Hf >= 4) {
                i = 8;
            }
            int[] iArr = this.Hd;
            Object[] objArr = this.He;
            R(i);
            if (this.Hd.length > 0) {
                System.arraycopy(iArr, 0, this.Hd, 0, iArr.length);
                System.arraycopy(objArr, 0, this.He, 0, objArr.length);
            }
            a(iArr, objArr, this.Hf);
        }
        if (df < this.Hf) {
            i = df + 1;
            System.arraycopy(this.Hd, df, this.Hd, i, this.Hf - df);
            System.arraycopy(this.He, df, this.He, i, this.Hf - df);
        }
        this.Hd[df] = z;
        this.He[df] = e;
        this.Hf++;
        return true;
    }

    public void putAll(ArraySet<? extends E> arraySet) {
        int i = arraySet.Hf;
        ensureCapacity(this.Hf + i);
        int i2 = 0;
        if (this.Hf != 0) {
            while (i2 < i) {
                add(arraySet.valueAt(i2));
                i2++;
            }
        } else if (i > 0) {
            System.arraycopy(arraySet.Hd, 0, this.Hd, 0, i);
            System.arraycopy(arraySet.He, 0, this.He, 0, i);
            this.Hf = i;
        }
    }

    public boolean remove(Object obj) {
        int df = obj == null ? df() : indexOf(obj, obj.hashCode());
        if (df < 0) {
            return false;
        }
        removeAt(df);
        return true;
    }

    public E removeAt(int i) {
        E e = this.He[i];
        if (this.Hf <= 1) {
            a(this.Hd, this.He, this.Hf);
            this.Hd = a.Ho;
            this.He = a.Hq;
            this.Hf = 0;
        } else {
            int i2 = 8;
            int i3;
            if (this.Hd.length <= 8 || this.Hf >= this.Hd.length / 3) {
                this.Hf--;
                if (i < this.Hf) {
                    i3 = i + 1;
                    System.arraycopy(this.Hd, i3, this.Hd, i, this.Hf - i);
                    System.arraycopy(this.He, i3, this.He, i, this.Hf - i);
                }
                this.He[this.Hf] = null;
            } else {
                if (this.Hf > 8) {
                    i2 = (this.Hf >> 1) + this.Hf;
                }
                Object obj = this.Hd;
                Object obj2 = this.He;
                R(i2);
                this.Hf--;
                if (i > 0) {
                    System.arraycopy(obj, 0, this.Hd, 0, i);
                    System.arraycopy(obj2, 0, this.He, 0, i);
                }
                if (i < this.Hf) {
                    i3 = i + 1;
                    System.arraycopy(obj, i3, this.Hd, i, this.Hf - i);
                    System.arraycopy(obj2, i3, this.He, i, this.Hf - i);
                }
            }
        }
        return e;
    }

    public int size() {
        return this.Hf;
    }

    public Object[] toArray() {
        Object obj = new Object[this.Hf];
        System.arraycopy(this.He, 0, obj, 0, this.Hf);
        return obj;
    }

    public <T> T[] toArray(T[] tArr) {
        Object tArr2;
        if (tArr2.length < this.Hf) {
            tArr2 = (Object[]) Array.newInstance(tArr2.getClass().getComponentType(), this.Hf);
        }
        System.arraycopy(this.He, 0, tArr2, 0, this.Hf);
        if (tArr2.length > this.Hf) {
            tArr2[this.Hf] = null;
        }
        return tArr2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        if (size() != set.size()) {
            return false;
        }
        int i = 0;
        while (i < this.Hf) {
            try {
                if (!set.contains(valueAt(i))) {
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
        int i = 0;
        int i2 = 0;
        while (i < this.Hf) {
            i2 += iArr[i];
            i++;
        }
        return i2;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder stringBuilder = new StringBuilder(this.Hf * 14);
        stringBuilder.append('{');
        for (int i = 0; i < this.Hf; i++) {
            if (i > 0) {
                stringBuilder.append(", ");
            }
            ArraySet valueAt = valueAt(i);
            if (valueAt != this) {
                stringBuilder.append(valueAt);
            } else {
                stringBuilder.append("(this Set)");
            }
        }
        stringBuilder.append('}');
        return stringBuilder.toString();
    }

    private MapCollections<E, E> dg() {
        if (this.Hg == null) {
            this.Hg = new MapCollections<E, E>() {
                protected int dh() {
                    return ArraySet.this.Hf;
                }

                protected Object k(int i, int i2) {
                    return ArraySet.this.He[i];
                }

                protected int c(Object obj) {
                    return obj == null ? ArraySet.this.df() : ArraySet.this.indexOf(obj, obj.hashCode());
                }

                protected int d(Object obj) {
                    return obj == null ? ArraySet.this.df() : ArraySet.this.indexOf(obj, obj.hashCode());
                }

                protected Map<E, E> di() {
                    throw new UnsupportedOperationException("not a map");
                }

                protected void b(E e, E e2) {
                    ArraySet.this.add(e);
                }

                protected E a(int i, E e) {
                    throw new UnsupportedOperationException("not a map");
                }

                protected void S(int i) {
                    ArraySet.this.removeAt(i);
                }

                protected void dj() {
                    ArraySet.this.clear();
                }
            };
        }
        return this.Hg;
    }

    public Iterator<E> iterator() {
        return dg().dz().iterator();
    }

    public boolean containsAll(Collection<?> collection) {
        for (Object contains : collection) {
            if (!contains(contains)) {
                return false;
            }
        }
        return true;
    }

    public boolean addAll(Collection<? extends E> collection) {
        ensureCapacity(this.Hf + collection.size());
        boolean z = false;
        for (Object add : collection) {
            z |= add(add);
        }
        return z;
    }

    public boolean removeAll(Collection<?> collection) {
        boolean z = false;
        for (Object remove : collection) {
            z |= remove(remove);
        }
        return z;
    }

    public boolean retainAll(Collection<?> collection) {
        boolean z = false;
        for (int i = this.Hf - 1; i >= 0; i--) {
            if (!collection.contains(this.He[i])) {
                removeAt(i);
                z = true;
            }
        }
        return z;
    }
}
