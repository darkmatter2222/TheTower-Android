package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class an1 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;

    public an1(vh1 vh1Var, vh1 vh1Var2, dw2 dw2Var, dw2 dw2Var2, ol0 ol0Var) {
        this.a = vh1Var;
        this.b = vh1Var2;
        this.c = dw2Var;
        this.d = dw2Var2;
        this.e = ol0Var;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0078  */
    @Override // kotlin.cw2
    public final Object get() {
        nt3 nt3Var;
        BaseRequest baseRequest = (BaseRequest) this.a.get();
        j53 requestType = (j53) this.b.get();
        dw2 network = this.c;
        dw2 cache = this.d;
        im2 persistentCacheManager = (im2) this.e.get();
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(network, "network");
        Intrinsics.checkNotNullParameter(cache, "cache");
        Intrinsics.checkNotNullParameter(persistentCacheManager, "persistentCacheManager");
        AdRequest adRequest = baseRequest instanceof AdRequest ? (AdRequest) baseRequest : null;
        if (adRequest != null) {
            persistentCacheManager.getClass();
            Intrinsics.checkNotNullParameter(adRequest, "adRequest");
            Intrinsics.checkNotNullParameter(requestType, "requestType");
            if (((persistentCacheManager.b(adRequest, requestType) && persistentCacheManager.a(adRequest, requestType) == null) ? new q01(p005kotlin.Unit.INSTANCE) : new m01("Persistent cache is disabled.", kk1.INTERNAL_ERROR)) instanceof q01) {
                Object obj = cache.get();
                Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
                nt3Var = (nt3) obj;
            } else {
                Object obj2 = network.get();
                Intrinsics.checkNotNullExpressionValue(obj2, "get(...)");
                nt3Var = (nt3) obj2;
            }
        } else {
            Object obj3 = network.get();
            Intrinsics.checkNotNullExpressionValue(obj3, "get(...)");
            nt3Var = (nt3) obj3;
        }
        return (nt3) kq2.b(nt3Var);
    }
}
