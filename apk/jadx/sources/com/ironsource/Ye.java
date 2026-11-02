package com.ironsource;

import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import org.json.JSONException;
import org.json.JSONObject;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class Ye {
    private C3567e6 a;

    private final class a extends Xe {
        public a() {
        }

        @Override // com.ironsource.Xe, java.lang.Runnable
        public void run() {
            JSONObject jSONObjectB = IronSourceUtils.b(false);
            try {
                jSONObjectB.put("duration", a());
            } catch (JSONException e) {
                C3801r4.d().a(e);
                IronLog.INTERNAL.error(e.toString());
            }
            C3663jd.P.a(new C5(D5.APP_ENTER_BACKGROUND, jSONObjectB));
        }
    }

    public final void a(InterfaceC3747o7 applicationLifecycleService) {
        Intrinsics.checkNotNullParameter(applicationLifecycleService, "applicationLifecycleService");
        this.a = new C3567e6(applicationLifecycleService, new a());
    }
}
