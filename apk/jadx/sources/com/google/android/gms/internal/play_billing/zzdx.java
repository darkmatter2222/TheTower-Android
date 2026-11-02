package com.google.android.gms.internal.play_billing;

/* JADX INFO: compiled from: com.android.billingclient:billing@@9.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdx extends zzgg implements zzhn {
    private static final zzdx zzb;
    private int zzd;
    private String zze = "";

    static {
        zzdx zzdxVar = new zzdx();
        zzb = zzdxVar;
        zzgg.zzB(zzdx.class, zzdxVar);
    }

    private zzdx() {
    }

    public static zzdx zzb(byte[] bArr) throws zzgs {
        return (zzdx) zzgg.zzt(zzb, bArr);
    }

    public final String zzc() {
        return this.zze;
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
            return new zzdx();
        }
        zzdw zzdwVar = null;
        if (i2 == 4) {
            return new zzdv(zzdwVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
