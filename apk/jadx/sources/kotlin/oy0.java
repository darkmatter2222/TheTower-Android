package kotlin;

import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class oy0 extends Lambda implements Function1 {
    public static final oy0 a = new oy0();

    public oy0() {
        super(1);
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        c1 it = (c1) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        it.d();
        return p005kotlin.Unit.INSTANCE;
    }
}
