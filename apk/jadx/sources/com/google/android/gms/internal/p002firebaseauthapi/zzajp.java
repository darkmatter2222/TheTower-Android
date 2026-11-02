package com.google.android.gms.internal.p002firebaseauthapi;

import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzajp implements zzaff {
    private String zza;
    private String zzb;
    private String zzc;
    private String zzd;
    private String zze;
    private boolean zzf;
    private String zzg;

    private zzajp() {
    }

    public static zzajp zza(String str, String str2, boolean z) {
        zzajp zzajpVar = new zzajp();
        zzajpVar.zzb = Preconditions.checkNotEmpty(str);
        zzajpVar.zzc = Preconditions.checkNotEmpty(str2);
        zzajpVar.zzf = z;
        return zzajpVar;
    }

    public static zzajp zzb(String str, String str2, boolean z) {
        zzajp zzajpVar = new zzajp();
        zzajpVar.zza = Preconditions.checkNotEmpty(str);
        zzajpVar.zzd = Preconditions.checkNotEmpty(str2);
        zzajpVar.zzf = z;
        return zzajpVar;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzaff
    public final String zza() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (TextUtils.isEmpty(this.zzd)) {
            jSONObject.put("sessionInfo", this.zzb);
            jSONObject.put("code", this.zzc);
        } else {
            jSONObject.put("phoneNumber", this.zza);
            jSONObject.put("temporaryProof", this.zzd);
        }
        String str = this.zze;
        if (str != null) {
            jSONObject.put("idToken", str);
        }
        if (!this.zzf) {
            jSONObject.put("operation", 2);
        }
        String str2 = this.zzg;
        if (str2 != null) {
            jSONObject.put("tenantId", str2);
        }
        return jSONObject.toString();
    }

    public final void zza(String str) {
        this.zze = str;
    }

    public final void zzb(String str) {
        this.zzg = str;
    }
}
