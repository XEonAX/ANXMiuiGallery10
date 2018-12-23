package com.miui.gallery.assistant.algorithm;

import android.util.SparseArray;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.assistant.FlagUtil;
import java.lang.ref.SoftReference;

public class AlgorithmFactroy {
    private static final SparseArray<SoftReference<Algorithm>> sAlgorithmCache = new SparseArray();

    public static synchronized <T extends Algorithm> T getAlgorithmByFlag(int flag) {
        Algorithm algorithm;
        synchronized (AlgorithmFactroy.class) {
            flag = ensureFlag(flag);
            algorithm = getAlgorithmFromCache(flag);
            if (algorithm == null) {
                algorithm = createAlgorithmByFlag(flag);
                Log.d("AlgorithmFactroy", "Create new algorithm %d", Integer.valueOf(flag));
            } else {
                Log.d("AlgorithmFactroy", "Get algorithm %d from Cache", Integer.valueOf(flag));
            }
            if (algorithm != null) {
                addAlgorithmToCache(flag, algorithm);
            }
        }
        return algorithm;
    }

    private static int ensureFlag(int flag) {
        if (FlagUtil.hasFlag(flag, 1)) {
            return 1;
        }
        if (FlagUtil.hasFlag(flag, 2)) {
            return 2;
        }
        if (FlagUtil.hasFlag(flag, 4)) {
            return 4;
        }
        if (FlagUtil.hasFlag(flag, 8)) {
            return 8;
        }
        return 16;
    }

    private static Algorithm createAlgorithmByFlag(int flag) {
        Algorithm algorithm = null;
        if (FlagUtil.hasFlag(flag, 1)) {
            algorithm = new QualityScoreAlgorithm();
        } else if (FlagUtil.hasFlag(flag, 2)) {
            algorithm = new SceneFilterAlgorithm();
        } else if (FlagUtil.hasFlag(flag, 4) || FlagUtil.hasFlag(flag, 8)) {
            algorithm = new ClusterAlgorithm();
        } else if (FlagUtil.hasFlag(flag, 16)) {
            algorithm = new BaiduSceneFilterAlgorithm();
        }
        if (algorithm != null) {
            algorithm.init();
        }
        return algorithm;
    }

    private static void addAlgorithmToCache(int flag, Algorithm algorithm) {
        if (algorithm != null) {
            sAlgorithmCache.put(getCacheKey(flag), new SoftReference(algorithm));
        }
    }

    private static Algorithm getAlgorithmFromCache(int flag) {
        int cacheKey = getCacheKey(flag);
        SoftReference<Algorithm> algorithmRef = (SoftReference) sAlgorithmCache.get(cacheKey);
        if (algorithmRef == null) {
            return null;
        }
        Algorithm algorithm = (Algorithm) algorithmRef.get();
        algorithmRef.clear();
        sAlgorithmCache.remove(cacheKey);
        return algorithm;
    }

    private static int getCacheKey(int flag) {
        if (flag == 4 || flag == 8) {
            return 12;
        }
        return flag;
    }
}
