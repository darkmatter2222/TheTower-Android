package com.ironsource.adqualitysdk.sdk.i;

import android.media.MediaPlayer;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᒧ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0564 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0562 f2307;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ MediaPlayer f2308;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0130 f2309;

    public C0564(C0562 c0562, C0130 c0130, MediaPlayer mediaPlayer) {
        this.f2307 = c0562;
        this.f2309 = c0130;
        this.f2308 = mediaPlayer;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        this.f2307.f2305.mo1917(this.f2309, this.f2308);
    }
}
