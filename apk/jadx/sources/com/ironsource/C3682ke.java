package com.ironsource;

import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: renamed from: com.ironsource.ke, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public class C3682ke extends AbstractC3800r3 {
    private static C3682ke R;
    private String P;
    private final Q8 Q = Pb.k0().s();

    private C3682ke() {
        this.H = "outcome";
        this.G = 3;
        this.I = IronSourceConstants.REWARDED_VIDEO_EVENT_TYPE;
        this.P = "";
    }

    public static synchronized C3682ke i() {
        if (R == null) {
            C3682ke c3682ke = new C3682ke();
            R = c3682ke;
            c3682ke.e();
        }
        return R;
    }

    @Override // com.ironsource.AbstractC3800r3
    protected int c(C5 c5) {
        return this.Q.a(IronSource.a.REWARDED_VIDEO);
    }

    @Override // com.ironsource.AbstractC3800r3
    protected void d() {
        this.J.add(Integer.valueOf(D5.RV_BUSINESS_MEDIATION_LOAD.c()));
        this.J.add(Integer.valueOf(D5.RV_BUSINESS_INSTANCE_LOAD.c()));
        this.J.add(Integer.valueOf(D5.RV_BUSINESS_INSTANCE_LOAD_SUCCESS.c()));
        this.J.add(Integer.valueOf(D5.RV_BUSINESS_MEDIATION_LOAD_SUCCESS.c()));
        this.J.add(Integer.valueOf(D5.RV_INSTANCE_LOAD_FAILED.c()));
        this.J.add(Integer.valueOf(D5.RV_INSTANCE_SHOW_CHANCE.c()));
        this.J.add(Integer.valueOf(D5.RV_INSTANCE_READY_TRUE.c()));
        this.J.add(Integer.valueOf(D5.RV_INSTANCE_READY_FALSE.c()));
        this.J.add(Integer.valueOf(D5.RV_INSTANCE_LOAD_FAILED_REASON.c()));
        this.J.add(Integer.valueOf(D5.RV_INSTANCE_LOAD_NO_FILL.c()));
        this.J.add(Integer.valueOf(D5.RV_MEDIATION_LOAD_ERROR.c()));
    }

    @Override // com.ironsource.AbstractC3800r3
    protected boolean d(C5 c5) {
        int iC = c5.c();
        return iC == D5.FIRST_INSTANCE.c() || iC == D5.INIT_COMPLETE.c() || iC == D5.SDK_INIT_FAILED.c() || iC == D5.SDK_INIT_SUCCESS.c() || iC == D5.RV_BUSINESS_MEDIATION_LOAD_SUCCESS.c() || iC == D5.RV_BUSINESS_INSTANCE_OPENED.c() || iC == D5.RV_INSTANCE_CLOSED.c() || iC == D5.RV_BUSINESS_INSTANCE_REWARDED.c() || iC == D5.RV_AUCTION_FAILED.c() || iC == D5.RV_AUCTION_SUCCESS.c();
    }

    @Override // com.ironsource.AbstractC3800r3
    protected String e(int i) {
        return (i == 15 || (i >= 300 && i < 400)) ? this.P : "";
    }

    @Override // com.ironsource.AbstractC3800r3
    protected void f(C5 c5) {
        if (c5.c() == 15 || (c5.c() >= 300 && c5.c() < 400)) {
            this.P = c5.b().optString("placement");
        }
    }

    @Override // com.ironsource.AbstractC3800r3
    protected boolean j(C5 c5) {
        return false;
    }
}
