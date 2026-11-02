package com.google.android.gms.internal.p002firebaseauthapi;

import java.util.Objects;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzyc extends zzalt<zzyc, zza> implements zzamx {
    private static final zzyc zzc;
    private static volatile zzani<zzyc> zzd;
    private int zze;
    private int zzf;
    private zzyf zzg;

    /* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
    public static final class zza extends zzalt.zza<zzyc, zza> implements zzamx {
        private zza() {
            super(zzyc.zzc);
        }

        public final zza zza(zzyf zzyfVar) {
            zzh();
            zzyc.zza((zzyc) this.zza, zzyfVar);
            return this;
        }
    }

    static {
        zzyc zzycVar = new zzyc();
        zzc = zzycVar;
        zzalt.zza((Class<zzyc>) zzyc.class, zzycVar);
    }

    private zzyc() {
    }

    public static zzyc zza(zzakb zzakbVar, zzalf zzalfVar) throws zzamd {
        return (zzyc) zzalt.zza(zzc, zzakbVar, zzalfVar);
    }

    static /* synthetic */ void zza(zzyc zzycVar, zzyf zzyfVar) {
        Objects.requireNonNull(zzyfVar);
        zzycVar.zzg = zzyfVar;
        zzycVar.zze |= 1;
    }

    public static zza zzb() {
        return (zza) zzc.zzm();
    }

    public static zzani<zzyc> zze() {
        return (zzani) zzc.zza(zzalt.zzf.zzg, (Object) null, (Object) null);
    }

    public final int zza() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzalt
    protected final Object zza(int i, Object obj, Object obj2) {
        zzani zzcVar;
        switch (zzyb.zza[i - 1]) {
            case 1:
                return new zzyc();
            case 2:
                return new zza();
            case 3:
                return zza(zzc, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000", new Object[]{"zze", "zzf", "zzg"});
            case 4:
                return zzc;
            case 5:
                zzani<zzyc> zzaniVar = zzd;
                if (zzaniVar != null) {
                    return zzaniVar;
                }
                synchronized (zzyc.class) {
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

    public final zzyf zzd() {
        zzyf zzyfVar = this.zzg;
        return zzyfVar == null ? zzyf.zzd() : zzyfVar;
    }
}
