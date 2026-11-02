package com.google.android.gms.internal.play_billing;

/* JADX INFO: compiled from: com.android.billingclient:billing@@9.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzec extends zzgg implements zzhn {
    private static final zzec zzb;
    private int zzd;
    private zzem zze;
    private zzem zzf;
    private int zzg;

    static {
        zzec zzecVar = new zzec();
        zzb = zzecVar;
        zzgg.zzB(zzec.class, zzecVar);
    }

    private zzec() {
    }

    public static zzeb zza() {
        return (zzeb) zzb.zzp();
    }

    static /* synthetic */ void zzc(zzec zzecVar, zzem zzemVar) {
        zzemVar.getClass();
        zzecVar.zze = zzemVar;
        zzecVar.zzd |= 1;
    }

    static /* synthetic */ void zze(zzec zzecVar, zzem zzemVar) {
        zzemVar.getClass();
        zzecVar.zzf = zzemVar;
        zzecVar.zzd |= 2;
    }

    static /* synthetic */ void zzf(zzec zzecVar, int i) {
        zzecVar.zzg = i - 1;
        zzecVar.zzd |= 4;
    }

    @Override // com.google.android.gms.internal.play_billing.zzgg
    protected final Object zzd(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzy(zzb, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003᠌\u0002", new Object[]{"zzd", "zze", "zzf", "zzg", zzep.zza()});
        }
        if (i2 == 3) {
            return new zzec();
        }
        zzef zzefVar = null;
        if (i2 == 4) {
            return new zzeb(zzefVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
