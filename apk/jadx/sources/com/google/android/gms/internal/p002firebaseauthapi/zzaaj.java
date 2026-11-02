package com.google.android.gms.internal.p002firebaseauthapi;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzaaj implements zzsz {
    private final zzsz zza;
    private final zzsz zzb;

    private zzaaj(zzsz zzszVar, zzsz zzszVar2) {
        this.zza = zzszVar;
        this.zzb = zzszVar2;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzsz
    public final byte[] zza(byte[] bArr, int i) throws GeneralSecurityException {
        return bArr.length <= 64 ? this.zza.zza(bArr, i) : this.zzb.zza(bArr, i);
    }
}
