package com.google.android.gms.internal.p002firebaseauthapi;

import java.util.Objects;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzxt extends zzalt<zzxt, zzb> implements zzamx {
    private static final zzxt zzc;
    private static volatile zzani<zzxt> zzd;
    private int zze;
    private zzalx<zza> zzf = zzp();

    /* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
    public static final class zza extends zzalt<zza, C0032zza> implements zzamx {
        private static final zza zzc;
        private static volatile zzani<zza> zzd;
        private String zze = "";
        private int zzf;
        private int zzg;
        private int zzh;

        /* JADX INFO: renamed from: com.google.android.gms.internal.firebase-auth-api.zzxt$zza$zza, reason: collision with other inner class name */
        /* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
        public static final class C0032zza extends zzalt.zza<zza, C0032zza> implements zzamx {
            private C0032zza() {
                super(zza.zzc);
            }

            public final C0032zza zza(int i) {
                zzh();
                ((zza) this.zza).zzg = i;
                return this;
            }

            public final C0032zza zza(zzxh zzxhVar) {
                zzh();
                zza.zza((zza) this.zza, zzxhVar);
                return this;
            }

            public final C0032zza zza(zzyi zzyiVar) {
                zzh();
                zza.zza((zza) this.zza, zzyiVar);
                return this;
            }

            public final C0032zza zza(String str) {
                zzh();
                zza.zza((zza) this.zza, str);
                return this;
            }
        }

        static {
            zza zzaVar = new zza();
            zzc = zzaVar;
            zzalt.zza((Class<zza>) zza.class, zzaVar);
        }

        private zza() {
        }

        public static C0032zza zza() {
            return (C0032zza) zzc.zzm();
        }

        static /* synthetic */ void zza(zza zzaVar, zzxh zzxhVar) {
            zzaVar.zzf = zzxhVar.zza();
        }

        static /* synthetic */ void zza(zza zzaVar, zzyi zzyiVar) {
            zzaVar.zzh = zzyiVar.zza();
        }

        static /* synthetic */ void zza(zza zzaVar, String str) {
            Objects.requireNonNull(str);
            zzaVar.zze = str;
        }

        @Override // com.google.android.gms.internal.p002firebaseauthapi.zzalt
        protected final Object zza(int i, Object obj, Object obj2) {
            zzani zzcVar;
            switch (zzxs.zza[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C0032zza();
                case 3:
                    return zza(zzc, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001Ȉ\u0002\f\u0003\u000b\u0004\f", new Object[]{"zze", "zzf", "zzg", "zzh"});
                case 4:
                    return zzc;
                case 5:
                    zzani<zza> zzaniVar = zzd;
                    if (zzaniVar != null) {
                        return zzaniVar;
                    }
                    synchronized (zza.class) {
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

    /* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
    public static final class zzb extends zzalt.zza<zzxt, zzb> implements zzamx {
        private zzb() {
            super(zzxt.zzc);
        }

        public final zzb zza(int i) {
            zzh();
            ((zzxt) this.zza).zze = i;
            return this;
        }

        public final zzb zza(zza zzaVar) {
            zzh();
            zzxt.zza((zzxt) this.zza, zzaVar);
            return this;
        }
    }

    static {
        zzxt zzxtVar = new zzxt();
        zzc = zzxtVar;
        zzalt.zza((Class<zzxt>) zzxt.class, zzxtVar);
    }

    private zzxt() {
    }

    public static zzb zza() {
        return (zzb) zzc.zzm();
    }

    static /* synthetic */ void zza(zzxt zzxtVar, zza zzaVar) {
        Objects.requireNonNull(zzaVar);
        zzalx<zza> zzalxVar = zzxtVar.zzf;
        if (!zzalxVar.zzc()) {
            zzxtVar.zzf = zzalt.zza(zzalxVar);
        }
        zzxtVar.zzf.add(zzaVar);
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzalt
    protected final Object zza(int i, Object obj, Object obj2) {
        zzani zzcVar;
        switch (zzxs.zza[i - 1]) {
            case 1:
                return new zzxt();
            case 2:
                return new zzb();
            case 3:
                return zza(zzc, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{"zze", "zzf", zza.class});
            case 4:
                return zzc;
            case 5:
                zzani<zzxt> zzaniVar = zzd;
                if (zzaniVar != null) {
                    return zzaniVar;
                }
                synchronized (zzxt.class) {
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
