package com.google.android.recaptcha.internal;

import android.app.Application;
import android.webkit.WebView;
import com.ironsource.G5;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.Lazy;
import p005kotlin.LazyKt;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzja extends zze {
    public CompletableDeferred zza;
    public zzfo zzb;
    private final zzek zzc;
    private zzsc zzf;
    private final zzek zzj;
    private final Lazy zzk;
    private final Lazy zzl;
    private final Lazy zzm;
    private final Lazy zzn;
    private final Lazy zzo;
    private zzen zzp;
    private final zzbi zzq;
    private final Map zzd = zzjb.zza();
    private final Map zze = new LinkedHashMap();
    private final zzcb zzg = new zzcb(zzje.zza);
    private final zzjh zzh = zzjh.zzc();
    private final zzij zzi = new zzij(this);

    public zzja(zzek zzekVar, zzbi zzbiVar) {
        this.zzc = zzekVar;
        this.zzq = zzbiVar;
        zzek zzekVarZza = zzekVar.zza();
        zzekVarZza.zzc(zzekVar.zzd());
        this.zzj = zzekVarZza;
        int i = zzav.zza;
        this.zzk = LazyKt.lazy(zzis.zza);
        this.zzl = LazyKt.lazy(zzit.zza);
        this.zzm = LazyKt.lazy(zziu.zza);
        this.zzn = LazyKt.lazy(zziv.zza);
        this.zzo = LazyKt.lazy(zziw.zza);
    }

    private final Application zzD() {
        return (Application) this.zzo.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object zzE(zzsc zzscVar, Continuation continuation) {
        zzim zzimVar;
        zzbd zzbdVar;
        zzja zzjaVar;
        if (continuation instanceof zzim) {
            zzimVar = (zzim) continuation;
            int i = zzimVar.zzc;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzimVar.zzc = i - Integer.MIN_VALUE;
            } else {
                zzimVar = new zzim(this, continuation);
            }
        } else {
            zzimVar = new zzim(this, continuation);
        }
        Object objZzd = zzimVar.zza;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzimVar.zzc;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objZzd);
            try {
                zzff zzffVar = (zzff) this.zzn.getValue();
                zzek zzekVar = this.zzj;
                zzimVar.zzd = this;
                zzimVar.zzc = 1;
                objZzd = zzffVar.zzd(zzscVar, zzekVar, zzimVar);
                if (objZzd == coroutine_suspended) {
                    return coroutine_suspended;
                }
                zzjaVar = this;
            } catch (zzbd e) {
                zzbdVar = e;
                zzjaVar = this;
                zzjaVar.zzA().completeExceptionally(zzbdVar);
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            zzjaVar = zzimVar.zzd;
            try {
                ResultKt.throwOnFailure(objZzd);
            } catch (zzbd e2) {
                zzbdVar = e2;
                zzjaVar.zzA().completeExceptionally(zzbdVar);
            }
        }
        BuildersKt__Builders_commonKt.launch$default(zzjaVar.zzq.zzb(), null, null, new zzin(zzjaVar, (String) objZzd, null), 3, null);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:31:0x0097  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object zzF(String str, Continuation continuation) {
        zzio zzioVar;
        Exception exc;
        zzja zzjaVar;
        String str2;
        String str3;
        zzja zzjaVar2;
        zzbd zzbdVar;
        zzen zzenVar;
        if (continuation instanceof zzio) {
            zzioVar = (zzio) continuation;
            int i = zzioVar.zzc;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzioVar.zzc = i - Integer.MIN_VALUE;
            } else {
                zzioVar = new zzio(this, continuation);
            }
        } else {
            zzioVar = new zzio(this, continuation);
        }
        Object obj = zzioVar.zza;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzioVar.zzc;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            this.zzp = this.zzj.zzf(26);
            try {
                String strZza = ((zzbr) this.zzl.getValue()).zza();
                zzioVar.zzd = this;
                zzioVar.zze = str;
                zzioVar.zzf = strZza;
                zzioVar.zzc = 1;
                Object objZzw = zzw(zzioVar);
                if (objZzw == coroutine_suspended) {
                    return coroutine_suspended;
                }
                str2 = str;
                str3 = strZza;
                obj = objZzw;
                zzjaVar2 = this;
                ((WebView) obj).loadDataWithBaseURL(str3, str2, "text/html", G5.O, null);
            } catch (Exception e) {
                exc = e;
                zzjaVar = this;
                zzbdVar = new zzbd(zzbb.zzb, zzba.zzU, exc.getMessage());
                zzenVar = zzjaVar.zzp;
                if (zzenVar != null) {
                    zzenVar.zzb(zzbdVar);
                }
                zzjaVar.zzp = null;
                zzjaVar.zzA().completeExceptionally(zzbdVar);
                return Unit.INSTANCE;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            String str4 = zzioVar.zzf;
            String str5 = zzioVar.zze;
            zzjaVar = zzioVar.zzd;
            try {
                ResultKt.throwOnFailure(obj);
                str3 = str4;
                str2 = str5;
                zzjaVar2 = zzjaVar;
                try {
                    ((WebView) obj).loadDataWithBaseURL(str3, str2, "text/html", G5.O, null);
                } catch (Exception e2) {
                    zzjaVar = zzjaVar2;
                    exc = e2;
                    zzbdVar = new zzbd(zzbb.zzb, zzba.zzU, exc.getMessage());
                    zzenVar = zzjaVar.zzp;
                    if (zzenVar != null) {
                        zzenVar.zzb(zzbdVar);
                    }
                    zzjaVar.zzp = null;
                    zzjaVar.zzA().completeExceptionally(zzbdVar);
                }
            } catch (Exception e3) {
                exc = e3;
                zzbdVar = new zzbd(zzbb.zzb, zzba.zzU, exc.getMessage());
                zzenVar = zzjaVar.zzp;
                if (zzenVar != null) {
                    zzenVar.zzb(zzbdVar);
                }
                zzjaVar.zzp = null;
                zzjaVar.zzA().completeExceptionally(zzbdVar);
                return Unit.INSTANCE;
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object zzG(String str, Continuation continuation) {
        zzix zzixVar;
        zzja zzjaVar;
        zzja zzjaVar2;
        if (continuation instanceof zzix) {
            zzixVar = (zzix) continuation;
            int i = zzixVar.zzc;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzixVar.zzc = i - Integer.MIN_VALUE;
            } else {
                zzixVar = new zzix(this, continuation);
            }
        } else {
            zzixVar = new zzix(this, continuation);
        }
        Object objZzb = zzixVar.zza;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzixVar.zzc;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objZzb);
            zzcb zzcbVar = this.zzg;
            zzje[] zzjeVarArr = {zzje.zzd, zzje.zzc, zzje.zzb};
            zzixVar.zzd = this;
            zzixVar.zze = str;
            zzixVar.zzc = 1;
            objZzb = zzcbVar.zzb(zzjeVarArr, zzixVar);
            if (objZzb != coroutine_suspended) {
                zzjaVar = this;
            }
            return coroutine_suspended;
        }
        if (i2 == 1) {
            str = zzixVar.zze;
            zzjaVar = zzixVar.zzd;
            ResultKt.throwOnFailure(objZzb);
        } else {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            str = zzixVar.zze;
            zzjaVar2 = zzixVar.zzd;
            ResultKt.throwOnFailure(objZzb);
        }
        zzjaVar2.zza = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        zzek zzekVar = zzjaVar2.zzj;
        zzekVar.zzc(str);
        BuildersKt__Builders_commonKt.launch$default(zzjaVar2.zzq.zza(), null, null, new zziz(zzjaVar2, zzekVar.zzf(42), null), 3, null);
        return Unit.INSTANCE;
        if (((Boolean) objZzb).booleanValue()) {
            return Unit.INSTANCE;
        }
        zzcb zzcbVar2 = zzjaVar.zzg;
        zzje zzjeVar = zzje.zzb;
        zzixVar.zzd = zzjaVar;
        zzixVar.zze = str;
        zzixVar.zzc = 2;
        if (zzcbVar2.zzc(zzjeVar, zzixVar) != coroutine_suspended) {
            zzjaVar2 = zzjaVar;
            zzjaVar2.zza = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
            zzek zzekVar2 = zzjaVar2.zzj;
            zzekVar2.zzc(str);
            BuildersKt__Builders_commonKt.launch$default(zzjaVar2.zzq.zza(), null, null, new zziz(zzjaVar2, zzekVar2.zzf(42), null), 3, null);
            return Unit.INSTANCE;
        }
        return coroutine_suspended;
    }

    public static final /* synthetic */ zzfk zzp(zzja zzjaVar) {
        return (zzfk) zzjaVar.zzm.getValue();
    }

    public final CompletableDeferred zzA() {
        CompletableDeferred completableDeferred = this.zza;
        if (completableDeferred != null) {
            return completableDeferred;
        }
        return null;
    }

    public final zzft zzC(zzsc zzscVar, zzcg zzcgVar, WebView webView) {
        zzfw zzfwVar = new zzfw(webView, this.zzq.zzb());
        zzhy zzhyVar = new zzhy();
        zzhyVar.zzb(CollectionsKt.toLongArray(zzscVar.zzP()));
        zzgf zzgfVar = new zzgf(zzfwVar, zzcgVar, new zzbo());
        zzhz zzhzVar = new zzhz(zzhyVar, new zzhw());
        zzgfVar.zze(3, zzD());
        zzgfVar.zze(5, zzig.zza());
        zzgfVar.zze(6, new zzia(zzD()));
        zzgfVar.zze(7, new zzic());
        zzgfVar.zze(8, new zzii(zzD()));
        zzgfVar.zze(9, new zzid(zzD()));
        zzgfVar.zze(10, new zzib(zzD()));
        return new zzft(this.zzq.zzd(), zzgfVar, zzhzVar, zzfn.zza());
    }

    @Override // com.google.android.recaptcha.internal.zze
    protected final zzen zza(String str) {
        zzek zzekVar = this.zzc;
        zzekVar.zzc(str);
        return zzekVar.zzf(33);
    }

    @Override // com.google.android.recaptcha.internal.zze
    protected final zzen zzb() {
        zzek zzekVar = this.zzc;
        zzekVar.zzc(zzekVar.zzd());
        return zzekVar.zzf(32);
    }

    @Override // com.google.android.recaptcha.internal.zze
    protected final Object zzd(String str, Continuation continuation) {
        zzsh zzshVarZzf = zzsi.zzf();
        zzshVarZzf.zze(str);
        return zzshVarZzf.zzk();
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:47:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:50:0x0141  */
    /* JADX WARN: Code duplicated, block: B:57:0x0198  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00e7, code lost:
    
        if (r8.zzG(r4, r2) != r3) goto L44;
     */
    @Override // com.google.android.recaptcha.internal.zze
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final java.lang.Object zzf(java.lang.String r18, p005kotlin.coroutines.Continuation r19) {
        /*
            Method dump skipped, instruction units count: 432
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.recaptcha.internal.zzja.zzf(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.google.android.recaptcha.internal.zze
    protected final Object zzg(zzbd zzbdVar, Continuation continuation) {
        if (Intrinsics.areEqual(zzbdVar.zza(), zzba.zzb)) {
            zzen zzenVar = this.zzp;
            if (zzenVar != null) {
                zzenVar.zzb(zzbdVar);
            }
            this.zzp = null;
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x005c, code lost:
    
        if (zzG(r6, r0) != r1) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0071, code lost:
    
        if (r6.zzc(r7, r0) == r1) goto L29;
     */
    @Override // com.google.android.recaptcha.internal.zze
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final java.lang.Object zzh(com.google.android.recaptcha.internal.zzsc r6, p005kotlin.coroutines.Continuation r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.google.android.recaptcha.internal.zzir
            if (r0 == 0) goto L13
            r0 = r7
            com.google.android.recaptcha.internal.zzir r0 = (com.google.android.recaptcha.internal.zzir) r0
            int r1 = r0.zzc
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.zzc = r1
            goto L18
        L13:
            com.google.android.recaptcha.internal.zzir r0 = new com.google.android.recaptcha.internal.zzir
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.zza
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.zzc
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L38
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            p005kotlin.ResultKt.throwOnFailure(r7)
            goto L5e
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L34:
            p005kotlin.ResultKt.throwOnFailure(r7)
            goto L74
        L38:
            p005kotlin.ResultKt.throwOnFailure(r7)
            boolean r7 = r6.zzT()
            if (r7 == 0) goto L67
            boolean r7 = r6.zzR()
            if (r7 == 0) goto L67
            boolean r7 = r6.zzQ()
            if (r7 != 0) goto L4e
            goto L67
        L4e:
            r5.zzf = r6
            com.google.android.recaptcha.internal.zzek r6 = r5.zzc
            java.lang.String r6 = r6.zzd()
            r0.zzc = r3
            java.lang.Object r6 = r5.zzG(r6, r0)
            if (r6 == r1) goto L73
        L5e:
            kotlin.Result$Companion r6 = p005kotlin.Result.INSTANCE
            kotlin.Unit r6 = p005kotlin.Unit.INSTANCE
            java.lang.Object r6 = p005kotlin.Result.m3022constructorimpl(r6)
            return r6
        L67:
            com.google.android.recaptcha.internal.zzcb r6 = r5.zzg
            com.google.android.recaptcha.internal.zzje r7 = com.google.android.recaptcha.internal.zzje.zzd
            r0.zzc = r4
            java.lang.Object r6 = r6.zzc(r7, r0)
            if (r6 != r1) goto L74
        L73:
            return r1
        L74:
            kotlin.Result$Companion r6 = p005kotlin.Result.INSTANCE
            com.google.android.recaptcha.internal.zzbd r6 = new com.google.android.recaptcha.internal.zzbd
            com.google.android.recaptcha.internal.zzbb r7 = com.google.android.recaptcha.internal.zzbb.zzb
            com.google.android.recaptcha.internal.zzba r0 = com.google.android.recaptcha.internal.zzba.zzav
            r1 = 0
            r6.<init>(r7, r0, r1)
            java.lang.Throwable r6 = (java.lang.Throwable) r6
            java.lang.Object r6 = p005kotlin.ResultKt.createFailure(r6)
            java.lang.Object r6 = p005kotlin.Result.m3022constructorimpl(r6)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.recaptcha.internal.zzja.zzh(com.google.android.recaptcha.internal.zzsc, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.google.android.recaptcha.internal.zze
    protected final Object zzi(String str, long j, Exception exc, Continuation continuation) {
        exc.getMessage();
        CompletableDeferred completableDeferred = (CompletableDeferred) this.zze.remove(str);
        if (completableDeferred != null) {
            Boxing.boxBoolean(completableDeferred.completeExceptionally(exc));
        }
        return Unit.INSTANCE;
    }

    @Override // com.google.android.recaptcha.internal.zze
    protected final Object zzj(Exception exc, Continuation continuation) {
        return ((exc instanceof TimeoutCancellationException) && this.zzi.zza() == null) ? new zzbd(zzbb.zzc, zzba.zzH, null) : zzf.zza(exc, new zzbd(zzbb.zzb, zzba.zzV, exc.getMessage()));
    }

    public final zzcb zzm() {
        return this.zzg;
    }

    public final zzij zzq() {
        return this.zzi;
    }

    public final Object zzw(Continuation continuation) {
        return BuildersKt.withContext(this.zzq.zzb().getCoroutineContext(), new zzjc((zzjd) this.zzk.getValue(), zzD(), null), continuation);
    }

    public final Object zzx(Continuation continuation) {
        Object objWithContext = BuildersKt.withContext(this.zzq.zzb().getCoroutineContext(), new zzil(this, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }
}
