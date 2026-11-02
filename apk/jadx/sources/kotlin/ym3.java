package kotlin;

import com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialAdEventCallback;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class ym3 extends Lambda implements Function1 {
    public final /* synthetic */ zm3 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ym3(zm3 zm3Var) {
        super(1);
        this.a = zm3Var;
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        p005kotlin.Unit unit;
        SwipeableInterstitialAdEventCallback swipeableInterstitialAdEventCallback = (SwipeableInterstitialAdEventCallback) obj;
        fm0 fm0VarJ = this.a.b.j();
        synchronized (fm0VarJ) {
            fm0VarJ.k = swipeableInterstitialAdEventCallback;
            fm0VarJ.a(swipeableInterstitialAdEventCallback);
            unit = p005kotlin.Unit.INSTANCE;
        }
        ((rv0) this.a.b.p).A.set(swipeableInterstitialAdEventCallback);
        return unit;
    }
}
