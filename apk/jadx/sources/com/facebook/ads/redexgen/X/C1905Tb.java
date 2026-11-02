package com.facebook.ads.redexgen.X;

import android.util.Base64;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Tb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1905Tb {
    public static byte[] A0P;
    public static final Runnable A0Q;
    public static final AtomicInteger A0R;
    public static final AtomicInteger A0S;
    public View A02;
    public InterfaceC3421w1 A04;
    public YJ A05;
    public UO A06;
    public C1J A07;
    public C2199c2 A08;
    public Runnable A09;
    public final int A0D;
    public final LA A0E;
    public final C2746kz A0F;
    public final C1618Hi A0G;
    public final InterfaceC2884nG A0H;
    public final C2892nO A0I;
    public final C3418vy A0J;
    public final C1530Dx A0K;
    public final C2B A0L;
    public final AnonymousClass26 A0M;
    public final LinkedList<C2052Ze> A0O = new LinkedList<>();
    public C3077qT A03 = new C3077qT();
    public boolean A0C = true;
    public boolean A0B = false;
    public long A00 = -1;
    public final String A0N = UUID.randomUUID().toString();
    public HashMap<String, Object> A0A = new HashMap<>();
    public long A01 = System.currentTimeMillis();

    static {
        A0F();
        A0S = new AtomicInteger();
        A0R = new AtomicInteger();
        A0Q = new Runnable() { // from class: com.facebook.ads.redexgen.X.w6
            @Override // java.lang.Runnable
            public final void run() {
            }
        };
    }

    public C1905Tb(C1618Hi c1618Hi, LA la, InterfaceC2884nG interfaceC2884nG, int i) {
        this.A0G = c1618Hi;
        this.A0H = interfaceC2884nG;
        this.A0E = la;
        this.A0D = i;
        this.A0K = new C1530Dx(this, c1618Hi);
        this.A0F = new C2746kz(this.A0G);
        this.A0I = new C2892nO(la.A37(), interfaceC2884nG);
        this.A0J = new C3418vy(la.A1r(), la.A32().A0I().A09(), i);
        this.A0M = AnonymousClass21.A00(this.A0G, la.A1x(), this.A0F, this.A0I, this.A0J, A0J());
        this.A0L = new C2B(this.A0G, this, interfaceC2884nG, this.A0J, this.A0N, la.A37());
        A0n(A0A(74, 13, 65));
        try {
            this.A0A.put(A0A(214, 19, 101), Integer.valueOf(la.A1x().toString().length()));
        } catch (Exception unused) {
        }
    }

    public static String A0A(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0P, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 2);
        }
        return new String(bArrCopyOfRange);
    }

    public static AtomicInteger A0C() {
        return A0R;
    }

    private void A0D() {
        try {
            this.A0G.getSharedPreferences(A0A(174, 16, 46), 0).edit().putString(A0A(561, 7, 83), new JSONObject(this.A0A).toString()).apply();
        } catch (Exception unused) {
        }
    }

    private void A0E() {
        if (this.A0A != null) {
            A0n(A0A(115, 12, 84));
        }
        A0H(new C2052Ze(A0A(400, 22, 0), new String[]{this.A0N, A0A(1, 6, 11)}));
        A0H(new C2052Ze(A0A(TypedValues.CycleType.TYPE_CUSTOM_WAVE_SHAPE, 26, 117), new String[]{Base64.encodeToString(this.A0M.A04.toString().getBytes(), 0).replace(A0A(0, 1, 45), A0A(0, 0, 109)), this.A0N}));
        if (this.A0A != null) {
            A0n(A0A(87, 15, kotlin.fh.g1));
        }
    }

    public static void A0F() {
        A0P = new byte[]{37, 63, 39, 59, 59, 39, 57, Ascii.CR, 34, 40, 62, 35, 37, 40, 5, 34, 56, 41, 62, 42, 45, 47, 41, 5, 0, 54, 1, Ascii.DC4, Ascii.VT, Ascii.SYN, Ascii.DLE, Ascii.CR, 10, 3, 34, Ascii.CR, 10, Ascii.CR, Ascii.ETB, Ascii.FF, 1, 0, 76, 67, 65, Ascii.ETB, 67, 77, 95, 96, 101, 83, 100, 113, 110, 115, 117, 104, 111, 102, 82, 117, 96, 115, 117, 100, 101, 41, 38, 36, 114, 38, 40, 58, 34, 39, Ascii.FS, 47, 44, 34, 39, Ascii.FS, 48, 55, 34, 49, 55, 9, Ascii.ESC, Ascii.ESC, Ascii.CR, Ascii.FS, Ascii.ESC, 55, 1, 6, 2, Ascii.CR, Ascii.VT, Ascii.FS, Ascii.CR, Ascii.FF, 86, 67, 67, 86, 84, 95, 82, 83, 96, 97, 121, 66, 90, 55, 35, 34, 62, 9, p005kotlin.io.encoding.Base64.padSymbol, 51, 47, 9, 37, 51, 34, 117, 118, 99, 116, 127, 114, 115, 81, 101, 118, 122, 114, 83, 118, 99, 118, 40, 62, 57, 57, 46, 37, 63, Ascii.FS, Ascii.GS, 5, 62, 38, 88, 89, 80, 72, 93, 99, 90, 78, 83, 81, 99, 79, 72, 93, 78, 72, 99, 81, 79, 72, 95, SignedBytes.MAX_POWER_OF_TWO, 115, 92, 73, 94, 74, 115, 88, 69, 65, 69, 66, 75, 95, 65, 85, 70, 74, 66, 84, 127, 99, 122, 123, 72, 123, 120, 118, 115, 72, 100, 99, 118, 101, 99, 115, 106, 70, 10, 2, 19, 6, 3, 6, 19, 6, 56, Ascii.DC4, Ascii.SO, Ascii.GS, 2, 56, 5, Ascii.RS, 19, 2, Ascii.DC4, 81, 80, 127, 93, 74, 87, 72, 87, 74, 71, 110, 95, 75, 77, 91, 90, Ascii.SYN, Ascii.EM, Ascii.ESC, 77, Ascii.EM, Ascii.ETB, 5, Ascii.RS, Ascii.US, 48, Ascii.DC2, 5, Ascii.CAN, 7, Ascii.CAN, 5, 8, 35, Ascii.DC4, 2, 4, Ascii.FS, Ascii.DC4, Ascii.NAK, 89, 86, 84, 2, 86, 88, 74, 34, 35, Ascii.SO, 33, 34, 62, 40, Ascii.VT, 56, 33, 33, 62, 46, 63, 40, 40, 35, Ascii.ESC, 36, 40, 58, 101, 106, 104, 62, 106, 100, 60, p005kotlin.io.encoding.Base64.padSymbol, Ascii.NAK, 38, 63, 63, 32, 48, 33, 54, 54, p005kotlin.io.encoding.Base64.padSymbol, 5, 58, 54, 36, 123, 116, 118, 32, 116, 122, 4, 5, p005kotlin.io.encoding.Base64.padSymbol, 10, 7, Ascii.RS, Ascii.SO, 57, Ascii.SO, 10, Ascii.SI, 67, 76, 78, Ascii.CAN, 76, 71, 75, 76, 78, Ascii.CAN, 76, 71, 75, 76, 78, Ascii.CAN, 76, 66, 80, Ascii.ETB, Ascii.SYN, 46, Ascii.EM, Ascii.DC4, Ascii.CR, Ascii.GS, 47, 10, 17, Ascii.FF, Ascii.FF, Ascii.GS, Ascii.SYN, 80, 95, 93, Ascii.VT, 95, 84, 88, 95, 93, Ascii.VT, 95, 81, 67, 102, 112, 118, 122, 123, 113, 74, 118, 125, 116, 123, 123, 112, 121, 113, 103, 118, 67, 119, 118, 106, 73, 103, 123, 42, 37, 39, 113, 37, 46, 37, 39, 113, 37, 43, 57, 4, Ascii.DC2, 3, 53, Ascii.SYN, 4, Ascii.DC2, 65, 67, 54, 4, 4, Ascii.DC2, 3, 4, 95, 80, 82, 4, 80, 91, 80, 82, 4, 80, 94, Ascii.ESC, Ascii.CR, Ascii.FS, 42, 9, Ascii.ESC, Ascii.CR, 94, 92, 43, 7, 6, Ascii.SO, 1, Ascii.SI, SignedBytes.MAX_POWER_OF_TWO, 79, 77, Ascii.ESC, 79, 68, 79, 77, Ascii.ESC, 79, 65, 80, 70, 87, 116, 66, 87, SignedBytes.MAX_POWER_OF_TWO, 75, 98, 77, 71, 97, 81, 76, 84, 80, 70, 96, 76, 78, 83, 66, SignedBytes.MAX_POWER_OF_TWO, 87, Ascii.VT, 4, 6, 80, 4, Ascii.SI, 3, 69, 66, 79, 80, 70, 10, Ascii.CAN, 77, 91, 74, 105, 95, 74, 93, 86, 127, 80, 90, 124, 76, 81, 73, 77, 91, 125, 81, 83, 78, 95, 93, 74, Ascii.SYN, Ascii.EM, Ascii.ESC, 77, Ascii.EM, Ascii.DC2, Ascii.RS, 74, 76, 75, 91, Ascii.ETB, 5, 70, 91, 95, 87, 65, 70, 83, 95, 66, 109, 95, 65, 37, 56, 60, 56, 63, 54, 34, 9, Ascii.DC2, 9, Ascii.FS, 17, 42, 43, 51, 8, Ascii.DLE, 50, 53, 43, 50, 45, 32, 33, 43, 1, 50, 33, 42, 48, 108, 99, 97, 55, 99, 104, 100, 99, 97, 55, 99, 104, 100, 99, 97, 55, 99, 109, 127, Ascii.RS, 1, Ascii.CR, Ascii.US, 58, Ascii.CR, 9, Ascii.FF, 17, 60, 7, 59, 0, 7, Ascii.US, SignedBytes.MAX_POWER_OF_TWO, 79, 77, Ascii.ESC, 79, 65, 83, 6, Ascii.DC4, 19, 7, Ascii.CAN, Ascii.DC4, 6, 46, Ascii.DC2, 3, Ascii.DC4, Ascii.DLE, 5, Ascii.DC4, Ascii.NAK};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void A0G() {
        if (this.A0B) {
            while (!this.A0O.isEmpty()) {
                C2052Ze c2052ZePoll = this.A0O.poll();
                if (c2052ZePoll != null) {
                    this.A0K.A0I(String.format(Locale.US, c2052ZePoll.A00, c2052ZePoll.A02));
                    if (c2052ZePoll.A01) {
                        this.A0I.A04(EnumC2891nN.A0L, null);
                        this.A0G.A0F().A6e(c2052ZePoll.A00);
                    } else {
                        continue;
                    }
                }
            }
        }
    }

    private synchronized void A0H(C2052Ze c2052Ze) {
        this.A0O.offer(c2052Ze);
        A0G();
    }

    private boolean A0J() {
        return !A0K();
    }

    private boolean A0K() {
        return C2863mv.A33(this.A0G, C2236cd.A03());
    }

    public final C2892nO A0M() {
        return this.A0I;
    }

    public final C3077qT A0N() {
        return this.A03;
    }

    public final C3418vy A0O() {
        return this.A0J;
    }

    public final InterfaceC3421w1 A0P() {
        return this.A04;
    }

    public final C1530Dx A0Q() {
        return this.A0K;
    }

    public final void A0R() {
        this.A0C = true;
    }

    public final void A0S() {
        this.A0C = false;
    }

    public final void A0T() {
        A0H(new C2052Ze(A0A(280, 27, 79), new String[]{this.A0N}));
    }

    public final void A0U() {
        A0H(new C2052Ze(A0A(307, 22, 81), new String[]{this.A0N}));
    }

    public final void A0V() {
        A0H(new C2052Ze(A0A(23, 26, 102), new String[]{this.A0N}));
    }

    public final void A0W() {
        A0H(new C2052Ze(A0A(49, 25, 3), new String[]{this.A0N}));
    }

    public final void A0X() {
        Runnable runnable = this.A09;
        boolean zA0U = this.A0E.A32().A0U();
        C1J c1j = this.A07;
        C1530Dx c1530Dx = this.A0K;
        View view = this.A02;
        Runnable runnable2 = new Runnable() { // from class: com.facebook.ads.redexgen.X.w5
            @Override // java.lang.Runnable
            public final void run() {
                this.A00.A0Z();
            }
        };
        if (runnable == null) {
            runnable = A0Q;
        }
        AnonymousClass20.A00(zA0U, c1j, c1530Dx, view, runnable2, runnable);
    }

    public final void A0Y() {
        A0H(new C2052Ze(A0A(512, 37, 60), new String[]{this.A0N}));
    }

    public final void A0Z() {
        A0H(new C2052Ze(A0A(474, 38, 33), new String[]{this.A0N}));
    }

    public final void A0a() {
        if (this.A0A != null) {
            A0n(A0A(632, 15, 115));
        }
        this.A0K.addJavascriptInterface(this.A0L, A0A(7, 16, 78));
        this.A0I.A04(EnumC2891nN.A0O, null);
        String str = this.A0M.A00;
        if (this.A0A != null) {
            A0n(A0A(196, 15, 21));
        }
        this.A0K.loadUrl(str);
        this.A00 = System.currentTimeMillis();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(A0A(578, 3, 69), str);
            jSONObject.put(A0A(143, 12, 73), M1.A00());
            jSONObject.put(A0A(568, 10, 127), A0S.getAndIncrement());
            jSONObject.put(A0A(102, 13, 53), A0R);
        } catch (JSONException unused) {
        }
        this.A0G.A0F().A6k(jSONObject.toString());
        A0E();
    }

    public final void A0b() {
        A0H(new C2052Ze(A0A(233, 23, 60), new String[]{this.A0N}));
    }

    public final void A0c() {
        A0H(new C2052Ze(A0A(256, 24, 115), new String[]{this.A0N}));
    }

    public final void A0d() {
        A0H(new C2052Ze(A0A(610, 22, kotlin.fh.g1), new String[]{this.A0N}));
    }

    public final void A0e(View view, Runnable runnable) {
        this.A02 = view;
        this.A09 = runnable;
    }

    public final void A0f(C3077qT c3077qT) {
        this.A03 = c3077qT;
    }

    public final void A0g(InterfaceC3421w1 interfaceC3421w1) {
        this.A04 = interfaceC3421w1;
    }

    public final void A0h(YJ yj) {
        this.A05 = yj;
    }

    public final void A0i(UO uo) {
        this.A06 = uo;
    }

    public final void A0j(InterfaceC1529Dw interfaceC1529Dw) {
        this.A0L.A0P(interfaceC1529Dw);
    }

    public final void A0k(C1J c1j) {
        this.A07 = c1j;
    }

    public final void A0l(C2199c2 c2199c2) {
        this.A08 = c2199c2;
    }

    public final void A0m(String str) {
        A0H(new C2052Ze(A0A(359, 27, 122), new String[]{this.A0N, str}));
    }

    public final void A0n(String str) {
        if (this.A0A == null) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = jCurrentTimeMillis - this.A01;
        HashMap map = new HashMap();
        map.put(A0A(549, 12, 48), Long.valueOf(jCurrentTimeMillis));
        map.put(A0A(155, 19, 62), Long.valueOf(j));
        this.A0A.put(str, map);
        A0D();
    }

    public final void A0o(String str, long j, long j2) {
        if (this.A0A == null) {
            return;
        }
        HashMap map = new HashMap();
        map.put(A0A(549, 12, 48), Long.valueOf(j));
        map.put(A0A(155, 19, 62), Long.valueOf(j2));
        this.A0A.put(A0A(211, 3, 27) + str, map);
        A0D();
    }

    public final void A0p(String str, String str2) {
        A0H(new C2052Ze(A0A(329, 30, 105), new String[]{this.A0N, str, str2}));
    }

    public final void A0q(String str, String str2) {
        try {
            this.A0M.A04.put(str, str2);
        } catch (JSONException unused) {
        }
    }

    public final void A0r(String str, JSONObject jSONObject) {
        A0H(new C2052Ze(A0A(581, 29, 70), new String[]{this.A0N, str, jSONObject.toString()}, false));
    }

    public final void A0s(Map<String, String> map) {
        String strA0A = A0A(127, 16, 21);
        if (map.containsKey(strA0A) && C2863mv.A20(this.A0G)) {
            try {
                JSONArray jSONArray = new JSONArray(map.get(strA0A));
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONArray jSONArray2 = new JSONArray(jSONArray.getString(i));
                    String string = jSONArray2.getString(0);
                    String string2 = jSONArray2.getString(1);
                    String string3 = jSONArray2.getString(2);
                    String string4 = jSONArray2.getString(3);
                    if (string != null && string2 != null && string3 != null) {
                        YF yf = new YF(this.A0E.A37(), Long.parseLong(string), Long.parseLong(string2), Long.parseLong(string3));
                        yf.A06(Long.parseLong(string4));
                        arrayList.add(yf);
                    }
                }
                String strA01 = YG.A01(arrayList);
                HashMap map2 = new HashMap();
                map2.put(A0A(190, 6, 37), strA01);
                if (strA01 != null) {
                    this.A0H.ACo(this.A0E.A37(), map2);
                }
            } catch (Exception e) {
                this.A0G.A08().ABz(A0A(386, 14, 23), 3600, new C2787lg(e));
            }
        }
        if (map.containsKey(strA0A)) {
            map.remove(strA0A);
        }
        this.A0H.ABy(this.A0E.A37(), new C3278ti(map).A05(this.A08).A03(this.A0G, this.A0E.A32().A0K() != null ? this.A0E.A32().A0K().A06() : null).A07());
    }

    public final void A0t(JSONObject jSONObject) {
        A0H(new C2052Ze(A0A(448, 26, kotlin.fh.g1), new String[]{Base64.encodeToString(jSONObject.toString().getBytes(), 0).replace(A0A(0, 1, 45), A0A(0, 0, 109)), this.A0N}));
    }

    public final boolean A0u() {
        return this.A0L.A0Q();
    }

    public final boolean A0v() {
        return this.A0C;
    }
}
