package com.facebook.ads.redexgen.X;

import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Build;
import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.p1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2990p1 {
    public static byte[] A05;
    public static String[] A06 = {"urwRhK0CK5UGRnO4iaICZFZb7qAlGy", "mzilr1wfe", "SZ9FDPGAkZBACw9tkVUtj7pHN9rS5abx", "dtKk7mnbAbd37arB17jMrf2UHdnm8GOF", "aS5", "gZFI9Tloea", "2aa2EaIeNK", "B3GaWiA9eOHa"};
    public static final Object A07;
    public static final Map<String, String> A08;
    public static final AtomicBoolean A09;
    public final SharedPreferences A00;
    public final C2755lA A01;
    public final C2797lq A02;
    public final String A03;
    public final String A04;

    static {
        A04();
        A08 = new HashMap();
        A07 = new Object();
        A09 = new AtomicBoolean();
    }

    public C2990p1(C2755lA c2755lA, String str) {
        this.A01 = c2755lA;
        this.A03 = str;
        this.A02 = new C2797lq(this.A01, str);
        this.A00 = AbstractC2957oU.A00(this.A01);
        this.A04 = A01(1, 4, 27) + str + A01(0, 1, 103) + this.A02.A06();
    }

    private final String A00() {
        return this.A00.getString(this.A04, null);
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 40);
        }
        return new String(bArrCopyOfRange);
    }

    public static String A02(C2755lA c2755lA, String str) {
        try {
            PackageManager packageManager = c2755lA.getPackageManager();
            if (packageManager == null) {
                return null;
            }
            return C3048q0.A03(packageManager.getApplicationInfo(str, 0).sourceDir);
        } catch (Exception e) {
            if (A09.compareAndSet(false, true)) {
                c2755lA.A08().ABz(A01(40, 7, 73), AbstractC2786lf.A1P, new C2787lg(e));
            }
            return null;
        }
    }

    public static String A03(String str) {
        String str2;
        synchronized (A07) {
            str2 = A08.get(str);
        }
        return str2;
    }

    public static void A04() {
        String[] strArr = A06;
        if (strArr[3].length() == strArr[0].length()) {
            throw new RuntimeException();
        }
        A06[1] = "McQY2w52D3qLTV4IvOql";
        A05 = new byte[]{116, 114, 117, 99, 8, 92, 121, 119, 106, 121, 105, 80, 92, 94, Ascii.GS, 82, 93, 87, 65, 92, 90, 87, Ascii.GS, 69, 86, 93, 87, 90, 93, 84, 71, 87, 69, 84, 77, 82, 66, 93, 86, 82, 6, 4, Ascii.SI, 4, 19, 8, 2};
    }

    public final void A05() throws JSONException {
        String strA01 = null;
        if ((Build.VERSION.SDK_INT >= 31 || A01(5, 1, 39).equals(Build.VERSION.CODENAME)) && C2863mv.A2r(this.A01) && A01(11, 19, 27).equals(this.A02.A0B())) {
            strA01 = C3048q0.A01(this.A01, this.A03);
        }
        if (strA01 == null) {
            strA01 = A02(this.A01, this.A03);
        } else if (C2863mv.A1k(this.A01)) {
            String strA02 = A02(this.A01, this.A03);
            C2787lg c2787lg = new C2787lg(A01(6, 5, 50));
            c2787lg.A05(1);
            c2787lg.A06(1);
            c2787lg.A0A(false);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(A01(30, 5, 12), strA01);
            jSONObject.put(A01(35, 5, 25), strA02);
            c2787lg.A07(jSONObject);
            this.A01.A08().AC0(A01(40, 7, 73), AbstractC2786lf.A1I, c2787lg);
        }
        synchronized (A07) {
            A08.put(this.A03, strA01);
        }
        this.A00.edit().putString(this.A04, strA01).apply();
    }

    public final void A06() {
        String strA00 = A00();
        synchronized (A07) {
            A08.put(this.A03, strA00);
        }
    }
}
