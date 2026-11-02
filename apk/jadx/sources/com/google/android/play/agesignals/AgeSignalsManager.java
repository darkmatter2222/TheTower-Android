package com.google.android.play.agesignals;

import com.google.android.gms.tasks.Task;

/* JADX INFO: compiled from: com.google.android.play:age-signals@@0.0.3 */
/* JADX INFO: loaded from: classes3.dex */
public interface AgeSignalsManager {
    Task<AgeSignalsResult> checkAgeSignals(AgeSignalsRequest ageSignalsRequest);
}
