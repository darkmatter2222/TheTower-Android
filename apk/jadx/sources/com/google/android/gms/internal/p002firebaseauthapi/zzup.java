package com.google.android.gms.internal.p002firebaseauthapi;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzup extends zzalt<zzup, zza> implements zzamx {
    private static final zzup zzc;
    private static volatile zzani<zzup> zzd;
    private int zze;
    private int zzf;

    /* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
    public static final class zza extends zzalt.zza<zzup, zza> implements zzamx {
        private zza() {
            super(zzup.zzc);
        }

        public final zza zza(int i) {
            zzh();
            ((zzup) this.zza).zze = i;
            return this;
        }
    }

    static {
        zzup zzupVar = new zzup();
        zzc = zzupVar;
        zzalt.zza((Class<zzup>) zzup.class, zzupVar);
    }

    private zzup() {
    }

    public static zzup zza(zzakb zzakbVar, zzalf zzalfVar) throws zzamd {
        return (zzup) zzalt.zza(zzc, zzakbVar, zzalfVar);
    }

    public static zza zzc() {
        return (zza) zzc.zzm();
    }

    public final int zza() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzalt
    protected final Object zza(int i, Object obj, Object obj2) {
        zzani zzcVar;
        switch (zzuo.zza[i - 1]) {
            case 1:
                return new zzup();
            case 2:
                return new zza();
            case 3:
                return zza(zzc, "\u0000\u0002\u0000\u0000\u0002\u0003\u0002\u0000\u0000\u0000\u0002\u000b\u0003\u000b", new Object[]{"zze", "zzf"});
            case 4:
                return zzc;
            case 5:
                zzani<zzup> zzaniVar = zzd;
                if (zzaniVar != null) {
                    return zzaniVar;
                }
                synchronized (zzup.class) {
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

    public final int zzb() {
        return this.zzf;
    }
}
