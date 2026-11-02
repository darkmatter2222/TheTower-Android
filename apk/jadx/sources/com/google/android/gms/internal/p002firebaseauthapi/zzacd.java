package com.google.android.gms.internal.p002firebaseauthapi;

import com.google.firebase.auth.internal.zzaq;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzacd implements zzaga<zzahj> {
    private final /* synthetic */ zzaeu zza;
    private final /* synthetic */ zzaba zzb;

    zzacd(zzaba zzabaVar, zzaeu zzaeuVar) {
        this.zza = zzaeuVar;
        Objects.requireNonNull(zzabaVar);
        this.zzb = zzabaVar;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzaga
    public final /* synthetic */ void zza(zzahj zzahjVar) {
        zzahj zzahjVar2 = zzahjVar;
        this.zzb.zza(new zzaia(zzahjVar2.zzb(), zzahjVar2.zza(), Long.valueOf(zzaic.zza(zzahjVar2.zza())), "Bearer"), null, null, false, null, this.zza, this);
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzagb
    public final void zza(String str) {
        this.zza.zza(zzaq.zza(str));
    }
}
