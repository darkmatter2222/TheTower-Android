package kotlin;

import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class l73 extends Lambda implements Function1 {
    public static final l73 a = new l73();

    public l73() {
        super(1);
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        un1 it = (un1) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        return new p73(it);
    }
}
