package kotlin;

import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.google.android.libraries.ads.mobile.sdk.appopen.AppOpenAd;
import com.google.android.libraries.ads.mobile.sdk.appopen.AppOpenAdEventCallback;
import java.util.Map;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.optionals.OptionalsKt;
import p005kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes.dex */
public final class sk extends eq implements AppOpenAd {
    public final sj1 b;
    public final tn3 c;
    public static final /* synthetic */ KProperty[] e = {kk.a(sk.class, "adEventCallback", "getAdEventCallback()Lcom/google/android/libraries/ads/mobile/sdk/appopen/AppOpenAdEventCallback;", 0)};
    public static final qk d = new qk();

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sk(sj1 internalAppOpenAd) {
        super(internalAppOpenAd);
        Intrinsics.checkNotNullParameter(internalAppOpenAd, "internalAppOpenAd");
        this.b = internalAppOpenAd;
        this.c = new tn3(new rk(this), null);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.appopen.AppOpenAd
    public final AppOpenAdEventCallback getAdEventCallback() {
        return (AppOpenAdEventCallback) this.c.getValue(this, e[0]);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.appopen.AppOpenAd
    public final View getView() {
        if (this.b.i().u) {
            return (View) OptionalsKt.getOrNull(this.b.q);
        }
        return null;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.appopen.AppOpenAd
    public final void setAdEventCallback(AppOpenAdEventCallback appOpenAdEventCallback) {
        this.c.setValue(this, e[0], appOpenAdEventCallback);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.appopen.AppOpenAd
    public final void setImmersiveMode(boolean z) {
        sj1 sj1Var = this.b;
        sj1Var.o = z;
        sj1Var.p = true;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.appopen.AppOpenAd
    public final void setImpressionData(Map impressionData) {
        Intrinsics.checkNotNullParameter(impressionData, "impressionData");
        if (this.b.i().u) {
            t91 t91Var = this.b.r;
            tn3 tn3Var = t91Var.a;
            KProperty[] kPropertyArr = t91.b;
            tn3Var.setValue(t91Var, kPropertyArr[0], impressionData);
            sj1 sj1Var = this.b;
            t91 t91Var2 = sj1Var.r;
            Map map = (Map) t91Var2.a.getValue(t91Var2, kPropertyArr[0]);
            Object obj = map != null ? map.get("targetAppName") : null;
            String str = obj instanceof String ? (String) obj : null;
            t91 t91Var3 = this.b.r;
            Map map2 = (Map) t91Var3.a.getValue(t91Var3, kPropertyArr[0]);
            Object obj2 = map2 != null ? map2.get("targetAppIconDrawable") : null;
            sj1Var.n.a(str, obj2 instanceof Drawable ? (Drawable) obj2 : null, this.b.r.a());
        }
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.appopen.AppOpenAd
    public final void show(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.b.a(activity);
    }
}
