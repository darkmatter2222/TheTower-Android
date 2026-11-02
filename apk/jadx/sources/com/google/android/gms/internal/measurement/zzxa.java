package com.google.android.gms.internal.measurement;

import com.google.common.util.concurrent.AsyncCallable;
import com.google.common.util.concurrent.AsyncFunction;
import java.util.HashMap;
import java.util.Random;
import p005kotlin.jvm.JvmStatic;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Ref;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@23.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzxa {
    static {
        Math.abs(new Random().nextInt());
        new HashMap();
    }

    @JvmStatic
    public static final Runnable zza(Runnable runnable) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        return new zzwz(new Ref.ObjectRef(), zzvy.zzb(false), runnable);
    }

    @JvmStatic
    public static final AsyncCallable zzb(AsyncCallable asyncCallable) {
        Intrinsics.checkNotNullParameter(asyncCallable, "asyncCallable");
        return new zzwx(zzvy.zzb(false), asyncCallable);
    }

    @JvmStatic
    public static final AsyncFunction zzc(AsyncFunction asyncFunction) {
        Intrinsics.checkNotNullParameter(asyncFunction, "asyncFunction");
        return new zzwy(zzvy.zzb(false), asyncFunction);
    }
}
