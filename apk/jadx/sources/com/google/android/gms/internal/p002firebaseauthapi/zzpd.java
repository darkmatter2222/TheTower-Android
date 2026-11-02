package com.google.android.gms.internal.p002firebaseauthapi;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzpd {
    private static final zzpd zza = new zzpd();
    private final Map<String, zzcs> zzb = new HashMap();

    zzpd() {
    }

    public static zzpd zza() {
        return zza;
    }

    private final synchronized void zza(String str, zzcs zzcsVar) throws GeneralSecurityException {
        if (!this.zzb.containsKey(str)) {
            this.zzb.put(str, zzcsVar);
        } else {
            if (this.zzb.get(str).equals(zzcsVar)) {
                return;
            }
            throw new GeneralSecurityException("Parameters object with name " + str + " already exists (" + String.valueOf(this.zzb.get(str)) + "), cannot insert " + String.valueOf(zzcsVar));
        }
    }

    public final synchronized void zza(Map<String, zzcs> map) throws GeneralSecurityException {
        for (Map.Entry<String, zzcs> entry : map.entrySet()) {
            zza(entry.getKey(), entry.getValue());
        }
    }
}
