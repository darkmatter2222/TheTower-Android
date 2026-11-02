package kotlin;

import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.random.Random;

/* JADX INFO: loaded from: classes.dex */
public final class j40 {
    public final f13 a;
    public long b;

    public j40(f13 randomGenerator) {
        Intrinsics.checkNotNullParameter(randomGenerator, "randomGenerator");
        this.a = randomGenerator;
        this.b = -1L;
    }

    public final String a() {
        String strValueOf;
        synchronized (this) {
            this.a.getClass();
            long jNextLong = Random.INSTANCE.nextLong(0L, 10000000000000000L);
            while (jNextLong == this.b) {
                this.a.getClass();
                jNextLong = Random.INSTANCE.nextLong(0L, 10000000000000000L);
            }
            this.b = jNextLong;
            strValueOf = String.valueOf(jNextLong);
        }
        return strValueOf;
    }
}
