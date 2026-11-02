package com.ironsource.adqualitysdk.sdk.i;

import android.view.KeyEvent;
import android.view.View;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ן, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0360 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final /* synthetic */ KeyEvent.Callback f1653;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC3470f0 f1654;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ View f1655;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ JSONObject f1656;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC0522 f1657;

    public C0360(InterfaceC0522 interfaceC0522, JSONObject jSONObject, View view, InterfaceC3470f0 interfaceC3470f0, KeyEvent.Callback callback) {
        this.f1657 = interfaceC0522;
        this.f1656 = jSONObject;
        this.f1655 = view;
        this.f1654 = interfaceC3470f0;
        this.f1653 = callback;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        this.f1657.mo1832(this.f1656, this.f1655, this.f1654, this.f1653);
    }
}
