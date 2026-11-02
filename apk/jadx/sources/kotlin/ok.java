package kotlin;

import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class ok extends Lambda implements Function1 {
    public static final ok a = new ok();

    public ok() {
        super(1);
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        sj1 it = (sj1) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        return new sk(it);
    }
}
