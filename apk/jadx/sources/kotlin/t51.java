package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.LoadAdError;
import com.google.gson.JsonObject;
import p005kotlin.coroutines.Continuation;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class t51 extends ei1 {
    public final /* synthetic */ v51 a;

    public t51(v51 v51Var) {
        this.a = v51Var;
    }

    @Override // kotlin.ei1
    public final Object a(zh1 zh1Var, Continuation continuation) {
        v51 v51Var = this.a;
        v51Var.g = (un1) zh1Var;
        h51 h51Var = v51Var.c;
        long j = v51Var.b;
        h51Var.getClass();
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("eventCategory", "rewarded");
        jsonObject.addProperty("event", "onRewardedAdLoaded");
        jsonObject.addProperty("objectId", Long.valueOf(j));
        h51Var.a(jsonObject);
        return p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.ei1
    public final void a() {
    }

    @Override // kotlin.ei1
    public final void a(LoadAdError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        v51 v51Var = this.a;
        h51 h51Var = v51Var.c;
        long j = v51Var.b;
        int value = error.getCode().getValue();
        h51Var.getClass();
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("eventCategory", "rewarded");
        jsonObject.addProperty("event", "onRewardedAdFailedToLoad");
        jsonObject.addProperty("objectId", Long.valueOf(j));
        jsonObject.addProperty("errorCode", Integer.valueOf(value));
        h51Var.a(jsonObject);
    }
}
