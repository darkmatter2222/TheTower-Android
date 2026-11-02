package kotlin;

import android.view.View;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class kv1 extends Lambda implements Function1 {
    public final /* synthetic */ qv1 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kv1(qv1 qv1Var) {
        super(1);
        this.a = qv1Var;
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        View adView = (View) obj;
        Intrinsics.checkNotNullParameter(adView, "adView");
        qv1 qv1Var = this.a;
        qv1Var.getClass();
        Intrinsics.checkNotNullParameter(adView, "<set-?>");
        qv1Var.b = adView;
        return p005kotlin.Unit.INSTANCE;
    }
}
