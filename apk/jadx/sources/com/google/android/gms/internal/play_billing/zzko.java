package com.google.android.gms.internal.play_billing;

/* JADX INFO: compiled from: com.android.billingclient:billing@@9.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzko extends zzgg implements zzhn {
    private static final zzko zzb;
    private int zzd;
    private zzgl zze = zzv();
    private String zzf = "";
    private boolean zzg;

    static {
        zzko zzkoVar = new zzko();
        zzb = zzkoVar;
        zzgg.zzB(zzko.class, zzkoVar);
    }

    private zzko() {
    }

    public static zzko zzb() {
        return zzb;
    }

    static /* synthetic */ void zzc(zzko zzkoVar, boolean z) {
        zzkoVar.zzd |= 2;
        zzkoVar.zzg = z;
    }

    @Override // com.google.android.gms.internal.play_billing.zzgg
    protected final Object zzd(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzy(zzb, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u001b\u0002ဈ\u0000\u0003ဇ\u0001", new Object[]{"zzd", "zze", zzkm.class, "zzf", "zzg"});
        }
        if (i2 == 3) {
            return new zzko();
        }
        zzkn zzknVar = null;
        if (i2 == 4) {
            return new zzkj(zzknVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
