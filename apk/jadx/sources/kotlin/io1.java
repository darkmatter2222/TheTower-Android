package kotlin;

import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class io1 extends Lambda implements Function1 {
    public static final io1 a = new io1();

    public io1() {
        super(1);
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        pk1 it = (pk1) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        return new mo1(it);
    }
}
