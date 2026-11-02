package com.google.android.recaptcha.internal;

import p005kotlin.Result;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* JADX INFO: loaded from: classes3.dex */
final class zzcw extends ContinuationImpl {
    /* synthetic */ Object zza;
    final /* synthetic */ zzdc zzb;
    int zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzcw(zzdc zzdcVar, Continuation continuation) {
        super(continuation);
        this.zzb = zzdcVar;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.zza = obj;
        this.zzc |= Integer.MIN_VALUE;
        Object objMo1183execute0E7RQCE = this.zzb.mo1183execute0E7RQCE(null, 0L, this);
        return objMo1183execute0E7RQCE == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objMo1183execute0E7RQCE : Result.m3021boximpl(objMo1183execute0E7RQCE);
    }
}
