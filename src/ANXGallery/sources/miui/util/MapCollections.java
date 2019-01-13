package miui.util;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

abstract class MapCollections<K, V> {
    EntrySet Jn;
    KeySet Jo;
    ValuesCollection Jp;

    final class ArrayIterator<T> implements Iterator<T> {
        int Hf;
        final int Jq;
        boolean Jr = false;
        int mIndex;

        ArrayIterator(int i) {
            this.Jq = i;
            this.Hf = MapCollections.this.dh();
        }

        public boolean hasNext() {
            return this.mIndex < this.Hf;
        }

        public T next() {
            T k = MapCollections.this.k(this.mIndex, this.Jq);
            this.mIndex++;
            this.Jr = true;
            return k;
        }

        public void remove() {
            if (this.Jr) {
                this.mIndex--;
                this.Hf--;
                this.Jr = false;
                MapCollections.this.S(this.mIndex);
                return;
            }
            throw new IllegalStateException();
        }
    }

    final class EntrySet implements Set<Entry<K, V>> {
        EntrySet() {
        }

        public boolean add(Entry<K, V> entry) {
            throw new UnsupportedOperationException();
        }

        public boolean addAll(Collection<? extends Entry<K, V>> collection) {
            int dh = MapCollections.this.dh();
            for (Entry entry : collection) {
                MapCollections.this.b(entry.getKey(), entry.getValue());
            }
            return dh != MapCollections.this.dh();
        }

        public void clear() {
            MapCollections.this.dj();
        }

        public boolean contains(Object obj) {
            if (!(obj instanceof Entry)) {
                return false;
            }
            Entry entry = (Entry) obj;
            int c = MapCollections.this.c(entry.getKey());
            if (c < 0) {
                return false;
            }
            return a.c(MapCollections.this.k(c, 1), entry.getValue());
        }

        public boolean containsAll(Collection<?> collection) {
            for (Object contains : collection) {
                if (!contains(contains)) {
                    return false;
                }
            }
            return true;
        }

        public boolean isEmpty() {
            return MapCollections.this.dh() == 0;
        }

        public Iterator<Entry<K, V>> iterator() {
            return new MapIterator();
        }

        public boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        public boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        public boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        public int size() {
            return MapCollections.this.dh();
        }

        public Object[] toArray() {
            throw new UnsupportedOperationException();
        }

        public <T> T[] toArray(T[] tArr) {
            throw new UnsupportedOperationException();
        }

        public boolean equals(Object obj) {
            return MapCollections.a((Set) this, obj);
        }

        public int hashCode() {
            int i = 0;
            for (int dh = MapCollections.this.dh() - 1; dh >= 0; dh--) {
                int i2;
                Object k = MapCollections.this.k(dh, 0);
                Object k2 = MapCollections.this.k(dh, 1);
                if (k == null) {
                    i2 = 0;
                } else {
                    i2 = k.hashCode();
                }
                i += i2 ^ (k2 == null ? 0 : k2.hashCode());
            }
            return i;
        }
    }

    final class KeySet implements Set<K> {
        KeySet() {
        }

        public boolean add(K k) {
            throw new UnsupportedOperationException();
        }

        public boolean addAll(Collection<? extends K> collection) {
            throw new UnsupportedOperationException();
        }

        public void clear() {
            MapCollections.this.dj();
        }

        public boolean contains(Object obj) {
            return MapCollections.this.c(obj) >= 0;
        }

        public boolean containsAll(Collection<?> collection) {
            return MapCollections.a(MapCollections.this.di(), (Collection) collection);
        }

        public boolean isEmpty() {
            return MapCollections.this.dh() == 0;
        }

        public Iterator<K> iterator() {
            return new ArrayIterator(0);
        }

        public boolean remove(Object obj) {
            int c = MapCollections.this.c(obj);
            if (c < 0) {
                return false;
            }
            MapCollections.this.S(c);
            return true;
        }

        public boolean removeAll(Collection<?> collection) {
            return MapCollections.b(MapCollections.this.di(), (Collection) collection);
        }

        public boolean retainAll(Collection<?> collection) {
            return MapCollections.c(MapCollections.this.di(), collection);
        }

        public int size() {
            return MapCollections.this.dh();
        }

        public Object[] toArray() {
            return MapCollections.this.Z(0);
        }

        public <T> T[] toArray(T[] tArr) {
            return MapCollections.this.a((Object[]) tArr, 0);
        }

        public boolean equals(Object obj) {
            return MapCollections.a((Set) this, obj);
        }

        public int hashCode() {
            int i = 0;
            for (int dh = MapCollections.this.dh() - 1; dh >= 0; dh--) {
                Object k = MapCollections.this.k(dh, 0);
                i += k == null ? 0 : k.hashCode();
            }
            return i;
        }
    }

    final class MapIterator implements Iterator<Entry<K, V>>, Entry<K, V> {
        int Jt;
        boolean Ju = false;
        int mIndex;

        MapIterator() {
            this.Jt = MapCollections.this.dh() - 1;
            this.mIndex = -1;
        }

        public boolean hasNext() {
            return this.mIndex < this.Jt;
        }

        public Entry<K, V> next() {
            this.mIndex++;
            this.Ju = true;
            return this;
        }

        public void remove() {
            if (this.Ju) {
                this.mIndex--;
                this.Jt--;
                this.Ju = false;
                MapCollections.this.S(this.mIndex);
                return;
            }
            throw new IllegalStateException();
        }

        public K getKey() {
            if (this.Ju) {
                return MapCollections.this.k(this.mIndex, 0);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public V getValue() {
            if (this.Ju) {
                return MapCollections.this.k(this.mIndex, 1);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public V setValue(V v) {
            if (this.Ju) {
                return MapCollections.this.a(this.mIndex, (Object) v);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public final boolean equals(Object obj) {
            if (this.Ju) {
                boolean z = false;
                if (!(obj instanceof Entry)) {
                    return false;
                }
                Entry entry = (Entry) obj;
                if (a.c(entry.getKey(), MapCollections.this.k(this.mIndex, 0)) && a.c(entry.getValue(), MapCollections.this.k(this.mIndex, 1))) {
                    z = true;
                }
                return z;
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public final int hashCode() {
            if (this.Ju) {
                int i;
                int i2 = 0;
                Object k = MapCollections.this.k(this.mIndex, 0);
                Object k2 = MapCollections.this.k(this.mIndex, 1);
                if (k == null) {
                    i = 0;
                } else {
                    i = k.hashCode();
                }
                if (k2 != null) {
                    i2 = k2.hashCode();
                }
                return i ^ i2;
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public final String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(getKey());
            stringBuilder.append("=");
            stringBuilder.append(getValue());
            return stringBuilder.toString();
        }
    }

    final class ValuesCollection implements Collection<V> {
        ValuesCollection() {
        }

        public boolean add(V v) {
            throw new UnsupportedOperationException();
        }

        public boolean addAll(Collection<? extends V> collection) {
            throw new UnsupportedOperationException();
        }

        public void clear() {
            MapCollections.this.dj();
        }

        public boolean contains(Object obj) {
            return MapCollections.this.d(obj) >= 0;
        }

        public boolean containsAll(Collection<?> collection) {
            for (Object contains : collection) {
                if (!contains(contains)) {
                    return false;
                }
            }
            return true;
        }

        public boolean isEmpty() {
            return MapCollections.this.dh() == 0;
        }

        public Iterator<V> iterator() {
            return new ArrayIterator(1);
        }

        public boolean remove(Object obj) {
            int d = MapCollections.this.d(obj);
            if (d < 0) {
                return false;
            }
            MapCollections.this.S(d);
            return true;
        }

        public boolean removeAll(Collection<?> collection) {
            int dh = MapCollections.this.dh();
            int i = 0;
            boolean z = false;
            while (i < dh) {
                if (collection.contains(MapCollections.this.k(i, 1))) {
                    MapCollections.this.S(i);
                    i--;
                    dh--;
                    z = true;
                }
                i++;
            }
            return z;
        }

        public boolean retainAll(Collection<?> collection) {
            int dh = MapCollections.this.dh();
            int i = 0;
            boolean z = false;
            while (i < dh) {
                if (!collection.contains(MapCollections.this.k(i, 1))) {
                    MapCollections.this.S(i);
                    i--;
                    dh--;
                    z = true;
                }
                i++;
            }
            return z;
        }

        public int size() {
            return MapCollections.this.dh();
        }

        public Object[] toArray() {
            return MapCollections.this.Z(1);
        }

        public <T> T[] toArray(T[] tArr) {
            return MapCollections.this.a((Object[]) tArr, 1);
        }
    }

    protected abstract void S(int i);

    protected abstract V a(int i, V v);

    protected abstract void b(K k, V v);

    protected abstract int c(Object obj);

    protected abstract int d(Object obj);

    protected abstract int dh();

    protected abstract Map<K, V> di();

    protected abstract void dj();

    protected abstract Object k(int i, int i2);

    MapCollections() {
    }

    public static <K, V> boolean a(Map<K, V> map, Collection<?> collection) {
        for (Object containsKey : collection) {
            if (!map.containsKey(containsKey)) {
                return false;
            }
        }
        return true;
    }

    public static <K, V> boolean b(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        for (Object remove : collection) {
            map.remove(remove);
        }
        return size != map.size();
    }

    public static <K, V> boolean c(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator it = map.keySet().iterator();
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                it.remove();
            }
        }
        return size != map.size();
    }

    public Object[] Z(int i) {
        int dh = dh();
        Object[] objArr = new Object[dh];
        for (int i2 = 0; i2 < dh; i2++) {
            objArr[i2] = k(i2, i);
        }
        return objArr;
    }

    public <T> T[] a(T[] tArr, int i) {
        int dh = dh();
        if (tArr.length < dh) {
            tArr = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), dh);
        }
        for (int i2 = 0; i2 < dh; i2++) {
            tArr[i2] = k(i2, i);
        }
        if (tArr.length > dh) {
            tArr[dh] = null;
        }
        return tArr;
    }

    public static <T> boolean a(Set<T> set, Object obj) {
        boolean z = true;
        if (set == obj) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set2 = (Set) obj;
        try {
            if (!(set.size() == set2.size() && set.containsAll(set2))) {
                z = false;
            }
            return z;
        } catch (NullPointerException e) {
            return false;
        } catch (ClassCastException e2) {
            return false;
        }
    }

    public Set<Entry<K, V>> dy() {
        if (this.Jn == null) {
            this.Jn = new EntrySet();
        }
        return this.Jn;
    }

    public Set<K> dz() {
        if (this.Jo == null) {
            this.Jo = new KeySet();
        }
        return this.Jo;
    }

    public Collection<V> dA() {
        if (this.Jp == null) {
            this.Jp = new ValuesCollection();
        }
        return this.Jp;
    }
}
