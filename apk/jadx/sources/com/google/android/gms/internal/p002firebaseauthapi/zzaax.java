package com.google.android.gms.internal.p002firebaseauthapi;

import com.google.firebase.auth.MultiFactorInfo;
import com.google.firebase.auth.internal.zzbi;
import com.google.firebase.auth.zzc;
import java.util.List;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaax {
    private String zza;
    private List<zzaih> zzb;
    private zzc zzc;

    public zzaax(String str, List<zzaih> list, zzc zzcVar) {
        this.zza = str;
        this.zzb = list;
        this.zzc = zzcVar;
    }

    public final zzc zza() {
        return this.zzc;
    }

    public final String zzb() {
        return this.zza;
    }

    public final List<MultiFactorInfo> zzc() {
        return zzbi.zza(this.zzb);
    }
}
