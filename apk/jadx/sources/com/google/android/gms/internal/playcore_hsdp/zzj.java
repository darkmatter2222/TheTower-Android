package com.google.android.gms.internal.playcore_hsdp;

import java.io.Serializable;

/* JADX INFO: compiled from: com.google.android.play:hsdp@@2.0.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzj {
    public static zzg zza(zzg zzgVar) {
        if ((zzgVar instanceof zzi) || (zzgVar instanceof zzh)) {
            return zzgVar;
        }
        return zzgVar instanceof Serializable ? new zzh(zzgVar) : new zzi(zzgVar);
    }
}
