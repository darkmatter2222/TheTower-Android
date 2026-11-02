package com.google.android.gms.internal.p002firebaseauthapi;

import java.util.Objects;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzvs extends zzalt<zzvs, zza> implements zzamx {
    private static final zzvs zzc;
    private static volatile zzani<zzvs> zzd;
    private int zze;
    private int zzf;
    private zzvv zzg;
    private zzakb zzh = zzakb.zza;

    /* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
    public static final class zza extends zzalt.zza<zzvs, zza> implements zzamx {
        private zza() {
            super(zzvs.zzc);
        }

        public final zza zza(int i) {
            zzh();
            ((zzvs) this.zza).zzf = 0;
            return this;
        }

        public final zza zza(zzakb zzakbVar) {
            zzh();
            zzvs.zza((zzvs) this.zza, zzakbVar);
            return this;
        }

        public final zza zza(zzvv zzvvVar) {
            zzh();
            zzvs.zza((zzvs) this.zza, zzvvVar);
            return this;
        }
    }

    static {
        zzvs zzvsVar = new zzvs();
        zzc = zzvsVar;
        zzalt.zza((Class<zzvs>) zzvs.class, zzvsVar);
    }

    private zzvs() {
    }

    public static zzvs zza(zzakb zzakbVar, zzalf zzalfVar) throws zzamd {
        return (zzvs) zzalt.zza(zzc, zzakbVar, zzalfVar);
    }

    static /* synthetic */ void zza(zzvs zzvsVar, zzakb zzakbVar) {
        Objects.requireNonNull(zzakbVar);
        zzvsVar.zzh = zzakbVar;
    }

    static /* synthetic */ void zza(zzvs zzvsVar, zzvv zzvvVar) {
        Objects.requireNonNull(zzvvVar);
        zzvsVar.zzg = zzvvVar;
        zzvsVar.zze |= 1;
    }

    public static zza zzb() {
        return (zza) zzc.zzm();
    }

    public static zzani<zzvs> zzf() {
        return (zzani) zzc.zza(zzalt.zzf.zzg, (Object) null, (Object) null);
    }

    public final int zza() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzalt
    protected final Object zza(int i, Object obj, Object obj2) {
        zzani zzcVar;
        switch (zzvu.zza[i - 1]) {
            case 1:
                return new zzvs();
            case 2:
                return new zza();
            case 3:
                return zza(zzc, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n", new Object[]{"zze", "zzf", "zzg", "zzh"});
            case 4:
                return zzc;
            case 5:
                zzani<zzvs> zzaniVar = zzd;
                if (zzaniVar != null) {
                    return zzaniVar;
                }
                synchronized (zzvs.class) {
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

    public final zzvv zzd() {
        zzvv zzvvVar = this.zzg;
        return zzvvVar == null ? zzvv.zze() : zzvvVar;
    }

    public final zzakb zze() {
        return this.zzh;
    }
}
