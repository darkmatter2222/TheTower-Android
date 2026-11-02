package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo;
import com.google.gson.JsonObject;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class vz1 implements xz1, zh1 {
    public final ck1 a;

    public vz1(ck1 internalBannerAd) {
        Intrinsics.checkNotNullParameter(internalBannerAd, "internalBannerAd");
        this.a = internalBannerAd;
    }

    @Override // kotlin.zh1
    public final ks3 a() {
        return this.a.a();
    }

    @Override // kotlin.zh1
    public final Object a(Continuation continuation) {
        ck1 ck1Var = this.a;
        ck1Var.getClass();
        return ci1.a(ck1Var, continuation);
    }

    @Override // kotlin.zh1
    public final p005kotlin.Unit a(ContinuationImpl continuationImpl) {
        return this.a.a(continuationImpl);
    }

    @Override // kotlin.zh1
    public final void a(ResponseInfo responseInfo) {
        Intrinsics.checkNotNullParameter(responseInfo, "<set-?>");
        ck1 ck1Var = this.a;
        ck1Var.getClass();
        Intrinsics.checkNotNullParameter(responseInfo, "<set-?>");
        ck1Var.k = responseInfo;
    }

    @Override // kotlin.zh1
    public final i2 b() {
        return this.a.b();
    }

    @Override // kotlin.zh1
    public final eo2 c() {
        return this.a.c();
    }

    @Override // kotlin.zh1
    public final st2 d() {
        return this.a.d();
    }

    @Override // kotlin.zh1
    public final void destroy() {
        this.a.destroy();
    }

    @Override // kotlin.zh1
    public final double e() {
        return this.a.e();
    }

    @Override // kotlin.zh1
    public final String f() {
        return this.a.f();
    }

    @Override // kotlin.zh1
    public final JsonObject g() {
        this.a.getClass();
        return null;
    }

    @Override // kotlin.zh1
    public final String getAdUnitId() {
        return this.a.getAdUnitId();
    }

    @Override // kotlin.zh1
    public final ResponseInfo getResponseInfo() {
        return this.a.getResponseInfo();
    }
}
