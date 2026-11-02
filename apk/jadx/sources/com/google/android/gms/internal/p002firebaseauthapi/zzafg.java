package com.google.android.gms.internal.p002firebaseauthapi;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zzafg {
    private zzafg() {
    }

    public static zzafi<?> zza(String str, zzafi<?> zzafiVar) throws zzacw {
        if (zzafiVar == null) {
            return null;
        }
        try {
            return zzafiVar.zza(str);
        } catch (Exception e) {
            throw new zzacw("Json conversion failed! " + e.getMessage(), e);
        }
    }

    public static String zza(String str) throws zzacw {
        if (str == null || str.isEmpty()) {
            return null;
        }
        try {
            zzagy zzagyVar = (zzagy) new zzagy().zza(str);
            if (zzagyVar.zzb()) {
                return zzagyVar.zza();
            }
            throw new zzacw("No error message: " + str);
        } catch (Exception e) {
            throw new zzacw("Json conversion failed! " + e.getMessage(), e);
        }
    }
}
