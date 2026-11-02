package com.facebook.ads.redexgen.X;

import com.facebook.ads.RewardData;
import com.facebook.ads.internal.protocol.AdPlacementType;
import com.google.common.base.Ascii;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.7a, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C13687a extends KI {
    public static byte[] A00;
    public static String[] A01 = {"QPajxPBXawZguZvIACdyFqOYUKJhGG1P", "5fhxQ1wmDDZwcYW6vVZtBFGAbpCppeaF", "0C8PIOmzvjBgpmOh8JUWA", "4kKOVZ4CcWBKVljagfvAN2XyBryastSO", "Oy7EzKzQwTS7e9udIDBq4FtqglrDvqBF", "BZaaKRqUw", "6zOS7wuF6dlGz7u6SsHniaRnv53e8kon", "jwUp8OtoUlvjJY1bP74aKb8UsU7a0Ko9"};

    static {
        A02();
    }

    public C13687a(C1618Hi c1618Hi, C2441fy c2441fy) {
        super(c1618Hi, c2441fy);
    }

    private KA A00(Runnable runnable) {
        return new KA(this, runnable);
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A01;
            if (strArr[7].charAt(30) != strArr[6].charAt(30)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[1] = "Dg0tZg7IxBj4D2AEunqK4FRxjbaI0pzK";
            strArr2[4] = "5sVR5Q40j80Tm4EH72ZLdFDAQDj0jOHn";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 112);
            i4++;
        }
    }

    public static void A02() {
        A00 = new byte[]{-11, -13, 0, -78, 1, 0, -2, Ascii.VT, -78, 5, -9, 6, -78, 1, 0, -78, 4, -9, 9, -13, 4, -10, -9, -10, -78, 8, -5, -10, -9, 1, -78, -13, -10, 5, -15, -14, -93, -28, -25, -28, -13, -9, -24, -11, -93, -11, -24, -28, -25, -4, -93, -9, -14, -93, -10, -24, -9, -93, -11, -24, -6, -28, -11, -25, -93, -14, -15};
    }

    @Override // com.facebook.ads.redexgen.X.KI
    public final void A0O() {
        LG lg = (LG) this.A01;
        if (lg != null) {
            lg.A00(this.A08.A00);
            lg.A01(this.A08.A01);
            lg.A0K();
        }
    }

    @Override // com.facebook.ads.redexgen.X.KI
    public final void A0Q(InterfaceC2368en interfaceC2368en, C2805ly c2805ly, C2803lw c2803lw, C2442fz c2442fz) {
        C13807m c13807m = (C13807m) interfaceC2368en;
        KB kb = new KB(this, c2442fz, c13807m);
        if (C2863mv.A2h(this.A0B)) {
            A0G().postDelayed(kb, c2805ly.A05().A05());
        }
        C1618Hi c1618Hi = this.A0B;
        KA kaA00 = A00(kb);
        boolean z = this.A08.A06;
        String str = this.A08.A04;
        C2441fy c2441fy = this.A08;
        String[] strArr = A01;
        if (strArr[3].charAt(31) == strArr[0].charAt(31)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[3] = "qv162d7nxdmOCgZ5HSNnY6lM4lD0tO4m";
        strArr2[0] = "JwvltbAvbK0MQjlZGmmyrgC4vpl52SAH";
        c13807m.A0L(c1618Hi, kaA00, c2442fz, z, str, c2441fy.A05);
    }

    public final void A0Z(RewardData rewardData) {
        if (this.A01 == null) {
            throw new IllegalStateException(A01(34, 33, 19));
        }
        if (this.A01.A9N() != AdPlacementType.REWARDED_VIDEO) {
            throw new IllegalStateException(A01(0, 34, 34));
        }
        ((LG) this.A01).A02(rewardData);
    }
}
