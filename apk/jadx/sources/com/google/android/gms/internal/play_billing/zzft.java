package com.google.android.gms.internal.play_billing;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.android.billingclient:billing@@9.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzft {
    static final zzft zza = new zzft(true);
    public static final /* synthetic */ int zzb = 0;
    private static volatile boolean zzc = false;
    private static volatile int zze = 1;
    private final Map zzd;

    zzft() {
        this.zzd = new HashMap();
    }

    zzft(boolean z) {
        this.zzd = Collections.emptyMap();
    }

    static boolean zzb() {
        return false;
    }

    public final zzgf zza(zzhm zzhmVar, int i) {
        return (zzgf) this.zzd.get(new zzfs(zzhmVar, i));
    }
}
