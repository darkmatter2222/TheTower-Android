package com.google.android.gms.internal.play_billing;

/* JADX INFO: compiled from: com.android.billingclient:billing@@9.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzky extends zzgg implements zzhn {
    private static final zzky zzb;
    private int zzd;
    private int zze;

    static {
        zzky zzkyVar = new zzky();
        zzb = zzkyVar;
        zzgg.zzB(zzky.class, zzkyVar);
    }

    private zzky() {
    }

    public static zzkv zza() {
        return (zzkv) zzb.zzp();
    }

    static /* synthetic */ void zzc(zzky zzkyVar, int i) {
        zzkyVar.zze = i - 1;
        zzkyVar.zzd |= 1;
    }

    @Override // com.google.android.gms.internal.play_billing.zzgg
    protected final Object zzd(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzy(zzb, "\u0004\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001᠌\u0000", new Object[]{"zzd", "zze", zzkw.zza});
        }
        if (i2 == 3) {
            return new zzky();
        }
        zzkx zzkxVar = null;
        if (i2 == 4) {
            return new zzkv(zzkxVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
