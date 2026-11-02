package kotlin;

import com.ironsource.C3510b4;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class xz3 extends Lambda implements Function0 {
    public final /* synthetic */ yz3 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xz3(yz3 yz3Var) {
        super(0);
        this.a = yz3Var;
    }

    @Override // p005kotlin.jvm.functions.Function0
    public final Object invoke() {
        ex0 ex0Var = this.a.e;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:startup_webview_during_initialization:enabled", C3510b4.i.W);
        Boolean bool = (Boolean) ex0Var.a("gads:startup_webview_during_initialization:enabled", Boolean.FALSE, yr.b);
        bool.getClass();
        return bool;
    }
}
