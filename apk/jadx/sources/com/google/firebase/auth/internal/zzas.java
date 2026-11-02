package com.google.firebase.auth.internal;

import android.os.Handler;
import android.os.HandlerThread;
import androidx.work.PeriodicWorkRequest;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.logging.Logger;
import com.google.android.gms.common.util.DefaultClock;
import com.google.firebase.FirebaseApp;
import com.google.firebase.firestore.util.ExponentialBackoff;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzas {
    private static Logger zzc = new Logger("TokenRefresher", "FirebaseAuth:");
    volatile long zza;
    volatile long zzb;
    private final FirebaseApp zzd;
    private HandlerThread zze;
    private Handler zzf;
    private Runnable zzg;

    public zzas(FirebaseApp firebaseApp) {
        zzc.v("Initializing TokenRefresher", new Object[0]);
        FirebaseApp firebaseApp2 = (FirebaseApp) Preconditions.checkNotNull(firebaseApp);
        this.zzd = firebaseApp2;
        HandlerThread handlerThread = new HandlerThread("TokenRefresher", 10);
        this.zze = handlerThread;
        handlerThread.start();
        this.zzf = new com.google.android.gms.internal.p002firebaseauthapi.zze(this.zze.getLooper());
        this.zzg = new zzar(this, firebaseApp2.getName());
    }

    private static long zza(FirebaseApp firebaseApp) {
        return com.google.firebase.auth.zzad.zza(firebaseApp).zzb() == null ? PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS : ExponentialBackoff.DEFAULT_BACKOFF_MAX_DELAY_MS;
    }

    public final void zzb() {
        this.zzf.removeCallbacks(this.zzg);
    }

    public final void zzc() {
        zzc.v("Scheduling refresh for " + (this.zza - zza(this.zzd)), new Object[0]);
        zzb();
        this.zzb = Math.max((this.zza - DefaultClock.getInstance().currentTimeMillis()) - zza(this.zzd), 0L) / 1000;
        this.zzf.postDelayed(this.zzg, this.zzb * 1000);
    }

    final void zzd() {
        long j;
        int i = (int) this.zzb;
        if (i == 30 || i == 60 || i == 120 || i == 240 || i == 480) {
            j = 2 * this.zzb;
        } else {
            j = i != 960 ? 30L : 960L;
        }
        this.zzb = j;
        this.zza = DefaultClock.getInstance().currentTimeMillis() + (this.zzb * 1000);
        zzc.v("Scheduling refresh for " + this.zza, new Object[0]);
        this.zzf.postDelayed(this.zzg, this.zzb * 1000);
    }
}
