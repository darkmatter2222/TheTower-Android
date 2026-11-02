package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.ironsource.InterfaceC3669k1;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class DJ extends AbstractRunnableC2979oq {
    public static byte[] A01;
    public static String[] A02 = {"LNqwTEh", "UoGpOHWV9zHxP9FbUdEz4AfHC6dRmkkT", "hfOxm6dlyJX329RbZJiPwJyHrQdpnD2L", "dxOBxsDFly3Ic3Z24bv10J1v8B7eOgI2", "LgMDq1dJk1yoReKJo0dnYxBdoAo1sJ7B", "xQvnj7vSZUV5pzubj8OO0RfBcZ3kcgkz", "iFWo4Rp1bPuWnwdsiYVjrK4a", "qesZqXmrCSvDM9D5ryLU3XP6M74MWjBR"};
    public final /* synthetic */ C13405y A00;

    static {
        A01();
    }

    public DJ(C13405y c13405y) {
        this.A00 = c13405y;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ InterfaceC3669k1.d.b.k);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{102, 89, 84, 85, 95, Ascii.DLE, 71, 81, 67, Ascii.DLE, 94, 85, 70, 85, 66, Ascii.DLE, SignedBytes.MAX_POWER_OF_TWO, 66, 85, SignedBytes.MAX_POWER_OF_TWO, 81, 66, 85, 84};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC2979oq
    public final void A07() {
        if (this.A00.A0a) {
            return;
        }
        C13405y c13405y = this.A00;
        String[] strArr = A02;
        if (strArr[1].charAt(13) != strArr[2].charAt(13)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A02;
        strArr2[1] = "rubP5cEt439s89VQ4GFWkKBY0aIf15w5";
        strArr2[2] = "xsBepKfmc9LAf9wWQ0M2ZBIiIgFfXGPT";
        c13405y.A13(A00(0, 24, 65));
    }
}
