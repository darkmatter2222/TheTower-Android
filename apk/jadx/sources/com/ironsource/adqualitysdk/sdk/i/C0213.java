package com.ironsource.adqualitysdk.sdk.i;

import android.view.KeyEvent;
import android.view.View;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ʶ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0213 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ KeyEvent.Callback f1099;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ View f1100;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ JSONObject f1101;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC0522 f1102;

    public C0213(InterfaceC0522 interfaceC0522, JSONObject jSONObject, View view, KeyEvent.Callback callback) {
        this.f1102 = interfaceC0522;
        this.f1101 = jSONObject;
        this.f1100 = view;
        this.f1099 = callback;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        this.f1102.mo1826(this.f1101, this.f1100, this.f1099);
    }
}
