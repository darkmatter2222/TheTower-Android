package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.kz, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2746kz {
    public static InterfaceC2272dD A0A;
    public static List<String> A0B;
    public static byte[] A0C;
    public static String[] A0D = {"8gkZjHnxCvZyg7TzwjjGeSdvls9L7Gam", "fcbSC3ja3K2jNylkxCBC51G6bXitMdQ0", "2foOCT", "ocB0m3", "KfMQJM794wt5IuG", "feDb68pnVWWOEqV45c", "KnEa0S3Tnigt4irEXno07XBXpnYxFsFq", "aK1UKkDbG3zR1xh0x3umKxUvmkPLseuR"};
    public static final String A0E;
    public static final Map<String, C2278dJ> A0F;
    public static final Map<String, C2748l1> A0G;
    public long A00;
    public C2892nO A01;
    public final C2747l0 A03;
    public final C2755lA A04;
    public final boolean A08;
    public final boolean A09;
    public final Map<String, Bitmap> A07 = Collections.synchronizedMap(new HashMap());
    public final Handler A02 = new Handler(Looper.getMainLooper());
    public final List<Callable<Boolean>> A05 = new ArrayList();
    public final List<Callable<Boolean>> A06 = new ArrayList();

    static {
        A0F();
        A0E = C2746kz.class.getSimpleName();
        A0F = Collections.synchronizedMap(new HashMap());
        A0G = Collections.synchronizedMap(new HashMap());
    }

    public C2746kz(C2755lA c2755lA) {
        this.A04 = c2755lA;
        this.A03 = C2747l0.A06(c2755lA.A02());
        this.A08 = C2863mv.A2t(c2755lA);
        this.A09 = C2863mv.A32(c2755lA, C2236cd.A03());
    }

    public static synchronized InterfaceC2272dD A03(C1617Hh c1617Hh) {
        if (A0A == null) {
            A0A = AbstractC2273dE.A00(c1617Hh, new C2279dK().A00(C2863mv.A04(c1617Hh)).A02(c1617Hh.A05().AB6()).A01(-1).A03(C2863mv.A0o(c1617Hh)).A04(C2863mv.A31(c1617Hh)).A05(), A05(c1617Hh));
        }
        return A0A;
    }

    public static C2278dJ A04(C2755lA c2755lA, String str) {
        C2278dJ c2278dJ = A0F.get(str);
        return (!C2749l2.A06(c2755lA) || c2278dJ == null) ? new C2278dJ(str) : new C2278dJ(c2278dJ);
    }

    public static C1622Hm A05(C1617Hh c1617Hh) {
        return new C1622Hm(c1617Hh);
    }

    public static String A08(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0C, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 10);
        }
        return new String(bArrCopyOfRange);
    }

    public static synchronized List<String> A09(C2755lA c2755lA) {
        if (A0B == null) {
            A0B = new ArrayList();
            A0J(A0B, c2755lA);
        }
        return A0B;
    }

    public static AtomicBoolean A0D(ArrayList<Callable<Boolean>> arrayList) {
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        Iterator<Callable<Boolean>> it = arrayList.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            String[] strArr = A0D;
            if (strArr[3].length() != strArr[2].length()) {
                throw new RuntimeException();
            }
            A0D[5] = "";
            if (!zHasNext) {
                AtomicBoolean atomicBoolean = new AtomicBoolean(true);
                try {
                    Iterator it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        Boolean bool = (Boolean) ((Future) it2.next()).get();
                        atomicBoolean.set(atomicBoolean.get() && bool != null && bool.booleanValue());
                    }
                } catch (InterruptedException | ExecutionException e) {
                    Log.e(A0E, A08(86, 42, 61), e);
                    atomicBoolean.set(false);
                }
                return atomicBoolean;
            }
            arrayList2.add(ExecutorC3091qh.A02().submit(it.next()));
        }
    }

    public static void A0F() {
        A0C = new byte[]{124, 125, 125, 125, -81, -82, -128, 127, 109, 107, -104, -105, 110, -104, 103, 103, 84, -126, 80, 126, 77, 86, 126, 81, -119, -89, -87, -82, -85, 102, -71, -70, -89, -72, -70, -85, -86, 116, -113, -83, -81, -76, -75, -70, -77, 108, -81, -69, -71, -68, -72, -79, -64, -79, 127, -99, -97, -92, -91, -86, -93, 92, -94, -99, -91, -88, -95, -96, 100, -126, -124, -119, -118, -113, -120, 65, -108, -107, -126, -109, -107, -122, -123, 79, 79, 79, -116, -65, -86, -84, -73, -69, -80, -74, -75, 103, -66, -81, -80, -77, -84, 103, -84, -65, -84, -86, -68, -69, -80, -75, -82, 103, -86, -88, -86, -81, -84, 103, -85, -74, -66, -75, -77, -74, -88, -85, -70, 117, -79, -81, -79, -74, -77, -111, -67, -69, -66, -70, -77, -62, -73, -67, -68, -106, -67, -67, -71, 120, 118, 120, 125, 122, 91, 118, 126, -127, -118, -121, 122, 93, -124, -124, -128, -120, -101, -120, -122, -104, -105, -120, -24, -21, -35, -32, -27, -24, -38, -35, -40, -19, -30, -26, -34, -40, -26, -20, -96, -107, -100, -92};
    }

    public static void A0H(C2755lA c2755lA, String str) {
        C2748l1 c2748l1;
        if (!C2749l2.A06(c2755lA) || TextUtils.isEmpty(str) || (c2748l1 = A0G.get(str)) == null) {
            return;
        }
        c2748l1.A00 = A08(186, 4, 35);
        C1617Hh c1617HhA02 = c2755lA.A02();
        C2222cP c2222cPA06 = C2222cP.A06(c1617HhA02);
        String strA09 = C2222cP.A09(c1617HhA02, AbstractC3011pP.A00(str));
        if (strA09 == null) {
            strA09 = str;
        }
        C2749l2.A04(c2755lA, c2748l1, c2222cPA06.A0J(strA09));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0I(EnumC2891nN enumC2891nN) {
        if (this.A01 == null) {
            return;
        }
        HashMap map = new HashMap();
        map.put(A08(174, 12, 111), C3076qS.A05(this.A00));
        this.A01.A04(enumC2891nN, map);
    }

    public static void A0J(List<String> list, C2755lA c2755lA) {
        A0K(list, NI.A01(c2755lA));
        A0K(list, C2747l0.A07(c2755lA));
    }

    public static void A0K(List<String> list, File file) {
        String path;
        if (file == null || (path = file.getPath()) == null) {
            return;
        }
        String[] strArr = A0D;
        if (strArr[3].length() != strArr[2].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0D;
        strArr2[3] = "Vghlgc";
        strArr2[2] = "qwUey9";
        if (path != A08(0, 0, 127)) {
            list.add(path.toLowerCase(Locale.getDefault()));
        }
    }

    public final float A0M(String str) {
        return this.A03.A0E(str);
    }

    public final Bitmap A0N(String str) {
        return this.A07.get(str);
    }

    public final Bitmap A0O(String str, int i, int i2) {
        if (!this.A08) {
            return this.A03.A0G(this.A04, str, i, i2, A08(170, 4, 114));
        }
        C2278dJ c2278dJA04 = A04(this.A04, str);
        c2278dJA04.A03 = A08(186, 4, 35);
        c2278dJA04.A01 = i2;
        c2278dJA04.A00 = i;
        return A03(this.A04.A02()).AJw(c2278dJA04, true).A00();
    }

    public final File A0P(String str) {
        C2278dJ c2278dJA04 = A04(this.A04, str);
        c2278dJA04.A03 = A08(186, 4, 35);
        return A03(this.A04.A02()).AJx(c2278dJA04);
    }

    public final File A0Q(String str) {
        return this.A08 ? A0P(str) : this.A03.A0H(str);
    }

    public final String A0R(String str) {
        return this.A08 ? A0S(str) : this.A03.A0I(str);
    }

    public final String A0S(String str) {
        C2278dJ c2278dJA04 = A04(this.A04, str);
        c2278dJA04.A03 = A08(186, 4, 35);
        String strAJz = A03(this.A04.A02()).AJz(c2278dJA04);
        return strAJz != null ? strAJz : str;
    }

    public final String A0T(String str) {
        if (!this.A09) {
            return A0S(str);
        }
        A0H(this.A04, str);
        return str;
    }

    public final void A0U() {
        AbstractC2933o5.A05(A08(128, 19, 68), A08(38, 16, 66), A08(0, 8, 64));
    }

    public final void A0V() {
        AbstractC2933o5.A05(A08(147, 16, 11), A08(54, 14, 50), A08(16, 8, 19));
    }

    public final void A0W() {
        this.A07.clear();
    }

    public final void A0X(InterfaceC2738kr interfaceC2738kr, C2739ks c2739ks) {
        AbstractC2933o5.A05(A08(163, 7, 25), A08(68, 18, 23), A08(8, 8, 44));
        this.A00 = System.currentTimeMillis();
        C2749l2.A02(this.A04, c2739ks, C2749l2.A07, A08(24, 14, 60), -1L);
        ExecutorC3091qh.A03().execute(new C1623Hn(this, new ArrayList(this.A05), c2739ks, interfaceC2738kr, new ArrayList(this.A06)));
        this.A05.clear();
        this.A06.clear();
    }

    public final void A0Y(C2742kv c2742kv) {
        this.A05.add(new CallableC2743kw(this, c2742kv));
    }

    public final void A0Z(C2742kv c2742kv) {
        c2742kv.A05 = true;
        this.A06.add(new CallableC2743kw(this, c2742kv));
    }

    public final void A0a(C2742kv c2742kv) {
        c2742kv.A05 = true;
        if (this.A09) {
            this.A06.add(new CallableC2741ku(this, c2742kv));
        } else {
            this.A06.add(new CallableC2743kw(this, c2742kv));
        }
    }

    public final void A0b(C2742kv c2742kv) {
        if (this.A09) {
            this.A05.add(new CallableC2741ku(this, c2742kv));
        } else {
            this.A05.add(new CallableC2743kw(this, c2742kv));
        }
    }

    public final void A0c(C2744kx c2744kx) {
        CallableC2745ky callableC2745ky = new CallableC2745ky(this, c2744kx);
        if (c2744kx.A03) {
            this.A06.add(callableC2745ky);
        } else {
            this.A05.add(callableC2745ky);
        }
    }

    public final void A0d(C2744kx c2744kx) {
        c2744kx.A03 = true;
        A0c(c2744kx);
    }

    public final void A0e(C2892nO c2892nO) {
        this.A01 = c2892nO;
    }
}
