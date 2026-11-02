package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class m51 {
    public final j51 a;

    public m51(j51 j51Var) {
        this.a = j51Var;
    }

    public final /* synthetic */ k51 a() {
        vz0 vz0VarB = this.a.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
        return (k51) vz0VarB;
    }

    public final void a(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.a.a(value);
    }
}
