package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class FF implements InterfaceC3186sE {
    public static byte[] A01;
    public static String[] A02 = {"nV", "0i4Wqrqqd8V", "SjjlSsHq4luZ", "UY2G1G5tdkkQRCLDawUW8PMELrtkam", "x8YzSsjyce", "sMLSYBAewXVAxhh2DbXf8YHA5QSbjC", "Z41BjwW", "WlPnbv1jMaDivlCQdRIz8mOz1GWjjHLQ"};
    public final /* synthetic */ AbstractC3184sC A00;

    static {
        A01();
    }

    public FF(AbstractC3184sC abstractC3184sC) {
        this.A00 = abstractC3184sC;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 111);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-29, -17, -19, -82, -26, -31, -29, -27, -30, -17, -17, -21, -82, -31, -28, -13, -82, -31, -28, -14, -27, -16, -17, -14, -12, -23, -18, -25, -82, -58, -55, -50, -55, -45, -56, -33, -63, -60, -33, -46, -59, -48, -49, -46, -44, -55, -50, -57, -33, -58, -52, -49, -41};
        String[] strArr = A02;
        if (strArr[4].length() == strArr[1].length()) {
            throw new RuntimeException();
        }
        A02[7] = "41BFLxMtpa8zSeOoPh8lyezFWRN0z1Os";
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3186sE
    public final void A5c() {
        if (this.A00.A09 != null) {
            this.A00.A09.A5C(A00(0, 53, 17));
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0053  */
    @Override // com.facebook.ads.redexgen.X.InterfaceC3186sE
    public final void A5d() {
        this.A00.A0P();
        if (this.A00.A0A != null) {
            this.A00.A0A.AGp(true);
        }
        if (this.A00.A05 != null) {
            InterfaceC3183sB interfaceC3183sB = this.A00.A05;
            String[] strArr = A02;
            if (strArr[4].length() != strArr[1].length()) {
                A02[2] = "wiJwg3n4JCc";
                interfaceC3183sB.ADn();
                this.A00.A0E();
                if (A02[2].length() != 19) {
                    A02[6] = "OhUE2NP";
                    return;
                }
            }
        } else {
            this.A00.A0E();
            if (A02[2].length() != 19) {
                A02[6] = "OhUE2NP";
                return;
            }
        }
        throw new RuntimeException();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3186sE
    public final void AAG() {
        if (this.A00.A04 == null) {
            A5d();
            return;
        }
        AbstractC3184sC.A03(this.A00);
        if (this.A00.A04.A02() == null) {
            AbstractC3184sC abstractC3184sC = this.A00;
            if (A02[6].length() != 7) {
                throw new RuntimeException();
            }
            A02[7] = "M7aB9yPR9altU9X1FYnvgfaKEANBwcUB";
            abstractC3184sC.A0F();
        } else {
            this.A00.A0H(this.A00.A04.A02());
        }
        if (C2863mv.A2b(this.A00.A07)) {
            this.A00.performAccessibilityAction(128, null);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3186sE
    public final void ABX() {
        if (!TextUtils.isEmpty(this.A00.A06.A0I())) {
            C3007pK.A0P(new C3007pK(), this.A00.A07, AbstractC3011pP.A00(this.A00.A06.A0I()), this.A00.A0B);
        }
        if (this.A00.A03 != null) {
            this.A00.A03.A04();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3186sE
    public final void ABY() {
        this.A00.A0P();
        if (this.A00.A0A != null) {
            this.A00.A0A.AGp(true);
        }
        if (!TextUtils.isEmpty(this.A00.A06.A0C())) {
            C3007pK.A0P(new C3007pK(), this.A00.A07, AbstractC3011pP.A00(this.A00.A06.A0C()), this.A00.A0B);
        }
        if (this.A00.A03 != null) {
            this.A00.A03.A06();
        }
        this.A00.A0E();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3186sE
    public final void AFv(EnumC2481gc enumC2481gc) {
        AbstractC3184sC.A02(this.A00);
        this.A00.A02 = enumC2481gc;
        this.A00.A0H(this.A00.A02 == EnumC2481gc.A03 ? this.A00.A06.A0A() : this.A00.A06.A0B());
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3186sE
    public final void AG9(C2483ge c2483ge) {
        AbstractC3184sC.A02(this.A00);
        if (this.A00.A03 != null) {
            this.A00.A03.A07(c2483ge.A01());
        }
        List<C2483ge> listA05 = c2483ge.A05();
        if (A02[2].length() == 19) {
            throw new RuntimeException();
        }
        A02[7] = "TiWZaQmdYanhhmDQ1Z6mCdwiNcdolR51";
        if (listA05.isEmpty()) {
            this.A00.A0G(c2483ge);
        } else {
            this.A00.A0H(c2483ge);
        }
    }
}
