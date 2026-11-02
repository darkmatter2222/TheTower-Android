package kotlin;

import android.content.Context;
import android.hardware.SensorManager;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class b61 implements rh3 {
    public final ex0 a;
    public final zd3 b;
    public final SensorManager c;

    public b61(Context context, ex0 flags, zd3 sharedSettingsDataStore) {
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
        return y11.HAND_HELD;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00d8, code lost:
    
        if (r8 == r1) goto L43;
     */
    @Override // kotlin.rh3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object s(p005kotlin.coroutines.Continuation r8) {
        /*
            Method dump skipped, instruction units count: 245
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.b61.s(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
