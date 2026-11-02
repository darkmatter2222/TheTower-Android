package com.google.android.gms.internal.p002firebaseauthapi;

import com.google.firebase.auth.internal.zzaq;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzabn implements zzaga<zzajo> {
    private final /* synthetic */ zzaeu zza;
    private final /* synthetic */ zzaba zzb;

    zzabn(zzaba zzabaVar, zzaeu zzaeuVar) {
        this.zza = zzaeuVar;
        Objects.requireNonNull(zzabaVar);
        this.zzb = zzabaVar;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzaga
    public final /* synthetic */ void zza(zzajo zzajoVar) {
        zzajo zzajoVar2 = zzajoVar;
        this.zzb.zza(new zzaia(zzajoVar2.zzd(), zzajoVar2.zzb(), Long.valueOf(zzajoVar2.zza()), "Bearer"), null, null, Boolean.valueOf(zzajoVar2.zzf()), null, this.zza, this);
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzagb
    public final void zza(String str) {
        this.zza.zza(zzaq.zza(str));
    }
}
