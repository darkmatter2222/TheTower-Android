package com.ironsource.adqualitysdk.sdk.i;

import android.view.KeyEvent;
import android.view.View;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ɩ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0146 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final /* synthetic */ KeyEvent.Callback f852;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ C3460a0 f853;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ View f854;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ JSONObject f855;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC0522 f856;

    public C0146(InterfaceC0522 interfaceC0522, JSONObject jSONObject, View view, C3460a0 c3460a0, KeyEvent.Callback callback) {
        this.f856 = interfaceC0522;
        this.f855 = jSONObject;
        this.f854 = view;
        this.f853 = c3460a0;
        this.f852 = callback;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        this.f856.mo1836(this.f855, this.f854, this.f853, this.f852);
    }
}
