package com.ironsource.adqualitysdk.sdk.i;

import android.media.MediaPlayer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ʖ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0200 implements InterfaceC0157 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ C0197 f1081;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ List f1082;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0116 f1083;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0983 f1084;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C1014 f1085;

    public C0200(C0197 c0197, C1014 c1014, C0983 c0983, C0116 c0116, List list) {
        this.f1081 = c0197;
        this.f1085 = c1014;
        this.f1084 = c0983;
        this.f1083 = c0116;
        this.f1082 = list;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0157
    /* JADX INFO: renamed from: ﾒ */
    public final boolean mo1932(C0156 c0156, MediaPlayer mediaPlayer, int i, int i2) {
        C1014 c1014 = this.f1085;
        C0983 c0983 = this.f1084;
        C0116 c0116 = this.f1083;
        ArrayList arrayListM1964 = C0197.m1964(this.f1081, this.f1082, new Object[]{this, c0156, mediaPlayer, Integer.valueOf(i), Integer.valueOf(i2)});
        c1014.getClass();
        return c1014.m2401(c0983, c0983.f3496, c0116, arrayListM1964).m1987();
    }
}
