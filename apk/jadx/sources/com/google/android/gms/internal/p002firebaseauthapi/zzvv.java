package com.google.android.gms.internal.p002firebaseauthapi;

import java.util.Objects;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzvv extends zzalt<zzvv, zza> implements zzamx {
    private static final zzvv zzc;
    private static volatile zzani<zzvv> zzd;
    private int zze;
    private int zzf;
    private zzvp zzg;
    private zzakb zzh = zzakb.zza;
    private zzakb zzi = zzakb.zza;

    /* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
    public static final class zza extends zzalt.zza<zzvv, zza> implements zzamx {
        private zza() {
            super(zzvv.zzc);
        }

        public final zza zza(int i) {
            zzh();
            ((zzvv) this.zza).zzf = 0;
            return this;
        }

        public final zza zza(zzakb zzakbVar) {
            zzh();
            zzvv.zza((zzvv) this.zza, zzakbVar);
            return this;
        }

        public final zza zza(zzvp zzvpVar) {
            zzh();
            zzvv.zza((zzvv) this.zza, zzvpVar);
            return this;
        }

        public final zza zzb(zzakb zzakbVar) {
            zzh();
            zzvv.zzb((zzvv) this.zza, zzakbVar);
            return this;
        }
    }

    static {
        zzvv zzvvVar = new zzvv();
        zzc = zzvvVar;
        zzalt.zza((Class<zzvv>) zzvv.class, zzvvVar);
    }

    private zzvv() {
    }

    public static zzvv zza(zzakb zzakbVar, zzalf zzalfVar) throws zzamd {
        return (zzvv) zzalt.zza(zzc, zzakbVar, zzalfVar);
    }

    static /* synthetic */ void zza(zzvv zzvvVar, zzakb zzakbVar) {
        Objects.requireNonNull(zzakbVar);
        zzvvVar.zzh = zzakbVar;
    }

    static /* synthetic */ void zza(zzvv zzvvVar, zzvp zzvpVar) {
        Objects.requireNonNull(zzvpVar);
        zzvvVar.zzg = zzvpVar;
        zzvvVar.zze |= 1;
    }

    static /* synthetic */ void zzb(zzvv zzvvVar, zzakb zzakbVar) {
        Objects.requireNonNull(zzakbVar);
        zzvvVar.zzi = zzakbVar;
    }

    public static zza zzc() {
        return (zza) zzc.zzm();
    }

    public static zzvv zze() {
        return zzc;
    }

    public static zzani<zzvv> zzh() {
        return (zzani) zzc.zza(zzalt.zzf.zzg, (Object) null, (Object) null);
    }

    public final zzakb b_() {
        return this.zzi;
    }

    public final int zza() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzalt
    protected final Object zza(int i, Object obj, Object obj2) {
        zzani zzcVar;
        switch (zzvx.zza[i - 1]) {
            case 1:
                return new zzvv();
            case 2:
                return new zza();
            case 3:
                return zza(zzc, "\u0000\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n\u0004\n", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi"});
            case 4:
                return zzc;
            case 5:
                zzani<zzvv> zzaniVar = zzd;
                if (zzaniVar != null) {
                    return zzaniVar;
                }
                synchronized (zzvv.class) {
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

    public final zzvp zzb() {
        zzvp zzvpVar = this.zzg;
        return zzvpVar == null ? zzvp.zze() : zzvpVar;
    }

    public final zzakb zzf() {
        return this.zzh;
    }
}
