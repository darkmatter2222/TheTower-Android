package com.facebook.ads.redexgen.X;

import android.content.res.Resources;
import android.net.Uri;
import android.util.Log;
import android.widget.LinearLayout;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.facebook.ads.internal.protocol.AdPlacementType;
import com.facebook.ads.internal.settings.AdInternalSettings;
import com.google.common.base.Ascii;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Map;
import java.util.UUID;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.7r, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C13857r<NativeViewabilityLogger> implements MA {
    public static byte[] A0I;
    public static String[] A0J = {"1VlIdrj3fRAASVh0IRQbA", "AKXoeI10d8PJONEXEmQHjWIEkAB2E", "HfXt1ktTFXNYFvURT1ePpe", "VNbNAjzqH3UXN3t9RrTP5z6I5Qa6gPQJ", "DeawL9PzUIlDumNdtXISYTaSpfy6P3Cj", "KNbO6MhxkLbBAZAqlm1H7U8Ouut8mEhI", "i536pd2CEb7n0lc", "TelURl5RBqiFivFSJRRvco6RCKborqoX"};
    public static final String A0K;
    public InterfaceC2376ev A00;
    public C2377ew A01;
    public LN A02;
    public C13777j A03;
    public C7D A04;
    public InterfaceC2884nG A05;
    public EnumC2924nw A06;
    public InterfaceC3270ta A07;
    public C1554Ev A08;
    public C6T A09;
    public AbstractC2200c3 A0A;
    public C2199c2 A0B;
    public String A0C;
    public final String A0H = UUID.randomUUID().toString();
    public boolean A0D = false;
    public boolean A0E = false;
    public boolean A0F = false;
    public final C3077qT A0G = new C3077qT();

    static {
        A0B();
        A0K = C13857r.class.getSimpleName();
    }

    public static String A08(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0I, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 19);
            if (A0J[2].length() == 29) {
                throw new RuntimeException();
            }
            String[] strArr = A0J;
            strArr[3] = "viF0h1063r6cbXDqGfnWrC6qPBVBGzAv";
            strArr[7] = "3ywSXssJKLxMazlfVUMLvW6ymO505mlb";
        }
        return new String(bArrCopyOfRange);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0A() {
        if (this.A00 != null && this.A09 != null && this.A03 != null && this.A03.A2Q()) {
            this.A00.AE9(this, this.A09);
        }
        if (this.A00 != null && this.A0D) {
            boolean z = this.A0E;
            if (A0J[2].length() == 29) {
                throw new RuntimeException();
            }
            A0J[2] = "DQYu3GBVfiN4Ml";
            if (z || !this.A0F) {
                this.A00.AE9(this, this.A08);
            }
        }
        this.A04.A0F().A4p(this.A00 != null);
    }

    public static void A0B() {
        A0I = new byte[]{-28, -16, -18, -81, -25, -30, -28, -26, -29, -16, -16, -20, -81, -30, -27, -12, -81, -29, -30, -17, -17, -26, -13, -81, -28, -19, -22, -28, -20, -26, -27, -24, -39, -20, -24, -93, -36, -24, -31, -32, -68, -69, -83, 116, 127};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0C(int i, C2806lz c2806lz) {
        M0 m0 = new M0(this);
        this.A09 = new C6T(this.A04, this.A05, m0, this.A03, A08(0, 31, 110), 2, this.A0G);
        this.A0A = new C1733Lz(this);
        this.A0B = new C2199c2(this.A09, c2806lz.A04(), c2806lz.A09(), true, new WeakReference(this.A0A), this.A04);
        if (this.A03 != null) {
            this.A0B.A0W(this.A03.A1J());
            this.A0B.A0X(this.A03.A1K());
        }
        this.A09.setVisibility(0);
        this.A04.getResources();
        this.A09.setLayoutParams(new LinearLayout.LayoutParams(-1, i));
        this.A09.ALW();
    }

    private void A0F(C2806lz c2806lz, JSONObject jSONObject, EnumC2924nw enumC2924nw) {
        this.A0E = false;
        final LP lpA00 = LP.A00(this.A04, jSONObject);
        this.A0C = lpA00.A7z();
        if (AbstractC2365ej.A06(this.A04, lpA00, this.A05)) {
            this.A04.A0F().A5b();
            this.A00.AFQ(this, C2922nt.A00(AdErrorType.NO_FILL));
            return;
        }
        this.A07 = new AbstractC1557Ey() { // from class: com.facebook.ads.redexgen.X.7s
            public static byte[] A02;
            public static String[] A03 = {"RkD1OJxt7Cm", "85G", "rOg3VWXB3SEY3xQpEJ0sm9sa", "k8A4i4hEDbRwTbJ7ZqirbVmRMdyhqYao", "w8o7PtZgo3USKQqv4zP9Jz4sqmraE2my", "KkDuTncCOt8", "W5AvxWS2W", "p0drNpcb1k1QxXuNf36gE6"};

            static {
                A01();
            }

            public static String A00(int i, int i2, int i3) {
                byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
                for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 74);
                }
                return new String(bArrCopyOfRange);
            }

            public static void A01() {
                A02 = new byte[]{-113, -68, -68, -71, -68, 106, -81, -62, -81, -83, -65, -66, -77, -72, -79, 106, -85, -83, -66, -77, -71, -72, -2, Ascii.SO, Ascii.VT, 19, Ascii.SI, 1, Ascii.SO, -5, Ascii.DLE, Ascii.NAK, Ascii.FF, 1, -28, -30, -19, -19, -26, -13, -43, -6, -15, -26, Ascii.SO, Ascii.SO, Ascii.US, 10, Ascii.US, 36, Ascii.ESC, Ascii.DLE, Ascii.FF, 8, 7, 10, -60, -67, -72, -64, -60, -76, -104, -77};
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC3270ta
            public final void ADv() {
                this.A00.A0E = true;
                if (this.A00.A0F) {
                    this.A00.A0A();
                }
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC1557Ey, com.facebook.ads.redexgen.X.InterfaceC3270ta
            public final void AEN(String str, Map<String, String> map) {
                String strA1V;
                this.A00.A04.A0F().A4q();
                Uri uriA00 = AbstractC3011pP.A00(str);
                map.put(A00(34, 10, 55), AdPlacementType.BANNER.name());
                map.put(A00(56, 8, 5), this.A00.A0H);
                if (this.A00.A03 == null) {
                    strA1V = null;
                } else {
                    C13857r c13857r = this.A00;
                    String[] strArr = A03;
                    if (strArr[0].length() != strArr[5].length()) {
                        throw new RuntimeException();
                    }
                    String[] strArr2 = A03;
                    strArr2[1] = "yKt";
                    strArr2[2] = "O3cmN93hsB9jwoMarcV7SE5e";
                    strA1V = c13857r.A03.A1V();
                }
                if (strA1V != null) {
                    map.put(A00(22, 12, 82), strA1V);
                }
                String strA1W = this.A00.A03 == null ? null : this.A00.A03.A1W();
                if (strA1W != null) {
                    map.put(A00(44, 8, 97), strA1W);
                }
                AbstractC2361ef abstractC2361efA00 = C2362eg.A00(this.A00.A04, this.A00.A05, lpA00.A7z(), uriA00, map, this.A00.A03 == null ? null : this.A00.A03.A33());
                EnumC2358ec enumC2358ecA0G = EnumC2358ec.A08;
                if (abstractC2361efA00 != null) {
                    try {
                        this.A00.A04.A0F().A4n();
                        enumC2358ecA0G = abstractC2361efA00.A0G(null);
                    } catch (Exception e) {
                        Log.e(C13857r.A0K, A00(0, 22, 0), e);
                    }
                }
                if (!A00(52, 4, 92).equals(uriA00.getScheme()) || !C2362eg.A04(uriA00.getAuthority()) || this.A00.A00 == null || enumC2358ecA0G == EnumC2358ec.A05) {
                    return;
                }
                this.A00.A00.AE8(this.A00);
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC3270ta
            public final void AFD() {
                this.A00.A04.A0F().A4r(this.A00.A02 != null);
                if (this.A00.A02 != null) {
                    this.A00.A02.A09();
                }
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC3270ta
            public final void AGD() {
                this.A00.A04.A0F().A4t();
                this.A00.A02.A0B();
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC3270ta
            public final void AHt() {
            }
        };
        this.A08 = new C1554Ev(this.A04, (WeakReference<InterfaceC3270ta>) new WeakReference(this.A07), c2806lz.A04(), A7z());
        this.A08.A0L(c2806lz.A07(), c2806lz.A08());
        this.A02 = new LN(this.A04, this.A05, this.A08, this.A08.getViewabilityChecker(), new C1726Lr(this), enumC2924nw);
        this.A02.A0C(lpA00);
        this.A08.loadDataWithBaseURL(AbstractC3273td.A01(AdInternalSettings.getUrlPrefix()), lpA00.A04(), A08(31, 9, 97), A08(40, 5, 52), null);
        this.A0D = true;
        A0A();
    }

    private void A0G(EnumC2924nw enumC2924nw, C2806lz c2806lz) {
        if (this.A03 == null || this.A05 == null) {
            return;
        }
        int iA03 = (int) (enumC2924nw.A03() * Resources.getSystem().getDisplayMetrics().density);
        if (C2863mv.A2H(this.A04) && C2711kP.A0A(this.A03.A1x())) {
            new C2711kP(new C2746kz(this.A04), this.A03.A1x(), this.A03.A1c(), this.A03.A1r(), true, new M9(this, iA03, c2806lz, this)).A0B();
        } else {
            A0C(iA03, c2806lz);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2368en
    public final String A7z() {
        return this.A0C;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2368en
    public final AdPlacementType A9N() {
        return (C2863mv.A19(this.A04) && this.A06 != null && this.A06 == EnumC2924nw.A08) ? AdPlacementType.MEDIUM_RECTANGLE : AdPlacementType.BANNER;
    }

    @Override // com.facebook.ads.redexgen.X.MA
    public final void ABb(C7D c7d, InterfaceC2884nG interfaceC2884nG, EnumC2924nw enumC2924nw, InterfaceC2376ev interfaceC2376ev, JSONObject jSONObject, C2806lz c2806lz) {
        c7d.A0F().A4o();
        this.A04 = c7d;
        this.A05 = interfaceC2884nG;
        this.A00 = interfaceC2376ev;
        this.A06 = enumC2924nw;
        this.A0F = C2863mv.A1o(this.A04.getApplicationContext());
        this.A03 = C13777j.A00(jSONObject, this.A04);
        if (this.A03.A2Q()) {
            A0G(enumC2924nw, c2806lz);
        } else {
            A0F(c2806lz, jSONObject, enumC2924nw);
        }
        this.A01 = new C2377ew(this.A04, this.A0H, this, interfaceC2376ev);
        this.A01.A02();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2368en
    public final boolean ALe() {
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2368en
    public final void onDestroy() {
        this.A04.A0F().A4m(this.A08 != null);
        if (this.A08 != null) {
            this.A08.destroy();
            this.A08 = null;
            this.A07 = null;
        }
        if (this.A01 != null) {
            this.A01.A03();
        }
    }
}
