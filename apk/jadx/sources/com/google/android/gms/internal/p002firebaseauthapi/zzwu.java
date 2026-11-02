package com.google.android.gms.internal.p002firebaseauthapi;

import java.util.Objects;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzwu extends zzalt<zzwu, zza> implements zzamx {
    private static final zzwu zzc;
    private static volatile zzani<zzwu> zzd;
    private int zze;
    private zzwx zzf;

    /* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
    public static final class zza extends zzalt.zza<zzwu, zza> implements zzamx {
        private zza() {
            super(zzwu.zzc);
        }

        public final zza zza(zzwx zzwxVar) {
            zzh();
            zzwu.zza((zzwu) this.zza, zzwxVar);
            return this;
        }
    }

    static {
        zzwu zzwuVar = new zzwu();
        zzc = zzwuVar;
        zzalt.zza((Class<zzwu>) zzwu.class, zzwuVar);
    }

    private zzwu() {
    }

    public static zza zza() {
        return (zza) zzc.zzm();
    }

    public static zzwu zza(zzakb zzakbVar, zzalf zzalfVar) throws zzamd {
        return (zzwu) zzalt.zza(zzc, zzakbVar, zzalfVar);
    }

    static /* synthetic */ void zza(zzwu zzwuVar, zzwx zzwxVar) {
        Objects.requireNonNull(zzwxVar);
        zzwuVar.zzf = zzwxVar;
        zzwuVar.zze |= 1;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzalt
    protected final Object zza(int i, Object obj, Object obj2) {
        zzani zzcVar;
        switch (zzwt.zza[i - 1]) {
            case 1:
                return new zzwu();
            case 2:
                return new zza();
            case 3:
                return zza(zzc, "\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဉ\u0000", new Object[]{"zze", "zzf"});
            case 4:
                return zzc;
            case 5:
                zzani<zzwu> zzaniVar = zzd;
                if (zzaniVar != null) {
                    return zzaniVar;
                }
                synchronized (zzwu.class) {
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

    public final zzwx zzc() {
        zzwx zzwxVar = this.zzf;
        return zzwxVar == null ? zzwx.zzf() : zzwxVar;
    }
}
