package kotlin;

import android.content.Context;
import android.hardware.SensorManager;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class sp1 implements rh3 {
    public final ex0 a;
    public final zd3 b;
    public final SensorManager c;

    public sp1(Context context, ex0 flags, zd3 sharedSettingsDataStore) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(sharedSettingsDataStore, "sharedSettingsDataStore");
        this.a = flags;
        this.b = sharedSettingsDataStore;
        Object systemService = context.getSystemService("sensor");
        this.c = systemService instanceof SensorManager ? (SensorManager) systemService : null;
    }

    @Override // kotlin.rh3
    public final y11 f() {
        return y11.IS_DEVICE_HELD;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00c3, code lost:
    
        if (r9 == r1) goto L41;
     */
    @Override // kotlin.rh3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object s(p005kotlin.coroutines.Continuation r9) {
        /*
            Method dump skipped, instruction units count: 233
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.sp1.s(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
