package kotlin;

import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.random.Random;

/* JADX INFO: loaded from: classes.dex */
public final class az implements jr0 {
    public final dw2 a;

    public az(dw2 dw2Var) {
        this.a = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        f13 randomGenerator = (f13) this.a.get();
        Intrinsics.checkNotNullParameter(randomGenerator, "randomGenerator");
        randomGenerator.getClass();
        return (String) kq2.b(String.valueOf(Random.INSTANCE.nextInt(Integer.MAX_VALUE)));
    }
}
