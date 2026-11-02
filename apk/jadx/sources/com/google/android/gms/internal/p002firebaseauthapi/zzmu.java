package com.google.android.gms.internal.p002firebaseauthapi;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzmu implements zzbr {
    private final zzbr zza;
    private final byte[] zzb;

    private zzmu(zzbr zzbrVar, byte[] bArr) {
        this.zza = zzbrVar;
        this.zzb = bArr;
    }

    public static zzbr zza(zzon zzonVar) throws GeneralSecurityException {
        zzct zzctVarZza = zzonVar.zza(zzbu.zza());
        return new zzmu((zzbr) zzoe.zza().zza(zzctVarZza.zze(), zzbr.class).zzb(zzctVarZza.zzc()), zzqk.zza(zzctVarZza.zzb(), zzonVar.zzb()).zzb());
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzbr
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArr3 = this.zzb;
        return bArr3.length == 0 ? this.zza.zza(bArr, bArr2) : zzzi.zza(bArr3, this.zza.zza(bArr, bArr2));
    }
}
