package com.facebook.ads.redexgen.X;

import android.view.View;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.google.common.base.Ascii;
import com.unity3d.services.UnityAdsConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.7f, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C13737f extends KI {
    public static byte[] A03;
    public long A00;
    public View A01;
    public C7D A02;

    static {
        A05();
    }

    public C13737f(C7D c7d, C2441fy c2441fy) {
        super(c7d, c2441fy);
        this.A00 = 10000L;
        this.A02 = c7d;
    }

    private KL A01(Runnable runnable) {
        return new KL(this, runnable);
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 12);
        }
        return new String(bArrCopyOfRange);
    }

    private List<JSONObject> A04(C2442fz c2442fz) {
        ArrayList arrayList = new ArrayList();
        JSONObject jSONObjectA03 = c2442fz.A03();
        String strA03 = A03(22, 12, kotlin.fh.h1);
        if (jSONObjectA03.has(strA03)) {
            try {
                this.A00 = jSONObjectA03.getJSONObject(strA03).optInt(A03(3, 19, 71), UnityAdsConstants.AdOperations.SHOW_TIMEOUT_MS);
                JSONArray jSONArray = jSONObjectA03.getJSONArray(A03(0, 3, 81));
                if (jSONArray.length() > 0) {
                    for (int i = 0; i < jSONArray.length(); i++) {
                        arrayList.add((JSONObject) jSONArray.get(i));
                    }
                }
            } catch (JSONException unused) {
                String strA04 = A03(36, 38, 4);
                this.A02.A0F().A6F(C2922nt.A01(AdErrorType.UNKNOWN_ERROR, strA04).A03().getErrorCode(), strA04);
                return arrayList;
            }
        } else {
            arrayList.add(jSONObjectA03);
        }
        return arrayList;
    }

    public static void A05() {
        A03 = new byte[]{60, 57, 46, 41, 42, 37, 37, 46, 57, Ascii.DC4, 57, 46, 45, 57, 46, 56, 35, Ascii.DC4, 63, 34, 38, 46, 4, Ascii.SI, 6, Ascii.SO, 9, 56, Ascii.ETB, 6, Ascii.NAK, 6, 10, Ascii.DC4, 3, Ascii.DC4, 109, 122, 122, 103, 122, 40, 127, 96, 97, 100, 109, 40, 120, 105, 122, 123, 97, 102, 111, 40, 107, 96, 105, 97, 102, 109, 108, 40, 105, 108, 123, 40, 74, 105, 102, 102, 109, 122};
    }

    private void A06(MA ma, JSONObject jSONObject, C2806lz c2806lz) {
        this.A0C = false;
        KK kk = new KK(this, ma, AbstractC3052q4.A02(jSONObject, A03(34, 2, 108)));
        A0G().postDelayed(kk, c2806lz.A05());
        if (this.A08.A08 != null) {
            ma.ABb(this.A02, this.A09, this.A08.A08, A01(kk), jSONObject, c2806lz);
        }
    }

    @Override // com.facebook.ads.redexgen.X.KI
    public final void A0O() {
        if (this.A01 == null) {
            this.A02.A0F().A56();
            return;
        }
        this.A02.A0F().A55();
        if (this.A07 != null) {
            this.A07.A0E(this.A01);
        }
    }

    @Override // com.facebook.ads.redexgen.X.KI
    public final void A0Q(InterfaceC2368en interfaceC2368en, C2805ly c2805ly, C2803lw c2803lw, final C2442fz c2442fz) {
        this.A02.A0F().A4z();
        final MA ma = (MA) interfaceC2368en;
        if (!ma.ALe()) {
            A06(ma, c2442fz.A03(), c2442fz.A01());
            return;
        }
        final List<JSONObject> listA04 = A04(c2442fz);
        A06(ma, listA04.get(0), c2442fz.A01());
        if (listA04.size() > 1) {
            A0G().postDelayed(new Runnable() { // from class: com.facebook.ads.redexgen.X.g0
                @Override // java.lang.Runnable
                public final void run() {
                    this.A02.A0Z(ma, listA04, c2442fz);
                }
            }, this.A00);
        }
    }

    @Override // com.facebook.ads.redexgen.X.KI
    public final void A0T(String str) {
        this.A02.A0F().A54(str != null);
        super.A0T(str);
    }

    @Override // com.facebook.ads.redexgen.X.KI
    public final void A0X(boolean z) {
        super.A0X(z);
        this.A01 = null;
    }

    public final /* synthetic */ void A0Z(MA ma, List list, C2442fz c2442fz) {
        A06(ma, (JSONObject) list.get(1), c2442fz.A01());
    }
}
