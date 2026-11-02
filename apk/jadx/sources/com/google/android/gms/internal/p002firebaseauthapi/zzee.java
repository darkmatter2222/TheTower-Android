package com.google.android.gms.internal.p002firebaseauthapi;

import java.security.GeneralSecurityException;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzee extends zzdm {
    private final zzel zza;
    private final zzaav zzb;
    private final zzaau zzc;

    @Nullable
    private final Integer zzd;

    /* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
    public static class zza {

        @Nullable
        private zzel zza;

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

        public final zza zza(zzel zzelVar) {
            this.zza = zzelVar;
            return this;
        }

        public final zza zza(@Nullable Integer num) {
            this.zzc = num;
            return this;
        }

        public final zzee zza() throws GeneralSecurityException {
            zzaau zzaauVarZzb;
            zzel zzelVar = this.zza;
            if (zzelVar == null || this.zzb == null) {
                throw new GeneralSecurityException("Cannot build without parameters and/or key material");
            }
            if (zzelVar.zzc() != this.zzb.zza()) {
                throw new GeneralSecurityException("Key size mismatch");
            }
            if (this.zza.zza() && this.zzc == null) {
                throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
            }
            if (!this.zza.zza() && this.zzc != null) {
                throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
            }
            if (this.zza.zzf() == zzel.zzb.zzc) {
                zzaauVarZzb = zzpj.zza;
            } else if (this.zza.zzf() == zzel.zzb.zzb) {
                zzaauVarZzb = zzpj.zza(this.zzc.intValue());
            } else {
                if (this.zza.zzf() != zzel.zzb.zza) {
                    throw new IllegalStateException("Unknown AesGcmParameters.Variant: " + String.valueOf(this.zza.zzf()));
                }
                zzaauVarZzb = zzpj.zzb(this.zzc.intValue());
            }
            return new zzee(this.zza, this.zzb, zzaauVarZzb, this.zzc);
        }
    }

    private zzee(zzel zzelVar, zzaav zzaavVar, zzaau zzaauVar, @Nullable Integer num) {
        this.zza = zzelVar;
        this.zzb = zzaavVar;
        this.zzc = zzaauVar;
        this.zzd = num;
    }

    public static zza zze() {
        return new zza();
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzdm, com.google.android.gms.internal.p002firebaseauthapi.zzbt
    public final /* synthetic */ zzcs zza() {
        return (zzel) zza();
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzbt
    @Nullable
    public final Integer zzb() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzdm
    /* JADX INFO: renamed from: zzc */
    public final /* synthetic */ zzdo zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzdm
    public final zzaau zzd() {
        return this.zzc;
    }

    public final zzaav zzf() {
        return this.zzb;
    }
}
