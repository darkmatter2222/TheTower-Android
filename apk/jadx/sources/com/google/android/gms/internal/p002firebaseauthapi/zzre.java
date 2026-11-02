package com.google.android.gms.internal.p002firebaseauthapi;

import java.security.GeneralSecurityException;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzre extends zzrp {
    private final zzrl zza;
    private final zzaav zzb;
    private final zzaau zzc;

    @Nullable
    private final Integer zzd;

    /* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
    public static class zza {

        @Nullable
        private zzrl zza;

        @Nullable
        private zzaav zzb;

        @Nullable
        private Integer zzc;

        private zza() {
            this.zza = null;
            this.zzb = null;
            this.zzc = null;
        }

        public final zza zza(zzaav zzaavVar) {
            this.zzb = zzaavVar;
            return this;
        }

        public final zza zza(zzrl zzrlVar) {
            this.zza = zzrlVar;
            return this;
        }

        public final zza zza(@Nullable Integer num) {
            this.zzc = num;
            return this;
        }

        public final zzre zza() throws GeneralSecurityException {
            zzaau zzaauVarZza;
            zzrl zzrlVar = this.zza;
            if (zzrlVar == null || this.zzb == null) {
                throw new GeneralSecurityException("Cannot build without parameters and/or key material");
            }
            if (zzrlVar.zzc() != this.zzb.zza()) {
                throw new GeneralSecurityException("Key size mismatch");
            }
            if (this.zza.zza() && this.zzc == null) {
                throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
            }
            if (!this.zza.zza() && this.zzc != null) {
                throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
            }
            if (this.zza.zzf() == zzrl.zzb.zzd) {
                zzaauVarZza = zzpj.zza;
            } else if (this.zza.zzf() == zzrl.zzb.zzc || this.zza.zzf() == zzrl.zzb.zzb) {
                zzaauVarZza = zzpj.zza(this.zzc.intValue());
            } else {
                if (this.zza.zzf() != zzrl.zzb.zza) {
                    throw new IllegalStateException("Unknown HmacParameters.Variant: " + String.valueOf(this.zza.zzf()));
                }
                zzaauVarZza = zzpj.zzb(this.zzc.intValue());
            }
            return new zzre(this.zza, this.zzb, zzaauVarZza, this.zzc);
        }
    }

    private zzre(zzrl zzrlVar, zzaav zzaavVar, zzaau zzaauVar, @Nullable Integer num) {
        this.zza = zzrlVar;
        this.zzb = zzaavVar;
        this.zzc = zzaauVar;
        this.zzd = num;
    }

    public static zza zzc() {
        return new zza();
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzrp, com.google.android.gms.internal.p002firebaseauthapi.zzbt
    public final /* synthetic */ zzcs zza() {
        return (zzrl) zza();
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
