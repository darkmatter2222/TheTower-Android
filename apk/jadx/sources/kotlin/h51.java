package kotlin;

import com.google.android.libraries.ads.mobile.sdk.h5.OnH5AdsEventListener;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class h51 {
    public final OnH5AdsEventListener a;
    public final ex0 b;
    public final CoroutineScope c;

    public h51(OnH5AdsEventListener listener, ex0 flags, CoroutineScope gmaUiScope) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(gmaUiScope, "gmaUiScope");
        this.a = listener;
        this.b = flags;
        this.c = gmaUiScope;
    }

    public final void a(long j) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("eventCategory", "interstitial");
        jsonObject.addProperty("event", "onNativeAdObjectNotAvailable");
        jsonObject.addProperty("objectId", Long.valueOf(j));
        a(jsonObject);
    }

    public final void a(JsonObject jsonObject) {
        BuildersKt__Builders_commonKt.launch$default(this.c, null, null, new g51(this, this.b.V() + "(\"h5adsEvent\", " + new Gson().toJson((JsonElement) jsonObject) + ");", null), 3, null);
    }

    public final void b(long j) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("eventCategory", "creation");
        jsonObject.addProperty("event", "nativeObjectCreated");
        jsonObject.addProperty("objectId", Long.valueOf(j));
        a(jsonObject);
    }

    public final void c(long j) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("eventCategory", "creation");
        jsonObject.addProperty("event", "nativeObjectNotCreated");
        jsonObject.addProperty("objectId", Long.valueOf(j));
        a(jsonObject);
    }

    public final void d(long j) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("eventCategory", "rewarded");
        jsonObject.addProperty("event", "onNativeAdObjectNotAvailable");
        jsonObject.addProperty("objectId", Long.valueOf(j));
        a(jsonObject);
    }
}
