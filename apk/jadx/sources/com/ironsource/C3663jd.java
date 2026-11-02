package com.ironsource;

import com.ironsource.environment.ContextProvider;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.ArrayList;
import org.json.JSONException;

/* JADX INFO: renamed from: com.ironsource.jd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3663jd extends AbstractC3800r3 {
    public static final C3663jd P;

    static {
        C3663jd c3663jd = new C3663jd();
        P = c3663jd;
        c3663jd.H = "outcome";
        c3663jd.G = 0;
        c3663jd.I = IronSourceConstants.PIXEL_EVENT_TYPE;
        c3663jd.e();
    }

    private C3663jd() {
    }

    @Override // com.ironsource.AbstractC3800r3
    protected void a(ArrayList<C5> arrayList) {
    }

    @Override // com.ironsource.AbstractC3800r3
    protected int c(C5 c5) {
        return 1;
    }

    @Override // com.ironsource.AbstractC3800r3
    protected void d() {
    }

    @Override // com.ironsource.AbstractC3800r3
    protected boolean d(C5 c5) {
        return true;
    }

    @Override // com.ironsource.AbstractC3800r3
    protected String e(int i) {
        return "";
    }

    @Override // com.ironsource.AbstractC3800r3
    protected void f(C5 c5) {
    }

    @Override // com.ironsource.AbstractC3800r3
    protected boolean g(C5 c5) {
        return false;
    }

    @Override // com.ironsource.AbstractC3800r3
    protected boolean h(C5 c5) {
        return false;
    }

    public final void i() throws JSONException {
        new C3516ba().b(ContextProvider.getInstance().getApplicationContext());
        a(new C5(D5.INIT_DEFERRED_DATA, new C3624h9().a()));
    }

    @Override // com.ironsource.AbstractC3800r3
    protected boolean j(C5 c5) {
        return false;
    }
}
