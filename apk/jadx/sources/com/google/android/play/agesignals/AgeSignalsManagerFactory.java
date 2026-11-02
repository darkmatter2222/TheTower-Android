package com.google.android.play.agesignals;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.play:age-signals@@0.0.3 */
/* JADX INFO: loaded from: classes3.dex */
public class AgeSignalsManagerFactory {
    private AgeSignalsManagerFactory() {
    }

    public static AgeSignalsManager create(Context context) {
        return new zzb(new zzg(context));
    }
}
