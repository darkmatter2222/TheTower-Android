package com.ironsource;

import android.app.Activity;
import android.content.Context;
import com.ironsource.mediationsdk.ISBannerSize;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBaseInterface;
import com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBaseWrapper;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import com.unity3d.mediation.LevelPlayAdSize;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;
import p005kotlin.TuplesKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class Wf {
    public static final Wf a = new Wf();

    private Wf() {
    }

    private final JSONObject a(String str, String str2) {
        return new JSONObject(MapsKt.mapOf(TuplesKt.to(Pf.b, str), TuplesKt.to("sdkVersion", str2)));
    }

    public final int a() {
        return Pb.w.d().a().c();
    }

    public final ISBannerSize a(String str, int i, int i2) {
        return new ISBannerSize(str, i, i2);
    }

    public final com.ironsource.mediationsdk.o a(Activity activity, ISBannerSize size) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(size, "size");
        com.ironsource.mediationsdk.o oVarB = com.ironsource.mediationsdk.p.g().b(activity, size);
        Intrinsics.checkNotNullExpressionValue(oVarB, "createBanner(...)");
        return oVarB;
    }

    public final String a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return M1.a(context, c(context));
    }

    public final String a(C3717md c3717md) {
        String strC;
        return (c3717md == null || (strC = c3717md.c()) == null) ? new String() : strC;
    }

    public final String a(NetworkSettings networkSettings) {
        Intrinsics.checkNotNullParameter(networkSettings, "networkSettings");
        String providerDefaultInstance = networkSettings.getProviderDefaultInstance();
        return providerDefaultInstance == null ? new String() : providerDefaultInstance;
    }

    public final String a(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            try {
                if (!StringsKt.contains$default((CharSequence) key, (CharSequence) "-", false, 2, (Object) null)) {
                    return !StringsKt.contains$default((CharSequence) key, (CharSequence) "_", false, 2, (Object) null) ? key : (String) CollectionsKt.first(StringsKt.split$default((CharSequence) key, new String[]{"_"}, false, 0, 6, (Object) null));
                }
                String str = (String) CollectionsKt.last(StringsKt.split$default((CharSequence) key, new String[]{"-"}, false, 0, 6, (Object) null));
                return !StringsKt.contains$default((CharSequence) str, (CharSequence) "_", false, 2, (Object) null) ? str : (String) CollectionsKt.first(StringsKt.split$default((CharSequence) str, new String[]{"_"}, false, 0, 6, (Object) null));
            } catch (Exception e) {
                e = e;
            }
        } catch (Exception e2) {
            e = e2;
        }
        Exception exc = e;
        C3801r4.d().a(exc);
        IronLog.INTERNAL.error(exc.getMessage());
        return key;
    }

    public final JSONObject a(boolean z) {
        JSONObject jSONObjectB = IronSourceUtils.b(z);
        Intrinsics.checkNotNullExpressionValue(jSONObjectB, "getMediationAdditionalData(...)");
        return jSONObjectB;
    }

    public final void a(D5 event, JSONObject data) {
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(data, "data");
        C3682ke.i().a(new C5(event, data));
    }

    public final void a(Ia ia) {
        F2.a().b(ia);
    }

    public final void a(InterfaceC3626hb interfaceC3626hb) {
        C3623h8.a().b(interfaceC3626hb);
    }

    public final void a(InterfaceC3846tb interfaceC3846tb) {
        Od.a().b(interfaceC3846tb);
    }

    public final boolean a(NetworkSettings networkSettings, IronSource.a adUnit) {
        Intrinsics.checkNotNullParameter(networkSettings, "networkSettings");
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        return networkSettings.isBidder(adUnit);
    }

    public final LevelPlayAdSize b(String str, int i, int i2) {
        if (str == null || str.length() == 0 || Intrinsics.areEqual(str, "CUSTOM")) {
            return LevelPlayAdSize.Companion.createCustomSize(i, i2);
        }
        return Intrinsics.areEqual(str, "RECTANGLE") ? LevelPlayAdSize.MEDIUM_RECTANGLE : LevelPlayAdSize.Companion.createAdSize$mediationsdk_release(str);
    }

    public final String b(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return M1.b(context, c(context));
    }

    public final JSONObject b() throws JSONException {
        JSONObject jSONObjectB = O6.a().b();
        Intrinsics.checkNotNullExpressionValue(jSONObjectB, "toJSON(...)");
        return jSONObjectB;
    }

    public final void b(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        IronLog.INTERNAL.error(message);
    }

    public final String c(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return M1.g(context);
    }

    public final JSONObject c() {
        JSONObject jSONObject = new JSONObject();
        try {
            ConcurrentHashMap<String, AdapterBaseWrapper> concurrentHashMapF = com.ironsource.mediationsdk.c.c().f();
            Intrinsics.checkNotNull(concurrentHashMapF);
            for (Map.Entry<String, AdapterBaseWrapper> entry : concurrentHashMapF.entrySet()) {
                if (entry.getValue().getAdapterBaseInterface() != null) {
                    Wf wf = a;
                    String key = entry.getKey();
                    Intrinsics.checkNotNullExpressionValue(key, "<get-key>(...)");
                    String strA = wf.a(key);
                    AdapterBaseInterface adapterBaseInterface = entry.getValue().getAdapterBaseInterface();
                    Intrinsics.checkNotNullExpressionValue(adapterBaseInterface, "getAdapterBaseInterface(...)");
                    String adapterVersion = adapterBaseInterface.getAdapterVersion();
                    Intrinsics.checkNotNullExpressionValue(adapterVersion, "getAdapterVersion(...)");
                    jSONObject.putOpt(strA, wf.a(adapterVersion, adapterBaseInterface.getNetworkSDKVersion()));
                }
            }
        } catch (Exception e) {
            C3801r4.d().a(e);
        }
        return jSONObject;
    }

    public final ConcurrentHashMap<String, List<String>> d() {
        ConcurrentHashMap<String, List<String>> concurrentHashMap = new ConcurrentHashMap<>();
        concurrentHashMap.putAll(com.ironsource.mediationsdk.c.c().e());
        concurrentHashMap.putAll(C3845ta.b().c());
        return concurrentHashMap;
    }

    public final void e() {
        com.ironsource.mediationsdk.p.g().G();
    }
}
