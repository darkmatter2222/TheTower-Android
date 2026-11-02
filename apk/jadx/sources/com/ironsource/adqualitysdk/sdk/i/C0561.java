package com.ironsource.adqualitysdk.sdk.i;

import android.media.MediaPlayer;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᒣ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0561 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0521 f2302;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ MediaPlayer f2303;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0147 f2304;

    public C0561(C0521 c0521, C0147 c0147, MediaPlayer mediaPlayer) {
        this.f2302 = c0521;
        this.f2304 = c0147;
        this.f2303 = mediaPlayer;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        this.f2302.f2206.mo1931(this.f2304, this.f2303);
    }
}
