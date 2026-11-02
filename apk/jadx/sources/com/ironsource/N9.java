package com.ironsource;

import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: loaded from: classes4.dex */
public class N9 extends AbstractC3800r3 {
    private static N9 R;
    private String P;
    private final Q8 Q = Pb.k0().s();

    private N9() {
        this.H = "ironbeast";
        this.G = 2;
        this.I = IronSourceConstants.INTERSTITIAL_EVENT_TYPE;
        this.P = "";
    }

    public static synchronized N9 i() {
        if (R == null) {
            N9 n9 = new N9();
            R = n9;
            n9.e();
        }
        return R;
    }

    @Override // com.ironsource.AbstractC3800r3
    protected int c(C5 c5) {
        int iF = f(c5.c());
        if (iF == AbstractC3800r3.e.BANNER.b()) {
            return this.Q.a(IronSource.a.BANNER);
        }
        return iF == AbstractC3800r3.e.NATIVE_AD.b() ? this.Q.a(IronSource.a.NATIVE_AD) : this.Q.a(IronSource.a.INTERSTITIAL);
    }

    @Override // com.ironsource.AbstractC3800r3
    protected void d() {
        this.J.add(Integer.valueOf(D5.IS_LOAD_CALLED.c()));
        this.J.add(Integer.valueOf(D5.IS_INSTANCE_LOAD.c()));
        this.J.add(Integer.valueOf(D5.IS_INSTANCE_LOAD_SUCCESS.c()));
        this.J.add(Integer.valueOf(D5.IS_CALLBACK_LOAD_SUCCESS.c()));
        this.J.add(Integer.valueOf(D5.IS_INSTANCE_LOAD_FAILED.c()));
        this.J.add(Integer.valueOf(D5.IS_INSTANCE_LOAD_NO_FILL.c()));
        this.J.add(Integer.valueOf(D5.IS_INSTANCE_READY_TRUE.c()));
        this.J.add(Integer.valueOf(D5.IS_INSTANCE_READY_FALSE.c()));
        this.J.add(Integer.valueOf(D5.BN_LOAD.c()));
        this.J.add(Integer.valueOf(D5.BN_CALLBACK_LOAD_ERROR.c()));
        this.J.add(Integer.valueOf(D5.BN_RELOAD.c()));
        this.J.add(Integer.valueOf(D5.BN_CALLBACK_RELOAD_ERROR.c()));
        this.J.add(Integer.valueOf(D5.BN_CALLBACK_RELOAD_SUCCESS.c()));
        this.J.add(Integer.valueOf(D5.BN_INSTANCE_LOAD.c()));
        this.J.add(Integer.valueOf(D5.BN_INSTANCE_RELOAD.c()));
        this.J.add(Integer.valueOf(D5.BN_INSTANCE_LOAD_SUCCESS.c()));
        this.J.add(Integer.valueOf(D5.BN_INSTANCE_LOAD_ERROR.c()));
        this.J.add(Integer.valueOf(D5.BN_INSTANCE_RELOAD_SUCCESS.c()));
        this.J.add(Integer.valueOf(D5.BN_INSTANCE_RELOAD_ERROR.c()));
        this.J.add(Integer.valueOf(D5.BN_INSTANCE_UNEXPECTED_LOAD_SUCCESS.c()));
        this.J.add(Integer.valueOf(D5.BN_INSTANCE_UNEXPECTED_RELOAD_SUCCESS.c()));
        this.J.add(Integer.valueOf(D5.BN_INSTANCE_SHOW.c()));
        this.J.add(Integer.valueOf(D5.NT_LOAD.c()));
        this.J.add(Integer.valueOf(D5.NT_CALLBACK_LOAD_ERROR.c()));
        this.J.add(Integer.valueOf(D5.NT_INSTANCE_LOAD.c()));
        this.J.add(Integer.valueOf(D5.NT_INSTANCE_LOAD_SUCCESS.c()));
        this.J.add(Integer.valueOf(D5.NT_INSTANCE_LOAD_ERROR.c()));
        this.J.add(Integer.valueOf(D5.NT_INSTANCE_SHOW.c()));
    }

    @Override // com.ironsource.AbstractC3800r3
    protected boolean d(C5 c5) {
        int iC = c5.c();
        return iC == D5.IS_CALLBACK_LOAD_SUCCESS.c() || iC == D5.IS_INSTANCE_OPENED.c() || iC == D5.IS_INSTANCE_CLOSED.c() || iC == D5.IS_AUCTION_SUCCESS.c() || iC == D5.IS_AUCTION_FAILED.c() || iC == D5.BN_INSTANCE_SHOW.c() || iC == D5.BN_AUCTION_SUCCESS.c() || iC == D5.BN_AUCTION_FAILED.c() || iC == D5.NT_INSTANCE_LOAD_SUCCESS.c() || iC == D5.NT_INSTANCE_SHOW.c() || iC == D5.NT_AUCTION_SUCCESS.c() || iC == D5.NT_AUCTION_FAILED.c();
    }

    @Override // com.ironsource.AbstractC3800r3
    protected String e(int i) {
        return this.P;
    }

    @Override // com.ironsource.AbstractC3800r3
    protected void f(C5 c5) {
        this.P = c5.b().optString("placement");
    }

    @Override // com.ironsource.AbstractC3800r3
    protected boolean j(C5 c5) {
        return false;
    }
}
