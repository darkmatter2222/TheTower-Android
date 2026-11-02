package com.google.android.play.agesignals;

import com.google.android.gms.tasks.Task;

/* JADX INFO: compiled from: com.google.android.play:age-signals@@0.0.3 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzb implements AgeSignalsManager {
    private final zzg zza;

    zzb(zzg zzgVar) {
        this.zza = zzgVar;
    }

    @Override // com.google.android.play.agesignals.AgeSignalsManager
    public final Task<AgeSignalsResult> checkAgeSignals(AgeSignalsRequest ageSignalsRequest) {
        return this.zza.zzb(ageSignalsRequest);
    }
}
