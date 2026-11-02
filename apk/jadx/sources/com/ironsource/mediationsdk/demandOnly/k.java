package com.ironsource.mediationsdk.demandOnly;

import com.ironsource.C3647ie;
import com.ironsource.C3763p5;
import com.ironsource.C3801r4;
import com.ironsource.D5;
import com.ironsource.InterfaceC3514b8;
import com.ironsource.Q9;
import com.ironsource.T4;
import com.ironsource.mediationsdk.AbstractAdapter;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.ironsource.mediationsdk.utils.ErrorBuilder;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
public class k implements i.c {
    private final T4 a;
    private final ConcurrentHashMap<String, l> b;
    private final InterfaceC3514b8<ISDemandOnlyRewardedVideoListener> c;

    public k(List<NetworkSettings> list, C3647ie c3647ie, com.ironsource.mediationsdk.c cVar, InterfaceC3514b8<ISDemandOnlyRewardedVideoListener> interfaceC3514b8, String str, String str2, T4 t4) {
        String strD = IronSourceUtils.d();
        boolean zD = c3647ie.d();
        com.ironsource.mediationsdk.f fVar = new com.ironsource.mediationsdk.f(c3647ie.k(), strD);
        this.b = new ConcurrentHashMap<>();
        this.a = t4;
        this.c = interfaceC3514b8;
        for (NetworkSettings networkSettings : list) {
            if (networkSettings.isIronSource()) {
                AbstractAdapter abstractAdapterA = cVar.a(networkSettings, networkSettings.getRewardedVideoSettings(), true);
                if (abstractAdapterA != null) {
                    l lVar = new l(str, str2, networkSettings, this.c.a(networkSettings.getSubProviderId()), c3647ie.i(), abstractAdapterA, new com.ironsource.mediationsdk.e(fVar));
                    lVar.a(zD);
                    this.b.put(networkSettings.getSubProviderId(), lVar);
                }
            } else {
                IronLog.INTERNAL.error("cannot load " + networkSettings.getProviderTypeForReflection());
            }
        }
    }

    public ConcurrentHashMap<String, l> a() {
        return this.b;
    }

    @Override // com.ironsource.mediationsdk.demandOnly.i.c
    public void a(h.d dVar) {
        String strE = dVar.e();
        try {
            l lVar = this.b.get(strE);
            if (lVar == null) {
                this.a.a(D5.RV_DO_BUSINESS_INSTANCE_NOT_FOUND_IN_LOAD, strE);
                IronSourceError ironSourceErrorBuildNonExistentInstanceError = ErrorBuilder.buildNonExistentInstanceError(IronSourceConstants.REWARDED_VIDEO_AD_UNIT);
                IronLog.API.error(ironSourceErrorBuildNonExistentInstanceError.getErrorMessage());
                this.c.a(strE).onRewardedVideoAdLoadFailed(strE, ironSourceErrorBuildNonExistentInstanceError);
                return;
            }
            if (dVar.c()) {
                lVar.b(new o.a(Q9.b(C3763p5.b().c(), dVar.b())));
            } else {
                lVar.c();
            }
        } catch (Exception e) {
            C3801r4.d().a(e);
            IronSourceError ironSourceErrorBuildLoadFailedError = ErrorBuilder.buildLoadFailedError("loadRewardedVideo exception " + e.getMessage());
            IronLog.API.error(ironSourceErrorBuildLoadFailedError.getErrorMessage());
            this.c.a(strE).onRewardedVideoAdLoadFailed(strE, ironSourceErrorBuildLoadFailedError);
        }
    }

    @Override // com.ironsource.mediationsdk.demandOnly.i.c
    public boolean a(String str) {
        l lVar = this.b.get(str);
        if (lVar != null) {
            return lVar.a();
        }
        this.a.a(D5.RV_DO_INSTANCE_NOT_FOUND_IN_AVAILABILITY_CHECK, str);
        return false;
    }

    @Override // com.ironsource.mediationsdk.demandOnly.i.c
    public void b(String str) {
        try {
            l lVar = this.b.get(str);
            if (lVar != null) {
                lVar.d();
                return;
            }
            this.a.a(D5.RV_DO_BUSINESS_INSTANCE_NOT_FOUND_IN_SHOW, str);
            IronSourceError ironSourceErrorBuildNonExistentInstanceError = ErrorBuilder.buildNonExistentInstanceError(IronSourceConstants.REWARDED_VIDEO_AD_UNIT);
            IronLog.API.error(ironSourceErrorBuildNonExistentInstanceError.getErrorMessage());
            this.c.a(str).onRewardedVideoAdShowFailed(str, ironSourceErrorBuildNonExistentInstanceError);
        } catch (Exception e) {
            C3801r4.d().a(e);
            IronSourceError ironSourceErrorBuildShowFailedError = ErrorBuilder.buildShowFailedError(IronSourceConstants.REWARDED_VIDEO_AD_UNIT, "showRewardedVideo exception " + e.getMessage());
            IronLog.API.error(ironSourceErrorBuildShowFailedError.getErrorMessage());
            this.c.a(str).onRewardedVideoAdShowFailed(str, ironSourceErrorBuildShowFailedError);
        }
    }
}
