package com.google.android.gms.internal.games_v2;

import android.app.Application;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.tu2$$ExternalSyntheticBackportWithForwarding0;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzay {
    private static final AtomicReference zza = new AtomicReference();

    public static zzaw zza(Application application) {
        AtomicReference atomicReference = zza;
        zzaw zzawVar = (zzaw) atomicReference.get();
        if (zzawVar != null) {
            return zzawVar;
        }
        zzh zzhVarZza = zzi.zza();
        zzhVarZza.zza(9);
        zzhVarZza.zzb(application.getPackageName());
        zzi zziVarZzc = zzhVarZza.zzc();
        com.google.android.gms.games.internal.zzf zzfVarZza = com.google.android.gms.games.internal.zzf.zza(application);
        tu2$$ExternalSyntheticBackportWithForwarding0.m(atomicReference, null, new zzbq(application, zzfVarZza, com.google.android.gms.games.internal.v2.resolution.zzb.zza(), new zzbu(application, zzfVarZza, new zzax(application, zziVarZzc))));
        return (zzaw) Preconditions.checkNotNull((zzaw) atomicReference.get());
    }
}
