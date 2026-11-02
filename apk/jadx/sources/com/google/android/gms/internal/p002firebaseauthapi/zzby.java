package com.google.android.gms.internal.p002firebaseauthapi;

import java.security.GeneralSecurityException;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzby {

    @Nullable
    private final zzcs zza;

    private zzby(zzcs zzcsVar) {
        this.zza = zzcsVar;
    }

    public static zzby zza(zzcs zzcsVar) throws GeneralSecurityException {
        return new zzby(zzcsVar);
    }

    private final zzxk zzb() {
        try {
            zzcs zzcsVar = this.zza;
            zzcx zzcxVarZzb = zzcsVar instanceof zzor ? ((zzor) zzcsVar).zzb() : zzpf.zza().zza(this.zza);
            return (zzxk) ((zzalt) zzxk.zza().zza(zzcxVarZzb.zzc()).zza(zzcxVarZzb.zzb()).zza(zzqk.zza(zzcxVarZzb.zza())).zze());
        } catch (GeneralSecurityException e) {
            throw new zzqs("Parsing parameters failed in getProto(). You probably want to call some Tink register function for " + String.valueOf(this.zza), e);
        }
    }

    public final zzcs zza() throws GeneralSecurityException {
        zzcs zzcsVar = this.zza;
        return zzcsVar != null ? zzcsVar : zzdg.zza(zzb().zzk());
    }
}
