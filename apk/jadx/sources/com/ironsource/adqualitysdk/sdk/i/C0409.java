package com.ironsource.adqualitysdk.sdk.i;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ڔ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0409 extends BroadcastReceiver {

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final /* synthetic */ C0197 f1934;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ List f1935;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0116 f1936;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0983 f1937;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C1014 f1938;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ boolean f1939;

    public C0409(C0197 c0197, C1014 c1014, C0116 c0116, C0983 c0983, List list, boolean z) {
        this.f1934 = c0197;
        this.f1939 = z;
        this.f1938 = c1014;
        this.f1937 = c0983;
        this.f1936 = c0116;
        this.f1935 = list;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        try {
            if (!this.f1939) {
                AbstractC0340.m2054(new C0430(this, context, intent));
                return;
            }
            C1014 c1014 = this.f1938;
            C0983 c0983 = this.f1937;
            C0116 c0116 = this.f1936;
            ArrayList arrayListM1964 = C0197.m1964(this.f1934, this.f1935, new Object[]{this, context, intent});
            c1014.getClass();
            c1014.m2401(c0983, c0983.f3496, c0116, arrayListM1964);
        } catch (Throwable th) {
            AbstractC1071.m2435(this.f1936.m1903(), StringFog.decrypt("YC7Iimy8NMUFHsiKf/g+ylYo6IB9+TTdQC6ajHDvNM9AfA==\n", "JVy65R6cXas=\n") + this.f1938.f3586, th, false);
        }
    }
}
