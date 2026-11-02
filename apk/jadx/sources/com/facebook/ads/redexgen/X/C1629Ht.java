package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.api.BuildConfigApi;
import com.google.common.base.Ascii;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ht, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1629Ht implements InterfaceC2715kT {
    public static byte[] A03;
    public static String[] A04 = {"Yyt8Jrp", "FvQHlihhdkZe9tXm7YLHdG4gIBqm", "h7ITXytSbKbsxwMfZDKdUPEvMsTrizAq", "0TuNzKSIMRKA8K3EzRQL94hbriXTa7QT", "ySuQOOQJHVodSpCznPaDLfXVVxuxvbGA", "XYB8XYCfCTfWBGtKG07Wi1HuHmIQx2qC", "71D0xe3tljOi7f3b0iOVOXaXnoSWhNo4", "dwdYeokke3ChTNA3vTF4hdqHGwVronGN"};
    public final InterfaceC2081a7 A01;
    public Set<InterfaceC2718kW> A00 = new HashSet();
    public final List<InterfaceC2717kV> A02 = new ArrayList();

    static {
        A02();
    }

    public C1629Ht(AH ah) {
        this.A01 = ah.A63(EnumC2067Zt.A0B);
        this.A01.A4R(new C1630Hu(this));
        A03();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 107);
        }
        return new String(bArrCopyOfRange);
    }

    public static Set<InterfaceC2718kW> A01(JSONObject jSONObject) {
        C1628Hs c1628HsA00;
        HashSet hashSet = new HashSet();
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(A00(8, 6, 93));
        if (jSONArrayOptJSONArray == null) {
            return null;
        }
        for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
            JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
            if (jSONObjectOptJSONObject == null || (c1628HsA00 = C1628Hs.A00(jSONObjectOptJSONObject)) == null) {
                return null;
            }
            hashSet.add(c1628HsA00);
            if (A04[1].length() == 21) {
                throw new RuntimeException();
            }
            String[] strArr = A04;
            strArr[6] = "2zeGpFgTpOohtr7xv9EhLTO87hKhrQIZ";
            strArr[3] = "Z45Lb0RXWpRaUi2IX7mXCACeVe5qt7dU";
        }
        return hashSet;
    }

    public static void A02() {
        A03 = new byte[]{-72, -72, -67, Ascii.VT, -46, -72, -67, Ascii.VT, 41, 59, 59, 45, 60, 59};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void A03() {
        if (!this.A01.ABM()) {
            BuildConfigApi.isDebug();
            return;
        }
        Set<InterfaceC2718kW> setA01 = A01(this.A01.A8J());
        if (!this.A00.equals(setA01) && setA01 != null) {
            this.A00 = setA01;
            Iterator<InterfaceC2717kV> it = this.A02.iterator();
            while (it.hasNext()) {
                it.next().A4k();
            }
        }
        if (BuildConfigApi.isDebug()) {
            for (InterfaceC2718kW interfaceC2718kW : this.A00) {
                String.format(Locale.US, A00(0, 8, 45), interfaceC2718kW.AA1(), interfaceC2718kW.getUrl());
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2715kT
    public final void A4Q(InterfaceC2717kV interfaceC2717kV) {
        this.A02.add(interfaceC2717kV);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2715kT
    public final synchronized Set<InterfaceC2718kW> A7X() {
        return new HashSet(this.A00);
    }
}
