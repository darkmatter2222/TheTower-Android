package com.google.android.gms.internal.play_billing;

/* JADX INFO: compiled from: com.android.billingclient:billing@@9.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzlb extends zzgg implements zzhn {
    private static final zzlb zzb;
    private int zzd;
    private zzjp zze;
    private long zzf;

    static {
        zzlb zzlbVar = new zzlb();
        zzb = zzlbVar;
        zzgg.zzB(zzlb.class, zzlbVar);
    }

    private zzlb() {
    }

    public static zzkz zza() {
        return (zzkz) zzb.zzp();
    }

    static /* synthetic */ void zzc(zzlb zzlbVar, zzjp zzjpVar) {
        zzjpVar.getClass();
        zzlbVar.zze = zzjpVar;
        zzlbVar.zzd |= 1;
    }

    static /* synthetic */ void zze(zzlb zzlbVar, long j) {
        zzlbVar.zzd |= 2;
        zzlbVar.zzf = j;
    }

    @Override // com.google.android.gms.internal.play_billing.zzgg
    protected final Object zzd(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzy(zzb, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဂ\u0001", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new zzlb();
        }
        zzla zzlaVar = null;
        if (i2 == 4) {
            return new zzkz(zzlaVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
