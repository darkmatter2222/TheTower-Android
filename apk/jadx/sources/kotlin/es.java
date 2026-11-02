package kotlin;

import com.ironsource.C3510b4;
import kotlinx.coroutines.BuildersKt;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class es {
    public final ex0 a;
    public final CoroutineContext b;

    public es(ex0 flags, CoroutineContext uiContext) {
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        this.a = flags;
        this.b = uiContext;
    }

    public final Object a(Function1 function1, ContinuationImpl continuationImpl) {
        ex0 ex0Var = this.a;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:call_all_methods_on_ui_thread:enabled", C3510b4.i.W);
        return ((Boolean) ex0Var.a("gads:call_all_methods_on_ui_thread:enabled", Boolean.FALSE, yr.b)).booleanValue() ? BuildersKt.withContext(this.b, new ds(function1, null), continuationImpl) : function1.invoke(continuationImpl);
    }
}
