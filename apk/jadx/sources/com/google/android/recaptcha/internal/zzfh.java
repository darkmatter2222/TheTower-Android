package com.google.android.recaptcha.internal;

import kotlinx.coroutines.CoroutineScope;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* JADX INFO: loaded from: classes3.dex */
final class zzfh extends SuspendLambda implements Function2 {
    final /* synthetic */ zzfj zza;
    final /* synthetic */ zzbr zzb;
    final /* synthetic */ zzsp zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzfh(zzfj zzfjVar, zzbr zzbrVar, zzsp zzspVar, Continuation continuation) {
        super(2, continuation);
        this.zza = zzfjVar;
        this.zzb = zzbrVar;
        this.zzc = zzspVar;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzfh(this.zza, this.zzb, this.zzc, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzfh) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        zzew zzewVarZza = null;
        try {
            try {
                try {
                    zzewVarZza = zzfj.zza(this.zza).zza(this.zzb.zzd());
                    zzewVarZza.zzc();
                    zzewVarZza.zze(this.zzc.zzd());
                    zzsr zzsrVar = (zzsr) zzewVarZza.zza(zzsr.zzi());
                    zzewVarZza.zzd();
                    return zzsrVar;
                } catch (zzbd e) {
                    throw e;
                }
            } catch (Exception e2) {
                throw new zzbd(zzbb.zzc, zzba.zzF, e2.getMessage());
            }
        } catch (Throwable th) {
            if (zzewVarZza != null) {
                zzewVarZza.zzd();
            }
            throw th;
        }
    }
}
