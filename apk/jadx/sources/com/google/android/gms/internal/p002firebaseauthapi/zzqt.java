package com.google.android.gms.internal.p002firebaseauthapi;

import java.security.GeneralSecurityException;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzqt extends zzrp {
    private final zzra zza;
    private final zzaav zzb;
    private final zzaau zzc;

    @Nullable
    private final Integer zzd;

    /* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
    public static class zza {

        @Nullable
        private zzra zza;

        @Nullable
        private zzaav zzb;

        @Nullable
        private Integer zzc;

        private zza() {
            this.zza = null;
            this.zzb = null;
            this.zzc = null;
        }

        public final zza zza(zzaav zzaavVar) throws GeneralSecurityException {
            this.zzb = zzaavVar;
            return this;
        }

        public final zza zza(zzra zzraVar) {
            this.zza = zzraVar;
            return this;
        }

        public final zza zza(@Nullable Integer num) {
            this.zzc = num;
            return this;
        }

        public final zzqt zza() throws GeneralSecurityException {
            zzaau zzaauVarZza;
            zzra zzraVar = this.zza;
            if (zzraVar == null || this.zzb == null) {
                throw new GeneralSecurityException("Cannot build without parameters and/or key material");
            }
            if (zzraVar.zzc() != this.zzb.zza()) {
                throw new GeneralSecurityException("Key size mismatch");
            }
            if (this.zza.zza() && this.zzc == null) {
                throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
            }
            if (!this.zza.zza() && this.zzc != null) {
                throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
            }
            if (this.zza.zze() == zzra.zzb.zzd) {
                zzaauVarZza = zzpj.zza;
            } else if (this.zza.zze() == zzra.zzb.zzc || this.zza.zze() == zzra.zzb.zzb) {
                zzaauVarZza = zzpj.zza(this.zzc.intValue());
            } else {
                if (this.zza.zze() != zzra.zzb.zza) {
                    throw new IllegalStateException("Unknown AesCmacParametersParameters.Variant: " + String.valueOf(this.zza.zze()));
                }
                zzaauVarZza = zzpj.zzb(this.zzc.intValue());
            }
            return new zzqt(this.zza, this.zzb, zzaauVarZza, this.zzc);
        }
    }

    private zzqt(zzra zzraVar, zzaav zzaavVar, zzaau zzaauVar, @Nullable Integer num) {
        this.zza = zzraVar;
        this.zzb = zzaavVar;
        this.zzc = zzaauVar;
        this.zzd = num;
    }

    public static zza zzc() {
        return new zza();
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzrp, com.google.android.gms.internal.p002firebaseauthapi.zzbt
    public final /* synthetic */ zzcs zza() {
        return (zzra) zza();
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzbt
    @Nullable
    public final Integer zzb() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzrp
    /* JADX INFO: renamed from: zzd */
    public final /* synthetic */ zzro zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzrp
    public final zzaau zze() {
        return this.zzc;
    }

    public final zzaav zzf() {
        return this.zzb;
    }
}
