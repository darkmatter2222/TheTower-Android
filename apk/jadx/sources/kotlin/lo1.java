package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback;
import com.google.android.libraries.ads.mobile.sdk.common.OnAppEventListener;
import com.google.android.libraries.ads.mobile.sdk.interstitial.InterstitialAdEventCallback;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class lo1 extends Lambda implements Function1 {
    public final /* synthetic */ mo1 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lo1(mo1 mo1Var) {
        super(1);
        this.a = mo1Var;
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        p005kotlin.Unit unit;
        InterstitialAdEventCallback interstitialAdEventCallback = (InterstitialAdEventCallback) obj;
        fm0 fm0VarJ = this.a.b.j();
        synchronized (fm0VarJ) {
            fm0VarJ.h = interstitialAdEventCallback;
            fm0VarJ.a((AdEventCallback) interstitialAdEventCallback);
            fm0VarJ.a((OnAppEventListener) interstitialAdEventCallback);
            unit = p005kotlin.Unit.INSTANCE;
        }
        return unit;
    }
}
