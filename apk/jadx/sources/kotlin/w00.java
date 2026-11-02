package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class w00 {
    public final t00 a;

    public w00(t00 t00Var) {
        this.a = t00Var;
    }

    public final /* synthetic */ u00 a() {
        vz0 vz0VarB = this.a.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
        return (u00) vz0VarB;
    }

    public final /* synthetic */ lo0 b() {
        yh1.d dVarH = this.a.h();
        Intrinsics.checkNotNullExpressionValue(dVarH, "getAllowedApisList(...)");
        return new lo0(dVarH);
    }
}
