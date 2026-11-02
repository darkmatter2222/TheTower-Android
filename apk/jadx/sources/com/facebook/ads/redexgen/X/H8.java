package com.facebook.ads.redexgen.X;

import android.util.Log;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class H8 implements InterfaceC2836mU {
    public static byte[] A03;
    public static final String A04;
    public final C1617Hh A00;
    public final InterfaceC2849mh<C2881nD> A01;
    public final InterfaceC2849mh<C2881nD> A02;

    static {
        A03();
        A04 = H8.class.getSimpleName();
    }

    public H8(C1617Hh c1617Hh) throws IOException {
        this.A00 = c1617Hh;
        this.A01 = new H5(C2846me.A00(A00(11, 28, 31), c1617Hh), new HA(this));
        this.A02 = new H5(C2846me.A00(A00(322, 37, 102), c1617Hh), new H9(this));
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 70);
        }
        return new String(bArrCopyOfRange);
    }

    private List<JSONObject> A01(List<JSONObject> list, byte[] bArr, int[] iArr) {
        int i = 0;
        for (int i2 : iArr) {
            if (i2 == 0) {
                break;
            }
            try {
                list.add(A02(bArr, i, i2));
            } catch (JSONException e) {
                if (this.A00.A05().AB6()) {
                    Log.e(A04, A00(85, 45, 97), e);
                }
                A05(AbstractC2786lf.A2P, e);
            }
            i += i2;
        }
        return list;
    }

    public static JSONObject A02(byte[] bArr, int i, int i2) throws JSONException {
        return new JSONObject(new String(Arrays.copyOfRange(bArr, i, i + i2)));
    }

    public static void A03() {
        A03 = new byte[]{102, 100, 43, 34, 100, 48, Base64.padSymbol, 52, 33, 126, 100, Ascii.CAN, Base64.padSymbol, Ascii.FS, 47, 60, 55, 45, 10, 45, 54, 43, 56, 62, 60, Ascii.VT, 60, 58, 54, 43, Base64.padSymbol, Ascii.GS, 56, 45, 56, 59, 56, 42, 60, 105, 72, 65, 72, 89, 72, 73, Ascii.CR, 72, 91, 72, 67, 89, Ascii.ETB, Ascii.CR, Ascii.SI, 66, 101, 109, 104, 97, 96, 36, 112, 107, 36, 103, 104, 97, 101, 118, 36, 97, 114, 97, 106, 112, 119, 36, 119, 112, 107, 118, 101, 99, 97, 97, 70, 78, 75, 66, 67, 7, 83, 72, 7, 67, 66, 84, 66, 85, 78, 70, 75, 78, 93, 66, 7, 70, 73, 7, 66, 81, 66, 73, 83, 7, 65, 85, 72, 74, 7, 67, 70, 83, 70, 69, 70, 84, 66, 7, 107, 76, 68, 65, 72, 73, Ascii.CR, 89, 66, Ascii.CR, SignedBytes.MAX_POWER_OF_TWO, 66, 91, 72, Ascii.CR, 72, 91, 72, 67, 89, 94, Ascii.CR, 75, 95, 66, SignedBytes.MAX_POWER_OF_TWO, Ascii.CR, 68, 67, 0, 75, 65, 68, 74, 69, 89, Ascii.CR, 94, 89, 66, 95, 76, 74, 72, Ascii.CR, 79, 76, 78, 70, Ascii.CR, 89, 66, Ascii.CR, 72, 91, 72, 67, 89, 94, Ascii.CR, 73, 76, 89, 76, 79, 76, 94, 72, 118, 81, 89, 92, 85, 84, Ascii.DLE, 68, 95, Ascii.DLE, SignedBytes.MAX_POWER_OF_TWO, 81, 66, 67, 85, Ascii.DLE, 81, 94, Ascii.DLE, 85, 70, 85, 94, 68, Ascii.DLE, 86, 66, 95, 93, Ascii.DLE, 89, 94, Ascii.GS, 86, 92, 89, 87, 88, 68, Ascii.DLE, 67, 68, 95, 66, 81, 87, 85, 123, 92, 84, 81, 88, 89, Ascii.GS, 73, 82, Ascii.GS, 79, 88, 92, 89, Ascii.GS, 73, 85, 88, Ascii.GS, 83, 72, 80, 95, 88, 79, Ascii.GS, 82, 91, Ascii.GS, 88, 75, 88, 83, 73, 78, Ascii.GS, 91, 79, 82, 80, Ascii.GS, 89, 92, 73, 92, 95, 92, 78, 88, Ascii.FF, 43, 35, 38, 47, 46, 106, 62, 37, 106, 57, 47, 56, 35, 43, 38, 35, 48, 47, 106, 43, 46, 106, 47, 60, 47, 36, 62, 105, 78, 70, 76, 73, 71, 72, 84, Ascii.CR, 97, 68, 101, 86, 69, 78, 84, 115, 84, 79, 82, 65, 71, 69, 114, 69, 67, 79, 82, 68, 100, 65, 84, 65, 66, 65, 83, 69, 56, Ascii.SI, 9, 5, Ascii.CAN, Ascii.SO, 74, Ascii.SO, Ascii.VT, Ascii.RS, Ascii.VT, 8, Ascii.VT, Ascii.EM, Ascii.SI, 74, Ascii.FF, Ascii.VT, 3, 6, Ascii.US, Ascii.CAN, Ascii.SI, 74, 5, 9, 9, Ascii.US, Ascii.CAN, Ascii.CAN, Ascii.SI, Ascii.SO, 74, Ascii.GS, 2, Ascii.SI, 4, 74, Ascii.CAN, Ascii.SI, Ascii.VT, Ascii.SO, 3, 4, Ascii.CR, 74, Ascii.SI, Ascii.FS, Ascii.SI, 4, Ascii.RS, Ascii.EM, 68, Base64.padSymbol, 40, 40, 57, 49, 44, 40, Ascii.FS, Ascii.EM, Ascii.FF, Ascii.EM, 47, 34, 95, 72, 78, 66, 95, 73, 114, 73, 76, 89, 76, 79, 76, 94, 72, 65, 87, 65, 65, 91, 93, 92, 109, 91, 86, 46, 56, 46, 46, 52, 50, 51, 2, 41, 52, 48, 56, 100, 121, 125, 117, 49, 42, 46, 32, 43, 88, 85, 92, 73, Ascii.FF, Ascii.ETB, Ascii.DC2, Ascii.ETB, Ascii.SYN, Ascii.SO, Ascii.ETB};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A04(int i, String str) {
        C2787lg c2787lg = new C2787lg(str);
        c2787lg.A05(1);
        this.A00.A08().AC0(A00(TypedValues.CycleType.TYPE_WAVE_PHASE, 15, kotlin.fh.h1), i, c2787lg);
    }

    private void A05(int i, Throwable th) {
        this.A00.A08().ABz(A00(TypedValues.CycleType.TYPE_WAVE_PHASE, 15, kotlin.fh.h1), i, new C2787lg(th));
    }

    public static byte[] A07(C2755lA c2755lA, String str, C2881nD c2881nD) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(A00(TypedValues.CycleType.TYPE_WAVE_PERIOD, 2, 0), str);
            jSONObject.put(A00(466, 5, 3), c2881nD.A08());
            jSONObject.put(A00(471, 4, kotlin.fh.g1), c2881nD.A06().toString());
            jSONObject.put(A00(462, 4, 86), C3076qS.A03(c2881nD.A04()));
            jSONObject.put(A00(450, 12, 27), C3076qS.A03(c2881nD.A03()));
            jSONObject.put(A00(440, 10, 116), c2881nD.A07());
            jSONObject.put(A00(419, 4, 62), new JSONObject(c2881nD.A09()));
            jSONObject.put(A00(412, 7, 26), 0);
        } catch (JSONException e) {
            if (c2755lA.A05().AB6()) {
                Log.e(A04, A00(294, 28, 12), e);
            }
        }
        return jSONObject.toString().getBytes();
    }

    public static byte[] A09(JSONObject jSONObject) {
        return jSONObject.toString().getBytes();
    }

    public final int A0A() {
        try {
            return this.A01.A9V();
        } catch (C2858mq e) {
            if (!this.A00.A05().AB6()) {
                return 0;
            }
            Log.e(A04, A00(245, 49, 123), e);
            return 0;
        }
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00f0 A[Catch: mq -> 0x0136, TryCatch #3 {mq -> 0x0136, blocks: (B:33:0x00e4, B:35:0x00f0, B:36:0x00ff, B:22:0x0088, B:24:0x008e, B:26:0x009a, B:27:0x00da, B:39:0x0108, B:40:0x010c, B:42:0x0112, B:43:0x0122, B:44:0x0126, B:46:0x012c), top: B:61:0x00e4 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x0147  */
    public final int A0B(int i, Set<String> set, Set<String> set2) {
        String strA00 = A00(412, 7, 26);
        int i2 = 0;
        int[] iArr = new int[30];
        byte[] bArr = new byte[30000];
        LinkedList linkedList = new LinkedList();
        try {
            linkedList.add(this.A02.A75(bArr, iArr));
            List<JSONObject> listA01 = A01(new LinkedList(), bArr, iArr);
            while (((InterfaceC2848mg) linkedList.getLast()).ADF()) {
                Arrays.fill(iArr, 0);
                linkedList.add(this.A02.A75(bArr, iArr));
                listA01 = A01(listA01, bArr, iArr);
            }
            Iterator<JSONObject> it = listA01.iterator();
            while (it.hasNext()) {
                JSONObject next = it.next();
                try {
                    String string = next.getString(A00(TypedValues.CycleType.TYPE_WAVE_PERIOD, 2, 0));
                    try {
                        if (set.contains(string)) {
                            int i3 = next.getInt(strA00) + 1;
                            if (i3 < i) {
                                try {
                                    next.put(strA00, i3);
                                    this.A01.ALa(A09(next));
                                } catch (C2858mq e) {
                                    e = e;
                                    if (this.A00.A05().AB6()) {
                                        Log.e(A04, A00(130, 68, kotlin.fh.h1), e);
                                    }
                                    A05(AbstractC2786lf.A2L, e);
                                    return i2;
                                } catch (JSONException e2) {
                                    e = e2;
                                    try {
                                        if (this.A00.A05().AB6()) {
                                            Log.e(A04, A00(198, 47, 118), e);
                                        }
                                        A05(AbstractC2786lf.A2P, e);
                                    } catch (C2858mq e3) {
                                        e = e3;
                                        if (this.A00.A05().AB6()) {
                                            Log.e(A04, A00(130, 68, kotlin.fh.h1), e);
                                        }
                                        A05(AbstractC2786lf.A2L, e);
                                        return i2;
                                    }
                                }
                            } else {
                                i2++;
                            }
                            it.remove();
                        } else {
                            try {
                                if (set2.contains(string)) {
                                    if (this.A00.A05().AB6()) {
                                        String str = A00(39, 16, kotlin.fh.h1) + string + A00(0, 11, 2) + next.optString(A00(471, 4, kotlin.fh.g1), A00(475, 7, 63));
                                    }
                                    it.remove();
                                }
                            } catch (JSONException e4) {
                                e = e4;
                                if (this.A00.A05().AB6()) {
                                    Log.e(A04, A00(198, 47, 118), e);
                                }
                                A05(AbstractC2786lf.A2P, e);
                            }
                        }
                    } catch (C2858mq e5) {
                        e = e5;
                    } catch (JSONException e6) {
                        e = e6;
                    }
                } catch (JSONException e7) {
                    e = e7;
                }
            }
            Iterator<JSONObject> it2 = listA01.iterator();
            while (it2.hasNext()) {
                this.A02.ALa(A09(it2.next()));
            }
            Iterator it3 = linkedList.iterator();
            while (it3.hasNext()) {
                ((InterfaceC2848mg) it3.next()).A6O();
            }
        } catch (C2858mq e8) {
            e = e8;
        }
        return i2;
    }

    public final List<JSONObject> A0C(int i) {
        boolean z = false;
        if (i == -1) {
            z = true;
            i = 30;
        }
        int[] iArr = new int[i];
        byte[] bArr = new byte[i * 1000];
        List<JSONObject> linkedList = new LinkedList<>();
        LinkedList linkedList2 = new LinkedList();
        try {
            InterfaceC2848mg interfaceC2848mgA75 = this.A01.A75(bArr, iArr);
            linkedList2.add(interfaceC2848mgA75);
            int iA76 = interfaceC2848mgA75.A76();
            linkedList = A01(linkedList, bArr, iArr);
            while (interfaceC2848mgA75.ADF() && (iA76 < i || z)) {
                if (z) {
                    Arrays.fill(iArr, 0);
                } else {
                    iArr = new int[i - iA76];
                }
                interfaceC2848mgA75 = this.A01.A75(bArr, iArr);
                linkedList2.add(interfaceC2848mgA75);
                linkedList = A01(linkedList, bArr, iArr);
            }
            Iterator<JSONObject> it = linkedList.iterator();
            while (it.hasNext()) {
                this.A02.ALa(A09(it.next()));
            }
            Iterator it2 = linkedList2.iterator();
            while (it2.hasNext()) {
                ((InterfaceC2848mg) it2.next()).A6O();
            }
        } catch (C2858mq e) {
            if (this.A00.A05().AB6()) {
                Log.e(A04, A00(359, 53, 44), e);
            }
            A05(AbstractC2786lf.A2M, e);
        }
        return linkedList;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2836mU
    public final void A5a() {
        try {
            this.A01.clear();
            this.A02.clear();
        } catch (C2858mq e) {
            if (this.A00.A05().AB6()) {
                Log.e(A04, A00(55, 30, 66), e);
            }
            A05(AbstractC2786lf.A2J, e);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2836mU
    public final void AMQ(C2881nD c2881nD, AbstractC2833mR<String> abstractC2833mR) {
        new C2839mX(c2881nD, abstractC2833mR, this.A01, this.A00).A06(ExecutorC3091qh.A07);
    }
}
