package com.google.android.gms.internal.p002firebaseauthapi;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzua extends zzalt<zzua, zza> implements zzamx {
    private static final zzua zzc;
    private static volatile zzani<zzua> zzd;
    private int zze;

    /* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
    public static final class zza extends zzalt.zza<zzua, zza> implements zzamx {
        private zza() {
            super(zzua.zzc);
        }

        public final zza zza(int i) {
            zzh();
            ((zzua) this.zza).zze = i;
            return this;
        }
    }

    static {
        zzua zzuaVar = new zzua();
        zzc = zzuaVar;
        zzalt.zza((Class<zzua>) zzua.class, zzuaVar);
    }

    private zzua() {
    }

    public static zza zzb() {
        return (zza) zzc.zzm();
    }

    public static zzua zzd() {
        return zzc;
    }

    public final int zza() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzalt
    protected final Object zza(int i, Object obj, Object obj2) {
        zzani zzcVar;
        switch (zztz.zza[i - 1]) {
            case 1:
                return new zzua();
            case 2:
                return new zza();
            case 3:
                return zza(zzc, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{"zze"});
            case 4:
                return zzc;
            case 5:
                zzani<zzua> zzaniVar = zzd;
                if (zzaniVar != null) {
                    return zzaniVar;
                }
                synchronized (zzua.class) {
                    zzcVar = zzd;
                    if (zzcVar == null) {
                        zzcVar = new zzalt.zzc(zzc);
                        zzd = zzcVar;
                    }
                    break;
                }
                return zzcVar;
            case 6:
                return (byte) 1;
            default:
                throw null;
        }
    }
}
