package kotlin;

import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class cy0 extends Lambda implements Function0 {
    public final /* synthetic */ yy0 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cy0(yy0 yy0Var) {
        super(0);
        this.a = yy0Var;
    }

    @Override // p005kotlin.jvm.functions.Function0
    public final Object invoke() {
        this.a.a(ky.CLOSE_BUTTON);
        return p005kotlin.Unit.INSTANCE;
    }
}
