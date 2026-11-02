package kotlin;

import java.util.Map;
import kotlinx.coroutines.BuildersKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ge3 implements r41 {
    public final CoroutineContext a;
    public final j12 b;
    public final j92 c;

    public ge3(CoroutineContext uiContext, j12 nativeAdCore, j92 nativeVideoViewabilityMonitor) {
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        Intrinsics.checkNotNullParameter(nativeAdCore, "nativeAdCore");
        Intrinsics.checkNotNullParameter(nativeVideoViewabilityMonitor, "nativeVideoViewabilityMonitor");
        this.a = uiContext;
        this.b = nativeAdCore;
        this.c = nativeVideoViewabilityMonitor;
    }

    @Override // kotlin.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        Object objWithContext;
        r31 r31Var2 = (r31) this.b.d.get();
        return (r31Var2 == null || (objWithContext = BuildersKt.withContext(this.a, new fe3(this, r31Var2, null), continuation)) != IntrinsicsKt.getCOROUTINE_SUSPENDED()) ? p005kotlin.Unit.INSTANCE : objWithContext;
    }

    @Override // kotlin.r41
    public final u11 g() {
        return u11.GMSG_SHOW_OVERLAY;
    }
}
