package com.ironsource;

import android.content.Context;
import com.ironsource.mediationsdk.config.ConfigFile;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.unity3d.ironsourceads.InitListener;
import com.unity3d.ironsourceads.InitRequest;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;
import p005kotlin.collections.ArraysKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class V9 {
    public static final V9 a = new V9();
    private static final C3806r9 b = new C3806r9();

    public static final class a implements InitListener {
        a() {
        }

        @Override // com.unity3d.ironsourceads.InitListener
        public void onInitFailed(IronSourceError error) {
            Intrinsics.checkNotNullParameter(error, "error");
        }

        @Override // com.unity3d.ironsourceads.InitListener
        public void onInitSuccess() {
        }
    }

    public static final class b implements InterfaceC3921xe {
        final /* synthetic */ Context a;
        final /* synthetic */ C3691l5 b;
        final /* synthetic */ InitListener c;

        b(Context context, C3691l5 c3691l5, InitListener initListener) {
            this.a = context;
            this.b = c3691l5;
            this.c = initListener;
        }

        @Override // com.ironsource.InterfaceC3921xe
        public void a(C3794qe sdkConfig) {
            Intrinsics.checkNotNullParameter(sdkConfig, "sdkConfig");
            V9.a.a(this.a, sdkConfig.d(), this.b, this.c);
        }

        @Override // com.ironsource.InterfaceC3921xe
        public void a(C3829se error) {
            Intrinsics.checkNotNullParameter(error, "error");
            V9.a.a(this.c, this.b, error);
        }
    }

    private V9() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(Context context, Ue ue, C3691l5 c3691l5, InitListener initListener) {
        String strN = com.ironsource.mediationsdk.p.g().n();
        C3588f9 c3588f9G = ue.g();
        Intrinsics.checkNotNullExpressionValue(c3588f9G, "getInitialConfiguration(...)");
        NetworkSettings networkSettingsB = ue.l().b("IronSource");
        Intrinsics.checkNotNullExpressionValue(networkSettingsB, "getProviderSettings(...)");
        JSONObject interstitialSettings = networkSettingsB.getInterstitialSettings();
        Intrinsics.checkNotNullExpressionValue(interstitialSettings, "getInterstitialSettings(...)");
        c3588f9G.a(new W.a(interstitialSettings, Pb.w.d().h()));
        c3588f9G.a(ConfigFile.getConfigFile().getPluginType());
        c3588f9G.b(strN);
        new Y(new C3901wc()).a(context, c3588f9G, new a());
        a(ue, c3691l5, initListener);
    }

    private final void a(Ue ue, C3691l5 c3691l5, final InitListener initListener) {
        T1 t1E;
        K1 k1B = ue.c().b();
        new Qb().a((k1B == null || (t1E = k1B.e()) == null) ? null : t1E.b(), true);
        String strN = com.ironsource.mediationsdk.p.g().n();
        C3774pc c3774pcA = C3774pc.e.a();
        c3774pcA.a(ue.l());
        c3774pcA.a(ue.c());
        Intrinsics.checkNotNull(strN);
        c3774pcA.a(strN);
        c3774pcA.g();
        long jA = C3691l5.a(c3691l5);
        C3806r9 c3806r9 = b;
        Ue.a aVarI = ue.i();
        Intrinsics.checkNotNullExpressionValue(aVarI, "getOrigin(...)");
        c3806r9.a(jA, aVarI);
        c3806r9.b(new Runnable() { // from class: com.ironsource.V9$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                V9.a(initListener);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3829se c3829se, InitListener initListener, C3829se c3829se2) {
        IronLog.CALLBACK.info("InitListener.onInitFailed() error " + c3829se);
        if (initListener != null) {
            initListener.onInitFailed(b.a(c3829se2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(InitListener initListener) {
        IronLog.CALLBACK.info("InitListener.onInitSuccess()");
        if (initListener != null) {
            initListener.onInitSuccess();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(final InitListener initListener, C3691l5 c3691l5, final C3829se c3829se) {
        long jA = C3691l5.a(c3691l5);
        C3806r9 c3806r9 = b;
        final C3829se c3829seB = c3806r9.b(c3829se);
        c3806r9.a(c3829seB, jA);
        c3806r9.b(new Runnable() { // from class: com.ironsource.V9$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                V9.a(c3829se, initListener, c3829seB);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(InitRequest initRequest, Context context, InitListener initListener) {
        C3691l5 c3691l5 = new C3691l5();
        Ge.a.c(context, new C3957ze(initRequest.getAppKey(), null, ArraysKt.toMutableList(b.a(initRequest.getLegacyAdFormats())), 2, null), new b(context, c3691l5, initListener));
    }

    private final void a(boolean z) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(IronSourceConstants.EVENTS_EXT1, String.valueOf(z));
        Pb.w.d().q().a(new C5(D5.CONSENT_IADS, jSONObject));
    }

    public final void a(final Context context, final InitRequest initRequest, final InitListener initializationListener) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(initRequest, "initRequest");
        Intrinsics.checkNotNullParameter(initializationListener, "initializationListener");
        IronLog.API.info("IronSourceAds.init() appkey: " + initRequest.getAppKey() + ", legacyAdFormats: " + initRequest.getLegacyAdFormats() + ", context: " + context.getClass().getSimpleName());
        b.a(new Runnable() { // from class: com.ironsource.V9$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                V9.a(initRequest, context, initializationListener);
            }
        });
    }

    public final void a(String key, String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        ArrayList arrayList = new ArrayList();
        arrayList.add(value);
        com.ironsource.mediationsdk.p.g().a(key, arrayList);
    }

    public final void b(boolean z) throws JSONException {
        a(z);
        new C3865uc().a(z);
    }
}
