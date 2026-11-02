package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import java.util.ArrayList;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.no, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class RunnableC2918no implements Runnable {
    public static byte[] A03;
    public final /* synthetic */ C2755lA A00;
    public final /* synthetic */ C2921nr A01;
    public final /* synthetic */ String A02;

    static {
        A01();
    }

    public RunnableC2918no(C2921nr c2921nr, String str, C2755lA c2755lA) {
        this.A01 = c2921nr;
        this.A02 = str;
        this.A00 = c2755lA;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 121);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{3, Ascii.ESC, 5, 60, Base64.padSymbol, 39, 32, 59, 38, 45, 89, 78, 91, 68, 89, 95, 66, 69, 76, 54, 33, 53, 49, 33, 55, 48, Ascii.ESC, 45, 32};
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        ArrayList<C2920nq> arrayList;
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            C2787lg c2787lg = new C2787lg(A00(0, 3, 52));
            JSONObject jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            jSONObject.put(A00(3, 7, 45), jSONArray);
            jSONObject.put(A00(19, 10, 61), this.A02);
            synchronized (this.A01.A0D) {
                arrayList = new ArrayList(this.A01.A0D);
                this.A01.A0D.clear();
            }
            for (C2920nq c2920nq : arrayList) {
                jSONArray.put(A00(0, 0, 60) + c2920nq.A00 + ';' + c2920nq.A02 + ';' + c2920nq.A01);
            }
            c2787lg.A07(jSONObject);
            c2787lg.A05(1);
            this.A00.A08().AC0(A00(10, 9, 82), AbstractC2786lf.A2R, c2787lg);
        } catch (JSONException unused) {
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
