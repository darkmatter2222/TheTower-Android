package com.google.android.gms.internal.measurement;

import com.ironsource.C3510b4;
import p005kotlin.Unit;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Ref;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@23.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzwz implements Runnable {
    final /* synthetic */ Ref.ObjectRef zza;
    final /* synthetic */ zzws zzb;
    final /* synthetic */ Runnable zzc;

    zzwz(Ref.ObjectRef objectRef, zzws zzwsVar, Runnable runnable) {
        this.zza = objectRef;
        this.zzb = zzwsVar;
        this.zzc = runnable;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        if (((zzxe) this.zza.element) != null) {
            throw null;
        }
        zzws zzwsVar = this.zzb;
        Intrinsics.checkNotNull(zzwsVar, "null cannot be cast to non-null type com.google.apps.tiktok.tracing.Trace");
        Runnable runnable = this.zzc;
        zzwq zzwqVarZzd = zzvy.zzd();
        zzws zzwsVarZzc = zzvy.zzc(zzwqVarZzd, zzwsVar);
        try {
            runnable.run();
            Unit unit = Unit.INSTANCE;
            zzvy.zzc(zzwqVarZzd, zzwsVarZzc);
        } catch (Throwable th) {
            try {
                zzvu.zza(th);
                throw th;
            } catch (Throwable th2) {
                zzvy.zzc(zzwqVarZzd, zzwsVarZzc);
                throw th2;
            }
        }
    }

    public final String toString() {
        Runnable runnable = this.zzc;
        StringBuilder sb = new StringBuilder(runnable.toString().length() + 14);
        sb.append("propagating=[");
        sb.append(runnable);
        sb.append(C3510b4.j.e);
        return sb.toString();
    }
}
