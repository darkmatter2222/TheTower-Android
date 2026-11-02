package com.ironsource.adqualitysdk.sdk.i;

import android.view.KeyEvent;
import android.view.View;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ז, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0353 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ KeyEvent.Callback f1629;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ View f1630;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ JSONObject f1631;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC0522 f1632;

    public C0353(InterfaceC0522 interfaceC0522, JSONObject jSONObject, View view, KeyEvent.Callback callback) {
        this.f1632 = interfaceC0522;
        this.f1631 = jSONObject;
        this.f1630 = view;
        this.f1629 = callback;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        this.f1632.mo1833(this.f1631, this.f1630, this.f1629);
    }
}
