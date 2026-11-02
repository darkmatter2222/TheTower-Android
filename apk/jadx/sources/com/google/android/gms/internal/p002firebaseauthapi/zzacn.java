package com.google.android.gms.internal.p002firebaseauthapi;

import com.google.firebase.auth.internal.zzaq;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzacn implements zzaga<zzaiu> {
    private final /* synthetic */ zzaeu zza;
    private final /* synthetic */ zzaba zzb;

    zzacn(zzaba zzabaVar, zzaeu zzaeuVar) {
        this.zza = zzaeuVar;
        Objects.requireNonNull(zzabaVar);
        this.zzb = zzabaVar;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzaga
    public final /* synthetic */ void zza(zzaiu zzaiuVar) {
        zzaiu zzaiuVar2 = zzaiuVar;
        this.zzb.zza(new zzaia(zzaiuVar2.zzc(), zzaiuVar2.zzb(), Long.valueOf(zzaiuVar2.zza()), "Bearer"), null, null, true, null, this.zza, this);
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzagb
    public final void zza(String str) {
        this.zza.zza(zzaq.zza(str));
    }
}
