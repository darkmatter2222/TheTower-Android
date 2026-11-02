package com.google.android.gms.internal.play_billing;

/* JADX INFO: compiled from: com.android.billingclient:billing@@9.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzki extends zzgg implements zzhn {
    private static final zzki zzb;
    private int zzd;
    private int zze;

    static {
        zzki zzkiVar = new zzki();
        zzb = zzkiVar;
        zzgg.zzB(zzki.class, zzkiVar);
    }

    private zzki() {
    }

    public static zzkf zza() {
        return (zzkf) zzb.zzp();
    }

    static /* synthetic */ void zzc(zzki zzkiVar, int i) {
        zzkiVar.zze = i - 1;
        zzkiVar.zzd |= 1;
    }

    @Override // com.google.android.gms.internal.play_billing.zzgg
    protected final Object zzd(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzy(zzb, "\u0004\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001᠌\u0000", new Object[]{"zzd", "zze", zzkg.zza});
        }
        if (i2 == 3) {
            return new zzki();
        }
        zzkh zzkhVar = null;
        if (i2 == 4) {
            return new zzkf(zzkhVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
