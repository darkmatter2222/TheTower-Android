package com.google.android.recaptcha.internal;

import kotlinx.coroutines.TimeoutKt;
import p005kotlin.Result;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;

/* JADX INFO: compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* JADX INFO: loaded from: classes3.dex */
public abstract class zze {
    private boolean zza;

    protected zzen zza(String str) {
        throw null;
    }

    protected zzen zzb() {
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:41:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:7:0x001b  */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00e4, code lost:
    
        if (r0 == r5) goto L47;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object zzc(java.lang.String r19, long r20, p005kotlin.coroutines.Continuation r22) throws com.google.android.recaptcha.internal.zzbd {
        /*
            Method dump skipped, instruction units count: 237
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.recaptcha.internal.zze.zzc(java.lang.String, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    protected abstract Object zzd(String str, Continuation continuation);

    /* JADX WARN: Code duplicated, block: B:38:0x00b2 A[PHI: r8 r9 r11
  0x00b2: PHI (r8v12 com.google.android.recaptcha.internal.zzen) = (r8v8 com.google.android.recaptcha.internal.zzen), (r8v20 com.google.android.recaptcha.internal.zzen) binds: [B:37:0x00b0, B:16:0x003d] A[DONT_GENERATE, DONT_INLINE]
  0x00b2: PHI (r9v6 com.google.android.recaptcha.internal.zze) = (r9v3 com.google.android.recaptcha.internal.zze), (r9v15 com.google.android.recaptcha.internal.zze) binds: [B:37:0x00b0, B:16:0x003d] A[DONT_GENERATE, DONT_INLINE]
  0x00b2: PHI (r11v8 java.lang.Object) = (r11v5 java.lang.Object), (r11v1 java.lang.Object) binds: [B:37:0x00b0, B:16:0x003d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:40:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:43:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object zze(long j, zzsc zzscVar, Continuation continuation) throws zzbd {
        zzc zzcVar;
        Exception e;
        zze zzeVar;
        zzen zzenVar;
        zzbd zzbdVar;
        zzbd zzbdVar2;
        if (continuation instanceof zzc) {
            zzcVar = (zzc) continuation;
            int i = zzcVar.zzd;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzcVar.zzd = i - Integer.MIN_VALUE;
            } else {
                zzcVar = new zzc(this, continuation);
            }
        } else {
            zzcVar = new zzc(this, continuation);
        }
        Object objZzj = zzcVar.zzb;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzcVar.zzd;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objZzj);
            zzen zzenVarZzb = zzb();
            if (this.zza) {
                zzenVarZzb.zza();
                Result.Companion companion = Result.INSTANCE;
                return Result.m3022constructorimpl(Unit.INSTANCE);
            }
            try {
                zzd zzdVar = new zzd(this, zzscVar, null);
                zzcVar.zza = this;
                zzcVar.zze = zzenVarZzb;
                zzcVar.zzd = 1;
                Object objWithTimeout = TimeoutKt.withTimeout(j, zzdVar, zzcVar);
                if (objWithTimeout != coroutine_suspended) {
                    objZzj = objWithTimeout;
                    zzenVar = zzenVarZzb;
                    zzeVar = this;
                }
            } catch (Exception e2) {
                e = e2;
                zzeVar = this;
                zzenVar = zzenVarZzb;
                zzeVar.zza = false;
                zzcVar.zza = zzeVar;
                zzcVar.zze = zzenVar;
                zzcVar.zzd = 2;
                objZzj = zzeVar.zzj(e, zzcVar);
                if (objZzj != coroutine_suspended) {
                    zzbdVar = (zzbd) objZzj;
                    if (zzenVar != null) {
                        zzenVar.zzb(zzbdVar);
                    }
                    zzcVar.zza = zzbdVar;
                    zzcVar.zze = null;
                    zzcVar.zzd = 3;
                    if (zzeVar.zzg(zzbdVar, zzcVar) != coroutine_suspended) {
                        zzbdVar2 = zzbdVar;
                        Result.Companion companion2 = Result.INSTANCE;
                        return Result.m3022constructorimpl(ResultKt.createFailure(zzbdVar2));
                    }
                }
            }
            return coroutine_suspended;
        }
        if (i2 != 1) {
            if (i2 == 2) {
                zzenVar = zzcVar.zze;
                zzeVar = (zze) zzcVar.zza;
                ResultKt.throwOnFailure(objZzj);
                zzbdVar = (zzbd) objZzj;
                if (zzenVar != null) {
                    zzenVar.zzb(zzbdVar);
                }
                zzcVar.zza = zzbdVar;
                zzcVar.zze = null;
                zzcVar.zzd = 3;
                if (zzeVar.zzg(zzbdVar, zzcVar) != coroutine_suspended) {
                    zzbdVar2 = zzbdVar;
                }
                return coroutine_suspended;
            }
            if (i2 != 3) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            zzbdVar2 = (zzbd) zzcVar.zza;
            ResultKt.throwOnFailure(objZzj);
            Result.Companion companion3 = Result.INSTANCE;
            return Result.m3022constructorimpl(ResultKt.createFailure(zzbdVar2));
        }
        zzenVar = zzcVar.zze;
        zzeVar = (zze) zzcVar.zza;
        try {
            ResultKt.throwOnFailure(objZzj);
        } catch (Exception e3) {
            e = e3;
            zzeVar.zza = false;
            zzcVar.zza = zzeVar;
            zzcVar.zze = zzenVar;
            zzcVar.zzd = 2;
            objZzj = zzeVar.zzj(e, zzcVar);
            if (objZzj != coroutine_suspended) {
                zzbdVar = (zzbd) objZzj;
                if (zzenVar != null) {
                    zzenVar.zzb(zzbdVar);
                }
                zzcVar.zza = zzbdVar;
                zzcVar.zze = null;
                zzcVar.zzd = 3;
                if (zzeVar.zzg(zzbdVar, zzcVar) != coroutine_suspended) {
                    zzbdVar2 = zzbdVar;
                    Result.Companion companion4 = Result.INSTANCE;
                    return Result.m3022constructorimpl(ResultKt.createFailure(zzbdVar2));
                }
            }
            return coroutine_suspended;
        }
        ResultKt.throwOnFailure(((Result) objZzj).getValue());
        Unit unit = Unit.INSTANCE;
        zzeVar.zza = true;
        if (zzenVar != null) {
            zzenVar.zza();
        }
        return Result.m3022constructorimpl(unit);
    }

    protected abstract Object zzf(String str, Continuation continuation) throws zzbd;

    protected Object zzg(zzbd zzbdVar, Continuation continuation) {
        return Unit.INSTANCE;
    }

    protected abstract Object zzh(zzsc zzscVar, Continuation continuation) throws zzbd;

    protected Object zzi(String str, long j, Exception exc, Continuation continuation) {
        return Unit.INSTANCE;
    }

    protected Object zzj(Exception exc, Continuation continuation) {
        return zzf.zza(exc, new zzbd(zzbb.zzb, zzba.zzap, exc.getMessage()));
    }

    protected void zzk(zzsr zzsrVar) {
    }

    public final boolean zzl() {
        return this.zza;
    }
}
