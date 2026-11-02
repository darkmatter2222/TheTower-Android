package com.google.android.gms.internal.p002firebaseauthapi;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzqs extends RuntimeException {
    public zzqs(String str, Throwable th) {
        super(str, th);
    }

    public zzqs(Throwable th) {
        super(th);
    }

    public static <T> T zza(zzqr<T> zzqrVar) {
        try {
            return zzqrVar.zza();
        } catch (Exception e) {
            throw new zzqs(e);
        }
    }
}
