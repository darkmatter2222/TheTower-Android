package com.google.firebase.auth.internal;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.internal.p002firebaseauthapi.zzaew;
import com.google.android.gms.internal.p002firebaseauthapi.zzajg;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbm {
    private static long zza = 3600000;
    private static final com.google.android.gms.internal.p002firebaseauthapi.zzah<String> zzb = com.google.android.gms.internal.p002firebaseauthapi.zzah.zza("firebaseAppName", "firebaseUserUid", "operation", "tenantId", "verifyAssertionRequest", "statusCode", "statusMessage", "timestamp");
    private static final zzbm zzc = new zzbm();
    private Task<AuthResult> zzd;
    private Task<String> zze;
    private long zzf = 0;

    private zzbm() {
    }

    public static void zza(Context context, Status status) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("com.google.firebase.auth.internal.ProcessDeathHelper", 0).edit();
        editorEdit.putInt("statusCode", status.getStatusCode());
        editorEdit.putString("statusMessage", status.getStatusMessage());
        editorEdit.putLong("timestamp", DefaultClock.getInstance().currentTimeMillis());
        editorEdit.commit();
    }

    public static void zza(Context context, zzajg zzajgVar, String str, String str2) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("com.google.firebase.auth.internal.ProcessDeathHelper", 0).edit();
        editorEdit.putString("verifyAssertionRequest", SafeParcelableSerializer.serializeToString(zzajgVar));
        editorEdit.putString("operation", str);
        editorEdit.putString("tenantId", str2);
        editorEdit.putLong("timestamp", DefaultClock.getInstance().currentTimeMillis());
        editorEdit.commit();
    }

    public static void zza(Context context, FirebaseAuth firebaseAuth) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(firebaseAuth);
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("com.google.firebase.auth.internal.ProcessDeathHelper", 0).edit();
        editorEdit.putString("firebaseAppName", firebaseAuth.getApp().getName());
        editorEdit.commit();
    }

    public static void zza(Context context, FirebaseAuth firebaseAuth, FirebaseUser firebaseUser) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(firebaseAuth);
        Preconditions.checkNotNull(firebaseUser);
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("com.google.firebase.auth.internal.ProcessDeathHelper", 0).edit();
        editorEdit.putString("firebaseAppName", firebaseAuth.getApp().getName());
        editorEdit.putString("firebaseUserUid", firebaseUser.getUid());
        editorEdit.commit();
    }

    public static void zza(Context context, String str, String str2) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("com.google.firebase.auth.internal.ProcessDeathHelper", 0).edit();
        editorEdit.putString("recaptchaToken", str);
        editorEdit.putString("operation", str2);
        editorEdit.putLong("timestamp", DefaultClock.getInstance().currentTimeMillis());
        editorEdit.commit();
    }

    private static void zza(SharedPreferences sharedPreferences) {
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        com.google.android.gms.internal.p002firebaseauthapi.zzah<String> zzahVar = zzb;
        int size = zzahVar.size();
        int i = 0;
        while (i < size) {
            String str = zzahVar.get(i);
            i++;
            editorEdit.remove(str);
        }
        editorEdit.commit();
    }

    public static zzbm zzc() {
        return zzc;
    }

    public final Task<AuthResult> zza() {
        if (DefaultClock.getInstance().currentTimeMillis() - this.zzf < zza) {
            return this.zzd;
        }
        return null;
    }

    public final void zza(Context context) {
        Preconditions.checkNotNull(context);
        zza(context.getSharedPreferences("com.google.firebase.auth.internal.ProcessDeathHelper", 0));
        this.zzd = null;
        this.zzf = 0L;
    }

    public final void zza(FirebaseAuth firebaseAuth) {
        Preconditions.checkNotNull(firebaseAuth);
        byte b = 0;
        SharedPreferences sharedPreferences = firebaseAuth.getApp().getApplicationContext().getSharedPreferences("com.google.firebase.auth.internal.ProcessDeathHelper", 0);
        if (firebaseAuth.getApp().getName().equals(sharedPreferences.getString("firebaseAppName", ""))) {
            if (!sharedPreferences.contains("verifyAssertionRequest")) {
                if (sharedPreferences.contains("recaptchaToken")) {
                    String string = sharedPreferences.getString("recaptchaToken", "");
                    String string2 = sharedPreferences.getString("operation", "");
                    this.zzf = sharedPreferences.getLong("timestamp", 0L);
                    string2.hashCode();
                    this.zze = string2.equals("com.google.firebase.auth.internal.ACTION_SHOW_RECAPTCHA") ? Tasks.forResult(string) : null;
                    zza(sharedPreferences);
                    return;
                }
                if (sharedPreferences.contains("statusCode")) {
                    Status status = new Status(sharedPreferences.getInt("statusCode", 17062), sharedPreferences.getString("statusMessage", ""));
                    this.zzf = sharedPreferences.getLong("timestamp", 0L);
                    zza(sharedPreferences);
                    this.zzd = Tasks.forException(zzaew.zza(status));
                    return;
                }
                return;
            }
            zzajg zzajgVar = (zzajg) SafeParcelableSerializer.deserializeFromString(sharedPreferences.getString("verifyAssertionRequest", ""), zzajg.CREATOR);
            String string3 = sharedPreferences.getString("operation", "");
            String string4 = sharedPreferences.getString("tenantId", null);
            String string5 = sharedPreferences.getString("firebaseUserUid", "");
            this.zzf = sharedPreferences.getLong("timestamp", 0L);
            if (string4 != null) {
                firebaseAuth.setTenantId(string4);
                zzajgVar.zzb(string4);
            }
            string3.hashCode();
            switch (string3.hashCode()) {
                case -98509410:
                    if (!string3.equals("com.google.firebase.auth.internal.NONGMSCORE_REAUTHENTICATE")) {
                        b = -1;
                    }
                    break;
                case 175006864:
                    b = !string3.equals("com.google.firebase.auth.internal.NONGMSCORE_LINK") ? (byte) -1 : (byte) 1;
                    break;
                case 1450464913:
                    b = !string3.equals("com.google.firebase.auth.internal.NONGMSCORE_SIGN_IN") ? (byte) -1 : (byte) 2;
                    break;
                default:
                    b = -1;
                    break;
            }
            switch (b) {
                case 0:
                    if (!firebaseAuth.getCurrentUser().getUid().equals(string5)) {
                        this.zzd = null;
                    } else {
                        this.zzd = firebaseAuth.zzc(firebaseAuth.getCurrentUser(), com.google.firebase.auth.zzc.zza(zzajgVar));
                    }
                    break;
                case 1:
                    if (!firebaseAuth.getCurrentUser().getUid().equals(string5)) {
                        this.zzd = null;
                    } else {
                        this.zzd = firebaseAuth.zza(firebaseAuth.getCurrentUser(), com.google.firebase.auth.zzc.zza(zzajgVar));
                    }
                    break;
                case 2:
                    this.zzd = firebaseAuth.signInWithCredential(com.google.firebase.auth.zzc.zza(zzajgVar));
                    break;
                default:
                    this.zzd = null;
                    break;
            }
            zza(sharedPreferences);
        }
    }

    public final Task<String> zzb() {
        if (DefaultClock.getInstance().currentTimeMillis() - this.zzf < zza) {
            return this.zze;
        }
        return null;
    }
}
