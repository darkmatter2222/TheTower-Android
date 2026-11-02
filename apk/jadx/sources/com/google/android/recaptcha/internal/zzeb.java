package com.google.android.recaptcha.internal;

import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* JADX INFO: loaded from: classes3.dex */
final class zzeb extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzec zzb;
    final /* synthetic */ CompletableDeferred zzc;
    final /* synthetic */ long zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzeb(zzec zzecVar, CompletableDeferred completableDeferred, long j, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzecVar;
        this.zzc = completableDeferred;
        this.zzd = j;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzeb(this.zzb, this.zzc, this.zzd, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzeb) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Exception {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            if (this.zza != 0) {
                ResultKt.throwOnFailure(obj);
            } else {
                ResultKt.throwOnFailure(obj);
                this.zza = 1;
                obj = zzbq.zza.zza(new zzdz(this.zzb), 100L, 1000L, 2.0d, new zzea(this.zzb, this.zzd, this.zzc, null), this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            ((Boolean) obj).booleanValue();
        } catch (zzbd e) {
            this.zzb.zzf = zzcm.zzd;
            this.zzc.completeExceptionally(e);
        }
        return Unit.INSTANCE;
    }
}
