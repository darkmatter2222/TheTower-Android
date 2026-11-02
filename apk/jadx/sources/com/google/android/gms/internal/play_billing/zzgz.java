package com.google.android.gms.internal.play_billing;

/* JADX INFO: compiled from: com.android.billingclient:billing@@9.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgz extends zzgg implements zzhn {
    private static final zzgz zzb;
    private zzgl zzd = zzhu.zze();

    static {
        zzgz zzgzVar = new zzgz();
        zzb = zzgzVar;
        zzgg.zzB(zzgz.class, zzgzVar);
    }

    private zzgz() {
    }

    @Override // com.google.android.gms.internal.play_billing.zzgg
    protected final Object zzd(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new zzhv(zzb, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzd", zzja.class});
        }
        if (i2 == 3) {
            return new zzgz();
        }
        zzgy zzgyVar = null;
        if (i2 == 4) {
            return new zzgx(zzgyVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
