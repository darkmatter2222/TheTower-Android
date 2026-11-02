package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.LoadAdError;
import com.google.gson.JsonObject;
import com.ironsource.Yf;
import p005kotlin.coroutines.Continuation;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class o51 extends ei1 {
    public final /* synthetic */ q51 a;

    public o51(q51 q51Var) {
        this.a = q51Var;
    }

    @Override // kotlin.ei1
    public final Object a(zh1 zh1Var, Continuation continuation) {
        q51 q51Var = this.a;
        q51Var.g = (pk1) zh1Var;
        h51 h51Var = q51Var.c;
        long j = q51Var.b;
        h51Var.getClass();
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("eventCategory", "interstitial");
        jsonObject.addProperty("event", Yf.j);
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
        q51 q51Var = this.a;
        h51 h51Var = q51Var.c;
        long j = q51Var.b;
        int value = error.getCode().getValue();
        h51Var.getClass();
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("eventCategory", "interstitial");
        jsonObject.addProperty("event", "onAdFailedToLoad");
        jsonObject.addProperty("objectId", Long.valueOf(j));
        jsonObject.addProperty("errorCode", Integer.valueOf(value));
        h51Var.a(jsonObject);
    }
}
