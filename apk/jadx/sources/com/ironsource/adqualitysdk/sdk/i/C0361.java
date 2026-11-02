package com.ironsource.adqualitysdk.sdk.i;

import android.view.KeyEvent;
import android.view.View;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.נ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0361 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final /* synthetic */ KeyEvent.Callback f1658;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC3470f0 f1659;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ View f1660;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ JSONObject f1661;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC0522 f1662;

    public C0361(InterfaceC0522 interfaceC0522, JSONObject jSONObject, View view, InterfaceC3470f0 interfaceC3470f0, KeyEvent.Callback callback) {
        this.f1662 = interfaceC0522;
        this.f1661 = jSONObject;
        this.f1660 = view;
        this.f1659 = interfaceC3470f0;
        this.f1658 = callback;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        this.f1662.mo1837(this.f1661, this.f1660, this.f1659, this.f1658);
    }
}
