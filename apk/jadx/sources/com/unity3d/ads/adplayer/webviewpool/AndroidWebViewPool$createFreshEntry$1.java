package com.unity3d.ads.adplayer.webviewpool;

import p005kotlin.Metadata;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: AndroidWebViewPool.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool", f = "AndroidWebViewPool.kt", i = {0}, l = {136}, m = "createFreshEntry$suspendImpl", n = {"client"}, s = {"L$0"})
final class AndroidWebViewPool$createFreshEntry$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ AndroidWebViewPool this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AndroidWebViewPool$createFreshEntry$1(AndroidWebViewPool androidWebViewPool, Continuation<? super AndroidWebViewPool$createFreshEntry$1> continuation) {
        super(continuation);
        this.this$0 = androidWebViewPool;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return AndroidWebViewPool.createFreshEntry$suspendImpl(this.this$0, this);
    }
}
