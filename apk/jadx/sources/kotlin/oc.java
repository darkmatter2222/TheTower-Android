package kotlin;

import java.util.ArrayList;
import java.util.List;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class oc {
    public final lc a;

    public oc(lc lcVar) {
        this.a = lcVar;
    }

    public final /* synthetic */ mc a() {
        vz0 vz0VarB = this.a.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
        return (mc) vz0VarB;
    }

    public final /* synthetic */ void a(lo0 lo0Var, ArrayList values) {
        Intrinsics.checkNotNullParameter(lo0Var, "<this>");
        Intrinsics.checkNotNullParameter(values, "values");
        this.a.a(values);
    }

    public final /* synthetic */ lo0 b() {
        List listH = this.a.h();
        Intrinsics.checkNotNullExpressionValue(listH, "getAdUnitPatternsList(...)");
        return new lo0(listH);
    }
}
