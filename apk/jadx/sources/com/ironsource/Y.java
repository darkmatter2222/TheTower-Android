package com.ironsource;

import android.content.Context;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.ironsourceads.InitListener;
import java.util.Map;
import org.json.JSONObject;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class Y implements X {
    private final InterfaceC3883vc a;

    public static final class a implements Tc {
        final /* synthetic */ C3588f9 a;
        final /* synthetic */ InitListener b;

        a(C3588f9 c3588f9, InitListener initListener) {
            this.a = c3588f9;
            this.b = initListener;
        }

        @Override // com.ironsource.Tc
        public void onFail(C3861u8 error) {
            Intrinsics.checkNotNullParameter(error, "error");
            IronLog.ADAPTER_API.verbose("initSDKWithNetworkConfigurations error: " + error);
            this.b.onInitFailed(C3948z5.a.a(new IronSourceError(error.a(), error.b())));
        }

        @Override // com.ironsource.Tc
        public void onSuccess() {
            IronLog ironLog = IronLog.ADAPTER_API;
            ironLog.verbose("initSDKWithNetworkConfigurations success");
            W wE = this.a.e();
            ironLog.verbose("controllerURL = " + (wE != null ? wE.a() : null));
            W wE2 = this.a.e();
            ironLog.verbose("controllerConfig = " + (wE2 != null ? wE2.b() : null));
            W wE3 = this.a.e();
            ironLog.verbose("debugMode = " + (wE3 != null ? Integer.valueOf(wE3.c()) : null));
            ironLog.verbose("applicationKey = " + this.a.d());
            ironLog.verbose("userId = " + this.a.h());
            this.b.onInitSuccess();
        }
    }

    public Y(InterfaceC3883vc networkInitApi) {
        Intrinsics.checkNotNullParameter(networkInitApi, "networkInitApi");
        this.a = networkInitApi;
    }

    @Override // com.ironsource.X
    public void a(Context context, C3588f9 initConfig, InitListener initListener) {
        JSONObject jSONObjectB;
        String strA;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(initConfig, "initConfig");
        Intrinsics.checkNotNullParameter(initListener, "initListener");
        InterfaceC3883vc interfaceC3883vc = this.a;
        W wE = initConfig.e();
        interfaceC3883vc.a(wE != null ? wE.c() : 0);
        W wE2 = initConfig.e();
        if (wE2 != null && (strA = wE2.a()) != null) {
            this.a.b(strA);
        }
        W wE3 = initConfig.e();
        if (wE3 != null && (jSONObjectB = wE3.b()) != null) {
            InterfaceC3883vc interfaceC3883vc2 = this.a;
            String string = jSONObjectB.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            interfaceC3883vc2.a(string);
        }
        Map<String, String> mapA = new C3847tc().a();
        this.a.a(new a(initConfig, initListener));
        this.a.a(context, initConfig.d(), initConfig.h(), mapA);
    }
}
