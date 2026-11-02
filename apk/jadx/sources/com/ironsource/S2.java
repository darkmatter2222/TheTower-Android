package com.ironsource;

import android.text.TextUtils;
import com.ironsource.environment.ContextProvider;
import com.ironsource.mediationsdk.AdapterUtils;
import com.ironsource.mediationsdk.ISBannerSize;
import com.ironsource.mediationsdk.logger.IronLog;
import com.unity3d.mediation.LevelPlayAdInfo;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.StringCompanionObject;

/* JADX INFO: loaded from: classes4.dex */
public class S2 extends AbstractC3780q0 {
    private final C3551d9 i;
    private final WeakReference<V2> j;
    private final a k;
    private final T2 l;

    private final class a extends AbstractC3780q0.a implements K2 {
        public a() {
            super();
        }

        @Override // com.ironsource.K2
        public void a(I2 instance) {
            Intrinsics.checkNotNullParameter(instance, "instance");
            IronLog.INTERNAL.verbose(S2.this.a(instance.q()));
            V2 v2 = (V2) S2.this.j.get();
            if (v2 != null) {
                v2.g();
            }
        }

        @Override // com.ironsource.AbstractC3780q0.a, com.ironsource.E
        public void b(A instance) {
            Intrinsics.checkNotNullParameter(instance, "instance");
            super.b(instance);
            LevelPlayAdInfo levelPlayAdInfoE = instance.e();
            S2.this.i.a(levelPlayAdInfoE);
            InterfaceC3943z0 interfaceC3943z0I = S2.this.i();
            if (interfaceC3943z0I != null) {
                interfaceC3943z0I.a(levelPlayAdInfoE);
            }
        }

        @Override // com.ironsource.K2
        public void b(I2 instance) {
            Intrinsics.checkNotNullParameter(instance, "instance");
            IronLog.INTERNAL.verbose(S2.this.a(instance.q()));
            V2 v2 = (V2) S2.this.j.get();
            if (v2 != null) {
                v2.j();
            }
        }

        @Override // com.ironsource.K2
        public void c(I2 instance) {
            Intrinsics.checkNotNullParameter(instance, "instance");
            IronLog.INTERNAL.verbose(S2.this.a(instance.q()));
            V2 v2 = (V2) S2.this.j.get();
            if (v2 != null) {
                v2.h();
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public S2(C3758p0 tools, T2 adUnitData, V2 listener, C3551d9 impressionDataListenerHolder) {
        String str;
        int iB;
        super(tools, adUnitData, listener);
        Intrinsics.checkNotNullParameter(tools, "tools");
        Intrinsics.checkNotNullParameter(adUnitData, "adUnitData");
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(impressionDataListenerHolder, "impressionDataListenerHolder");
        this.i = impressionDataListenerHolder;
        this.j = new WeakReference<>(listener);
        this.k = new a();
        this.l = adUnitData;
        C3717md c3717mdG = g();
        IronLog.INTERNAL.verbose("placement = " + c3717mdG);
        if (c3717mdG == null || TextUtils.isEmpty(c3717mdG.c())) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            str = String.format("can't load banner - %s", Arrays.copyOf(new Object[]{c3717mdG == null ? "placement is null" : "placement name is empty"}, 1));
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
    public static final A a(S2 s2, B instanceData, H adInstancePayload) {
        Intrinsics.checkNotNullParameter(instanceData, "instanceData");
        Intrinsics.checkNotNullParameter(adInstancePayload, "adInstancePayload");
        return new I2(new T0(s2.f(), E0.b.PROVIDER), instanceData, adInstancePayload, s2.k);
    }

    private final ISBannerSize a(ISBannerSize iSBannerSize) {
        if (iSBannerSize.isSmart()) {
            return AdapterUtils.isLargeScreen(ContextProvider.getInstance().getApplicationContext()) ? com.ironsource.mediationsdk.j.a() : ISBannerSize.BANNER;
        }
        return iSBannerSize;
    }

    private final ISBannerSize l() {
        return f().a(this.l.b().i());
    }

    @Override // com.ironsource.AbstractC3780q0
    protected D a() {
        return new D() { // from class: com.ironsource.S2$$ExternalSyntheticLambda0
            @Override // com.ironsource.D
            public final A a(B b, H h) {
                return S2.a(this.f$0, b, h);
            }
        };
    }

    public final void a(Bg bg, InterfaceC3943z0 displayListener) {
        Intrinsics.checkNotNullParameter(displayListener, "displayListener");
        if (bg != null) {
            a(new M2(bg), displayListener);
        }
    }

    @Override // com.ironsource.AbstractC3780q0
    public C3815s0 b() {
        return new Z2(this.l.b(), a(l()));
    }
}
