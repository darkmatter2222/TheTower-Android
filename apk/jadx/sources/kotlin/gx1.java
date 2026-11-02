package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class gx1 implements ai1 {
    public final bz1 a;

    public gx1(bz1 mraidResizeHandler) {
        Intrinsics.checkNotNullParameter(mraidResizeHandler, "mraidResizeHandler");
        this.a = mraidResizeHandler;
    }

    @Override // kotlin.ai1
    public final Object a(Continuation continuation) {
        this.a.a(true);
        return p005kotlin.Unit.INSTANCE;
    }
}
