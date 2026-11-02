package kotlin;

import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd;
import com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialRequest;
import java.util.Optional;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.optionals.OptionalsKt;

/* JADX INFO: loaded from: classes.dex */
public final class qn3 implements rh3 {
    public final Optional a;

    public qn3(Optional requestOptional) {
        Intrinsics.checkNotNullParameter(requestOptional, "requestOptional");
        this.a = requestOptional;
    }

    @Override // kotlin.rh3
    public final y11 f() {
        return y11.AD_REQUEST;
    }

    @Override // kotlin.rh3
    public final Object s(Continuation continuation) {
        NativeAd.SwipeGestureDirection customClickSwipeGestureDirection;
        SwipeableInterstitialRequest swipeableInterstitialRequest = (SwipeableInterstitialRequest) OptionalsKt.getOrNull(this.a);
        return new q01(new pn3(swipeableInterstitialRequest != null, swipeableInterstitialRequest != null ? Boxing.boxInt(swipeableInterstitialRequest.getMaxScreenHoldDurationSeconds()) : null, swipeableInterstitialRequest != null ? Boxing.boxBoolean(swipeableInterstitialRequest.getCustomClickGestureEnabled()) : null, (swipeableInterstitialRequest == null || (customClickSwipeGestureDirection = swipeableInterstitialRequest.getCustomClickSwipeGestureDirection()) == null) ? null : Boxing.boxInt(customClickSwipeGestureDirection.getValue()), swipeableInterstitialRequest != null ? Boxing.boxBoolean(swipeableInterstitialRequest.getCustomClickSwipeGestureTapsAllowed()) : null));
    }
}
