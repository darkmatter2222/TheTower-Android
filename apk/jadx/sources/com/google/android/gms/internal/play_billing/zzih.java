package com.google.android.gms.internal.play_billing;

import java.util.Map;

/* JADX INFO: compiled from: com.android.billingclient:billing@@9.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzih extends zzgg implements zzhn {
    private static final zzih zzb;
    private zzhg zzd = zzhg.zza();

    static {
        zzih zzihVar = new zzih();
        zzb = zzihVar;
        zzgg.zzB(zzih.class, zzihVar);
    }

    private zzih() {
    }

    public static zzie zza() {
        return (zzie) zzb.zzp();
    }

    static /* synthetic */ Map zzc(zzih zzihVar) {
        if (!zzihVar.zzd.zze()) {
            zzihVar.zzd = zzihVar.zzd.zzb();
        }
        return zzihVar.zzd;
    }

    @Override // com.google.android.gms.internal.play_billing.zzgg
    protected final Object zzd(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new zzhv(zzb, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012", new Object[]{"zzd", zzif.zza});
        }
        if (i2 == 3) {
            return new zzih();
        }
        zzig zzigVar = null;
        if (i2 == 4) {
            return new zzie(zzigVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
