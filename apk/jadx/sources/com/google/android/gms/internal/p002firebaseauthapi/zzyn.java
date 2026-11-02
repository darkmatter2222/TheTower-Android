package com.google.android.gms.internal.p002firebaseauthapi;

import java.util.Objects;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzyn extends zzalt<zzyn, zza> implements zzamx {
    private static final zzyn zzc;
    private static volatile zzani<zzyn> zzd;
    private int zze;
    private int zzf;
    private zzyq zzg;

    /* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
    public static final class zza extends zzalt.zza<zzyn, zza> implements zzamx {
        private zza() {
            super(zzyn.zzc);
        }

        public final zza zza(zzyq zzyqVar) {
            zzh();
            zzyn.zza((zzyn) this.zza, zzyqVar);
            return this;
        }
    }

    static {
        zzyn zzynVar = new zzyn();
        zzc = zzynVar;
        zzalt.zza((Class<zzyn>) zzyn.class, zzynVar);
    }

    private zzyn() {
    }

    public static zzyn zza(zzakb zzakbVar, zzalf zzalfVar) throws zzamd {
        return (zzyn) zzalt.zza(zzc, zzakbVar, zzalfVar);
    }

    static /* synthetic */ void zza(zzyn zzynVar, zzyq zzyqVar) {
        Objects.requireNonNull(zzyqVar);
        zzynVar.zzg = zzyqVar;
        zzynVar.zze |= 1;
    }

    public static zza zzb() {
        return (zza) zzc.zzm();
    }

    public final int zza() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzalt
    protected final Object zza(int i, Object obj, Object obj2) {
        zzani zzcVar;
        switch (zzyp.zza[i - 1]) {
            case 1:
                return new zzyn();
            case 2:
                return new zza();
            case 3:
                return zza(zzc, "\u0000\u0002\u0000\u0001\u0001\u0003\u0002\u0000\u0000\u0000\u0001\u000b\u0003ဉ\u0000", new Object[]{"zze", "zzf", "zzg"});
            case 4:
                return zzc;
            case 5:
                zzani<zzyn> zzaniVar = zzd;
                if (zzaniVar != null) {
                    return zzaniVar;
                }
                synchronized (zzyn.class) {
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

    public final zzyq zzd() {
        zzyq zzyqVar = this.zzg;
        return zzyqVar == null ? zzyq.zzd() : zzyqVar;
    }
}
