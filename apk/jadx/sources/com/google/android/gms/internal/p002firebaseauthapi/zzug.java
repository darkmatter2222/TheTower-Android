package com.google.android.gms.internal.p002firebaseauthapi;

import java.util.Objects;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzug extends zzalt<zzug, zza> implements zzamx {
    private static final zzug zzc;
    private static volatile zzani<zzug> zzd;
    private int zze;
    private zzuj zzf;
    private int zzg;

    /* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
    public static final class zza extends zzalt.zza<zzug, zza> implements zzamx {
        private zza() {
            super(zzug.zzc);
        }

        public final zza zza(int i) {
            zzh();
            ((zzug) this.zza).zzg = i;
            return this;
        }

        public final zza zza(zzuj zzujVar) {
            zzh();
            zzug.zza((zzug) this.zza, zzujVar);
            return this;
        }
    }

    static {
        zzug zzugVar = new zzug();
        zzc = zzugVar;
        zzalt.zza((Class<zzug>) zzug.class, zzugVar);
    }

    private zzug() {
    }

    public static zzug zza(zzakb zzakbVar, zzalf zzalfVar) throws zzamd {
        return (zzug) zzalt.zza(zzc, zzakbVar, zzalfVar);
    }

    static /* synthetic */ void zza(zzug zzugVar, zzuj zzujVar) {
        Objects.requireNonNull(zzujVar);
        zzugVar.zzf = zzujVar;
        zzugVar.zze |= 1;
    }

    public static zza zzb() {
        return (zza) zzc.zzm();
    }

    public final int zza() {
        return this.zzg;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzalt
    protected final Object zza(int i, Object obj, Object obj2) {
        zzani zzcVar;
        switch (zzuf.zza[i - 1]) {
            case 1:
                return new zzug();
            case 2:
                return new zza();
            case 3:
                return zza(zzc, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002\u000b", new Object[]{"zze", "zzf", "zzg"});
            case 4:
                return zzc;
            case 5:
                zzani<zzug> zzaniVar = zzd;
                if (zzaniVar != null) {
                    return zzaniVar;
                }
                synchronized (zzug.class) {
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

    public final zzuj zzd() {
        zzuj zzujVar = this.zzf;
        return zzujVar == null ? zzuj.zzd() : zzujVar;
    }
}
