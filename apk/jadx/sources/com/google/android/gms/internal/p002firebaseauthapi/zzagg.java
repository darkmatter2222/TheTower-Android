package com.google.android.gms.internal.p002firebaseauthapi;

import android.app.Activity;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.util.DefaultClock;
import com.google.firebase.auth.PhoneAuthProvider;
import com.unity3d.services.UnityAdsConstants;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzagg {
    private static final Map<String, zzagi> zza = new ArrayMap();

    public static PhoneAuthProvider.OnVerificationStateChangedCallbacks zza(String str, PhoneAuthProvider.OnVerificationStateChangedCallbacks onVerificationStateChangedCallbacks, zzafn zzafnVar) {
        zza(str, zzafnVar);
        return new zzagj(onVerificationStateChangedCallbacks, str);
    }

    public static void zza() {
        zza.clear();
    }

    private static void zza(String str, zzafn zzafnVar) {
        zza.put(str, new zzagi(zzafnVar, DefaultClock.getInstance().currentTimeMillis()));
    }

    public static boolean zza(String str, PhoneAuthProvider.OnVerificationStateChangedCallbacks onVerificationStateChangedCallbacks, Activity activity, Executor executor) {
        Map<String, zzagi> map = zza;
        if (!map.containsKey(str)) {
            zza(str, null);
            return false;
        }
        zzagi zzagiVar = map.get(str);
        if (DefaultClock.getInstance().currentTimeMillis() - zzagiVar.zzb >= UnityAdsConstants.Timeout.INIT_TIMEOUT_MS) {
            zza(str, null);
            return false;
        }
        if (zzagiVar.zza == null) {
            return true;
        }
        zzagiVar.zza.zza(onVerificationStateChangedCallbacks, activity, executor, str);
        return true;
    }
}
