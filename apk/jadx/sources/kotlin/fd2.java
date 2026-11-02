package kotlin;

import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class fd2 extends Lambda implements Function0 {
    public static final fd2 a = new fd2();

    public fd2() {
        super(0);
    }

    @Override // p005kotlin.jvm.functions.Function0
    public final Object invoke() {
        return Boolean.valueOf(jd2.a.a);
    }
}
