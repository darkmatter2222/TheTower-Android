package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class m50 implements jr0 {
    public final dw2 a;

    public m50(dw2 dw2Var) {
        this.a = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        av canOpenIntentsGmsgHandler = (av) this.a.get();
        Intrinsics.checkNotNullParameter(canOpenIntentsGmsgHandler, "canOpenIntentsGmsgHandler");
        return new i50(canOpenIntentsGmsgHandler);
    }
}
