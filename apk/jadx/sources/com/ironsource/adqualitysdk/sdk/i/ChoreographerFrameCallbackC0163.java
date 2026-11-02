package com.ironsource.adqualitysdk.sdk.i;

import android.view.Choreographer;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ȑ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class ChoreographerFrameCallbackC0163 implements Choreographer.FrameCallback {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0151 f907;

    public ChoreographerFrameCallbackC0163(C0151 c0151) {
        this.f907 = c0151;
    }

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j) {
        try {
            AbstractC0340.m2057(this.f907);
        } catch (Throwable th) {
            String strDecrypt = StringFog.decrypt("JeCKZA3pkX0d159a\n", "ZITbEWyF+Ak=\n");
            AbstractC0250.m1999(strDecrypt, strDecrypt, StringFog.decrypt("5NYZOTnVxHrt8QI0MtQ=\n", "grdwVVyx5B4=\n"), th, null, false);
        }
    }
}
