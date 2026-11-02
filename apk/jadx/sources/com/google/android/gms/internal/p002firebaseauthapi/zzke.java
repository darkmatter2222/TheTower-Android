package com.google.android.gms.internal.p002firebaseauthapi;

import java.security.GeneralSecurityException;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzke implements zzbp {
    private final zzbp zza;
    private final zzyi zzb;
    private final byte[] zzc;

    private zzke(zzbp zzbpVar, zzyi zzyiVar, byte[] bArr) {
        this.zza = zzbpVar;
        this.zzb = zzyiVar;
        this.zzc = bArr;
    }

    public static zzbp zza(zzon zzonVar) throws GeneralSecurityException {
        zzct zzctVarZza = zzonVar.zza(zzbu.zza());
        zzbp zzbpVar = (zzbp) zzoe.zza().zza(zzctVarZza.zze(), zzbp.class).zzb(zzctVarZza.zzc());
        zzcv zzcvVarZzb = zzctVarZza.zzb();
        return new zzke(zzbpVar, zzqk.zza(zzcvVarZzb), zzqk.zza(zzcvVarZzb, zzonVar.zzb()).zzb());
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzbp
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (this.zzb == zzyi.RAW) {
            return this.zza.zza(bArr, bArr2);
        }
        if (zzqu.zza(this.zzc, bArr)) {
            return this.zza.zza(Arrays.copyOfRange(bArr, 5, bArr.length), bArr2);
        }
        throw new GeneralSecurityException("wrong prefix");
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzbp
    public final byte[] zzb(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        return this.zzb == zzyi.RAW ? this.zza.zzb(bArr, bArr2) : zzzi.zza(this.zzc, this.zza.zzb(bArr, bArr2));
    }
}
