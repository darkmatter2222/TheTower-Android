package kotlin;

import android.os.SystemClock;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class cy implements jr0 {
    public final dw2 a;

    public cy(dw2 dw2Var) {
        this.a = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        tx clock = (tx) this.a.get();
        Intrinsics.checkNotNullParameter(clock, "clock");
        clock.getClass();
        return Long.valueOf(SystemClock.elapsedRealtime());
    }
}
