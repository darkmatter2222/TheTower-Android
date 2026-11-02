package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ej, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2365ej {
    public static byte[] A00;
    public static String[] A01 = {"4Fi3cRKjKwjo", "pfwDmZC0EgnSHGG3akphHDiSxRpjxWfc", "OwKyFlCBYoW0NHpoiuFf2exuC", "FTixXnraWBf7yQ9sseM6khJqknPB2", "87lno6sBf8EnLpq9v2WrftgOrdI4V", "hcLSbPhFObKmfxN2jEGb0Jf71EM4", "MV7VLhl", "AE1L1nhQpeYYJvXkfFkincgpQRIdvuit"};

    static {
        A05();
    }

    public static EnumC2363eh A00(JSONObject jSONObject) {
        return EnumC2363eh.A00(jSONObject.optString(A02(52, 21, 114)));
    }

    public static MJ A01(C1618Hi c1618Hi, JSONObject jSONObject, String str) {
        return new MJ(jSONObject, c1618Hi, str);
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 56);
        }
        return new String(bArrCopyOfRange);
    }

    public static Collection<String> A03(C1618Hi c1618Hi, JSONObject jSONObject) {
        JSONArray jSONArray = null;
        try {
            String strOptString = jSONObject.optString(A02(35, 17, 123));
            if (!TextUtils.isEmpty(strOptString)) {
                jSONArray = new JSONArray(strOptString);
            }
        } catch (JSONException e) {
            c1618Hi.A08().ABz(A02(73, 7, 42), AbstractC2786lf.A2C, new C2787lg(e));
        }
        return A04(jSONArray);
    }

    public static Collection<String> A04(JSONArray jSONArray) {
        if (jSONArray == null || jSONArray.length() == 0) {
            return null;
        }
        HashSet hashSet = new HashSet();
        for (int i = 0; i < jSONArray.length(); i++) {
            hashSet.add(jSONArray.optString(i));
        }
        return hashSet;
    }

    public static void A05() {
        A00 = new byte[]{101, SignedBytes.MAX_POWER_OF_TWO, 4, 77, 87, 4, 77, 74, 82, 69, 72, 77, SignedBytes.MAX_POWER_OF_TWO, 69, 80, 65, SignedBytes.MAX_POWER_OF_TWO, 4, 83, 77, 80, 76, 75, 81, 80, 4, 80, 75, 79, 65, 74, 10, 10, Ascii.ESC, 2, 39, 38, 55, 38, 32, 55, 42, 44, 45, Ascii.FS, 48, 55, 49, 42, 45, 36, 48, 35, 36, 60, 43, 38, 35, 46, 43, 62, 35, 37, 36, Ascii.NAK, 40, 47, 34, 43, 60, 35, 37, 56, 98, 115, 96, 97, 123, 124, 117};
    }

    public static boolean A06(C1618Hi c1618Hi, InterfaceC2364ei interfaceC2364ei, InterfaceC2884nG interfaceC2884nG) {
        EnumC2363eh enumC2363ehA8w = interfaceC2364ei.A8w();
        if (enumC2363ehA8w == null || enumC2363ehA8w == EnumC2363eh.A03) {
            return false;
        }
        boolean z = false;
        Collection<String> collectionA8Q = interfaceC2364ei.A8Q();
        if (collectionA8Q == null || collectionA8Q.isEmpty()) {
            return false;
        }
        Iterator<String> it = collectionA8Q.iterator();
        while (it.hasNext()) {
            if (AbstractC3057q9.A04(c1618Hi, it.next())) {
                z = true;
                break;
            }
        }
        if (z != (enumC2363ehA8w == EnumC2363eh.A02)) {
            return false;
        }
        String strA7z = interfaceC2364ei.A7z();
        boolean zIsEmpty = TextUtils.isEmpty(strA7z);
        String[] strArr = A01;
        if (strArr[7].charAt(25) != strArr[1].charAt(25)) {
            throw new RuntimeException();
        }
        A01[2] = "Y0XUyINdugWnNFuKX72emGLWk";
        if (zIsEmpty) {
            c1618Hi.A08().ABz(A02(32, 3, 83), AbstractC2786lf.A0Z, new C2787lg(A02(0, 32, 28)));
            return true;
        }
        interfaceC2884nG.AC8(strA7z, null);
        return true;
    }
}
