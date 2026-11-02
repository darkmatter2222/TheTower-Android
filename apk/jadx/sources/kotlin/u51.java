package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.FullScreenContentError;
import com.google.android.libraries.ads.mobile.sdk.rewarded.RewardedAdEventCallback;
import com.google.gson.JsonObject;
import com.ironsource.Yf;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class u51 implements RewardedAdEventCallback {
    public final /* synthetic */ v51 a;

    public u51(v51 v51Var) {
        this.a = v51Var;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback
    public final void onAdClicked() {
        v51 v51Var = this.a;
        h51 h51Var = v51Var.c;
        long j = v51Var.b;
        h51Var.getClass();
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("eventCategory", "rewarded");
        jsonObject.addProperty("event", Yf.f);
        jsonObject.addProperty("objectId", Long.valueOf(j));
        h51Var.a(jsonObject);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback
    public final void onAdDismissedFullScreenContent() {
        v51 v51Var = this.a;
        h51 h51Var = v51Var.c;
        long j = v51Var.b;
        h51Var.getClass();
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("eventCategory", "rewarded");
        jsonObject.addProperty("event", "onRewardedAdClosed");
        jsonObject.addProperty("objectId", Long.valueOf(j));
        h51Var.a(jsonObject);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback
    public final void onAdFailedToShowFullScreenContent(FullScreenContentError fullScreenContentError) {
        Intrinsics.checkNotNullParameter(fullScreenContentError, "fullScreenContentError");
        v51 v51Var = this.a;
        h51 h51Var = v51Var.c;
        long j = v51Var.b;
        int value = fullScreenContentError.getCode().getValue();
        h51Var.getClass();
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("eventCategory", "rewarded");
        jsonObject.addProperty("event", "onRewardedAdFailedToShow");
        jsonObject.addProperty("objectId", Long.valueOf(j));
        jsonObject.addProperty("errorCode", Integer.valueOf(value));
        h51Var.a(jsonObject);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback
    public final void onAdImpression() {
        v51 v51Var = this.a;
        h51 h51Var = v51Var.c;
        long j = v51Var.b;
        h51Var.getClass();
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("eventCategory", "rewarded");
        jsonObject.addProperty("event", "onAdImpression");
        jsonObject.addProperty("objectId", Long.valueOf(j));
        h51Var.a(jsonObject);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback
    public final void onAdShowedFullScreenContent() {
        v51 v51Var = this.a;
        h51 h51Var = v51Var.c;
        long j = v51Var.b;
        h51Var.getClass();
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("eventCategory", "rewarded");
        jsonObject.addProperty("event", "onRewardedAdOpened");
        jsonObject.addProperty("objectId", Long.valueOf(j));
        h51Var.a(jsonObject);
    }
}
