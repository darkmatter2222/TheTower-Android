package com.ironsource.adqualitysdk.sdk.i;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Τ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0252 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0125 f1199;

    public C0252(C0125 c0125) {
        this.f1199 = c0125;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        C0125 c0125 = this.f1199;
        if (c0125.f808 == null) {
            c0125.f808 = new C0288(this);
            c0125.f810.post(new C0263(this));
        }
    }
}
