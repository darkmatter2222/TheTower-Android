package com.ironsource;

import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public class W1 implements InterfaceC3747o7 {
    private final I7 a;
    private X1 b;

    public static final class a {
        public final X1 a(U1 u1, I7 featureAvailabilityService) {
            Intrinsics.checkNotNullParameter(featureAvailabilityService, "featureAvailabilityService");
            IronLog ironLog = IronLog.INTERNAL;
            ironLog.verbose("isAndroidxApplicationLifecycleAvailable: " + featureAvailabilityService.a());
            ironLog.verbose("isAndroidxApplicationLifecycleEnabled: " + (u1 != null ? Boolean.valueOf(u1.l()) : null));
            boolean z = false;
            if (featureAvailabilityService.a()) {
                C3682ke.i().a(new C5(D5.TROUBLESHOOTING_ANDROIDX_PROCESS_LIFECYCLE_OWNER_AVAILABLE, IronSourceUtils.b(false)));
            }
            if ((u1 != null ? u1.l() : false) && featureAvailabilityService.a()) {
                z = true;
            }
            ironLog.verbose("isAndroidxEnabled: " + z);
            return z ? new C3890w1() : new X7();
        }
    }

    public W1(I7 featureAvailabilityService) {
        Intrinsics.checkNotNullParameter(featureAvailabilityService, "featureAvailabilityService");
        this.a = featureAvailabilityService;
    }

    @Override // com.ironsource.InterfaceC3747o7
    public void a(U1 u1) {
        if (this.b == null) {
            this.b = new a().a(u1, this.a);
        }
    }

    @Override // com.ironsource.X1
    public void a(InterfaceC3790qa observer) {
        Intrinsics.checkNotNullParameter(observer, "observer");
        X1 x1 = this.b;
        if (x1 != null) {
            x1.a(observer);
        }
    }

    @Override // com.ironsource.X1
    public void b(InterfaceC3790qa observer) {
        Intrinsics.checkNotNullParameter(observer, "observer");
        X1 x1 = this.b;
        if (x1 != null) {
            x1.b(observer);
        }
    }
}
