package com.facebook.ads.redexgen.X;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ew, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2377ew extends BroadcastReceiver {
    public static byte[] A04;
    public MA A00;
    public InterfaceC2376ev A01;
    public C1618Hi A02;
    public String A03;

    static {
        A01();
    }

    public C2377ew(C1618Hi c1618Hi, String str, MA ma, InterfaceC2376ev interfaceC2376ev) {
        this.A02 = c1618Hi;
        this.A03 = str;
        this.A01 = interfaceC2376ev;
        this.A00 = ma;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 99);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A04 = new byte[]{103, 80, 92, 94, Ascii.GS, 85, 82, 80, 86, 81, 92, 92, 88, Ascii.GS, 82, 87, SignedBytes.MAX_POWER_OF_TWO, Ascii.GS, 81, 82, 93, 93, 86, 65, Ascii.GS, 80, 95, 90, 80, 88, 86, 87};
    }

    public final void A02() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(A00(1, 31, 80) + A00(0, 1, 62) + this.A03);
        C2500gw.A00(this.A02).A06(this, intentFilter);
    }

    public final void A03() {
        C2500gw.A00(this.A02).A05(this);
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String str;
        String action = intent.getAction();
        if (action == null || (str = action.split(A00(0, 1, 62))[0]) == null || !A00(1, 31, 80).equals(str)) {
            return;
        }
        this.A01.AE8(this.A00);
    }
}
