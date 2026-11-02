package com.facebook.ads.redexgen.X;

import android.content.res.Configuration;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.widget.RelativeLayout;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
import java.util.HashMap;
import p005kotlin.Metadata;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.6M, reason: invalid class name */
/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    java.lang.IllegalArgumentException: Provided Metadata instance does not have metadataVersion in it and therefore is malformed and cannot be read.
    	at kotlin.metadata.jvm.internal.JvmReadUtils.checkMetadataVersionForRead(JvmReadUtils.kt:79)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:46)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:68)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:31)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:33)
    */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@Metadata
public final class C6M extends AbstractC1521Do {
    public static byte[] A0D;
    public static String[] A0E = {"UzutHhweNKA6I6XDZye6UhBKaL9x6j29", "4hoNcuDBHqhxwa87", "K9Pp3y8diVelGbM7aQpqLBr68c6UUhMz", "y3BzvMqIeQRH2aQx", "XzKBwpVR9JGJkXe", "RT6mp0SPjZzcwqF6Xr39KNrE10CRftIA", "GSsPkrMKr0cmxxP", "XUrnCKxzP99jksvK45kzmcN4iGFy0nJd"};
    public static final C1F A0F;
    public static final RelativeLayout.LayoutParams A0G;
    public FG A00;
    public ViewOnClickListenerC1544El A01;
    public C3333ub A02;
    public C3361v3 A03;
    public C2850mi A04;
    public C2474gV A05;
    public boolean A06;
    public boolean A07;
    public final int A08;
    public final C2892nO A09;
    public final AbstractC3112r2 A0A;
    public final InterfaceC3171rz A0B;
    public final boolean A0C;

    static {
        A06();
        A0F = new C1F(null);
        A0G = new RelativeLayout.LayoutParams(-1, -1);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6M(C1618Hi c1618Hi, InterfaceC3175s3 interfaceC3175s3, int i, InterfaceC2884nG interfaceC2884nG, LA la, InterfaceC3119r9 interfaceC3119r9, AbstractC3112r2 abstractC3112r2, C2892nO c2892nO, C2746kz c2746kz, boolean z, boolean z2, InterfaceC3171rz interfaceC3171rz, int i2, int i3, boolean z3) {
        super(c1618Hi, interfaceC3175s3, interfaceC2884nG, la, i, z, z2, interfaceC3119r9, i3);
        C1h.A09(c1618Hi, A05(24, 16, 15));
        C1h.A09(interfaceC3175s3, A05(0, 10, 41));
        C1h.A09(interfaceC2884nG, A05(52, 14, 104));
        C1h.A09(la, A05(40, 12, 122));
        C1h.A09(interfaceC3119r9, A05(146, 8, 4));
        C1h.A09(abstractC3112r2, A05(203, 7, 61));
        C1h.A09(c2892nO, A05(94, 20, 99));
        C1h.A09(c2746kz, A05(10, 14, 26));
        C1h.A09(interfaceC3171rz, A05(66, 22, 44));
        this.A0A = abstractC3112r2;
        this.A09 = c2892nO;
        this.A0B = interfaceC3171rz;
        this.A08 = i2;
        this.A0C = z3;
        super.A01 = this.A0C;
        if (!this.A0C && (la instanceof C13747g)) {
            this.A07 = true;
            this.A00 = new FG();
            FG fg = this.A00;
            C1h.A06(fg);
            this.A05 = new C2474gV(c1618Hi, fg, super.A08.A1u(), interfaceC3119r9);
        }
        A07();
        A08();
    }

    public static String A05(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0D, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            byte b = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 62);
            String[] strArr = A0E;
            if (strArr[2].charAt(16) == strArr[0].charAt(16)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0E;
            strArr2[3] = "4smmZYi0Af2QJONg";
            strArr2[1] = "4xmyMBYTJ6PUAhDX";
            bArrCopyOfRange[i4] = b;
        }
        return new String(bArrCopyOfRange);
    }

    public static void A06() {
        A0D = new byte[]{118, 115, 85, 114, 127, 118, 97, 126, 120, 101, 69, SignedBytes.MAX_POWER_OF_TWO, 103, 69, 71, 76, 65, 105, 69, 74, 69, 67, 65, 86, 80, 85, 114, 94, 95, 69, 84, 73, 69, 102, 67, 80, 65, 65, 84, 67, 37, 32, 0, 37, 48, 37, 6, 49, 42, 32, 40, 33, 55, 50, 19, 32, 51, 56, 34, Ascii.ESC, 55, 56, 55, 49, 51, 36, 113, 122, 115, 123, 124, 119, 118, 81, 122, 123, 126, 118, 83, 118, 94, 123, 97, 102, 119, 124, 119, 96, 42, 38, 39, 47, 32, 46, 59, 40, 51, 51, 56, 49, 17, 50, 58, 58, 52, 51, 58, Ascii.NAK, 60, 51, 57, 49, 56, 47, Ascii.CAN, Ascii.SUB, 17, Ascii.SUB, Ascii.CR, Ascii.SYN, Ascii.FS, 60, 62, 47, Ascii.VT, 52, 41, 47, 41, 58, 50, 47, Ascii.CAN, 52, 55, 52, 41, Ascii.DC2, 53, Base64.padSymbol, 52, 115, 117, 117, 117, 114, 86, 83, 73, 78, 95, 84, 95, 72, 19, 63, Ascii.SUB, Base64.padSymbol, 17, Ascii.DLE, 10, Ascii.ESC, 6, 10, 41, Ascii.FF, Ascii.US, Ascii.SO, Ascii.SO, Ascii.ESC, Ascii.FF, 49, Ascii.GS, 56, Ascii.CAN, Base64.padSymbol, 40, Base64.padSymbol, Ascii.RS, 41, 50, 56, 48, 57, 87, 118, 83, 73, 78, 95, 84, 95, 72, 113, 105, 107, 114, 117, 105, 115, 116, 101, 99, 119, 108, 108, 111, 97, 98, 113};
    }

    private final void A07() {
        this.A04 = new C2850mi(super.A09, super.A08, super.A0A, this.A0F, super.A0C, this.A0D, this.A0A, this.A09);
        ViewOnClickListenerC1544El regularCtaForEndCard = getRegularCtaForEndCard();
        this.A01 = regularCtaForEndCard;
        C2850mi c2850mi = this.A04;
        if (c2850mi != null) {
            c2850mi.A0q(regularCtaForEndCard);
        }
    }

    private final void A08() {
        C2850mi c2850mi = this.A04;
        if (c2850mi == null || c2850mi.A0d() == null) {
            return;
        }
        c2850mi.A0s(true);
        c2850mi.A0i();
        if (super.A01) {
            c2850mi.A0r(AbstractC1521Do.A1V(super.A07, super.A06));
        }
        ViewOnClickListenerC1544El viewOnClickListenerC1544El = this.A01;
        if (viewOnClickListenerC1544El != null) {
            c2850mi.A0p(viewOnClickListenerC1544El);
        }
        c2850mi.A0j();
        c2850mi.A0h();
        addView(c2850mi.A0d(), A0G);
        String[] strArr = A0E;
        if (strArr[3].length() != strArr[1].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0E;
        strArr2[3] = "lHfXLdp7I01w499Y";
        strArr2[1] = "KBmZBlGM3V5mcO8y";
        A1f();
    }

    private final void A09() {
        C2850mi c2850mi = this.A04;
        if (c2850mi != null) {
            c2850mi.A0n(this.A08, new C1519Dm(this));
        }
    }

    private final void A0A() {
        this.A0A.setToolbarActionMode(2);
        long j = ((long) this.A08) * 1000;
        C2850mi c2850mi = this.A04;
        if (c2850mi != null) {
            c2850mi.A0n(j, new C1518Dl(this));
        }
    }

    private final boolean A0B() {
        C2406fP c2406fPA0K;
        String strA06;
        C2395fE c2395fEA32 = super.A08.A32();
        if (c2395fEA32 == null || (c2406fPA0K = c2395fEA32.A0K()) == null || (strA06 = c2406fPA0K.A06()) == null) {
            return false;
        }
        try {
            Uri uriA00 = AbstractC3011pP.A00(strA06);
            C1h.A06(uriA00);
            return C2801lu.A0S.A03(uriA00) == null;
        } catch (SecurityException e) {
            super.A09.A08().ABz(A05(114, 7, 65), AbstractC2786lf.A2a, new C2787lg(e));
            return false;
        }
    }

    private final ViewOnClickListenerC1544El getRegularCtaForEndCard() {
        ViewOnClickListenerC1544El viewOnClickListenerC1544El = new ViewOnClickListenerC1544El(super.A09, super.A08.A1X(), super.A08.A31().A01(), super.A0A, this.A0D, this.A0F, super.A0C, super.A08.A33());
        viewOnClickListenerC1544El.setViewShowsOverMedia(true);
        AbstractC3086qc.A0L(viewOnClickListenerC1544El);
        viewOnClickListenerC1544El.setText((CharSequence) super.A08.A32().A0K().A05());
        AbstractC3086qc.A0H(1001, viewOnClickListenerC1544El);
        viewOnClickListenerC1544El.setCta(super.A08.A32().A0K(), super.A08.A37(), new HashMap(), null);
        return viewOnClickListenerC1544El;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final EnumC2358ec A1a(String str) {
        EnumC2358ec enumC2358ecA0E;
        C1h.A09(str, A05(197, 6, 56));
        ViewOnClickListenerC1544El viewOnClickListenerC1544El = this.A01;
        return (viewOnClickListenerC1544El == null || (enumC2358ecA0E = viewOnClickListenerC1544El.A0E(A05(193, 4, 60))) == null) ? EnumC2358ec.A08 : enumC2358ecA0E;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final void A1b() {
        super.A1b();
        C2850mi c2850mi = this.A04;
        if (c2850mi != null) {
            c2850mi.A0e();
        }
        C3333ub c3333ub = this.A02;
        if (c3333ub != null) {
            c3333ub.A0E();
        }
        this.A0F.A0V();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final void A1g() {
        RelativeLayout relativeLayoutA0d;
        if (this.A0C) {
            C1618Hi c1618Hi = super.A09;
            String[] strArr = A0E;
            if (strArr[2].charAt(16) == strArr[0].charAt(16)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0E;
            strArr2[3] = "SyHgw7Sy9rEYHKXs";
            strArr2[1] = "XGzC0gT38krGJvRo";
            c1618Hi.A0F().A5W();
        }
        this.A06 = true;
        C2850mi c2850mi = this.A04;
        if (c2850mi != null) {
            c2850mi.A0l();
        }
        C2850mi c2850mi2 = this.A04;
        if (c2850mi2 != null && (relativeLayoutA0d = c2850mi2.A0d()) != null) {
            relativeLayoutA0d.removeAllViews();
        }
        if (A0B()) {
            C1618Hi c1618Hi2 = super.A09;
            C1h.A08(c1618Hi2, A05(154, 17, 64));
            LA la = super.A08;
            C1h.A08(la, A05(171, 13, 98));
            C2892nO c2892nO = this.A09;
            Handler handler = new Handler(Looper.getMainLooper());
            InterfaceC3119r9 interfaceC3119r9 = this.A0D;
            C1h.A08(interfaceC3119r9, A05(184, 9, 4));
            this.A02 = new C3333ub(c1618Hi2, la, c2892nO, handler, interfaceC3119r9);
            C3333ub c3333ub = this.A02;
            addView(c3333ub != null ? c3333ub.A0D(this.A01) : null);
        } else {
            this.A03 = new C3361v3(super.A09, super.A08, this.A09, new Handler(Looper.getMainLooper()), this.A0D);
            C3361v3 c3361v3 = this.A03;
            if (c3361v3 != null) {
                c3361v3.A0K(false);
            }
            C3361v3 c3361v4 = this.A03;
            addView(c3361v4 != null ? c3361v4.A0E(this.A01) : null);
        }
        this.A0A.bringToFront();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final void A1h() {
        if (this.A08 > 0) {
            if (this.A0C) {
                A09();
            } else {
                A0A();
            }
            int iA02 = super.A08.A32().A0I().A02();
            if (iA02 >= 0) {
                this.A0A.setProgressSpinnerInvisible(true);
            }
            if (iA02 == 0 || iA02 >= this.A08) {
                this.A0A.setToolbarActionMode(8);
            } else if (iA02 > 0) {
                new C3030pi(iA02, new C1520Dn(this)).A07();
            }
        } else {
            this.A0B.AH3(false);
        }
        A1f();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final void A1j(boolean z) {
        C2850mi c2850mi = this.A04;
        if (c2850mi != null) {
            c2850mi.A0f();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final void A1k(boolean z) {
        C2850mi c2850mi = this.A04;
        if (c2850mi != null) {
            c2850mi.A0g();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final boolean A1o() {
        if (super.A08.A2H()) {
            boolean z = this.A06;
            String[] strArr = A0E;
            if (strArr[3].length() != strArr[1].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0E;
            strArr2[3] = "EMpXE7ymYpQm8ghS";
            strArr2[1] = "p1eQOWvOMAlHDzhH";
            if (!z) {
                return true;
            }
        }
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final boolean A1p() {
        return this.A06;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final boolean A1q() {
        return true;
    }

    public final void A1s() {
        this.A0A.setToolbarActionMode(2);
        ViewOnClickListenerC1544El viewOnClickListenerC1544El = this.A01;
        if (viewOnClickListenerC1544El != null) {
            viewOnClickListenerC1544El.A0E(A05(193, 4, 60));
        }
    }

    public final boolean A1t() {
        if (this.A0A.getToolbarActionMode() == 0) {
            return false;
        }
        if (this.A0A.getToolbarActionMode() == 1) {
            this.A0A.setToolbarActionMode(2);
            A1g();
            this.A0A.setToolbarActionMode(0);
        }
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public C3257tN getFullScreenAdStyle() {
        C2404fN c2404fNA01 = super.A08.A31().A01();
        C1h.A08(c2404fNA01, A05(121, 25, 101));
        return new C3257tN(false, C3257tN.A07, c2404fNA01, ViewOnClickListenerC1544El.A05(super.A08), c2404fNA01.A08(false), null);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        C1h.A09(configuration, A05(88, 6, 119));
        super.onConfigurationChanged(configuration);
    }
}
