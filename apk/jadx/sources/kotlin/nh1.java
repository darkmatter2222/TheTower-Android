package kotlin;

import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class nh1 extends Lambda implements Function1 {
    public static final nh1 a = new nh1();

    public nh1() {
        super(1);
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        be3 update = (be3) obj;
        Intrinsics.checkNotNullParameter(update, "$this$update");
        update.a.i();
        return p005kotlin.Unit.INSTANCE;
    }
}
