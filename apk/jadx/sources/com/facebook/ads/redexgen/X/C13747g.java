package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import java.io.Serializable;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.7g, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C13747g extends LA implements Serializable {
    public static byte[] A00 = null;
    public static String[] A01 = {"lNfLNH12lo092G91EOzeY1GmrD7sd3LT", "IfriMLumcJB6cDz8CdV53z8mw", "VqAXCxmiQObdbt99qEtF0Khtp", "Er74lg0w9IOdrBN2LYFe3VajafM65LKV", "PApxnlfYZYjRi2lMOUBi6X3WbwZz37rL", "HRTNeezFOCXWn2GXnxOdBfrunSk2O2aN", "VET24gqvkOE8n1LMNVzexbAvR8qySpIp", "2OknKa0ZFArae7oBhfBaswv35Z02O68Z"};
    public static final long serialVersionUID = 2751287062553772011L;

    static {
        A02();
    }

    public C13747g(List<C2395fE> list) {
        super(list);
    }

    public static C13747g A00(JSONObject jSONObject, C1618Hi c1618Hi) {
        C13747g c13747g = new C13747g(LA.A07(jSONObject, c1618Hi, new C1704Kt()));
        c13747g.A3B(jSONObject);
        c13747g.A23(A01(0, 14, 8));
        return c13747g;
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 1);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{123, 108, 126, 104, 123, 109, 108, 109, 86, 127, 96, 109, 108, 102};
    }

    private final boolean A03() {
        C2398fH c2398fHA0I = A32().A0I();
        return TextUtils.isEmpty(c2398fHA0I.A09()) && c2398fHA0I.A07() == null && !TextUtils.isEmpty(c2398fHA0I.A08());
    }

    /* JADX WARN: Code duplicated, block: B:20:0x006a  */
    /* JADX WARN: Code duplicated, block: B:24:0x0072 A[RETURN, SYNTHETIC] */
    @Override // com.facebook.ads.redexgen.X.AbstractC2394fD
    public final int A1L() {
        if (A2G()) {
            String[] strArr = A01;
            if (strArr[2].length() != strArr[1].length()) {
                throw new RuntimeException();
            }
            A01[3] = "Avc54I4RohpfVXuEjhFSHVQISVBIYsCd";
            return 3;
        }
        if (A03()) {
            return 5;
        }
        if (A32().A0I().A07() == null) {
            return 0;
        }
        C2395fE c2395fEA32 = A32();
        if (A01[7].charAt(13) != 'i') {
            String[] strArr2 = A01;
            strArr2[2] = "LUMoyJG2KoRy6RtYfUfQOcun1";
            strArr2[1] = "H1zEIWfauAFdFHrLQfBWpGGFr";
            if (!c2395fEA32.A0I().A07().A0h()) {
                if (A2Z()) {
                    return 1;
                }
            }
        } else if (!c2395fEA32.A0I().A07().A0h()) {
            if (A2Z()) {
                return 1;
            }
        }
        return 4;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2394fD
    public final int A1M() {
        return A32().A0I().A05();
    }
}
