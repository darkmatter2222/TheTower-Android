package com.facebook.ads.redexgen.X;

import android.app.Activity;
import android.app.KeyguardManager;
import android.util.Log;
import android.view.Window;
import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.qx, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3107qx {
    public static byte[] A00;
    public static String[] A01 = {"75", "", "84T1cPcVhFaG3gZ5iFCuz5VGfvW435Ys", "hmgtvPST3LKdfFpjmmFZYvFoyIGtsiKE", "1o0hQSlG2MREJWQYXtVsar2Zo68mKpVL", "LjPyS32kIH6YipP2gsYrsbvo7R8K", "pRhgJcRZc8j2ATnbWVmWTgInp0JNCNsL", "EpPf5pm3Rz1UtI6LaI9QQC8GFK2ymH0S"};
    public static final String A02;

    static {
        A02();
        A02 = C3107qx.class.getSimpleName();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 115);
        }
        return new String(bArrCopyOfRange);
    }

    public static Map<String, String> A01(@Nullable C1618Hi c1618Hi) {
        Window window;
        HashMap map = new HashMap();
        if (c1618Hi == null) {
            return map;
        }
        try {
            map.put(A00(40, 3, 111), String.valueOf(A04(c1618Hi)));
            Activity activityA0E = c1618Hi.A0E();
            if (activityA0E != null && (window = activityA0E.getWindow()) != null) {
                int i = window.getAttributes().flags;
                map.put(A00(58, 2, 94), Integer.toString(window.getAttributes().type));
                int i2 = 4194304 & i;
                String strA00 = A00(1, 1, 110);
                String strA01 = A00(0, 1, 8);
                map.put(A00(48, 5, 14), i2 > 0 ? strA00 : strA01);
                if (A01[1].length() == 23) {
                    throw new RuntimeException();
                }
                A01[7] = "fwmMHJhcrVWyeAGw8Re8ymmckApbJBDL";
                if ((524288 & i) <= 0) {
                    strA00 = strA01;
                }
                map.put(A00(53, 5, 18), strA00);
            }
        } catch (Exception e) {
            Log.e(A02, A00(2, 30, 72), e);
            c1618Hi.A08().ABz(A00(43, 5, 114), AbstractC2786lf.A2T, new C2787lg(e));
        }
        return map;
    }

    public static void A02() {
        A00 = new byte[]{75, 44, 126, 67, 88, 94, 75, 79, 82, 84, 85, Ascii.ESC, 82, 85, Ascii.ESC, 76, 82, 85, 95, 84, 76, Ascii.ESC, 82, 85, 93, 84, Ascii.ESC, 88, 83, 94, 88, 80, Ascii.FS, Ascii.DC2, Ascii.SO, Ascii.DLE, 2, Ascii.SYN, 5, 19, 119, 123, 110, 115, 104, 114, 106, 120, 10, Ascii.ESC, Ascii.EM, Ascii.SYN, Ascii.SUB, Ascii.SYN, 7, Ascii.DC2, Ascii.SYN, Ascii.CR, 90, 89};
    }

    public static boolean A03(C1618Hi c1618Hi) {
        return !C3087qd.A04(A01(c1618Hi));
    }

    public static boolean A04(C1618Hi c1618Hi) {
        KeyguardManager keyguardManager = (KeyguardManager) c1618Hi.getSystemService(A00(32, 8, 4));
        return keyguardManager != null && keyguardManager.inKeyguardRestrictedInputMode();
    }
}
