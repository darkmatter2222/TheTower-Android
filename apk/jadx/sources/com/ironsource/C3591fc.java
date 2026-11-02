package com.ironsource;

import android.text.TextUtils;
import com.ironsource.environment.ContextProvider;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.ads.nativead.internal.InternalNativeAdListener;
import com.ironsource.mediationsdk.adunit.adapter.internal.BaseAdAdapter;
import com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdInfo;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.json.JSONObject;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.StringCompanionObject;

/* JADX INFO: renamed from: com.ironsource.fc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3591fc extends AbstractC3743o3<C3662jc, AdapterAdListener> implements P0 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3591fc(List<? extends NetworkSettings> list, Wb configs, String str, C3845ta publisherDataHolder, C3643ia c3643ia) {
        super(new C3609gc(str, list, configs), publisherDataHolder, c3643ia);
        Intrinsics.checkNotNullParameter(configs, "configs");
        Intrinsics.checkNotNullParameter(publisherDataHolder, "publisherDataHolder");
    }

    @Override // com.ironsource.AbstractC3743o3
    protected void D() {
    }

    @Override // com.ironsource.AbstractC3743o3
    protected boolean E() {
        return false;
    }

    public final void J() {
        C3778pg c3778pg;
        Cb cb;
        IronLog.INTERNAL.verbose();
        try {
            C3662jc c3662jc = (C3662jc) this.a.d();
            if (c3662jc != null) {
                Integer numR = c3662jc.r();
                int iIntValue = numR != null ? numR.intValue() : this.D.a(this.p.b());
                E0 e0 = this.t;
                if (e0 != null && (cb = e0.f) != null) {
                    cb.a(iIntValue);
                }
                c3662jc.P();
                this.a.a(null);
                this.a.b(null);
            }
            this.j = null;
            a(AbstractC3743o3.f.NONE);
        } catch (Throwable th) {
            C3801r4.d().a(th);
            String str = "destroyNativeAd - exception = " + th.getLocalizedMessage();
            IronLog.INTERNAL.error(b(str));
            E0 e1 = this.t;
            if (e1 == null || (c3778pg = e1.j) == null) {
                return;
            }
            c3778pg.g(str);
        }
    }

    @Override // com.ironsource.AbstractC3743o3, com.ironsource.D0
    public Map<String, Object> a(B0 event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Map<String, Object> mapA = super.a(event);
        C3717md c3717md = this.j;
        if (c3717md != null) {
            Intrinsics.checkNotNull(mapA);
            mapA.put("placement", c3717md.c());
        }
        UUID uuid = this.x;
        if (uuid != null) {
            Intrinsics.checkNotNull(mapA);
            mapA.put("objectId", uuid);
        }
        Intrinsics.checkNotNull(mapA);
        return mapA;
    }

    public final void a(C3717md c3717md) {
        String str;
        int iB;
        IronLog.INTERNAL.verbose("placement = " + c3717md);
        if (c3717md == null || TextUtils.isEmpty(c3717md.c())) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            str = String.format("can't load native ad - %s", Arrays.copyOf(new Object[]{c3717md == null ? "placement is null" : "placement name is empty"}, 1));
            Intrinsics.checkNotNullExpressionValue(str, "format(...)");
            iB = A0.b(this.p.b());
        } else if (this.F.c(ContextProvider.getInstance().getApplicationContext(), c3717md, this.p.b())) {
            StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
            str = String.format("placement %s is capped", Arrays.copyOf(new Object[]{c3717md.c()}, 1));
            Intrinsics.checkNotNullExpressionValue(str, "format(...)");
            iB = A0.f(this.p.b());
        } else {
            str = null;
            iB = 510;
        }
        if (TextUtils.isEmpty(str)) {
            this.j = c3717md;
            x();
        } else {
            IronLog.API.error(b(str));
            a(iB, str, false);
        }
    }

    public final void a(InternalNativeAdListener nativeAdListener) {
        Intrinsics.checkNotNullParameter(nativeAdListener, "nativeAdListener");
        a(new C3573ec(nativeAdListener));
    }

    @Override // com.ironsource.AbstractC3743o3
    protected void a(IronSourceError ironSourceError) {
        this.u.a(ironSourceError);
    }

    @Override // com.ironsource.AbstractC3743o3
    protected void a(AbstractC3761p3<?> abstractC3761p3, AdInfo adInfo) {
        if (abstractC3761p3 instanceof C3662jc) {
            C3662jc c3662jc = (C3662jc) abstractC3761p3;
            this.u.a(c3662jc.Q(), c3662jc.R(), adInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ironsource.AbstractC3743o3
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public C3662jc a(NetworkSettings providerSettings, BaseAdAdapter<?, AdapterAdListener> adapter, int i, String currentAuctionId, C3927y2 item) {
        Intrinsics.checkNotNullParameter(providerSettings, "providerSettings");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(currentAuctionId, "currentAuctionId");
        Intrinsics.checkNotNullParameter(item, "item");
        return new C3662jc(this, new C3722n0(IronSource.a.NATIVE_AD, this.p.o(), i, this.h, currentAuctionId, this.f, this.g, providerSettings, this.p.n()), adapter, this.j, item, this);
    }

    @Override // com.ironsource.AbstractC3743o3
    protected JSONObject c(NetworkSettings providerSettings) {
        Intrinsics.checkNotNullParameter(providerSettings, "providerSettings");
        JSONObject nativeAdSettings = providerSettings.getNativeAdSettings();
        Intrinsics.checkNotNullExpressionValue(nativeAdSettings, "getNativeAdSettings(...)");
        return nativeAdSettings;
    }

    @Override // com.ironsource.AbstractC3743o3
    protected K0 d() {
        return new C3709m5();
    }

    @Override // com.ironsource.AbstractC3743o3
    protected String i() {
        return "NA";
    }

    @Override // com.ironsource.AbstractC3743o3
    protected String l() {
        return IronSourceConstants.OPW_NT_MANAGER_NAME;
    }

    @Override // com.ironsource.AbstractC3743o3
    protected boolean s() {
        return false;
    }
}
