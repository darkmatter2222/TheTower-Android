package com.google.android.gms.internal.p002firebaseauthapi;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzanv extends zzalt<zzanv, zza> implements zzamx {
    private static final zzanv zzc;
    private static volatile zzani<zzanv> zzd;
    private long zze;
    private int zzf;

    /* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
    public static final class zza extends zzalt.zza<zzanv, zza> implements zzamx {
        private zza() {
            super(zzanv.zzc);
        }

        public final zza zza(int i) {
            if (!this.zza.zzu()) {
                zzi();
            }
            ((zzanv) this.zza).zzf = i;
            return this;
        }

        public final zza zza(long j) {
            if (!this.zza.zzu()) {
                zzi();
            }
            ((zzanv) this.zza).zze = j;
            return this;
        }
    }

    static {
        zzanv zzanvVar = new zzanv();
        zzc = zzanvVar;
        zzalt.zza((Class<zzanv>) zzanv.class, zzanvVar);
    }

    private zzanv() {
    }

    public static zza zzc() {
        return (zza) zzc.zzm();
    }

    public final int zza() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzalt
    protected final Object zza(int i, Object obj, Object obj2) {
        zzani zzcVar;
        switch (zzanx.zza[i - 1]) {
            case 1:
                return new zzanv();
            case 2:
                return new zza();
            case 3:
                return zza(zzc, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0002\u0002\u0004", new Object[]{"zze", "zzf"});
            case 4:
                return zzc;
            case 5:
                zzani<zzanv> zzaniVar = zzd;
                if (zzaniVar != null) {
                    return zzaniVar;
                }
                synchronized (zzanv.class) {
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

    public final long zzb() {
        return this.zze;
    }
}
