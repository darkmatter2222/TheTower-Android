package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class p43 implements rh3 {
    public final String a;

    public p43(String requestId) {
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        this.a = requestId;
    }

    @Override // kotlin.rh3
    public final y11 f() {
        return y11.REQUEST_ID;
    }

    @Override // kotlin.rh3
    public final Object s(Continuation continuation) {
        return new q01(new o43(this.a));
    }
}
