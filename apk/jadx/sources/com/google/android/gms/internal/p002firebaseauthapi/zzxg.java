package com.google.android.gms.internal.p002firebaseauthapi;

import java.util.Objects;
import p005kotlin.text.Typography;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzxg extends zzalt<zzxg, zzb> implements zzamx {
    private static final zzxg zzc;
    private static volatile zzani<zzxg> zzd;
    private String zze = "";
    private zzakb zzf = zzakb.zza;
    private int zzg;

    /* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
    public enum zza implements zzalv {
        UNKNOWN_KEYMATERIAL(0),
        SYMMETRIC(1),
        ASYMMETRIC_PRIVATE(2),
        ASYMMETRIC_PUBLIC(3),
        REMOTE(4),
        UNRECOGNIZED(-1);

        private final int zzh;

        zza(int i) {
            this.zzh = i;
        }

        public static zza zza(int i) {
            if (i == 0) {
                return UNKNOWN_KEYMATERIAL;
            }
            if (i == 1) {
                return SYMMETRIC;
            }
            if (i == 2) {
                return ASYMMETRIC_PRIVATE;
            }
            if (i == 3) {
                return ASYMMETRIC_PUBLIC;
            }
            if (i != 4) {
                return null;
            }
            return REMOTE;
        }

        @Override // java.lang.Enum
        public final String toString() {
            StringBuilder sb = new StringBuilder("<");
            sb.append(getClass().getName()).append('@').append(Integer.toHexString(System.identityHashCode(this)));
            if (this != UNRECOGNIZED) {
                sb.append(" number=").append(zza());
            }
            return sb.append(" name=").append(name()).append(Typography.greater).toString();
        }

        @Override // com.google.android.gms.internal.p002firebaseauthapi.zzalv
        public final int zza() {
            return this == UNRECOGNIZED ? zzalw.zza() : this.zzh;
        }
    }

    /* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
    public static final class zzb extends zzalt.zza<zzxg, zzb> implements zzamx {
        private zzb() {
            super(zzxg.zzc);
        }

        public final zzb zza(zzakb zzakbVar) {
            zzh();
            zzxg.zza((zzxg) this.zza, zzakbVar);
            return this;
        }

        public final zzb zza(zza zzaVar) {
            zzh();
            zzxg.zza((zzxg) this.zza, zzaVar);
            return this;
        }

        public final zzb zza(String str) {
            zzh();
            zzxg.zza((zzxg) this.zza, str);
            return this;
        }
    }

    static {
        zzxg zzxgVar = new zzxg();
        zzc = zzxgVar;
        zzalt.zza((Class<zzxg>) zzxg.class, zzxgVar);
    }

    private zzxg() {
    }

    public static zzb zza() {
        return (zzb) zzc.zzm();
    }

    static /* synthetic */ void zza(zzxg zzxgVar, zzakb zzakbVar) {
        Objects.requireNonNull(zzakbVar);
        zzxgVar.zzf = zzakbVar;
    }

    static /* synthetic */ void zza(zzxg zzxgVar, zza zzaVar) {
        zzxgVar.zzg = zzaVar.zza();
    }

    static /* synthetic */ void zza(zzxg zzxgVar, String str) {
        Objects.requireNonNull(str);
        zzxgVar.zze = str;
    }

    public static zzxg zzd() {
        return zzc;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzalt
    protected final Object zza(int i, Object obj, Object obj2) {
        zzani zzcVar;
        switch (zzxf.zza[i - 1]) {
            case 1:
                return new zzxg();
            case 2:
                return new zzb();
            case 3:
                return zza(zzc, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zze", "zzf", "zzg"});
            case 4:
                return zzc;
            case 5:
                zzani<zzxg> zzaniVar = zzd;
                if (zzaniVar != null) {
                    return zzaniVar;
                }
                synchronized (zzxg.class) {
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

    public final zza zzb() {
        zza zzaVarZza = zza.zza(this.zzg);
        return zzaVarZza == null ? zza.UNRECOGNIZED : zzaVarZza;
    }

    public final zzakb zze() {
        return this.zzf;
    }

    public final String zzf() {
        return this.zze;
    }
}
