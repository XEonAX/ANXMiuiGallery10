package com.miui.gallery.sdk.download.executor;

import com.miui.gallery.cloud.AccountCache;
import com.miui.gallery.cloud.AccountCache.AccountInfo;
import com.miui.gallery.sdk.download.assist.DownloadItem;
import com.miui.gallery.sdk.download.downloader.IDownloader;
import com.miui.gallery.threadpool.Future;
import com.miui.gallery.threadpool.FutureListener;
import com.miui.gallery.threadpool.ThreadPool;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public class ThreadPoolExecutor extends AbsDownloadExecutor implements FutureListener {
    private final int mCoreSize;
    private Object mExecutorLock;
    private Future[] mFutures;
    private ThreadPool mPool;

    private class Job implements com.miui.gallery.threadpool.ThreadPool.Job {
        private Job() {
        }

        private boolean needContinue(JobContext jc) {
            Log.i("ThreadPoolExecutor", "pendingSize %d, interrupted %s, canceled %s", Integer.valueOf(ThreadPoolExecutor.this.mQueue.getPendingSize()), Boolean.valueOf(Thread.currentThread().isInterrupted()), Boolean.valueOf(jc.isCancelled()));
            return (ThreadPoolExecutor.this.mQueue.getPendingSize() <= 0 || Thread.currentThread().isInterrupted() || jc.isCancelled()) ? false : true;
        }

        public Object run(JobContext jc) {
            while (needContinue(jc)) {
                List<DownloadCommand> commands = ThreadPoolExecutor.this.mQueue.pollToExecute();
                if (commands.size() > 0) {
                    Map<IDownloader, List<DownloadCommand>> map = AbsDownloadExecutor.classifyCommand(commands);
                    if (map != null) {
                        List<DownloadItem> batchItems = new ArrayList();
                        for (Entry<IDownloader, List<DownloadCommand>> entry : map.entrySet()) {
                            List<DownloadCommand> batchCommands = (List) entry.getValue();
                            batchItems.clear();
                            for (DownloadCommand command : batchCommands) {
                                if (DownloadCommand.checkValid(command)) {
                                    batchItems.add(command.getItem());
                                }
                            }
                            AccountInfo info = AccountCache.getAccountInfo();
                            if (info != null) {
                                Log.i("ThreadPoolExecutor", "%s execute size %d", this, Integer.valueOf(batchItems.size()));
                                try {
                                    ((IDownloader) entry.getKey()).download(info.mAccount, info.mToken, batchItems);
                                } finally {
                                    for (DownloadCommand command2 : batchCommands) {
                                        ThreadPoolExecutor.this.mQueue.removeFromExecuting(command2.getKey());
                                    }
                                }
                            } else {
                                Log.e("ThreadPoolExecutor", "execute: account is null");
                            }
                        }
                        continue;
                    } else {
                        continue;
                    }
                }
            }
            Log.d("ThreadPoolExecutor", "runnable end %s", (Object) this);
            return null;
        }
    }

    public ThreadPoolExecutor(int batchSize, int maxQueueSize) {
        this(2, batchSize, maxQueueSize);
    }

    public ThreadPoolExecutor(int threadSize, int batchSize, int maxQueueSize) {
        super(batchSize, maxQueueSize);
        this.mExecutorLock = new Object();
        this.mCoreSize = threadSize;
        this.mFutures = new Future[this.mCoreSize];
    }

    private void initExecutorIfNeed() {
        synchronized (this.mExecutorLock) {
            if (this.mPool == null || this.mPool.isShutdown()) {
                this.mPool = new ThreadPool(this.mCoreSize, this.mCoreSize);
            }
        }
    }

    protected void dispatch() {
        synchronized (this.mExecutorLock) {
            initExecutorIfNeed();
            dispatchJobs();
        }
    }

    /* JADX WARNING: Missing block: B:32:?, code:
            return 0;
     */
    /* JADX WARNING: Missing block: B:33:?, code:
            return r0;
     */
    private boolean dispatchJobs() {
        /*
        r9 = this;
        r0 = 0;
        r7 = r9.mExecutorLock;
        monitor-enter(r7);
        r6 = r9.mPool;	 Catch:{ all -> 0x005a }
        if (r6 == 0) goto L_0x0010;
    L_0x0008:
        r6 = r9.mPool;	 Catch:{ all -> 0x005a }
        r6 = r6.isShutdown();	 Catch:{ all -> 0x005a }
        if (r6 == 0) goto L_0x0013;
    L_0x0010:
        monitor-exit(r7);	 Catch:{ all -> 0x005a }
        r1 = r0;
    L_0x0012:
        return r1;
    L_0x0013:
        r6 = r9.mQueue;	 Catch:{ all -> 0x005a }
        r5 = r6.getPendingSize();	 Catch:{ all -> 0x005a }
        if (r5 <= 0) goto L_0x0057;
    L_0x001b:
        r3 = 0;
    L_0x001c:
        r6 = r9.mCoreSize;	 Catch:{ all -> 0x005a }
        if (r3 >= r6) goto L_0x0057;
    L_0x0020:
        if (r5 <= 0) goto L_0x0057;
    L_0x0022:
        r6 = r9.mFutures;	 Catch:{ all -> 0x005a }
        r2 = r6[r3];	 Catch:{ all -> 0x005a }
        if (r2 == 0) goto L_0x0034;
    L_0x0028:
        r6 = r2.isCancelled();	 Catch:{ all -> 0x005a }
        if (r6 != 0) goto L_0x0034;
    L_0x002e:
        r6 = r2.isDone();	 Catch:{ all -> 0x005a }
        if (r6 == 0) goto L_0x0054;
    L_0x0034:
        r4 = new com.miui.gallery.sdk.download.executor.ThreadPoolExecutor$Job;	 Catch:{ all -> 0x005a }
        r6 = 0;
        r4.<init>();	 Catch:{ all -> 0x005a }
        r6 = "ThreadPoolExecutor";
        r8 = "submit runnable %s";
        com.miui.gallery.util.Log.i(r6, r8, r4);	 Catch:{ all -> 0x005a }
        r6 = r9.mPool;	 Catch:{ all -> 0x005a }
        r2 = r6.submit(r4, r9);	 Catch:{ all -> 0x005a }
        r6 = r9.mFutures;	 Catch:{ all -> 0x005a }
        r6[r3] = r2;	 Catch:{ all -> 0x005a }
        r6 = r9.mQueue;	 Catch:{ all -> 0x005a }
        r6 = r6.getBatchSize();	 Catch:{ all -> 0x005a }
        r5 = r5 - r6;
        r0 = 1;
    L_0x0054:
        r3 = r3 + 1;
        goto L_0x001c;
    L_0x0057:
        monitor-exit(r7);	 Catch:{ all -> 0x005a }
        r1 = r0;
        goto L_0x0012;
    L_0x005a:
        r6 = move-exception;
        monitor-exit(r7);	 Catch:{ all -> 0x005a }
        throw r6;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.miui.gallery.sdk.download.executor.ThreadPoolExecutor.dispatchJobs():boolean");
    }

    public void interrupt() {
        synchronized (this.mExecutorLock) {
            int i = 0;
            while (i < this.mCoreSize) {
                try {
                    if (this.mFutures[i] != null) {
                        this.mFutures[i].cancel(0);
                        this.mFutures[i] = null;
                    }
                    i++;
                } catch (Throwable e) {
                    Log.e("ThreadPoolExecutor", e);
                }
            }
            if (this.mPool != null) {
                this.mPool.shutdownNow();
            }
        }
        this.mQueue.interrupt();
    }

    public void onFutureDone(Future future) {
        if (!future.isCancelled()) {
            Log.i("ThreadPoolExecutor", "onFutureDone dispatch %s", Boolean.valueOf(dispatchJobs()));
        }
    }

    protected String getTag() {
        return "ThreadPoolExecutor";
    }
}
