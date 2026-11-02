package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ua1 implements lm0 {
    public final /* synthetic */ oz3 a;
    public final /* synthetic */ if1 b;

    public ua1(if1 if1Var, oz3 oz3Var) {
        this.a = oz3Var;
        this.b = if1Var;
    }

    @Override // kotlin.lm0
    public final p005kotlin.Unit a() {
        oz3 oz3Var = this.a;
        if1 debugModeProvider = this.b;
        oz3Var.getClass();
        Intrinsics.checkNotNullParameter(debugModeProvider, "debugModeProvider");
        oz3Var.r = debugModeProvider;
        return p005kotlin.Unit.INSTANCE;
    }
}
