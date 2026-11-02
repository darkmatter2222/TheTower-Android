package com.google.android.gms.internal.p002firebaseauthapi;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zztl extends zzalt<zztl, zza> implements zzamx {
    private static final zztl zzc;
    private static volatile zzani<zztl> zzd;
    private int zze;

    /* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
    public static final class zza extends zzalt.zza<zztl, zza> implements zzamx {
        private zza() {
            super(zztl.zzc);
        }

        public final zza zza(int i) {
            zzh();
            ((zztl) this.zza).zze = i;
            return this;
        }
    }

    static {
        zztl zztlVar = new zztl();
        zzc = zztlVar;
        zzalt.zza((Class<zztl>) zztl.class, zztlVar);
    }

    private zztl() {
    }

    public static zza zzb() {
        return (zza) zzc.zzm();
    }

    public static zztl zzd() {
        return zzc;
    }

    public final int zza() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzalt
    protected final Object zza(int i, Object obj, Object obj2) {
        zzani zzcVar;
        switch (zztk.zza[i - 1]) {
            case 1:
                return new zztl();
            case 2:
                return new zza();
            case 3:
                return zza(zzc, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{"zze"});
            case 4:
                return zzc;
            case 5:
                zzani<zztl> zzaniVar = zzd;
                if (zzaniVar != null) {
                    return zzaniVar;
                }
                synchronized (zztl.class) {
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
