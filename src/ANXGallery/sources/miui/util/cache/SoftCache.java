package miui.util.cache;

import java.lang.ref.SoftReference;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.concurrent.ConcurrentHashMap;

public class SoftCache<K, T> implements Cache<K, T> {
    private ConcurrentHashMap<K, SoftReference<T>> LQ = new ConcurrentHashMap();

    public void setMaxSize(int i) {
    }

    public void put(K k, T t) {
        put(k, t, 0);
    }

    public void put(K k, T t, int i) {
        dN();
        this.LQ.put(k, new SoftReference(t));
    }

    public T get(K k) {
        dN();
        SoftReference softReference = (SoftReference) this.LQ.get(k);
        return softReference == null ? null : softReference.get();
    }

    public void clear() {
        for (Entry value : this.LQ.entrySet()) {
            ((SoftReference) value.getValue()).clear();
        }
        this.LQ.clear();
    }

    public int getCount() {
        dN();
        return this.LQ.size();
    }

    private void dN() {
        Iterator it = this.LQ.entrySet().iterator();
        while (it.hasNext()) {
            if (((SoftReference) ((Entry) it.next()).getValue()).get() == null) {
                it.remove();
            }
        }
    }
}
