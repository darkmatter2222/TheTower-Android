package com.google.android.gms.internal.play_billing;

/* JADX INFO: compiled from: com.android.billingclient:billing@@9.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzli extends zzgg implements zzhn {
    private static final zzli zzb;
    private int zzd;
    private int zze;
    private boolean zzf;
    private long zzg;
    private boolean zzh;
    private int zzi;
    private int zzj;

    static {
        zzli zzliVar = new zzli();
        zzb = zzliVar;
        zzgg.zzB(zzli.class, zzliVar);
    }

    private zzli() {
    }

    public static zzlg zza() {
        return (zzlg) zzb.zzp();
    }

    static /* synthetic */ void zzc(zzli zzliVar, boolean z) {
        zzliVar.zzd |= 8;
        zzliVar.zzh = z;
    }

    static /* synthetic */ void zze(zzli zzliVar, int i) {
        zzliVar.zzd |= 16;
        zzliVar.zzi = i;
    }

    static /* synthetic */ void zzf(zzli zzliVar, long j) {
        zzliVar.zzd |= 4;
        zzliVar.zzg = j;
    }

    static /* synthetic */ void zzg(zzli zzliVar, int i) {
        zzliVar.zzd |= 32;
        zzliVar.zzj = i;
    }

    static /* synthetic */ void zzh(zzli zzliVar, boolean z) {
        zzliVar.zzd |= 2;
        zzliVar.zzf = true;
    }

    @Override // com.google.android.gms.internal.play_billing.zzgg
    protected final Object zzd(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzy(zzb, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001င\u0000\u0002ဇ\u0001\u0003ဂ\u0002\u0004ဇ\u0003\u0005င\u0004\u0006င\u0005", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj"});
        }
        if (i2 == 3) {
            return new zzli();
        }
        zzlh zzlhVar = null;
        if (i2 == 4) {
            return new zzlg(zzlhVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
