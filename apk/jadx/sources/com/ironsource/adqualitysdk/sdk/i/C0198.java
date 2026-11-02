package com.ironsource.adqualitysdk.sdk.i;

import android.media.MediaPlayer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ʔ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0198 implements InterfaceC0133 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ C0197 f1071;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ List f1072;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0116 f1073;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0983 f1074;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C1014 f1075;

    public C0198(C0197 c0197, C1014 c1014, C0983 c0983, C0116 c0116, List list) {
        this.f1071 = c0197;
        this.f1075 = c1014;
        this.f1074 = c0983;
        this.f1073 = c0116;
        this.f1072 = list;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0133
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1917(C0130 c0130, MediaPlayer mediaPlayer) {
        C1014 c1014 = this.f1075;
        C0983 c0983 = this.f1074;
        C0116 c0116 = this.f1073;
        ArrayList arrayListM1964 = C0197.m1964(this.f1071, this.f1072, new Object[]{this, c0130, mediaPlayer});
        c1014.getClass();
        c1014.m2401(c0983, c0983.f3496, c0116, arrayListM1964);
    }
}
