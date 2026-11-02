package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import android.os.Parcelable;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX WARN: Unexpected interfaces in signature: [com.facebook.ads.internal.util.common.Stateful<android.os.Bundle>] */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class JY {
    public static byte[] A03;
    public final C2478gZ A00;
    public final InterfaceC2335eF A01;
    public final List<JX> A02;

    static {
        A01();
    }

    public JY(List<AbstractC2476gX> list, Bundle bundle, InterfaceC2335eF interfaceC2335eF) {
        this.A02 = new ArrayList(list.size());
        this.A01 = interfaceC2335eF;
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(A00(10, 5, 15));
        for (int i = 0; i < list.size(); i++) {
            this.A02.add(new JX(list.get(i), (Bundle) parcelableArrayList.get(i)));
        }
        this.A00 = (C2478gZ) AbstractC3063qF.A00(bundle.getByteArray(A00(0, 10, 28)));
    }

    public JY(List<AbstractC2476gX> list, InterfaceC2335eF interfaceC2335eF) {
        this.A02 = new ArrayList(list.size());
        this.A01 = interfaceC2335eF;
        Iterator<AbstractC2476gX> it = list.iterator();
        while (it.hasNext()) {
            this.A02.add(new JX(it.next()));
        }
        this.A00 = new C2478gZ();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 49);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{126, 121, 108, 121, 100, 126, 121, 100, 110, 126, 106, 123, 109, 106, 109};
    }

    public final Bundle A02() {
        Bundle bundle = new Bundle();
        bundle.putByteArray(A00(0, 10, 28), AbstractC3063qF.A01(this.A00));
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>(this.A02.size());
        Iterator<JX> it = this.A02.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().A05());
        }
        bundle.putParcelableArrayList(A00(10, 5, 15), arrayList);
        return bundle;
    }

    public final C2478gZ A03() {
        return this.A00;
    }

    public final void A04() {
        this.A00.A03();
        Iterator<JX> it = this.A02.iterator();
        while (it.hasNext()) {
            it.next().A06();
        }
    }

    public final void A05() {
        this.A00.A02();
    }

    public final void A06(double d, double d2) {
        if (d2 >= FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
            this.A00.A05(d, d2);
        }
        double dAA9 = this.A01.AA9();
        this.A00.A04(d, dAA9);
        Iterator<JX> it = this.A02.iterator();
        while (it.hasNext()) {
            it.next().A07(d, dAA9);
        }
    }
}
