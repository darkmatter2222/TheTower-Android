package kotlin;

import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Lambda;
import p005kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public final class jb0 extends Lambda implements Function1 {
    public static final jb0 a = new jb0();

    public jb0() {
        super(1);
    }

    public static String a(eb0 it) {
        Intrinsics.checkNotNullParameter(it, "it");
        long jM4395minusLRDsOJo = Duration.m4395minusLRDsOJo(it.a(), it.b.a());
        return it.a + "." + Duration.m4378getInWholeMillisecondsimpl(jM4395minusLRDsOJo);
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        return a((eb0) obj);
    }
}
