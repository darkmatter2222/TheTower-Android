package com.google.android.recaptcha.internal;

import java.util.Timer;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* JADX INFO: loaded from: classes3.dex */
final class zzeq extends SuspendLambda implements Function2 {
    final /* synthetic */ zzes zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzeq(zzes zzesVar, Continuation continuation) {
        super(2, continuation);
        this.zza = zzesVar;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzeq(this.zza, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzeq) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        zzes zzesVar = this.zza;
        synchronized (zzeo.class) {
            zzei zzeiVar = zzesVar.zze;
            if (zzeiVar != null && zzeiVar.zzb() == 0) {
                Timer timer = zzes.zza;
                if (timer != null) {
                    timer.cancel();
                }
                zzes.zza = null;
            }
            zzesVar.zzg();
            Unit unit = Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }
}
