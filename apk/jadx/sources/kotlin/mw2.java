package kotlin;

import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class mw2 extends Lambda implements Function0 {
    public final /* synthetic */ ow2 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mw2(ow2 ow2Var) {
        super(0);
        this.a = ow2Var;
    }

    @Override // p005kotlin.jvm.functions.Function0
    public final Object invoke() {
        return this.a.getViewSignals();
    }
}
