package com.google.android.gms.internal.p002firebaseauthapi;

import java.security.GeneralSecurityException;
import javax.annotation.Nullable;
import javax.crypto.Cipher;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzja extends ThreadLocal<Cipher> {
    zzja() {
    }

    @Nullable
    private static Cipher zza() {
        try {
            Cipher cipherZza = zzzr.zza.zza("AES/GCM-SIV/NoPadding");
            if (zzhk.zza(cipherZza)) {
                return cipherZza;
            }
            return null;
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // java.lang.ThreadLocal
    @Nullable
    protected final /* synthetic */ Cipher initialValue() {
        return zza();
    }
}
