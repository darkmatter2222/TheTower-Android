package com.google.android.recaptcha.internal;

import java.util.Iterator;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.Result;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* JADX INFO: loaded from: classes3.dex */
final class zzu extends SuspendLambda implements Function2 {
    Object zza;
    Object zzb;
    int zzc;
    final /* synthetic */ zzsc zzd;
    final /* synthetic */ zzv zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzu(zzsc zzscVar, zzv zzvVar, Continuation continuation) {
        super(2, continuation);
        this.zzd = zzscVar;
        this.zze = zzvVar;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzu(this.zzd, this.zze, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzu) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        zzse zzseVarZzj;
        Iterator it;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.zzc != 0) {
            it = (Iterator) this.zzb;
            zzseVarZzj = (zzse) this.zza;
            ResultKt.throwOnFailure(obj);
        } else {
            ResultKt.throwOnFailure(obj);
            if (!this.zzd.zzS()) {
                Result.Companion companion = Result.INSTANCE;
                return Result.m3021boximpl(Result.m3022constructorimpl(ResultKt.createFailure(new zzbd(zzbb.zzb, zzba.zzab, null))));
            }
            zzseVarZzj = this.zzd.zzj();
            if (zzseVarZzj.zzi().zzd() == 0) {
                Result.Companion companion2 = Result.INSTANCE;
                return Result.m3021boximpl(Result.m3022constructorimpl(ResultKt.createFailure(new zzbd(zzbb.zzb, zzba.zzab, null))));
            }
            this.zze.zzc = zzseVarZzj.zzi();
            it = this.zze.zzb.iterator();
        }
        while (it.hasNext()) {
            this.zza = zzseVarZzj;
            this.zzb = it;
            this.zzc = 1;
            if (((zzy) it.next()).zzd(zzseVarZzj, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        Result.Companion companion3 = Result.INSTANCE;
        return Result.m3021boximpl(Result.m3022constructorimpl(Unit.INSTANCE));
    }
}
