package com.google.android.libraries.ads.mobile.sdk;

import com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
public final class a extends ContinuationImpl {
    public MobileAds.Companion a;
    public SignalRequest b;
    public /* synthetic */ Object c;
    public final /* synthetic */ MobileAds.Companion d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(MobileAds.Companion companion, Continuation continuation) {
        super(continuation);
        this.d = companion;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return this.d.generateSignal((SignalRequest) null, this);
    }
}
