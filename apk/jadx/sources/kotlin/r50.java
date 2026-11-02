package kotlin;

import java.util.Map;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class r50 implements jr0 {
    public final dw2 a;

    public r50(dw2 dw2Var) {
        this.a = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        Map gmsgHandlers = (Map) this.a.get();
        Intrinsics.checkNotNullParameter(gmsgHandlers, "gmsgHandlers");
        return new p40(gmsgHandlers);
    }
}
