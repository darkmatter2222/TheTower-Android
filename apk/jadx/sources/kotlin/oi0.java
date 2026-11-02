package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialAdRequest;
import com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialRequest;

/* JADX INFO: loaded from: classes.dex */
public final class oi0 implements x03 {
    public final vf0 a;
    public AdRequest b;
    public BaseRequest c;
    public j53 d;
    public Boolean e;
    public Boolean f;
    public SwipeableInterstitialRequest g;
    public SwipeableInterstitialAdRequest h;

    public oi0(vf0 vf0Var) {
        this.a = vf0Var;
    }

    @Override // kotlin.f03
    public final Object a(j53 j53Var) {
        throw null;
    }

    @Override // kotlin.f03
    public final Object a(AdRequest adRequest) {
        adRequest.getClass();
        this.b = adRequest;
        return this;
    }

    @Override // kotlin.f03
    public final Object a(BaseRequest baseRequest) {
        baseRequest.getClass();
        this.c = baseRequest;
        return this;
    }

    @Override // kotlin.f03
    public final Object a(boolean z) {
        this.f = Boolean.TRUE;
        return this;
    }

    @Override // kotlin.f03
    public final Object b(boolean z) {
        this.e = Boolean.FALSE;
        return this;
    }
}
