package com.google.android.gms.internal.p002firebaseauthapi;

import android.util.Log;
import com.google.crypto.tink.jwt.internal.JwtNames;
import java.io.UnsupportedEncodingException;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaif {
    private Long zza;
    private Long zzb;

    public static zzaif zza(String str) throws UnsupportedEncodingException {
        try {
            zzaif zzaifVar = new zzaif();
            JSONObject jSONObject = new JSONObject(str);
            jSONObject.optString(JwtNames.CLAIM_ISSUER);
            jSONObject.optString(JwtNames.CLAIM_AUDIENCE);
            jSONObject.optString(JwtNames.CLAIM_SUBJECT);
            zzaifVar.zza = Long.valueOf(jSONObject.optLong(JwtNames.CLAIM_ISSUED_AT));
            zzaifVar.zzb = Long.valueOf(jSONObject.optLong(JwtNames.CLAIM_EXPIRATION));
            jSONObject.optBoolean("is_anonymous");
            return zzaifVar;
        } catch (JSONException e) {
            if (Log.isLoggable("JwtToken", 3)) {
                Log.d("JwtToken", "Failed to read JwtToken from JSONObject. " + String.valueOf(e));
            }
            throw new UnsupportedEncodingException("Failed to read JwtToken from JSONObject. " + String.valueOf(e));
        }
    }

    public final Long zza() {
        return this.zzb;
    }

    public final Long zzb() {
        return this.zza;
    }
}
