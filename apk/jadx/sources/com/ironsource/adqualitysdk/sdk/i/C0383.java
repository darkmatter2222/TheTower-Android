package com.ironsource.adqualitysdk.sdk.i;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ـ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0383 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0232 f1846;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ EnumC0236 f1847;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ String f1848;

    public C0383(C0232 c0232, String str, EnumC0236 enumC0236) {
        this.f1846 = c0232;
        this.f1848 = str;
        this.f1847 = enumC0236;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        synchronized (this.f1846) {
            this.f1846.f1170.put(this.f1848, this.f1847);
        }
    }
}
