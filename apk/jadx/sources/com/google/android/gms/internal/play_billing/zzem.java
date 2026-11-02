package com.google.android.gms.internal.play_billing;

/* JADX INFO: compiled from: com.android.billingclient:billing@@9.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzem extends zzgg implements zzhn {
    private static final zzem zzb;
    private int zzd;
    private String zze = "";

    static {
        zzem zzemVar = new zzem();
        zzb = zzemVar;
        zzgg.zzB(zzem.class, zzemVar);
    }

    private zzem() {
    }

    public static zzel zza() {
        return (zzel) zzb.zzp();
    }

    static /* synthetic */ void zzc(zzem zzemVar, String str) {
        zzemVar.zzd |= 1;
        zzemVar.zze = str;
    }

    @Override // com.google.android.gms.internal.play_billing.zzgg
    protected final Object zzd(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzy(zzb, "\u0004\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဈ\u0000", new Object[]{"zzd", "zze"});
        }
        if (i2 == 3) {
            return new zzem();
        }
        zzen zzenVar = null;
        if (i2 == 4) {
            return new zzel(zzenVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
