package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.text.TextUtils;
import com.facebook.ads.AdSettings;
import com.facebook.ads.RewardData;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import java.util.concurrent.Executor;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.gV, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2474gV {
    public static byte[] A05;
    public static String[] A06 = {"4IoXmskrHF1p6dXqKQn3apqXXvi8", "1tZtBqJSVjxeNtOdqegUYYfHC8", "yIG7nuwjW", "6uVpGgk4XMyp6iT3bnZwHJmMch5uofQt", "GVQj", "RdXauxF0SpMDtL", "yOCZ", "m5Wr6psr3K5zQ"};
    public Executor A00 = ExecutorC3091qh.A06;
    public final C1618Hi A01;
    public final InterfaceC3119r9 A02;
    public final InterfaceC3175s3 A03;
    public final String A04;

    static {
        A05();
    }

    public C2474gV(C1618Hi c1618Hi, InterfaceC3175s3 interfaceC3175s3, String str, InterfaceC3119r9 interfaceC3119r9) {
        this.A01 = c1618Hi;
        this.A03 = interfaceC3175s3;
        this.A04 = str;
        this.A02 = interfaceC3119r9;
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 42);
        }
        return new String(bArrCopyOfRange);
    }

    public static String A04(RewardData rewardData, String str, String str2) {
        if (rewardData == null) {
            return null;
        }
        String urlPrefix = AdSettings.getUrlPrefix();
        Uri uriA00 = AbstractC3011pP.A00((urlPrefix == null || urlPrefix.isEmpty()) ? A03(68, 60, 14) : String.format(Locale.US, A03(5, 63, 42), urlPrefix));
        Uri.Builder builder = new Uri.Builder();
        builder.scheme(uriA00.getScheme());
        builder.authority(uriA00.getAuthority());
        builder.path(uriA00.getPath());
        builder.query(uriA00.getQuery());
        builder.fragment(uriA00.getFragment());
        builder.appendQueryParameter(A03(134, 4, 59), rewardData.getUserID());
        builder.appendQueryParameter(A03(128, 2, 25), rewardData.getCurrency());
        builder.appendQueryParameter(A03(130, 4, 34), str);
        builder.appendQueryParameter(A03(0, 5, 40), str2);
        return builder.build().toString();
    }

    public static void A05() {
        byte[] bArr = {99, 114, 114, 107, 102, 104, 116, 116, 112, 115, 58, 47, 47, 119, 119, 119, 46, 37, 115, 46, 102, 97, 99, 101, 98, 111, 111, 107, 46, 99, 111, 109, 47, 97, 117, 100, 105, 101, 110, 99, 101, 95, 110, 101, 116, 119, 111, 114, 107, 47, 115, 101, 114, 118, 101, 114, 95, 115, 105, 100, 101, 95, 114, 101, 119, 97, 114, 100, 76, 80, 80, 84, 87, Ascii.RS, Ascii.VT, Ascii.VT, 83, 83, 83, 10, 66, 69, 71, 65, 70, 75, 75, 79, 10, 71, 75, 73, Ascii.VT, 69, 81, SignedBytes.MAX_POWER_OF_TWO, 77, 65, 74, 71, 65, 123, 74, 65, 80, 83, 75, 86, 79, Ascii.VT, 87, 65, 86, 82, 65, 86, 123, 87, 77, SignedBytes.MAX_POWER_OF_TWO, 65, 123, 86, 65, 83, 69, 86, SignedBytes.MAX_POWER_OF_TWO, 67, 80, 120, 124, 97, 108, 97, 100, 120, 117};
        String[] strArr = A06;
        if (strArr[4].length() != strArr[6].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A06;
        strArr2[0] = "UxdDTxCBISRzTQMngmIIdhyBS5kV";
        strArr2[5] = "aUHRRDOUc27Pb9";
        A05 = bArr;
    }

    public final void A06() {
        if (TextUtils.isEmpty(this.A04)) {
            return;
        }
        C2102aT c2102aT = new C2102aT(this.A01, new HashMap());
        c2102aT.A09(new C1468Bn(this));
        c2102aT.A0B(this.A00, this.A04);
    }
}
