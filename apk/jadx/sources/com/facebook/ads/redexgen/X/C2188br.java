package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import com.google.android.gms.nearby.uwb.RangingPosition;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.br, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2188br {
    public static String[] A09 = {"6REwmDl9XOCMOUVALE304PQaLIACUDdB", "OSiE0ETm3o80qopLKjeVsFdmRqEwQRGP", "T4HMME4g12759npSgydXzQUPRfl1LVqh", "kVrElxr9MLzANfC8O6qAp157bhaNdsP8", "IT4zLxeG2VEg7n7F6NyAzQJRgNacg", "0a8lKfPHuQ0g4jZrkzQ4AzqRo5FUtIe0", "3lFGWYjdVLwI7ZVfWxuSMAgcPM7rT", "UJH1pef1suSIUGrZ969c7mjQy8Sa4Ju7"};
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public boolean A06;
    public final C1744Mk A07 = new C1744Mk();
    public final int[] A08 = new int[256];

    /* JADX INFO: Access modifiers changed from: private */
    public void A00(C1744Mk c1744Mk, int i) {
        int iA0K;
        if (i < 4) {
            return;
        }
        c1744Mk.A0g(3);
        boolean z = (c1744Mk.A0I() & 128) != 0;
        int i2 = i - 4;
        String[] strArr = A09;
        if (strArr[7].charAt(13) == strArr[2].charAt(13)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A09;
        strArr2[7] = "jH34FN8wZX0PvsBocX7ZqPy41aKwrRI2";
        strArr2[2] = "aSPilwoBqAEpIL5WJQy14AT2v8knN9ff";
        if (z) {
            if (i2 < 7 || (iA0K = c1744Mk.A0K()) < 4) {
                return;
            }
            this.A01 = c1744Mk.A0M();
            this.A00 = c1744Mk.A0M();
            this.A07.A0d(iA0K - 4);
            i2 -= 7;
        }
        int iA09 = this.A07.A09();
        int iA0A = this.A07.A0A();
        if (iA09 >= iA0A || i2 <= 0) {
            return;
        }
        int iMin = Math.min(i2, iA0A - iA09);
        c1744Mk.A0k(this.A07.A0l(), iA09, iMin);
        this.A07.A0f(iA09 + iMin);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A01(C1744Mk c1744Mk, int i) {
        if (i < 19) {
            return;
        }
        this.A05 = c1744Mk.A0M();
        this.A04 = c1744Mk.A0M();
        c1744Mk.A0g(11);
        this.A02 = c1744Mk.A0M();
        this.A03 = c1744Mk.A0M();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A02(C1744Mk c1744Mk, int i) {
        if (i % 5 != 2) {
            return;
        }
        c1744Mk.A0g(2);
        Arrays.fill(this.A08, 0);
        int i2 = i / 5;
        for (int i3 = 0; i3 < i2; i3++) {
            int iA0I = c1744Mk.A0I();
            int iA0I2 = c1744Mk.A0I();
            int iA0I3 = c1744Mk.A0I();
            int iA0I4 = c1744Mk.A0I();
            this.A08[iA0I] = (c1744Mk.A0I() << 24) | (N1.A07((int) (((double) iA0I2) + (((double) (iA0I3 + RangingPosition.RSSI_UNKNOWN)) * 1.402d)), 0, 255) << 16) | (N1.A07((int) ((((double) iA0I2) - (((double) (iA0I4 + RangingPosition.RSSI_UNKNOWN)) * 0.34414d)) - (((double) (iA0I3 + RangingPosition.RSSI_UNKNOWN)) * 0.71414d)), 0, 255) << 8) | N1.A07((int) (((double) iA0I2) + (((double) (iA0I4 + RangingPosition.RSSI_UNKNOWN)) * 1.772d)), 0, 255);
        }
        this.A06 = true;
    }

    public final C1911Th A06() {
        if (this.A05 == 0 || this.A04 == 0 || this.A01 == 0 || this.A00 == 0 || this.A07.A0A() == 0 || this.A07.A09() != this.A07.A0A() || !this.A06) {
            return null;
        }
        this.A07.A0f(0);
        int[] iArr = new int[this.A01 * this.A00];
        int i = 0;
        while (i < iArr.length) {
            int iA0I = this.A07.A0I();
            if (iA0I != 0) {
                int i2 = i + 1;
                int[] iArr2 = this.A08;
                String[] strArr = A09;
                if (strArr[6].length() != strArr[4].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A09;
                strArr2[0] = "0EK1tFE9VOylfBdNrLrZeEFYyvusNkWz";
                strArr2[3] = "isR3l5x9bAsQyPyJhFnO5izP7p9Ywoni";
                iArr[i] = iArr2[iA0I];
                i = i2;
            } else {
                int iA0I2 = this.A07.A0I();
                if (iA0I2 != 0) {
                    int iA0I3 = (iA0I2 & 64) == 0 ? iA0I2 & 63 : ((iA0I2 & 63) << 8) | this.A07.A0I();
                    Arrays.fill(iArr, i, i + iA0I3, (iA0I2 & 128) == 0 ? 0 : this.A08[this.A07.A0I()]);
                    i += iA0I3;
                }
            }
        }
        return new C1712Ld().A0D(Bitmap.createBitmap(iArr, this.A01, this.A00, Bitmap.Config.ARGB_8888)).A04(this.A02 / this.A05).A0A(0).A07(this.A03 / this.A04, 0).A09(0).A06(this.A01 / this.A05).A03(this.A00 / this.A04).A0H();
    }

    public final void A07() {
        this.A05 = 0;
        this.A04 = 0;
        this.A02 = 0;
        this.A03 = 0;
        this.A01 = 0;
        this.A00 = 0;
        this.A07.A0d(0);
        this.A06 = false;
    }
}
