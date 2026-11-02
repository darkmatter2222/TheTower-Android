package com.ironsource.adqualitysdk.sdk.i;

import android.view.View;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.w, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3498w implements z0 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ B f384;

    public C3498w(B b) {
        this.f384 = b;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.z0
    /* JADX INFO: renamed from: ﾇ */
    public final void mo1815(View view) {
        view.removeOnLayoutChangeListener(this.f384.f87);
        this.f384.f84.remove(view);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.z0
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1818(View view) {
        view.addOnLayoutChangeListener(this.f384.f87);
        B b = this.f384;
        b.f84.put(view, b.f87);
    }
}
