package kotlin;

import android.widget.ImageView;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdView;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class m32 implements av1 {
    public final /* synthetic */ NativeAdView a;

    public m32(NativeAdView nativeAdView) {
        this.a = nativeAdView;
    }

    public final void a(ImageView.ScaleType scaleType) {
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
        p32 nativeAdViewContainer = this.a.getNativeAdViewContainer();
        nativeAdViewContainer.getClass();
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
        synchronized (nativeAdViewContainer) {
            if (nativeAdViewContainer.d.get()) {
                return;
            }
            nativeAdViewContainer.f = scaleType;
            p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
        }
    }
}
