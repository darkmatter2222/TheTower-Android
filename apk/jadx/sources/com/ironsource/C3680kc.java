package com.ironsource;

import android.text.TextUtils;
import com.ironsource.mediationsdk.logger.IronLog;
import java.util.Arrays;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.StringCompanionObject;

/* JADX INFO: renamed from: com.ironsource.kc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3680kc extends AbstractC3780q0 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3680kc(C3758p0 adTools, C3698lc adUnitData, InterfaceC3716mc listener) {
        String str;
        int iB;
        super(adTools, adUnitData, listener);
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(adUnitData, "adUnitData");
        Intrinsics.checkNotNullParameter(listener, "listener");
        C3717md c3717mdG = g();
        IronLog.INTERNAL.verbose("placement = " + c3717mdG);
        if (c3717mdG == null || TextUtils.isEmpty(c3717mdG.c())) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            str = String.format("can't load native ad - %s", Arrays.copyOf(new Object[]{c3717mdG == null ? "placement is null" : "placement name is empty"}, 1));
            Intrinsics.checkNotNullExpressionValue(str, "format(...)");
            iB = A0.b(adUnitData.b().a());
        } else {
            str = null;
            iB = 510;
        }
        if (str != null) {
            IronLog.API.error(a(str));
            a(iB, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final A a(C3680kc c3680kc, B adInstanceData, H adInstancePayload) {
        Intrinsics.checkNotNullParameter(adInstanceData, "adInstanceData");
        Intrinsics.checkNotNullParameter(adInstancePayload, "adInstancePayload");
        return new C3536cc(new T0(c3680kc.f(), E0.b.PROVIDER), adInstanceData, adInstancePayload, new AbstractC3780q0.a());
    }

    @Override // com.ironsource.AbstractC3780q0
    protected D a() {
        return new D() { // from class: com.ironsource.kc$$ExternalSyntheticLambda0
            @Override // com.ironsource.D
            public final A a(B b, H h) {
                return C3680kc.a(this.f$0, b, h);
            }
        };
    }
}
