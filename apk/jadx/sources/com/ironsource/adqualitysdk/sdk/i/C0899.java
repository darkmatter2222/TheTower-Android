package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.concurrent.Executors;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.丨, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0899 implements InterfaceC0486 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0854 f3183;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0944 f3184;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC0455 f3185;

    public C0899(C0854 c0854, InterfaceC0455 interfaceC0455, C0944 c0944) {
        this.f3183 = c0854;
        this.f3185 = interfaceC0455;
        this.f3184 = c0944;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0486
    /* JADX INFO: renamed from: ﾒ */
    public final void mo2111() {
        C0835 c0835 = this.f3183.f3124.f3123;
        synchronized (c0835) {
            c0835.f3097.remove(this);
        }
        C0853 c0853 = this.f3183.f3124;
        InterfaceC0455 interfaceC0455 = this.f3185;
        C0944 c0944 = this.f3184;
        if (c0853.f3122) {
            AbstractC0250.m1990(C0853.f3121, StringFog.decrypt("CKD8/y0ly/svvfj/JmvatHum/+wtIMuJPr7k/zE/jqwzqv+6DC7arDS9+tcjJc+8Pr2x7SM4jqgz\nuuX+LTzA\n", "W8+RmkJLrts=\n"));
            return;
        }
        C0854 c0854 = new C0854(c0853, interfaceC0455, c0944);
        String str = AbstractC0129.f814;
        try {
            Executors.newSingleThreadExecutor().execute(c0854);
        } catch (Throwable th) {
            AbstractC1071.m2435(AbstractC0129.f814, StringFog.decrypt("dXSgyWUV9GhVZafSflv2MFF1q8h0FeVxQ20=\n", "MAbSphc1kRA=\n"), th, false);
        }
    }
}
