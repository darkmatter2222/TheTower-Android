package com.facebook.ads.redexgen.X;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.f3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2384f3 extends BroadcastReceiver {
    public static byte[] A04;
    public static String[] A05 = {"Hx5cs3o1n94x4iz2ieiv19n0bC39jDLV", "DczTM9XTB6zYKPM5uSa4O9VpG4npCHE6", "H95xGrYXW6aetWm7g", "DnZlrnjHaFMDCSG8YghSBbb82bFkGLaI", "spAywSNSIB5utsB5KWAsjXDmt4Lk2xn0", "0OBhOGB87zrMsrOdMhmUEXBS8goXVv2S", "SvisU6DjgFnHMttCPMEeYze71kn4Qsz3", "Woiy3WnaDIJnBAS02u3srwOYvyvCf2jO"};
    public C1716Lh A00;
    public InterfaceC2383f2 A01;
    public C1618Hi A02;
    public String A03;

    static {
        A01();
    }

    public C2384f3(C1618Hi c1618Hi, String str, C1716Lh c1716Lh, InterfaceC2383f2 interfaceC2383f2) {
        this.A02 = c1618Hi;
        this.A03 = str;
        this.A01 = interfaceC2383f2;
        this.A00 = c1716Lh;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            byte b = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 117);
            if (A05[2].length() == 6) {
                throw new RuntimeException();
            }
            A05[0] = "4fUr3b1za9qXspivNdeNxVAX4LvFC7L9";
            bArrCopyOfRange[i4] = b;
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A04 = new byte[]{44, 47, 35, 33, 98, 42, 45, 47, 41, 46, 35, 35, 39, 98, 45, 40, 63, 98, 34, 45, 56, 37, 58, 41, 98, 45, 40, 19, 47, 32, 37, 47, 39};
    }

    public final void A02() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(A00(1, 32, 57) + A00(0, 1, 99) + this.A03);
        C2500gw.A00(this.A02).A06(this, intentFilter);
    }

    public final void A03() {
        C2500gw.A00(this.A02).A05(this);
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String str;
        String action = intent.getAction();
        if (action == null) {
            return;
        }
        String[] strArrSplit = action.split(A00(0, 1, 99));
        if (strArrSplit.length >= 1 && (str = strArrSplit[0]) != null && A00(1, 32, 57).equals(str)) {
            this.A01.AFz(this.A00);
        }
    }
}
