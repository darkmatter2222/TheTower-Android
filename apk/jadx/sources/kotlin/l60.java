package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class l60 implements jr0 {
    public final dw2 a;

    public l60(dw2 dw2Var) {
        this.a = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        s24 webviewFirebaseAnalyticsEventsHandler = (s24) this.a.get();
        Intrinsics.checkNotNullParameter(webviewFirebaseAnalyticsEventsHandler, "webviewFirebaseAnalyticsEventsHandler");
        return new f50(webviewFirebaseAnalyticsEventsHandler);
    }
}
