package com.google.android.gms.internal.playcore_age_signals;

import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.play:age-signals@@0.0.3 */
/* JADX INFO: loaded from: classes2.dex */
final class zzl extends zze {
    final /* synthetic */ zzm zza;

    zzl(zzm zzmVar) {
        Objects.requireNonNull(zzmVar);
        this.zza = zzmVar;
    }

    @Override // com.google.android.gms.internal.playcore_age_signals.zze
    public final void zzb() {
        zzo zzoVar = this.zza.zza;
        zzo.zzs(zzoVar);
        zzoVar.zzn = null;
        zzoVar.zzh = false;
    }
}
