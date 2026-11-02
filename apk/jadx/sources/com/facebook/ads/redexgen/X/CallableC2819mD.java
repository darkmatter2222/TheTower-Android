package com.facebook.ads.redexgen.X;

import android.content.SharedPreferences;
import android.os.Build;
import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.concurrent.Callable;
import org.json.JSONObject;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.mD, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class CallableC2819mD implements Callable<Boolean> {
    public static byte[] A04;
    public static String[] A05 = {"CoyLTTqL9oN", "BQ7yf8H5Dy6", "lyn", "mKjKy3YozjHGjndyHmGPrtRgt1Zkpmof", "kCMvlxHItYqHUu0uJG5AXtsVRpKoPm5F", "PZWzUgGQe3CdPYsrWXqgA6txhpTzavVR", "1z7bJiu6sIQ4w4e4OAYhOvPnvUYdbbgv", "yc5QaeADf08N4Bq6BgqF"};
    public final /* synthetic */ SharedPreferences A00;
    public final /* synthetic */ C2755lA A01;
    public final /* synthetic */ C2797lq A02;
    public final /* synthetic */ String A03;

    static {
        A02();
    }

    public CallableC2819mD(C2755lA c2755lA, C2797lq c2797lq, SharedPreferences sharedPreferences, String str) {
        this.A01 = c2755lA;
        this.A02 = c2797lq;
        this.A00 = sharedPreferences;
        this.A03 = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.concurrent.Callable
    /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final Boolean call() throws Exception {
        String strA01 = null;
        if ((Build.VERSION.SDK_INT >= 31 || A01(0, 1, 52).equals(Build.VERSION.CODENAME)) && C2863mv.A2r(this.A01)) {
            if (A01(6, 19, 13).equals(this.A02.A0B())) {
                strA01 = C3048q0.A01(this.A01, this.A01.getPackageName());
            }
        }
        if (A05[7].length() != 20) {
            throw new RuntimeException();
        }
        String[] strArr = A05;
        strArr[0] = "qQmXUpBlhYC";
        strArr[1] = "2roBSgd9zyy";
        if (strA01 == null) {
            C2820mE.A00 = C2990p1.A02(this.A01, this.A01.getPackageName());
        } else {
            if (C2863mv.A1k(this.A01)) {
                String strA02 = C2990p1.A02(this.A01, this.A01.getPackageName());
                C2787lg c2787lg = new C2787lg(A01(1, 5, 33));
                c2787lg.A05(1);
                c2787lg.A06(1);
                c2787lg.A0A(false);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(A01(25, 5, 120), strA01);
                jSONObject.put(A01(30, 5, 108), strA02);
                c2787lg.A07(jSONObject);
                this.A01.A08().AC0(A01(35, 7, kotlin.fh.g1), AbstractC2786lf.A1I, c2787lg);
            }
            C2820mE.A00 = strA01;
        }
        this.A00.edit().putString(this.A03, C2820mE.A00).apply();
        C2820mE.A05.set(2);
        return true;
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 127);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A04 = new byte[]{Ascii.CAN, Base64.padSymbol, 51, 46, Base64.padSymbol, 45, 17, Ascii.GS, Ascii.US, 92, 19, Ascii.FS, Ascii.SYN, 0, Ascii.GS, Ascii.ESC, Ascii.SYN, 92, 4, Ascii.ETB, Ascii.FS, Ascii.SYN, Ascii.ESC, Ascii.FS, Ascii.NAK, 100, 116, 102, 119, 110, 112, 96, 127, 116, 112, 114, 112, 123, 112, 103, 124, 118};
    }
}
