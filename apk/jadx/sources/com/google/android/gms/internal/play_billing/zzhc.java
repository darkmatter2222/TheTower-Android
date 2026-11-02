package com.google.android.gms.internal.play_billing;

/* JADX INFO: compiled from: com.android.billingclient:billing@@9.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzhc implements zzhk {
    private final zzhk[] zza;

    zzhc(zzhk... zzhkVarArr) {
        this.zza = zzhkVarArr;
    }

    @Override // com.google.android.gms.internal.play_billing.zzhk
    public final zzhj zzb(Class cls) {
        for (int i = 0; i < 2; i++) {
            zzhk zzhkVar = this.zza[i];
            if (zzhkVar.zzc(cls)) {
                return zzhkVar.zzb(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(String.valueOf(cls.getName())));
    }

    @Override // com.google.android.gms.internal.play_billing.zzhk
    public final boolean zzc(Class cls) {
        for (int i = 0; i < 2; i++) {
            if (this.zza[i].zzc(cls)) {
                return true;
            }
        }
        return false;
    }
}
