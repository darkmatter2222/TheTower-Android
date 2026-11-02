package com.google.android.recaptcha.internal;

import android.os.Build;
import com.ironsource.C3510b4;
import com.ironsource.adapters.facebook.FacebookConstants;
import p005kotlin.Unit;
import p005kotlin.collections.ArraysKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzn implements zzy {
    private final zzek zza;

    public zzn(zzek zzekVar) {
        this.zza = zzekVar;
    }

    private static final zzth zzg(String str) {
        zztg zztgVarZzf = zzth.zzf();
        zztgVarZzf.zzw(str);
        return (zzth) zztgVarZzf.zzk();
    }

    @Override // com.google.android.recaptcha.internal.zzy
    public final int zza() {
        return 11;
    }

    @Override // com.google.android.recaptcha.internal.zzy
    public final zzek zzb() {
        return this.zza;
    }

    @Override // com.google.android.recaptcha.internal.zzy
    public final Object zzc(String str, Continuation continuation) {
        zzn zznVar = this;
        zzen zzenVarZzb = zzz.zzb(zznVar, str);
        zztf zztfVarZzf = zzti.zzf();
        long j = Build.TIME;
        zztg zztgVarZzf = zzth.zzf();
        zztgVarZzf.zzv(j);
        zztfVarZzf.zze(CollectionsKt.listOf((Object[]) new zzth[]{zzg(Build.MANUFACTURER), zzg(Build.MODEL), zzg(Build.DEVICE), zzg(Build.HARDWARE), zzg(Build.FINGERPRINT), zzg(Build.PRODUCT), zzg(Build.BOARD), zzg(Build.BRAND), zzg(ArraysKt.joinToString$default(Build.SUPPORTED_ABIS, FacebookConstants.PLACEMENT_IDS_SEPARATOR, C3510b4.j.d, C3510b4.j.e, 0, (CharSequence) null, (Function1) null, 56, (Object) null)), (zzth) zztgVarZzf.zzk(), zzg(Build.ID), zzg(Build.BOOTLOADER), zzg(Build.DISPLAY), zzg(Build.TYPE), zzg(Build.TAGS)}));
        zzenVarZzb.zza();
        return zzz.zza(zznVar, (zzti) zztfVarZzf.zzk());
    }

    @Override // com.google.android.recaptcha.internal.zzy
    public final Object zzd(zzse zzseVar, Continuation continuation) {
        zzz.zzc(this).zza();
        return Unit.INSTANCE;
    }

    @Override // com.google.android.recaptcha.internal.zzy
    public final void zze(zzsr zzsrVar) {
    }

    @Override // com.google.android.recaptcha.internal.zzy
    public final boolean zzf() {
        return true;
    }
}
