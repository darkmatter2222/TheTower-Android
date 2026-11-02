package com.ironsource.adqualitysdk.sdk.i;

import com.unity3d.services.core.webview.WebViewApp;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3463c implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C3483m f255;

    public C3463c(C3483m c3483m) {
        this.f255 = c3483m;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C3483m c3483m = this.f255;
        Object obj = arrayList.get(0);
        c3483m.getClass();
        return new C3479k(c3483m, (WebViewApp) obj, c0943);
    }
}
