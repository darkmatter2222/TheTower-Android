package kotlin;

import kotlinx.coroutines.CoroutineScope;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class s24 implements p24 {
    public final ls0 a;
    public final CoroutineScope b;
    public final o21 c;
    public final ex0 d;
    public final i2 e;
    public final e01 f;

    public s24(ls0 firebaseAnalyticsAdapter, CoroutineScope backgroundScope, o21 gmaUtil, ex0 flags, i2 adConfiguration, e01 httpClient) {
        Intrinsics.checkNotNullParameter(firebaseAnalyticsAdapter, "firebaseAnalyticsAdapter");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(gmaUtil, "gmaUtil");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        this.a = firebaseAnalyticsAdapter;
        this.b = backgroundScope;
        this.c = gmaUtil;
        this.d = flags;
        this.e = adConfiguration;
        this.f = httpClient;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0101, code lost:
    
        if (r14 == r1) goto L44;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(android.webkit.WebResourceRequest r13, p005kotlin.coroutines.Continuation r14) {
        /*
            Method dump skipped, instruction units count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.s24.a(android.webkit.WebResourceRequest, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
