package com.google.android.gms.internal.p002firebaseauthapi;

import java.util.Objects;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzum extends zzalt<zzum, zza> implements zzamx {
    private static final zzum zzc;
    private static volatile zzani<zzum> zzd;
    private int zze;
    private zzakb zzf = zzakb.zza;

    /* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
    public static final class zza extends zzalt.zza<zzum, zza> implements zzamx {
        private zza() {
            super(zzum.zzc);
        }

        public final zza zza(zzakb zzakbVar) {
            zzh();
            zzum.zza((zzum) this.zza, zzakbVar);
            return this;
        }
    }

    static {
        zzum zzumVar = new zzum();
        zzc = zzumVar;
        zzalt.zza((Class<zzum>) zzum.class, zzumVar);
    }

    private zzum() {
    }

    public static zzum zza(zzakb zzakbVar, zzalf zzalfVar) throws zzamd {
        return (zzum) zzalt.zza(zzc, zzakbVar, zzalfVar);
    }

    static /* synthetic */ void zza(zzum zzumVar, zzakb zzakbVar) {
        Objects.requireNonNull(zzakbVar);
        zzumVar.zzf = zzakbVar;
    }

    public static zza zzb() {
        return (zza) zzc.zzm();
    }

    public static zzani<zzum> zze() {
        return (zzani) zzc.zza(zzalt.zzf.zzg, (Object) null, (Object) null);
    }

    public final int zza() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzalt
    protected final Object zza(int i, Object obj, Object obj2) {
        zzani zzcVar;
        switch (zzul.zza[i - 1]) {
            case 1:
                return new zzum();
            case 2:
                return new zza();
            case 3:
                return zza(zzc, "\u0000\u0002\u0000\u0000\u0001\u0003\u0002\u0000\u0000\u0000\u0001\u000b\u0003\n", new Object[]{"zze", "zzf"});
            case 4:
                return zzc;
            case 5:
                zzani<zzum> zzaniVar = zzd;
                if (zzaniVar != null) {
                    return zzaniVar;
                }
                synchronized (zzum.class) {
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

    public final zzakb zzd() {
        return this.zzf;
    }
}
