package kotlin;

import java.util.Map;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class zs3 implements r41 {
    public final j92 a;

    public zs3(j92 nativeVideoViewabilityMonitor) {
        Intrinsics.checkNotNullParameter(nativeVideoViewabilityMonitor, "nativeVideoViewabilityMonitor");
        this.a = nativeVideoViewabilityMonitor;
    }

    @Override // kotlin.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        j92 j92Var = this.a;
        j92Var.g.getAndSet(true);
        Object objB = j92Var.b(continuation);
        if (objB != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            objB = p005kotlin.Unit.INSTANCE;
        }
        return objB == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objB : p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.r41
    public final u11 g() {
        return u11.GMSG_TRACK_ACTIVE_VIEW_UNIT;
    }
}
