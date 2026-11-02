package kotlin;

import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public final class fc2 implements jr0 {
    public final dw2 a;

    public fc2(dw2 dw2Var) {
        this.a = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        ex0 flags = (ex0) this.a.get();
        Intrinsics.checkNotNullParameter(flags, "flags");
        return Long.valueOf(Duration.m4378getInWholeMillisecondsimpl(flags.C()));
    }
}
