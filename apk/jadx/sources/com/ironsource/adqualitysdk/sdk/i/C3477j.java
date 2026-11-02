package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import com.unity3d.services.core.webview.WebViewEventCategory;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.j, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3477j implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C3483m f278;

    public C3477j(C3483m c3483m) {
        this.f278 = c3483m;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:32:0x00a7  */
    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C3483m c3483m = this.f278;
        byte b = 0;
        String str = (String) arrayList.get(0);
        c3483m.getClass();
        switch (str.hashCode()) {
            case -1810696374:
                if (!str.equals(StringFog.decrypt("8/2FN7jNBfH6\n", "v7TDcvuURr0=\n"))) {
                    b = -1;
                } else {
                    b = 8;
                }
                break;
            case -1166291365:
                if (!str.equals(StringFog.decrypt("yRr+7CZKOQ==\n", "mk6xvmcNfCg=\n"))) {
                    b = -1;
                } else {
                    b = 6;
                }
                break;
            case -276710660:
                if (!str.equals(StringFog.decrypt("f0T1sCkOyUVwSOM=\n", "KQ2x9WZehQQ=\n"))) {
                    b = -1;
                } else {
                    b = 1;
                }
                break;
            case -54373961:
                if (!str.equals(StringFog.decrypt("BfNG9tlWIOEQ9Vzh\n", "RrwIuJwVdKg=\n"))) {
                    b = -1;
                } else {
                    b = 5;
                }
                break;
            case 63879010:
                if (!str.equals(StringFog.decrypt("9AfF2R8=\n", "t0aGkVqHNpc=\n"))) {
                    b = -1;
                } else {
                    b = 4;
                }
                break;
            case 1167718561:
                if (!str.equals(StringFog.decrypt("L/m4feRq6LY5\n", "bav3PKApqeU=\n"))) {
                    b = -1;
                } else {
                    b = 7;
                }
                break;
            case 1813675631:
                if (!str.equals(StringFog.decrypt("fhIUsyX/tQ==\n", "LFdF5mCs4ao=\n"))) {
                    b = -1;
                } else {
                    b = 2;
                }
                break;
            case 1815350732:
                if (!str.equals(StringFog.decrypt("H4XMSmO3Zg==\n", "TcCfBS/hI3U=\n"))) {
                    b = -1;
                } else {
                    b = 3;
                }
                break;
            case 1926303783:
                if (!str.equals(StringFog.decrypt("WRbr29JY\n", "GFK+lZsMGMA=\n"))) {
                    b = -1;
                }
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
                return WebViewEventCategory.ADUNIT;
            case 1:
                return WebViewEventCategory.VIDEOPLAYER;
            case 2:
                return WebViewEventCategory.REQUEST;
            case 3:
                return WebViewEventCategory.RESOLVE;
            case 4:
                return WebViewEventCategory.CACHE;
            case 5:
                return WebViewEventCategory.CONNECTIVITY;
            case 6:
                return WebViewEventCategory.STORAGE;
            case 7:
                return WebViewEventCategory.BROADCAST;
            case 8:
                return WebViewEventCategory.LIFECYCLE;
            default:
                return null;
        }
    }
}
