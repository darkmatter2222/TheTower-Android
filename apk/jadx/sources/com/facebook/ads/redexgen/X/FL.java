package com.facebook.ads.redexgen.X;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Bundle;
import com.facebook.ads.AdError;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class FL implements InterfaceC3120rA {
    public static byte[] A02;
    public static String[] A03 = {"aBntnUcGkPsHn32", "P4RcL0jDchydoovBiSoLIuxgLfrPrb6w", "mkuNE8OtHtyShCJf5aoxKrL8UBpqEuyM", "UhCp0DvERhIRIFEAVdlvvAHyWhzVDXme", "Bn", "", "xG", ""};
    public final C2658jY A00;
    public final C1618Hi A01;

    static {
        A01();
    }

    public FL(C1618Hi c1618Hi, C2658jY c2658jY) {
        this.A01 = c1618Hi;
        this.A00 = c2658jY;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 59);
            String[] strArr = A03;
            if (strArr[1].charAt(10) != strArr[2].charAt(10)) {
                throw new RuntimeException();
            }
            A03[0] = "eCFHYnXZJROSM8T";
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{106, 109, 119, 124, 113, 117, 124, 98, 115, 115, 124, 108, 113, 106, 102, 109, 119, 98, 119, 106, 108, 109, 124, 104, 102, 122, 73, 78, 72, 69, 91, 94, 69, 83, 94, 69, 81, 95, 67, 104, 100, 102, 37, 109, 106, 104, 110, 105, 100, 100, 96, 37, 106, 111, 120, 37, 98, 101, 127, 110, 121, 101, 106, 103, 37, 98, 123, 104, 37, 74, 126, 111, 98, 110, 101, 104, 110, 69, 110, 127, 124, 100, 121, 96, 78, 115, 123, 100, 121, 127, 110, 111, 74, 104, 127, 98, 125, 98, 127, 114};
    }

    private final void A02() {
        InterfaceC2752l7 interfaceC2752l7A0G = this.A01.A0G();
        if (interfaceC2752l7A0G != null) {
            com.facebook.ads.Ad adA7K = interfaceC2752l7A0G.A7K();
            if (A03[3].charAt(1) != 'h') {
                throw new RuntimeException();
            }
            String[] strArr = A03;
            strArr[1] = "Y2WnI7kTNoyl8yrnl5OB1Dl5fHFssRe6";
            strArr[2] = "w1APvk8HFOytJ5hAXEfuvXVYTJSuGWRL";
            if (adA7K != null && interfaceC2752l7A0G.A7O() != null) {
                interfaceC2752l7A0G.A7O().onError(adA7K, AdError.AD_PRESENTATION_ERROR);
            }
        }
        this.A00.A05().finish();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final void ABc(Intent intent, Bundle bundle, C2658jY c2658jY) {
        ComponentName componentName = new ComponentName(AbstractC2866my.A07(AbstractC2866my.A01.get()), A00(39, 61, 48));
        Intent intent2 = new Intent();
        intent2.setComponent(componentName);
        String strA00 = A00(26, 13, 33);
        intent2.putExtra(strA00, intent.getStringExtra(strA00));
        String strA01 = A00(0, 26, 24);
        intent2.putExtra(strA01, intent.getIntExtra(strA01, -1));
        try {
            this.A01.A0F().AJR();
            C2997p8.A0A(c2658jY.A05(), intent2);
        } catch (C2995p6 unused) {
            A02();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final void AGF(boolean z) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final void AGp(boolean z) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final void AKD(Bundle bundle) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final String getCurrentClientToken() {
        return A00(0, 0, 108);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final boolean onActivityResult(int i, int i2, Intent intent) {
        this.A01.A0F().AJ3();
        if (i2 == -1) {
            this.A00.A05().finish();
            return false;
        }
        C1618Hi c1618Hi = this.A01;
        String[] strArr = A03;
        if (strArr[1].charAt(10) != strArr[2].charAt(10)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A03;
        strArr2[6] = "Lp";
        strArr2[4] = "Ys";
        c1618Hi.A0F().AJ2(i2);
        A02();
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final void onDestroy() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final /* synthetic */ void onStart() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final /* synthetic */ void onStop() {
    }
}
