package kotlin;

import java.util.concurrent.atomic.AtomicInteger;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class gn extends Lambda implements Function1 {
    public static final gn a = new gn();

    public gn() {
        super(1);
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        j53 it = (j53) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        return new AtomicInteger(0);
    }
}
