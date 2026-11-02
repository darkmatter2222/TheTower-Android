package com.google.android.gms.internal.play_billing;

/* JADX INFO: compiled from: com.android.billingclient:billing@@9.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzjp extends zzgg implements zzhn {
    private static final zzjp zzb;
    private int zzd;
    private int zze;
    private int zzg;
    private int zzi;
    private int zzj;
    private String zzf = "";
    private String zzh = "";

    static {
        zzjp zzjpVar = new zzjp();
        zzb = zzjpVar;
        zzgg.zzB(zzjp.class, zzjpVar);
    }

    private zzjp() {
    }

    static /* synthetic */ void zzG(zzjp zzjpVar, int i) {
        zzjpVar.zzd |= 1;
        zzjpVar.zze = i;
    }

    public static zzjl zza() {
        return (zzjl) zzb.zzp();
    }

    static /* synthetic */ void zzc(zzjp zzjpVar, String str) {
        zzjpVar.zzd |= 8;
        zzjpVar.zzh = str;
    }

    static /* synthetic */ void zze(zzjp zzjpVar, String str) {
        str.getClass();
        zzjpVar.zzd |= 2;
        zzjpVar.zzf = str;
    }

    static /* synthetic */ void zzf(zzjp zzjpVar, int i) {
        zzjpVar.zzd |= 32;
        zzjpVar.zzj = i;
    }

    static /* synthetic */ void zzg(zzjp zzjpVar, int i) {
        zzjpVar.zzd |= 16;
        zzjpVar.zzi = i;
    }

    static /* synthetic */ void zzh(zzjp zzjpVar, zzjn zzjnVar) {
        zzjpVar.zzg = zzjnVar.zza();
        zzjpVar.zzd |= 4;
    }

    @Override // com.google.android.gms.internal.play_billing.zzgg
    protected final Object zzd(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzy(zzb, "\u0004\u0006\u0000\u0001\u0001\b\u0006\u0000\u0000\u0000\u0001င\u0000\u0002ဈ\u0001\u0004᠌\u0002\u0005ဈ\u0003\u0007င\u0004\bင\u0005", new Object[]{"zzd", "zze", "zzf", "zzg", zzjm.zza, "zzh", "zzi", "zzj"});
        }
        if (i2 == 3) {
            return new zzjp();
        }
        zzjo zzjoVar = null;
        if (i2 == 4) {
            return new zzjl(zzjoVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
