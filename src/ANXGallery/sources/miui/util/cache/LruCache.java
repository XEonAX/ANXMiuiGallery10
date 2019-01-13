package miui.util.cache;

import android.app.ActivityManager;
import java.lang.ref.SoftReference;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.concurrent.locks.ReentrantLock;
import miui.util.AppConstants;

public class LruCache<K, V> implements Cache<K, V> {
    private static final int LL = ((((ActivityManager) AppConstants.getCurrentApplication().getSystemService("activity")).getMemoryClass() * 1024) * 1024);
    private long Ar;
    private long CQ;
    private final ReentrantLock LM;
    private final LinkedHashMap<K, CacheItem<K, V>> LN;

    private static class CacheItem<K, T> {
        public T LO;
        public SoftReference<T> LP;
        public K key;
        public int size;

        private CacheItem() {
        }
    }

    public LruCache(int i) {
        if (i < 0) {
            i = LL / 8;
        }
        this.LM = new ReentrantLock();
        this.Ar = (long) i;
        this.CQ = 0;
        this.LN = new LinkedHashMap(0, 0.75f, true);
    }

    public void setMaxSize(int i) {
        if (i < 0) {
            i = LL / 8;
        }
        this.Ar = (long) i;
        try {
            this.LM.lock();
            if (this.CQ < this.Ar) {
                dN();
            }
            this.LM.unlock();
        } catch (Throwable th) {
            this.LM.unlock();
        }
    }

    public void put(K k, V v, int i) {
        if (k != null && v != null) {
            CacheItem cacheItem = new CacheItem();
            cacheItem.key = k;
            cacheItem.LO = v;
            if (i < 0) {
                i = 0;
            }
            cacheItem.size = i;
            this.LM.lock();
            try {
                this.LN.put(k, cacheItem);
                this.CQ += (long) cacheItem.size;
                dN();
            } finally {
                this.LM.unlock();
            }
        }
    }

    public V get(K k) {
        this.LM.lock();
        try {
            dN();
            CacheItem cacheItem = (CacheItem) this.LN.get(k);
            V v = null;
            if (cacheItem == null) {
                return v;
            }
            V v2;
            if (cacheItem.LO != null) {
                v2 = cacheItem.LO;
                this.LM.unlock();
                return v2;
            }
            if (cacheItem.LP != null) {
                cacheItem.LO = cacheItem.LP.get();
                if (cacheItem.LO != null) {
                    this.CQ += (long) cacheItem.size;
                    if (this.CQ > this.Ar) {
                        dN();
                    }
                    v2 = cacheItem.LO;
                    this.LM.unlock();
                    return v2;
                }
            }
            this.LN.remove(k);
            this.LM.unlock();
            return v;
        } finally {
            this.LM.unlock();
        }
    }

    public void clear() {
        this.LM.lock();
        try {
            for (Entry value : this.LN.entrySet()) {
                CacheItem cacheItem = (CacheItem) value.getValue();
                if (cacheItem.LP != null) {
                    cacheItem.LP.clear();
                }
            }
            this.LN.clear();
        } finally {
            this.LM.unlock();
        }
    }

    public int getCount() {
        this.LM.lock();
        try {
            dN();
            int size = this.LN.size();
            return size;
        } finally {
            this.LM.unlock();
        }
    }

    private void dN() {
        CacheItem cacheItem;
        Iterator it = this.LN.entrySet().iterator();
        while (it.hasNext()) {
            cacheItem = (CacheItem) ((Entry) it.next()).getValue();
            if (cacheItem.LO == null && (cacheItem.LP == null || cacheItem.LP.get() == null)) {
                it.remove();
            }
        }
        it = this.LN.entrySet().iterator();
        while (this.CQ > this.Ar && it.hasNext()) {
            cacheItem = (CacheItem) ((Entry) it.next()).getValue();
            if (cacheItem != null) {
                if (cacheItem.LP == null) {
                    cacheItem.LP = new SoftReference(cacheItem.LO);
                }
                this.CQ -= (long) cacheItem.size;
                cacheItem.LO = null;
            }
        }
    }
}
