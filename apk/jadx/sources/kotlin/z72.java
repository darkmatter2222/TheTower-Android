package kotlin;

import java.util.Map;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class z72 implements jr0 {
    public final dw2 a;

    public z72(iu1 iu1Var) {
        this.a = iu1Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        Map gmsgHandlers = (Map) this.a.get();
        Intrinsics.checkNotNullParameter(gmsgHandlers, "gmsgHandlers");
        return new w72(gmsgHandlers);
    }
}
