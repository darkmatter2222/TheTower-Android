package com.google.android.gms.internal.play_billing;

/* JADX INFO: compiled from: com.android.billingclient:billing@@9.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzku extends zzgg implements zzhn {
    private static final zzku zzb;
    private int zzd;
    private int zzf;
    private zzgl zze = zzv();
    private String zzg = "";

    static {
        zzku zzkuVar = new zzku();
        zzb = zzkuVar;
        zzgg.zzB(zzku.class, zzkuVar);
    }

    private zzku() {
    }

    @Override // com.google.android.gms.internal.play_billing.zzgg
    protected final Object zzd(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzy(zzb, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u001a\u0002င\u0000\u0003ဈ\u0001", new Object[]{"zzd", "zze", "zzf", "zzg"});
        }
        if (i2 == 3) {
            return new zzku();
        }
        zzkt zzktVar = null;
        if (i2 == 4) {
            return new zzks(zzktVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
