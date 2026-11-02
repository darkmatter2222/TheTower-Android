package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.lk, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2791lk {
    public static byte[] A00;
    public static String[] A01 = {"a6IxlCkVmcf1QOD6ZYjDV7INHBfwC5pE", "pjHGmgbtiOqji60ouNqSwKm8iDwdL2il", "jT1wBn6CKnjHaXeX1", "64rNhN6ZFhDWGxpIQ", "ze8vByysvbBiliYVuotBM6Di85tpEUzv", "oRRmyqjSmqskFAvbDRZ10d57ZrKFDjEI", "44vbl6FfanMIMy7ytQNCDD1eXfOrnFTF", "rkbwsxy0OcV7GrP7ELmdkRDeQR2uGuGh"};

    static {
        A02();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            int i5 = bArrCopyOfRange[i4] - i3;
            if (A01[1].charAt(1) == 'a') {
                throw new RuntimeException();
            }
            String[] strArr = A01;
            strArr[4] = "1M2Y98BwTvEPUGLlCwxj254fliWahs1n";
            strArr[0] = "azYACSqPfJkxfvivKERNz1YXvsYHtm8K";
            bArrCopyOfRange[i4] = (byte) (i5 - 68);
        }
        return new String(bArrCopyOfRange);
    }

    public static JSONObject A01(C2755lA c2755lA, long j, long j2, long j3, long j4, int i, Exception exc) {
        JSONObject jSONObject = new JSONObject();
        try {
            try {
                jSONObject.put(A00(69, 10, 88), j);
                String strA00 = A00(21, 8, 36);
                double d = j2;
                if (A01[1].charAt(1) == 'a') {
                    throw new RuntimeException();
                }
                String[] strArr = A01;
                strArr[5] = "jMg5lz9yrKYKrG7ow7Rg5ttUcJr1AiZd";
                strArr[6] = "pmFVBxkrFRXwpMq5qFraASgBsRnTrBpW";
                try {
                    jSONObject.put(strA00, d / 1000.0d);
                    try {
                        jSONObject.put(A00(57, 12, 38), j3);
                        try {
                            jSONObject.put(A00(79, 11, 31), j4);
                            try {
                                jSONObject.put(A00(34, 16, 75), i);
                                if (exc != null) {
                                    jSONObject.put(A00(29, 5, 115), exc.getMessage());
                                }
                            } catch (JSONException e) {
                                e = e;
                                c2755lA.A08().A4j(e);
                            }
                        } catch (JSONException e2) {
                            e = e2;
                        }
                    } catch (JSONException e3) {
                        e = e3;
                    }
                } catch (JSONException e4) {
                    e = e4;
                }
                return jSONObject;
            } catch (JSONException e5) {
                e = e5;
            }
        } catch (JSONException e6) {
            e = e6;
        }
    }

    public static void A02() {
        A00 = new byte[]{-47, -12, -20, -20, -18, -13, -20, -91, -45, -22, -7, -4, -12, -9, -16, -91, -54, -5, -22, -13, -7, -52, -35, -38, -55, -36, -47, -41, -42, Ascii.FS, 41, 41, 38, 41, -9, 3, 3, -1, -18, 2, 3, -16, 3, 4, 2, -18, -14, -2, -13, -12, Ascii.SYN, Ascii.CR, Ascii.FS, Ascii.US, Ascii.ETB, Ascii.SUB, 19, -38, -53, -29, -42, -39, -53, -50, -55, -35, -45, -28, -49, Ascii.SI, Ascii.DLE, -3, Ascii.SO, Ascii.DLE, -5, Ascii.DLE, 5, 9, 1, -40, -45, -49, -46, -60, -57, -62, -42, -52, -35, -56};
    }

    public static void A03(C2755lA c2755lA, long j, long j2, long j3, long j4, int i, Exception exc) {
        C2787lg c2787lg = new C2787lg(A00(0, 21, 65));
        c2787lg.A05(1);
        c2787lg.A07(A01(c2755lA, j, j2, j3, j4, i, exc));
        c2755lA.A08().AD0(A00(50, 7, 100), AbstractC2786lf.A20, c2787lg);
    }
}
