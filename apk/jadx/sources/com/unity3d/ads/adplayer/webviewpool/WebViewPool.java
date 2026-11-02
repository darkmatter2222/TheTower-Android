package com.unity3d.ads.adplayer.webviewpool;

import p005kotlin.Metadata;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: WebViewPool.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b`\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H¦@¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bH¦@¢\u0006\u0002\u0010\tJ\u000e\u0010\n\u001a\u00020\bH¦@¢\u0006\u0002\u0010\tJ\u0016\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\bH¦@¢\u0006\u0002\u0010\rJ\u0016\u0010\u000e\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\bH¦@¢\u0006\u0002\u0010\rJ\u0016\u0010\u000f\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\bH¦@¢\u0006\u0002\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/unity3d/ads/adplayer/webviewpool/WebViewPool;", "", "initialize", "", "size", "", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "acquireFreshEntry", "Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "acquireForShow", "resetEntry", "entry", "(Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "enqueueRecycled", "release", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface WebViewPool {
    Object acquireForShow(Continuation<? super PoolEntry> continuation);

    Object acquireFreshEntry(Continuation<? super PoolEntry> continuation);

    Object enqueueRecycled(PoolEntry poolEntry, Continuation<? super Unit> continuation);

    Object initialize(int i, Continuation<? super Unit> continuation);

    Object release(PoolEntry poolEntry, Continuation<? super Unit> continuation);

    Object resetEntry(PoolEntry poolEntry, Continuation<? super PoolEntry> continuation);
}
