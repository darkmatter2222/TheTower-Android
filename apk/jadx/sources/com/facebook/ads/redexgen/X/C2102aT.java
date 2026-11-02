package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.google.common.base.Ascii;
import java.net.URLEncoder;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.aT, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2102aT {
    public static byte[] A07;
    public static String[] A08 = {"iMGBqiSHm2uYyOurEO", "JHkNge3qKUrOixxb", "Efd0ZU7p6XsOViiGEn9FTnCEMV0phXsZ", "Qqux8MYyckh5CceEy", "ksejtLtP", "6qwv67", "yXEFufBpuo", "JuPO8KFa"};
    public static final String A09;
    public static final Set<String> A0A;
    public C2755lA A00;
    public InterfaceC2193bw A01;
    public InterfaceC2104aV A02;
    public Map<String, String> A03;
    public Map<String, String> A04;
    public final Handler A05;
    public volatile boolean A06;

    static {
        A05();
        A09 = C2102aT.class.getSimpleName();
        A0A = new HashSet();
        A0A.add(A01(0, 1, 73));
        A0A.add(A01(29, 4, 24));
    }

    public C2102aT(C2755lA c2755lA) {
        this(c2755lA, null, null);
    }

    public C2102aT(C2755lA c2755lA, Map<String, String> map) {
        this(c2755lA, map, null);
    }

    public C2102aT(C2755lA c2755lA, Map<String, String> map, Map<String, String> map2) {
        this.A05 = new Handler(Looper.getMainLooper());
        this.A06 = false;
        this.A00 = c2755lA;
        this.A03 = map != null ? new HashMap(map) : null;
        this.A04 = map2 != null ? new HashMap(map2) : null;
    }

    private C2100aR A00(String... strArr) {
        String str = strArr[0];
        if (TextUtils.isEmpty(str) || A0A.contains(str)) {
            return null;
        }
        String strA02 = A02(str);
        if (this.A03 != null && !this.A03.isEmpty()) {
            for (Map.Entry<String, String> entry : this.A03.entrySet()) {
                String key = entry.getKey();
                if (A08[3].length() != 17) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A08;
                strArr2[1] = "LHazEi1oxcVYNJUw";
                strArr2[5] = "KdBpo3";
                strA02 = A03(strA02, key, entry.getValue());
            }
        }
        int i = 1;
        while (true) {
            int i2 = i + 1;
            if (i > 2) {
                return null;
            }
            if (A07(strA02)) {
                return new C2100aR(this.A01);
            }
            i = i2;
        }
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 90);
        }
        return new String(bArrCopyOfRange);
    }

    private String A02(String str) {
        try {
            return A03(str, A01(23, 6, 65), AbstractC3052q4.A01(this.A00.A04().A7W()));
        } catch (Exception unused) {
            return str;
        }
    }

    private String A03(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3)) {
            return str;
        }
        String strA01 = A01(3, 1, 92);
        if (str.contains(strA01)) {
            strA01 = A01(1, 1, 124);
        }
        return str + strA01 + str2 + A01(2, 1, 100) + URLEncoder.encode(str3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: A04, reason: merged with bridge method [inline-methods] */
    public void A08() {
        if (this.A02 != null) {
            this.A02.AIN();
        }
    }

    public static void A05() {
        A07 = new byte[]{48, 0, 3, 57, 33, Ascii.SYN, Ascii.SYN, Ascii.VT, Ascii.SYN, 68, Ascii.VT, Ascii.DC4, 1, 10, Ascii.CR, 10, 3, 68, 17, Ascii.SYN, 8, 94, 68, 122, 117, 122, 119, 116, 124, 44, 55, 46, 46};
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: A06, reason: merged with bridge method [inline-methods] */
    public void A0A(C2100aR c2100aR) {
        if (this.A02 != null) {
            this.A02.AIP(c2100aR);
        }
    }

    private boolean A07(String str) {
        InterfaceC2193bw interfaceC2193bwAI9;
        InterfaceC2189bs interfaceC2189bsA00 = C2114af.A00(this.A00);
        try {
            if (this.A04 == null || this.A04.size() == 0) {
                interfaceC2193bwAI9 = interfaceC2189bsA00.AI9(str, new C2134az());
            } else {
                C2134az c2134az = new C2134az();
                c2134az.A05(this.A04);
                interfaceC2193bwAI9 = interfaceC2189bsA00.AIA(str, c2134az.A08());
            }
            this.A01 = interfaceC2193bwAI9;
        } catch (Exception e) {
            Log.e(A09, A01(4, 19, 62) + str, e);
        }
        return this.A01 != null && this.A01.A9p() == 200;
    }

    public final void A09(InterfaceC2104aV interfaceC2104aV) {
        this.A02 = interfaceC2104aV;
    }

    public final void A0B(Executor executor, final String... strArr) {
        executor.execute(new Runnable() { // from class: com.facebook.ads.redexgen.X.aZ
            @Override // java.lang.Runnable
            public final void run() {
                this.A00.A0D(strArr);
            }
        });
    }

    public final void A0C(String... strArr) {
        A0B(ExecutorC3091qh.A06, strArr);
    }

    public final /* synthetic */ void A0D(String[] strArr) {
        final C2100aR c2100aRA00 = A00(strArr);
        if (this.A06) {
            this.A05.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.ad
                @Override // java.lang.Runnable
                public final void run() {
                    this.A00.A08();
                }
            });
        } else {
            this.A05.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.ae
                @Override // java.lang.Runnable
                public final void run() {
                    this.A00.A0A(c2100aRA00);
                }
            });
        }
    }
}
