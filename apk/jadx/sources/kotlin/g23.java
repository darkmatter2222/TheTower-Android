package kotlin;

import java.util.Map;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class g23 implements r41 {
    public final g33 a;

    public g23(g33 refreshListener) {
        Intrinsics.checkNotNullParameter(refreshListener, "refreshListener");
        this.a = refreshListener;
    }

    @Override // kotlin.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        Object objC;
        String str = (String) map.get("action");
        if (!Intrinsics.areEqual("pause", str)) {
            return (Intrinsics.areEqual("resume", str) && (objC = this.a.c(true, continuation)) == IntrinsicsKt.getCOROUTINE_SUSPENDED()) ? objC : p005kotlin.Unit.INSTANCE;
        }
        Object objA = this.a.a(true, continuation);
        return objA == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.r41
    public final u11 g() {
        return u11.GMSG_NAME_REFRESH;
    }
}
