package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.res.Configuration;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.facebook.ads.AdListener;
import com.facebook.ads.AdSize;
import com.facebook.ads.AdView;
import com.facebook.ads.ExtraHints;
import com.facebook.ads.internal.api.AdViewApi;
import com.facebook.ads.internal.api.AdViewParentApi;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.facebook.ads.internal.protocol.AdPlacementType;
import com.google.common.base.Ascii;
import com.ironsource.InterfaceC3669k1;
import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.jX, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2657jX implements AdViewApi {
    public static byte[] A0D;
    public static String[] A0E = {"of0bzA7MwNGTia9F31tAkieNA09H6OOQ", "TyTQj7xFBxvma6AaZ1TUwVS6lItsexiQ", "kN9yyhhGlFuDqh5wulKzoOOSsFZblOVu", "DXKKP4SSVuW5x9unPZpKCS00jdGSX4q", "ceBkREnsnDPWKQGMERGG6oDocc2kf8dJ", "ULZujO58Hn4sCnlurEwExiI5FfKtYml", "oBzM86F4GMvLYp6iWCqbmyfPVfF4ncm8", "8s2Qgj6JQYkd4IbFNTxV1lfTN5yJUxqm"};
    public long A00;
    public View A01;
    public AdListener A02;
    public C13737f A03;
    public C3275tf A04;
    public String A05;
    public String A06;
    public final DisplayMetrics A07;
    public final AdView A08;
    public final AdViewParentApi A09;
    public final C7D A0A;
    public final EnumC2924nw A0B;
    public final String A0C;

    static {
        A02();
    }

    public C2657jX(Context context, String str, AdSize adSize, AdViewParentApi adViewParentApi, AdView adView) {
        this.A00 = -1L;
        if (adSize == null || adSize == AdSize.INTERSTITIAL) {
            throw new IllegalArgumentException(A01(108, 6, 18));
        }
        this.A07 = adView.getContext().getResources().getDisplayMetrics();
        this.A0B = AbstractC3016pU.A04(adSize);
        this.A0C = str;
        this.A09 = adViewParentApi;
        this.A08 = adView;
        this.A0A = C2673jn.A08(context);
        this.A0A.A0F().A3p(AdPlacementType.BANNER.toString(), str);
        C2441fy c2441fy = new C2441fy(str, AbstractC3016pU.A05(this.A0B), AdPlacementType.BANNER, AbstractC3016pU.A04(adSize), 1, new K5());
        c2441fy.A06(this.A05);
        c2441fy.A07(this.A06);
        this.A03 = new C13737f(this.A0A, c2441fy);
        this.A03.A0R(new IM(this));
    }

    public C2657jX(Context context, String str, String str2, AdViewParentApi adViewParentApi, AdView adView) throws C2923nu {
        this(context, str, A00(str2), adViewParentApi, adView);
        this.A0A.A0F().A4u();
    }

    public static AdSize A00(String str) throws C2923nu {
        EnumC2925nx enumC2925nxA00 = C2929o1.A00(str);
        if (enumC2925nxA00 == null) {
            throw new C2923nu(AdErrorType.BID_PAYLOAD_ERROR, String.format(Locale.US, A01(67, 41, 7), str));
        }
        C2929o1.A03(enumC2925nxA00);
        return AbstractC3016pU.A01(enumC2925nxA00);
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0D, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 64);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        byte[] bArr = {-77, -74, -27, -72, -76, -73, -71, -75, 122, 122, -89, -88, 120, -86, -90, -89, -11, -10, -13, -10, 37, 37, 34, -11, -17, Ascii.SO, Ascii.ESC, Ascii.ESC, Ascii.DC2, Ascii.US, -51, Ascii.SO, 17, -51, 17, Ascii.DC2, 32, 33, Ascii.US, Ascii.FS, 38, Ascii.DC2, 17, -14, 17, Ascii.RS, Ascii.RS, Ascii.NAK, 34, -48, 17, Ascii.DC4, -48, Ascii.FS, Ascii.US, 17, Ascii.DC4, -48, 34, Ascii.NAK, 33, 37, Ascii.NAK, 35, 36, Ascii.NAK, Ascii.DC4, -118, -88, -75, -75, -74, -69, 103, -83, -80, -75, -85, 103, -88, 103, -69, -84, -76, -73, -77, -88, -69, -84, 103, -69, -81, -88, -69, 103, -77, -74, -88, -85, 103, -87, -80, -85, 103, 110, 108, -70, 110, -77, -74, -91, -69, -52, -73, -20, -19, -5, -4, -6, -9, 1, -40, -37, -51, -48, -83, -48};
        if (A0E[2].charAt(11) != 'D') {
            throw new RuntimeException();
        }
        String[] strArr = A0E;
        strArr[7] = "i0zr3oWhaZ1ZQYjulO9yltnfKtDweGPM";
        strArr[6] = "f16HnFk6V4WfoRTY4RGQrwGHYb77b2mz";
        A0D = bArr;
    }

    private void A03(String str) {
        this.A00 = System.currentTimeMillis();
        if (str == null) {
            this.A0A.A0F().A3m();
        } else {
            this.A0A.A0F().A3l();
        }
        C13737f c13737f = this.A03;
        String[] strArr = A0E;
        if (strArr[3].length() != strArr[5].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0E;
        strArr2[3] = "8EJDtH9EjlwutgZO3WtzB3nx702AY4O";
        strArr2[5] = "dTiKD7UwUCw1SvcKYJrEphBgoR9CLtC";
        if (c13737f != null) {
            this.A03.A0V(str);
        }
        this.A0A.A0F().A3k();
    }

    public final long A04() {
        return this.A00;
    }

    public final DisplayMetrics A05() {
        return this.A07;
    }

    public final AdListener A06() {
        return this.A02;
    }

    public final AdView A07() {
        return this.A08;
    }

    public final C13737f A08() {
        return this.A03;
    }

    public final C7D A09() {
        return this.A0A;
    }

    public final EnumC2924nw A0A() {
        return this.A0B;
    }

    public final void A0B(RelativeLayout relativeLayout, View view) {
        C2568i4 c2568i4A01;
        this.A0A.A0F().A57(this.A06 != null);
        if (this.A06 == null || (c2568i4A01 = AbstractC2569i5.A01(this.A0A, this.A06)) == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        relativeLayout.addView(c2568i4A01, new RelativeLayout.LayoutParams(layoutParams.width, layoutParams.height));
    }

    public final void A0C(AdListener adListener) {
        this.A0A.A0F().A3i(adListener != null);
        this.A02 = adListener;
    }

    public final void A0D(C3275tf c3275tf) {
        this.A04 = c3275tf;
    }

    @Override // com.facebook.ads.internal.api.AdViewApi
    public final AdView.AdViewLoadConfigBuilder buildLoadAdConfig() {
        return new C2898nU(this);
    }

    @Override // com.facebook.ads.Ad
    public final void destroy() {
        AbstractC2933o5.A05(A01(114, 7, 72), A01(24, 19, 109), A01(0, 8, 65));
        this.A0A.A0F().A3q();
        if (this.A03 != null) {
            this.A03.A0X(true);
            this.A03.A0J();
            this.A03 = null;
        }
        if (this.A04 != null && C2863mv.A1B(this.A08.getContext())) {
            this.A04.A07();
            if (this.A01 != null) {
                View view = this.A01;
                String[] strArr = A0E;
                if (strArr[3].length() != strArr[5].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0E;
                strArr2[7] = "fmi4ltQko56R0Ot1hIU3uMuoiOam3SD1";
                strArr2[6] = "7H1g3sSDF1cZj7eOXlokIXc1uirRZwhG";
                view.getOverlay().remove(this.A04);
            }
        }
        this.A08.removeAllViews();
        this.A01 = null;
        this.A02 = null;
    }

    @Override // com.facebook.ads.Ad
    public final String getPlacementId() {
        return this.A0C;
    }

    @Override // com.facebook.ads.Ad
    public final boolean isAdInvalidated() {
        boolean z = this.A03 == null || this.A03.A0Y();
        this.A0A.A0F().A6E(z);
        return z;
    }

    @Override // com.facebook.ads.Ad
    public final void loadAd() {
        AbstractC2933o5.A05(A01(121, 6, 44), A01(43, 24, InterfaceC3669k1.d.b.j), A01(16, 8, 127));
        A03(null);
    }

    @Override // com.facebook.ads.internal.api.AdViewApi
    public final void loadAd(AdView.AdViewLoadConfig adViewLoadConfig) {
        AbstractC2933o5.A05(A01(121, 6, 44), A01(43, 24, InterfaceC3669k1.d.b.j), A01(8, 8, 5));
        A03(((C2898nU) adViewLoadConfig).A00());
    }

    @Override // com.facebook.ads.internal.api.AdViewApi, com.facebook.ads.internal.api.AdViewParentApi
    public final void onConfigurationChanged(Configuration configuration) {
        this.A09.onConfigurationChanged(configuration);
        if (this.A01 != null) {
            AbstractC2927nz.A01(this.A07, this.A01, this.A0B);
        }
    }

    @Override // com.facebook.ads.internal.api.AdViewApi, com.facebook.ads.Ad
    @Deprecated
    public final void setExtraHints(ExtraHints extraHints) {
        this.A05 = extraHints.getHints();
        this.A06 = extraHints.getMediationData();
        if (!C2863mv.A0j(this.A0A) || this.A03 == null) {
            return;
        }
        this.A03.A08.A06(this.A05);
        this.A03.A08.A07(this.A06);
    }
}
