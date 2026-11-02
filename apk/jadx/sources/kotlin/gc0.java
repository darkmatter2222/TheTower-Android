package kotlin;

import java.util.Map;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class gc0 implements r41 {
    public final v3 a;

    public gc0(v3 adEventEmitter) {
        Intrinsics.checkNotNullParameter(adEventEmitter, "adEventEmitter");
        this.a = adEventEmitter;
    }

    @Override // kotlin.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        String str = (String) map.get("asset");
        if (str == null || str.length() == 0) {
            xs3.a("No asset name provided in custom click GMSG.", null, 6);
            return p005kotlin.Unit.INSTANCE;
        }
        p005kotlin.Unit unitA = this.a.a(str, continuation);
        return unitA == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? unitA : p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.r41
    public final u11 g() {
        return u11.GMSG_CUSTOM_CLICK;
    }
}
