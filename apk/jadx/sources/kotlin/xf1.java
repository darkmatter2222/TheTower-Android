package kotlin;

import java.util.Map;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class xf1 implements jr0 {
    public final dw2 a;

    public xf1(iu1 iu1Var) {
        this.a = iu1Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        Map gmsgHandlers = (Map) this.a.get();
        Intrinsics.checkNotNullParameter(gmsgHandlers, "gmsgHandlers");
        return new lf1(gmsgHandlers);
    }
}
