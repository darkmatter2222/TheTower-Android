package kotlin;

import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class sy0 extends Lambda implements Function1 {
    public static final sy0 a = new sy0();

    public sy0() {
        super(1);
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        c1 it = (c1) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        it.onResume();
        return p005kotlin.Unit.INSTANCE;
    }
}
