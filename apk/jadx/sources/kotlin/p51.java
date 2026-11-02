package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.FullScreenContentError;
import com.google.android.libraries.ads.mobile.sdk.interstitial.InterstitialAdEventCallback;
import com.google.common.base.Splitter;
import com.google.gson.JsonObject;
import com.ironsource.Yf;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class p51 implements InterstitialAdEventCallback {
    public final /* synthetic */ q51 a;

    public p51(q51 q51Var) {
        this.a = q51Var;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback
    public final void onAdClicked() {
        q51 q51Var = this.a;
        h51 h51Var = q51Var.c;
        long j = q51Var.b;
        h51Var.getClass();
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("eventCategory", "interstitial");
        jsonObject.addProperty("event", Yf.f);
        jsonObject.addProperty("objectId", Long.valueOf(j));
        h51Var.a(jsonObject);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback
    public final void onAdDismissedFullScreenContent() {
        q51 q51Var = this.a;
        h51 h51Var = q51Var.c;
        long j = q51Var.b;
        h51Var.getClass();
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("eventCategory", "interstitial");
        jsonObject.addProperty("event", Yf.g);
        jsonObject.addProperty("objectId", Long.valueOf(j));
        h51Var.a(jsonObject);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback
    public final void onAdFailedToShowFullScreenContent(FullScreenContentError fullScreenContentError) {
        Intrinsics.checkNotNullParameter(fullScreenContentError, "fullScreenContentError");
        Splitter splitter = f01.a;
        f01.c("Failed to show h5 interstitial ad: " + fullScreenContentError, null);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback
    public final void onAdImpression() {
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback
    public final void onAdShowedFullScreenContent() {
        q51 q51Var = this.a;
        h51 h51Var = q51Var.c;
        long j = q51Var.b;
        h51Var.getClass();
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("eventCategory", "interstitial");
        jsonObject.addProperty("event", Yf.c);
        jsonObject.addProperty("objectId", Long.valueOf(j));
        h51Var.a(jsonObject);
    }
}
