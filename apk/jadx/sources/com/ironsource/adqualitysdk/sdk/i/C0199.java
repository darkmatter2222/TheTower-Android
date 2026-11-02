package com.ironsource.adqualitysdk.sdk.i;

import android.media.MediaPlayer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ʕ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0199 implements InterfaceC0191 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ C0197 f1076;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ List f1077;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0116 f1078;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0983 f1079;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C1014 f1080;

    public C0199(C0197 c0197, C1014 c1014, C0983 c0983, C0116 c0116, List list) {
        this.f1076 = c0197;
        this.f1080 = c1014;
        this.f1079 = c0983;
        this.f1078 = c0116;
        this.f1077 = list;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0191
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1943(C0161 c0161, MediaPlayer mediaPlayer) {
        C1014 c1014 = this.f1080;
        C0983 c0983 = this.f1079;
        C0116 c0116 = this.f1078;
        ArrayList arrayListM1964 = C0197.m1964(this.f1076, this.f1077, new Object[]{this, c0161, mediaPlayer});
        c1014.getClass();
        c1014.m2401(c0983, c0983.f3496, c0116, arrayListM1964);
    }
}
