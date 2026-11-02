package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdLayout;
import com.facebook.ads.NativeAdView;
import com.facebook.ads.NativeAdViewAttributes;
import com.facebook.ads.internal.api.NativeAdViewApi;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.k2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2688k2 implements NativeAdViewApi {
    public static String[] A00 = {"4lhDSJeQx8ImoxNIMYyIsOpW4XJuQDgf", "lqCKp7vrLkXGNxXrvc6I3m7c", "zCZ5ygsfQGVhB3Y237HbJ1q9o76yX", "bq9vw23WcXUY1kk1BWsR1Wz1yPOY5uBm", "", "Hv6Nwq3QZSzEF0Nb8JqXMZqCHWYzLqUn", "tYYpfGiIizklMQ8", "46C5bVFnHWUcfGRcMiONp8ja9wt0MV54"};

    public static View A00(C1618Hi c1618Hi, NativeAd nativeAd, NativeAdView.Type type, NativeAdViewAttributes nativeAdViewAttributes) {
        if (nativeAdViewAttributes == null) {
            nativeAdViewAttributes = new NativeAdViewAttributes();
        }
        C2914nk c2914nk = (C2914nk) nativeAdViewAttributes.getInternalAttributes();
        GT gtA0L = GT.A0L(nativeAd.getInternalNativeAd());
        gtA0L.A1h(EnumC2915nl.A00(type.getEnumCode()));
        gtA0L.A1g(c2914nk);
        C7F c7f = new C7F();
        NativeAdLayout nativeAdLayout = new NativeAdLayout(c1618Hi, c7f);
        c7f.A08(nativeAdLayout, c1618Hi, nativeAd, c2914nk);
        nativeAdLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, (int) (AbstractC3045px.A02 * type.getHeight())));
        return nativeAdLayout;
    }

    public static View A01(C1618Hi c1618Hi, NativeAd nativeAd, NativeAdViewAttributes nativeAdViewAttributes) {
        if (nativeAdViewAttributes == null) {
            nativeAdViewAttributes = new NativeAdViewAttributes();
        }
        GT gtA0L = GT.A0L(nativeAd.getInternalNativeAd());
        C2914nk c2914nk = (C2914nk) nativeAdViewAttributes.getInternalAttributes();
        gtA0L.A1h(EnumC2915nl.A0B);
        gtA0L.A1g(c2914nk);
        C7F c7f = new C7F();
        NativeAdLayout nativeAdLayout = new NativeAdLayout(c1618Hi, c7f);
        c7f.A08(nativeAdLayout, c1618Hi, nativeAd, c2914nk);
        return nativeAdLayout;
    }

    @Override // com.facebook.ads.internal.api.NativeAdViewApi
    public final View render(Context context, NativeAd nativeAd) {
        return render(context, nativeAd, (NativeAdViewAttributes) null);
    }

    @Override // com.facebook.ads.internal.api.NativeAdViewApi
    public final View render(Context context, NativeAd nativeAd, NativeAdView.Type type) {
        return render(context, nativeAd, type, null);
    }

    @Override // com.facebook.ads.internal.api.NativeAdViewApi
    public final View render(Context context, NativeAd nativeAd, NativeAdView.Type type, NativeAdViewAttributes nativeAdViewAttributes) {
        try {
            return A00(C2673jn.A03(context), nativeAd, type, nativeAdViewAttributes);
        } catch (Throwable th) {
            C1618Hi c1618HiA03 = C2673jn.A03(context);
            if (A00[1].length() == 17) {
                throw new RuntimeException();
            }
            String[] strArr = A00;
            strArr[0] = "2CJ6YuIajjVObDWBrmgwGQhi0qiA6kO3";
            strArr[3] = "BzZMljeHsN6l5z4UR6G3olqVRWzg5ScF";
            return AbstractC3143rX.A00(c1618HiA03, th);
        }
    }

    @Override // com.facebook.ads.internal.api.NativeAdViewApi
    public final View render(Context context, NativeAd nativeAd, NativeAdViewAttributes nativeAdViewAttributes) {
        try {
            return A01(context instanceof C1618Hi ? (C1618Hi) context : C2673jn.A03(context), nativeAd, nativeAdViewAttributes);
        } catch (Throwable th) {
            return AbstractC3143rX.A00(C2673jn.A03(context), th);
        }
    }
}
