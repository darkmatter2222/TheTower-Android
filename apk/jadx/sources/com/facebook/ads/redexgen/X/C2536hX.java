package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebSettings;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.google.common.base.Ascii;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.hX, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2536hX extends FrameLayout {
    public static byte[] A0C;
    public static String[] A0D = {"2LrpfYyae0azpeRldXrTpIs5j5WolZYJ", "aTWFoH17M5HvBaS06GyoTMgY8LK09kB1", "ZT9jJV1ne", "vwbwskwEgIVHj6V8wHV", "a8UIfMhCahgZVDol7QIaAFMNjSR7v8Rm", "pauq9xVSe1TSbn6Nh8iDWIypG", "tig0s2h3zWgeN1kA13N6tuAlrnUP1dby", "gu60Pcp0oAdbO9RcUpkXMIBgrMh0CW0V"};
    public static final float A0E;
    public static final RelativeLayout.LayoutParams A0F;
    public int A00;
    public long A01;
    public Map<String, String> A02;
    public final LA A03;
    public final C2418fb A04;
    public final C1618Hi A05;
    public final InterfaceC2884nG A06;
    public final InterfaceC3270ta A07;
    public final C1554Ev A08;
    public final InterfaceC2547hj A09;
    public final AtomicBoolean A0A;
    public final AtomicBoolean A0B;

    static {
        A0A();
        A0E = (int) (AbstractC3045px.A02 * 4.0f);
        A0F = new RelativeLayout.LayoutParams(-1, -1);
    }

    public C2536hX(C1618Hi c1618Hi, LA la, C2418fb c2418fb, InterfaceC2884nG interfaceC2884nG, InterfaceC2547hj interfaceC2547hj, Map<String, String> map) {
        super(c1618Hi);
        this.A0A = new AtomicBoolean(false);
        this.A0B = new AtomicBoolean(false);
        this.A01 = -1L;
        this.A00 = 0;
        this.A07 = new AbstractC1557Ey() { // from class: com.facebook.ads.redexgen.X.5g
            @Override // com.facebook.ads.redexgen.X.InterfaceC3270ta
            public final void ADv() {
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC1557Ey, com.facebook.ads.redexgen.X.InterfaceC3270ta
            public final void AEw(int i, String str) {
                this.A00.A0B.set(true);
                this.A00.A09.AFk();
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC3270ta
            public final void AFD() {
                if (this.A00.A0B.get() || !this.A00.A0A.compareAndSet(false, true)) {
                    return;
                }
                this.A00.A09.AFD();
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC3270ta
            public final void AGD() {
                if (this.A00.A04.A0g()) {
                    this.A00.A09.AGV();
                } else {
                    this.A00.A09.AFm();
                }
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC3270ta
            public final void AHt() {
                this.A00.A09.AHt();
            }
        };
        this.A05 = c1618Hi;
        this.A03 = la;
        this.A04 = c2418fb;
        this.A06 = interfaceC2884nG;
        this.A09 = interfaceC2547hj;
        this.A02 = map;
        this.A08 = A05();
        if (C2863mv.A1z(this.A05)) {
            this.A05.A0B().AM7(this.A08, this.A03.A37(), false);
        }
        addView(this.A08, A0F);
    }

    public static /* synthetic */ int A00(C2536hX c2536hX) {
        int i = c2536hX.A00;
        c2536hX.A00 = i + 1;
        return i;
    }

    private C1554Ev A05() {
        C1554Ev c1554Ev = new C1554Ev(this.A05, (WeakReference<InterfaceC3270ta>) new WeakReference(this.A07), 10, C2863mv.A28(this.A05));
        c1554Ev.setCornerRadius(A0E);
        c1554Ev.setLogMultipleImpressions(false);
        c1554Ev.setCheckAssetsByJavascriptBridge(false);
        c1554Ev.setWebViewTimeoutInMillis(this.A04.A0F());
        c1554Ev.setRequestId(this.A03.A1r());
        c1554Ev.setOnTouchListener(new ViewOnTouchListenerC2537hY(this));
        WebSettings settings = c1554Ev.getSettings();
        settings.setLoadWithOverviewMode(true);
        settings.setUseWideViewPort(true);
        settings.setAllowFileAccess(true);
        settings.setAllowFileAccessFromFileURLs(true);
        c1554Ev.addJavascriptInterface(new C2535hW(this.A05, this, this.A06, this.A02, this.A03.A37()), A07(0, 12, 104));
        return c1554Ev;
    }

    public static String A07(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0C, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            int i5 = bArrCopyOfRange[i4] ^ i3;
            if (A0D[5].length() != 25) {
                throw new RuntimeException();
            }
            A0D[4] = "2xsSJQdmJTzWNKbVkLPVv70adF3crTtp";
            bArrCopyOfRange[i4] = (byte) (i5 ^ 37);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0A() {
        A0C = new byte[]{Ascii.VT, 47, Ascii.GS, 33, 44, 52, 44, 47, 33, 40, Ascii.FF, 41, 52, 5, Ascii.SYN, Ascii.ETB, Ascii.CR, 10, 3, 68, 1, Ascii.SYN, Ascii.SYN, Ascii.VT, Ascii.SYN, 52, 8, 5, Ascii.GS, 5, 6, 8, 1, 68, 0, Ascii.VT, 39, Ascii.DLE, 5, 39, 8, Ascii.CR, 7, Ascii.SI, 68, Ascii.DLE, Ascii.SYN, Ascii.CR, 3, 3, 1, Ascii.SYN, 1, 0, 68, 19, Ascii.CR, Ascii.DLE, Ascii.FF, 68, Ascii.DC4, Ascii.SYN, 1, 73, 1, Ascii.DC2, 1, 10, Ascii.DLE, 68, 7, 8, Ascii.CR, 7, Ascii.SI, Ascii.ETB, 68, 7, Ascii.VT, 17, 10, Ascii.DLE, 68, 5, 10, 0, 68, 32, 1, 8, 5, Ascii.GS, 106, 86, 91, 67, 91, 88, 86, 95, 123, 94, 73, 108, 83, 95, 77, 102, 97, 99, 109, 106, 36, 104, 107, 101, 96, 109, 106, 99, 36, 118, 97, 105, 107, 112, 97, 36, 116, 104, 101, 125, 101, 102, 104, 97, Base64.padSymbol, 50, 55, Base64.padSymbol, 53, 45, 112, 113, 120, 117, 109, 93, 65, 76, 84, 76, 79, 65, 72, 55, 43, 38, 62, 38, 37, 43, 34, Ascii.CAN, 53, 34, 42, 40, 51, 34, Ascii.NAK, 2, 10, 8, 19, 2, 56, Ascii.DC4, 2, Ascii.DC4, Ascii.DC4, Ascii.SO, 8, 9, 56, Ascii.SO, 3, Ascii.DC4, Ascii.SI, Ascii.VT, 5, Ascii.SO, 107, 121, 126, 67, 106, 117, 121, 107};
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x00b8, code lost:
    
        if (r3 <= com.facebook.ads.redexgen.X.C2863mv.A0J(r8)) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x00ba, code lost:
    
        r3 = r9.A09;
        r2 = com.facebook.ads.redexgen.X.C2536hX.A0D;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x00ce, code lost:
    
        if (r2[0].charAt(14) == r2[7].charAt(14)) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x00d0, code lost:
    
        r3.AEY();
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x00d3, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00d4, code lost:
    
        r2 = com.facebook.ads.redexgen.X.C2536hX.A0D;
        r2[0] = "1qrV4xG42mjJ5wR1PYF4mguO0xYm8sMw";
        r2[7] = "To2gWJFbGkwQ4PRGYAw3BZd3UXo54AHv";
        r3.AEY();
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00f2, code lost:
    
        if (r3 <= com.facebook.ads.redexgen.X.C2863mv.A0J(r8)) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00f5, code lost:
    
        r7.A05(0);
        r9.A05.A08().ABz(r6, com.facebook.ads.redexgen.X.AbstractC2786lf.A2E, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:?, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void A0B() {
        /*
            Method dump skipped, instruction units count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2536hX.A0B():void");
    }

    public final void A0C() throws JSONException {
        if (this.A04.A0d()) {
            C2787lg c2787lg = new C2787lg(A07(kotlin.fh.h1, 29, 33));
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(A07(170, 17, 66), this.A04.A0Q());
                jSONObject.put(A07(187, 5, 69), this.A03.A37());
            } catch (JSONException e) {
                Log.e(A07(92, 15, 31), A07(12, 13, 65), e);
            }
            c2787lg.A07(jSONObject);
            c2787lg.A05(1);
            InterfaceC2785le interfaceC2785leA08 = this.A05.A08();
            if (A0D[4].charAt(0) == 'P') {
                throw new RuntimeException();
            }
            A0D[1] = "TEDpWyR4sKSlO4xRZxixfnQAFgDgpHMF";
            int i = AbstractC2786lf.A2G;
            String strA07 = A07(155, 15, 98);
            interfaceC2785leA08.AC0(strA07, i, c2787lg);
            if (C2863mv.A0q(this.A05) && AbstractC3074qQ.A00(this.A05) == EnumC3073qP.A07) {
                this.A05.A08().AC0(strA07, AbstractC2786lf.A2F, c2787lg);
                this.A07.AEw(0, null);
                return;
            }
        }
        try {
            this.A08.loadUrl(!TextUtils.isEmpty(this.A04.A0J()) ? this.A04.A0J() : this.A04.A0M());
        } catch (Exception e2) {
            this.A05.A08().ABz(A07(192, 8, 57), AbstractC2786lf.A2f, new C2787lg(e2));
        }
    }

    public final void A0D() {
        if (C2863mv.A1z(this.A05)) {
            C1618Hi c1618Hi = this.A05;
            if (A0D[2].length() == 31) {
                throw new RuntimeException();
            }
            A0D[1] = "2a9geg5CZy9bcTekyOeVTlcxLNQduX9G";
            c1618Hi.A0B().ALo(this.A08);
        }
        this.A08.removeJavascriptInterface(A07(0, 12, 104));
        if (A0D[3].length() == 23) {
            this.A08.destroy();
        } else {
            A0D[6] = "33aduEcFLWt6pdjLdZ5sJJvVvr5WDkst";
            this.A08.destroy();
        }
    }

    public final void A0E(int i) {
        this.A08.setVisibility(i);
        if (i == 0) {
            this.A08.resumeTimers();
        } else {
            this.A08.pauseTimers();
        }
    }

    public C3077qT getTouchDataRecorder() {
        return this.A08.getTouchDataRecorder();
    }

    public C2199c2 getViewabilityChecker() {
        return this.A08.getViewabilityChecker();
    }
}
