package com.google.android.gms.internal.p002firebaseauthapi;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzvb extends zzalt<zzvb, zza> implements zzamx {
    private static final zzvb zzc;
    private static volatile zzani<zzvb> zzd;
    private int zze;
    private int zzf;

    /* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
    public static final class zza extends zzalt.zza<zzvb, zza> implements zzamx {
        private zza() {
            super(zzvb.zzc);
        }

        public final zza zza(int i) {
            zzh();
            ((zzvb) this.zza).zze = i;
            return this;
        }
    }

    static {
        zzvb zzvbVar = new zzvb();
        zzc = zzvbVar;
        zzalt.zza((Class<zzvb>) zzvb.class, zzvbVar);
    }

    private zzvb() {
    }

    public static zzvb zza(zzakb zzakbVar, zzalf zzalfVar) throws zzamd {
        return (zzvb) zzalt.zza(zzc, zzakbVar, zzalfVar);
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
        switch (zzva.zza[i - 1]) {
            case 1:
                return new zzvb();
            case 2:
                return new zza();
            case 3:
                return zza(zzc, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\u000b", new Object[]{"zze", "zzf"});
            case 4:
                return zzc;
            case 5:
                zzani<zzvb> zzaniVar = zzd;
                if (zzaniVar != null) {
                    return zzaniVar;
                }
                synchronized (zzvb.class) {
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
