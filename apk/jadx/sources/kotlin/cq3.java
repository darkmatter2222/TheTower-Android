package kotlin;

import java.util.List;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class cq3 {
    public final gt a;

    public cq3(gt gtVar) {
        this.a = gtVar;
    }

    public final /* synthetic */ xt a() {
        vz0 vz0VarB = this.a.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
        return (xt) vz0VarB;
    }

    public final /* synthetic */ void a(lo0 lo0Var, wt value) {
        Intrinsics.checkNotNullParameter(lo0Var, "<this>");
        Intrinsics.checkNotNullParameter(value, "value");
        this.a.a(value);
    }

    public final /* synthetic */ lo0 b() {
        List listH = this.a.h();
        Intrinsics.checkNotNullExpressionValue(listH, "getThirdPartySdkList(...)");
        return new lo0(listH);
    }
}
