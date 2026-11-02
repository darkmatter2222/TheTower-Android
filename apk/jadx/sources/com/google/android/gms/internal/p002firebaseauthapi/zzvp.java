package com.google.android.gms.internal.p002firebaseauthapi;

import java.util.Objects;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzvp extends zzalt<zzvp, zza> implements zzamx {
    private static final zzvp zzc;
    private static volatile zzani<zzvp> zzd;
    private int zze;
    private zzvy zzf;
    private zzvj zzg;
    private int zzh;

    /* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
    public static final class zza extends zzalt.zza<zzvp, zza> implements zzamx {
        private zza() {
            super(zzvp.zzc);
        }

        public final zza zza(zzvj zzvjVar) {
            zzh();
            zzvp.zza((zzvp) this.zza, zzvjVar);
            return this;
        }

        public final zza zza(zzvk zzvkVar) {
            zzh();
            zzvp.zza((zzvp) this.zza, zzvkVar);
            return this;
        }

        public final zza zza(zzvy zzvyVar) {
            zzh();
            zzvp.zza((zzvp) this.zza, zzvyVar);
            return this;
        }
    }

    static {
        zzvp zzvpVar = new zzvp();
        zzc = zzvpVar;
        zzalt.zza((Class<zzvp>) zzvp.class, zzvpVar);
    }

    private zzvp() {
    }

    static /* synthetic */ void zza(zzvp zzvpVar, zzvj zzvjVar) {
        Objects.requireNonNull(zzvjVar);
        zzvpVar.zzg = zzvjVar;
        zzvpVar.zze |= 2;
    }

    static /* synthetic */ void zza(zzvp zzvpVar, zzvk zzvkVar) {
        zzvpVar.zzh = zzvkVar.zza();
    }

    static /* synthetic */ void zza(zzvp zzvpVar, zzvy zzvyVar) {
        Objects.requireNonNull(zzvyVar);
        zzvpVar.zzf = zzvyVar;
        zzvpVar.zze |= 1;
    }

    public static zza zzc() {
        return (zza) zzc.zzm();
    }

    public static zzvp zze() {
        return zzc;
    }

    public final zzvk zza() {
        zzvk zzvkVarZza = zzvk.zza(this.zzh);
        return zzvkVarZza == null ? zzvk.UNRECOGNIZED : zzvkVarZza;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzalt
    protected final Object zza(int i, Object obj, Object obj2) {
        zzani zzcVar;
        switch (zzvr.zza[i - 1]) {
            case 1:
                return new zzvp();
            case 2:
                return new zza();
            case 3:
                return zza(zzc, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003\f", new Object[]{"zze", "zzf", "zzg", "zzh"});
            case 4:
                return zzc;
            case 5:
                zzani<zzvp> zzaniVar = zzd;
                if (zzaniVar != null) {
                    return zzaniVar;
                }
                synchronized (zzvp.class) {
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

    public final zzvj zzb() {
        zzvj zzvjVar = this.zzg;
        return zzvjVar == null ? zzvj.zzc() : zzvjVar;
    }

    public final zzvy zzf() {
        zzvy zzvyVar = this.zzf;
        return zzvyVar == null ? zzvy.zzc() : zzvyVar;
    }
}
