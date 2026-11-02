package kotlin;

import com.ironsource.C3510b4;
import p005kotlin.coroutines.Continuation;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class r04 implements gj1 {
    public final r14 a;
    public final ex0 b;

    public r04(r14 webViewProfileWrapper, ex0 flags) {
        Intrinsics.checkNotNullParameter(webViewProfileWrapper, "webViewProfileWrapper");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.a = webViewProfileWrapper;
        this.b = flags;
    }

    @Override // kotlin.gj1
    public final Object c(Continuation continuation) {
        ex0 ex0Var = this.b;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:webview_optimize_profile:enabled", C3510b4.i.W);
        if (((Boolean) ex0Var.a("gads:webview_optimize_profile:enabled", Boolean.TRUE, yr.b)).booleanValue()) {
            this.a.i();
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
