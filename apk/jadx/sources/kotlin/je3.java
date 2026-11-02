package kotlin;

import java.util.Map;
import kotlinx.coroutines.BuildersKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class je3 implements r41 {
    public final CoroutineContext a;
    public final j12 b;

    public je3(CoroutineContext uiContext, j12 nativeAdCore) {
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        Intrinsics.checkNotNullParameter(nativeAdCore, "nativeAdCore");
        this.a = uiContext;
        this.b = nativeAdCore;
    }

    @Override // kotlin.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        Object objWithContext;
        r31 r31Var2 = (r31) this.b.e.get();
        return (r31Var2 == null || (objWithContext = BuildersKt.withContext(this.a, new ie3(r31Var2, null), continuation)) != IntrinsicsKt.getCOROUTINE_SUSPENDED()) ? p005kotlin.Unit.INSTANCE : objWithContext;
    }

    @Override // kotlin.r41
    public final u11 g() {
        return u11.GMSG_SHOW_VALIDATOR_OVERLAY;
    }
}
