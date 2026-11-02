package com.facebook.ads.redexgen.X;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.google.common.base.Ascii;
import com.ironsource.InterfaceC3669k1;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Gw, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1606Gw implements InterfaceC2883nF {
    public static byte[] A0D;
    public static String[] A0E = {"uc0mqsrp7zbVSSUmEXyUZJQCGufws", "8g6ahr3vPydrTtk22", "YNqtB8iJmO2uVaHpbt6P5K9KH1grqDjF", "oDfi3coiS1yTvP0yt", "tbJDZpprNJoNbXk4MBqAl5O83qYFAo", "QKETic0g2MOurTT1w7cfpFQ", "PRNEoz9kKM8OadepDD5IPPYNQZFvnMHX", "tq93tXY5KQrS9ibGckbvCktGGZhVZKfr"};
    public static final String A0F;
    public int A00;
    public long A01;
    public final long A02;
    public final long A03;
    public final ConnectivityManager A04;
    public final C1617Hh A06;
    public final InterfaceC2882nE A07;
    public final InterfaceC2189bs A08;
    public volatile boolean A0C;
    public final Runnable A0A = new C1608Gy(this);
    public final Runnable A09 = new C1607Gx(this);
    public final ThreadPoolExecutor A0B = new ThreadPoolExecutor(1, 1, 0, TimeUnit.MILLISECONDS, new LinkedBlockingQueue());
    public final Handler A05 = new Handler(Looper.getMainLooper());

    static {
        A07();
        A0F = InterfaceC2883nF.class.getSimpleName();
    }

    public C1606Gw(C1617Hh c1617Hh, InterfaceC2882nE interfaceC2882nE) {
        this.A07 = interfaceC2882nE;
        this.A06 = c1617Hh;
        this.A04 = (ConnectivityManager) c1617Hh.getSystemService(A03(293, 12, 10));
        this.A08 = C2114af.A01(c1617Hh);
        this.A03 = AbstractC2865mx.A0K(c1617Hh);
        this.A02 = AbstractC2865mx.A0J(c1617Hh);
    }

    public static /* synthetic */ int A00(C1606Gw c1606Gw) {
        int i = c1606Gw.A00 + 1;
        c1606Gw.A00 = i;
        return i;
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0D, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 88);
        }
        return new String(bArrCopyOfRange);
    }

    private void A05() {
        this.A06.A05().AB6();
        this.A00 = 0;
        this.A01 = 0L;
        if (this.A0B.getQueue().size() == 0) {
            this.A07.ADq();
        }
    }

    private void A06() {
        if (this.A00 >= AbstractC2865mx.A09(this.A06)) {
            A05();
            A6a();
        } else {
            if (this.A00 == 1) {
                this.A01 = AbstractC2865mx.A0I(this.A06);
            } else {
                this.A01 *= 2;
            }
            A6b();
        }
    }

    public static void A07() {
        A0D = new byte[]{-39, -22, -48, -44, -73, -36, -26, -29, -44, -25, -42, -37, -36, -31, -38, -109, -40, -23, -40, -31, -25, -109, -101, -45, 6, -15, -13, -2, 2, -9, -3, -4, -82, 5, -10, -9, -6, -13, -82, -14, -9, 1, -2, -17, 2, -15, -10, -9, -4, -11, -82, -13, 4, -13, -4, 2, 1, -68, -28, -10, 3, 7, -10, 3, -79, 1, 3, 0, -12, -10, 4, 4, -10, -11, -79, 1, -14, 3, 5, -6, -14, -3, -79, -13, -14, 5, -12, -7, -67, -79, -12, 0, -1, 5, -6, -1, 6, -6, -1, -8, -79, 5, 0, -79, -1, -10, 9, 5, -79, 0, -1, -10, -65, Ascii.ESC, 45, 58, 62, 45, 58, -24, 58, 45, 59, 56, 55, 54, 59, 45, -24, 49, 59, -24, 45, 53, 56, 60, 65, -10, -17, 1, Ascii.SO, Ascii.DC2, 1, Ascii.SO, -68, Ascii.SO, 1, Ascii.DLE, 17, Ascii.SO, 10, 1, 0, -68, -3, -68, 10, Ascii.VT, 10, -55, Ascii.SI, 17, -1, -1, 1, Ascii.SI, Ascii.SI, 2, 17, 8, -68, Ascii.SI, Ascii.DLE, -3, Ascii.DLE, 17, Ascii.SI, -68, -1, Ascii.VT, 0, 1, -68, Ascii.VT, 2, -68, -61, -43, -30, -26, -43, -30, -112, -25, -47, -29, -112, -27, -34, -47, -46, -36, -43, -112, -28, -33, -112, -32, -30, -33, -45, -43, -29, -29, -112, -47, -36, -36, -112, -43, -26, -43, -34, -28, -29, -100, -112, -28, -30, -23, -39, -34, -41, -112, -47, -41, -47, -39, -34, -98, -17, 7, 5, Ascii.FF, Ascii.FF, 5, 10, 3, -68, 0, 5, Ascii.SI, Ascii.FF, -3, Ascii.DLE, -1, 4, -68, 0, 17, 1, -68, Ascii.DLE, Ascii.VT, -68, 8, -3, -1, 7, -68, Ascii.VT, 2, -68, -1, Ascii.VT, 10, 10, 1, -1, Ascii.DLE, 5, Ascii.DC2, 5, Ascii.DLE, Ascii.NAK, -54, -31, -12, -12, -27, -19, -16, -12, -59, -47, -48, -48, -57, -59, -42, -53, -40, -53, -42, -37, 47, 44, 63, 44, -22, -5, -22, -13, -7, -8, 36, Ascii.NAK, 45, 32, 35, Ascii.NAK, Ascii.CAN};
    }

    private void A08(long j) {
        this.A05.postDelayed(this.A09, j);
    }

    private void A09(JSONObject jSONObject) throws JSONException {
        for (Map.Entry<String, String> entry : this.A06.A04().A69().entrySet()) {
            jSONObject.put(entry.getKey(), entry.getValue());
        }
    }

    public final void A0B() {
        try {
            NetworkInfo activeNetworkInfo = this.A04.getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnectedOrConnecting()) {
                if (this.A06.A05().AB6()) {
                    Log.e(A0F, A03(240, 46, 68));
                }
                A08(this.A02);
                return;
            }
            this.A06.A05().AB6();
            JSONObject jSONObjectA5u = this.A07.A5u();
            if (jSONObjectA5u == null) {
                this.A06.A05().AB6();
                A05();
                return;
            }
            boolean zAB6 = this.A06.A05().AB6();
            String strA03 = A03(309, 6, 45);
            if (zAB6 && jSONObjectA5u.has(strA03)) {
                JSONArray jSONArray = jSONObjectA5u.getJSONArray(strA03);
                for (int i = 0; i < jSONArray.length(); i++) {
                    String str = A03(4, 19, 27) + i + A03(0, 3, 88) + jSONArray.get(i);
                }
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(A03(286, 7, 40), String.valueOf(this.A00));
            A09(jSONObject);
            jSONObjectA5u.put(A03(305, 4, 115), jSONObject);
            C2134az c2134az = new C2134az();
            c2134az.put(A03(315, 7, 92), jSONObjectA5u.toString());
            InterfaceC2193bw interfaceC2193bwAIA = this.A08.AIA(this.A06.A05().A8h(), c2134az.A08());
            String strA7d = interfaceC2193bwAIA != null ? interfaceC2193bwAIA.A7d() : null;
            if (!TextUtils.isEmpty(strA7d) && interfaceC2193bwAIA != null) {
                if (interfaceC2193bwAIA.A9p() == 200) {
                    if (!this.A07.AEh(new JSONArray(strA7d))) {
                        if (this.A06.A05().AB6()) {
                            Log.w(A0F, A03(186, 54, 24));
                        }
                        A06();
                        return;
                    } else {
                        if (!this.A07.ABJ()) {
                            A05();
                            return;
                        }
                        if (this.A06.A05().AB6()) {
                            Log.i(A0F, A03(58, 55, 57));
                        }
                        A06();
                        return;
                    }
                }
                if (this.A06.A05().AB6()) {
                    Log.e(A0F, A03(138, 48, 68) + interfaceC2193bwAIA.A9p() + A03(3, 1, 78));
                }
                int iA9p = interfaceC2193bwAIA.A9p();
                if (A0E[4].length() == 29) {
                    throw new RuntimeException();
                }
                String[] strArr = A0E;
                strArr[1] = "880m74azdbQx5kAj6";
                strArr[3] = "QSHShLBOeb5hWYBY9";
                if (iA9p == 413 && C2863mv.A2a(this.A06)) {
                    this.A07.AGg();
                    A05();
                    return;
                } else {
                    if (jSONObjectA5u.has(strA03)) {
                        this.A07.AEf(jSONObjectA5u.getJSONArray(strA03));
                    }
                    A06();
                    return;
                }
            }
            if (this.A06.A05().AB6()) {
                Log.e(A0F, A03(InterfaceC3669k1.d.b.k, 25, InterfaceC3669k1.d.b.j));
            }
            if (C2863mv.A2O(this.A06) && jSONObjectA5u.has(strA03)) {
                this.A07.AEf(jSONObjectA5u.getJSONArray(strA03));
            }
            A06();
        } catch (Exception e) {
            if (this.A06.A05().AB6()) {
                Log.e(A0F, A03(23, 35, 54), e);
            }
            A06();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2883nF
    public final void A6a() {
        if (this.A0C) {
            return;
        }
        this.A0C = true;
        this.A05.removeCallbacks(this.A09);
        A08(this.A02);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2883nF
    public final void A6b() {
        this.A0C = true;
        this.A05.removeCallbacks(this.A09);
        A08(this.A03);
    }
}
