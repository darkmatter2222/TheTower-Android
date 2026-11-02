package com.google.android.gms.internal.measurement;

import androidx.constraintlayout.core.motion.utils.TypedValues;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@23.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzabq {
    private static final String[] zza = {"com.google.common.flogger.util.StackWalkerStackGetter", "com.google.common.flogger.util.JavaLangAccessStackGetter"};
    private static final zzabu zzb;

    static {
        zzabu zzabvVar;
        for (int i = 0; i < 2; i++) {
            try {
                zzabvVar = (zzabu) Class.forName(zza[i]).asSubclass(zzabu.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (Throwable unused) {
                zzabvVar = null;
            }
            if (zzabvVar != null) {
                zzb = zzabvVar;
            }
        }
        zzabvVar = new zzabv();
        zzb = zzabvVar;
    }

    public static StackTraceElement zza(Class cls, int i) {
        zzabr.zza(cls, TypedValues.AttributesType.S_TARGET);
        return zzb.zza(cls, 2);
    }

    public static StackTraceElement[] zzb(Class cls, int i, int i2) {
        if (i > 0 || i == -1) {
            return zzb.zzb(cls, i, 2);
        }
        throw new IllegalArgumentException("invalid maximum depth: 0");
    }
}
