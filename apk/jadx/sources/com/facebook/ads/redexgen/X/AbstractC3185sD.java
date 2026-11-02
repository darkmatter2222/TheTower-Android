package com.facebook.ads.redexgen.X;

import android.view.View;
import com.facebook.ads.NativeAdLayout;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.sD, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC3185sD {
    public static String[] A00 = {"Mh7OQPY25mJ4xZdJdnJU4lIWxnSb2W80", "uMvQGqYS2R9kLiwAhxbB5gyg9uPLoFmG", "JD8RnvPxGeaTxsc34jN0O6vhnDfoaLvm", "v", "yiVoJ6", "bh6EDcFJy1WMlrC6ew5uNV", "HsXTYL", "k"};
    public static final int A01 = (int) (AbstractC3045px.A02 * 200.0f);
    public static final int A03 = (int) (AbstractC3045px.A02 * 200.0f);
    public static final int A02 = (int) (AbstractC3045px.A02 * 50.0f);

    public static EnumC2382f1 A00(NativeAdLayout nativeAdLayout) {
        if (nativeAdLayout == null) {
            return EnumC2382f1.A05;
        }
        return A03(nativeAdLayout) ? EnumC2382f1.A06 : EnumC2382f1.A04;
    }

    public static AbstractC3184sC A01(C1618Hi c1618Hi, InterfaceC2884nG interfaceC2884nG, String str, View view) {
        if (view == null) {
            return null;
        }
        int width = view.getWidth();
        int height = view.getHeight();
        if (width >= A01 && height >= A01) {
            return new FC(c1618Hi, interfaceC2884nG, str);
        }
        if (width < A03 || height < A02) {
            return null;
        }
        return new FD(c1618Hi, interfaceC2884nG, str);
    }

    public static FE A02(C1618Hi c1618Hi, InterfaceC2884nG interfaceC2884nG, String str, C2416fZ c2416fZ, InterfaceC3120rA interfaceC3120rA, InterfaceC3119r9 interfaceC3119r9) {
        return new FE(c1618Hi, interfaceC2884nG, str, c2416fZ, interfaceC3120rA, interfaceC3119r9);
    }

    public static boolean A03(NativeAdLayout nativeAdLayout) {
        int width = nativeAdLayout.getWidth();
        int height = nativeAdLayout.getHeight();
        if (width < A01 || height < A01) {
            if (width >= A03) {
                int i = A02;
                if (A00[5].length() != 22) {
                    throw new RuntimeException();
                }
                A00[5] = "hhrIY4o6fKEkU42z4UVpb3";
                if (height < i) {
                }
            }
            return true;
        }
        return false;
    }
}
