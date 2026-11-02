package com.ironsource.adqualitysdk.sdk.i;

import android.media.MediaPlayer;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ꮀ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0515 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final /* synthetic */ C0507 f2196;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ int f2197;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ int f2198;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ MediaPlayer f2199;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0156 f2200;

    public C0515(C0507 c0507, C0156 c0156, MediaPlayer mediaPlayer, int i, int i2) {
        this.f2196 = c0507;
        this.f2200 = c0156;
        this.f2199 = mediaPlayer;
        this.f2198 = i;
        this.f2197 = i2;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        this.f2196.f2190.mo1932(this.f2200, this.f2199, this.f2198, this.f2197);
    }
}
