package com.facebook.ads.redexgen.X;

import android.util.Pair;
import com.facebook.ads.androidx.media3.common.Timeline;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class R9 extends AbstractC1983Wi {
    public C1976Wa A00;

    public static int A0Y(InterfaceC1813Pe[] interfaceC1813PeArr, U8 u8, int[] iArr, boolean z) throws AnonymousClass96 {
        int length = interfaceC1813PeArr.length;
        int i = 0;
        boolean z2 = true;
        for (int i2 = 0; i2 < interfaceC1813PeArr.length; i2++) {
            InterfaceC1813Pe interfaceC1813Pe = interfaceC1813PeArr[i2];
            int iMax = 0;
            for (int i3 = 0; i3 < u8.A01; i3++) {
                iMax = Math.max(iMax, PX.A03(interfaceC1813Pe.ALf(u8.A08(i3))));
            }
            boolean z3 = iArr[i2] == 0;
            if (iMax > i || (iMax == i && z && !z2 && z3)) {
                length = i2;
                i = iMax;
                z2 = z3;
            }
        }
        return length;
    }

    public static int[] A0Z(InterfaceC1813Pe interfaceC1813Pe, U8 u8) throws AnonymousClass96 {
        int[] iArr = new int[u8.A01];
        for (int i = 0; i < u8.A01; i++) {
            iArr[i] = interfaceC1813Pe.ALf(u8.A08(i));
        }
        return iArr;
    }

    public static int[] A0a(InterfaceC1813Pe[] interfaceC1813PeArr) throws AnonymousClass96 {
        int[] iArr = new int[interfaceC1813PeArr.length];
        for (int i = 0; i < iArr.length; i++) {
            iArr[i] = interfaceC1813PeArr[i].ALh();
        }
        return iArr;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1983Wi
    public final C1984Wj A0b(InterfaceC1813Pe[] interfaceC1813PeArr, RY ry, C1862Rk c1862Rk, Timeline timeline) throws AnonymousClass96 {
        int[] iArr = new int[interfaceC1813PeArr.length + 1];
        U8[][] u8Arr = new U8[interfaceC1813PeArr.length + 1][];
        int[][][] iArr2 = new int[interfaceC1813PeArr.length + 1][][];
        for (int i = 0; i < u8Arr.length; i++) {
            u8Arr[i] = new U8[ry.A01];
            iArr2[i] = new int[ry.A01][];
        }
        int[] iArrA0a = A0a(interfaceC1813PeArr);
        for (int i2 = 0; i2 < ry.A01; i2++) {
            U8 u8A05 = ry.A05(i2);
            int iA0Y = A0Y(interfaceC1813PeArr, u8A05, iArr, u8A05.A02 == 5);
            int[] iArrA0Z = iA0Y == interfaceC1813PeArr.length ? new int[u8A05.A01] : A0Z(interfaceC1813PeArr[iA0Y], u8A05);
            int i3 = iArr[iA0Y];
            u8Arr[iA0Y][i3] = u8A05;
            iArr2[iA0Y][i3] = iArrA0Z;
            iArr[iA0Y] = iArr[iA0Y] + 1;
        }
        RY[] ryArr = new RY[interfaceC1813PeArr.length];
        String[] strArr = new String[interfaceC1813PeArr.length];
        int[] iArr3 = new int[interfaceC1813PeArr.length];
        for (int i4 = 0; i4 < interfaceC1813PeArr.length; i4++) {
            int i5 = iArr[i4];
            ryArr[i4] = new RY((U8[]) N1.A1I(u8Arr[i4], i5));
            iArr2[i4] = (int[][]) N1.A1I(iArr2[i4], i5);
            strArr[i4] = interfaceC1813PeArr[i4].getName();
            iArr3[i4] = interfaceC1813PeArr[i4].AA0();
        }
        C1976Wa c1976Wa = new C1976Wa(strArr, iArr3, ryArr, iArrA0a, iArr2, new RY((U8[]) N1.A1I(u8Arr[interfaceC1813PeArr.length], iArr[interfaceC1813PeArr.length])));
        Pair<C1814Ph[], RA[]> pairA0d = A0d(c1976Wa, iArr2, iArrA0a, c1862Rk, timeline);
        return new C1984Wj((C1814Ph[]) pairA0d.first, (RA[]) pairA0d.second, AbstractC1980Wf.A00(c1976Wa, (InterfaceC1978Wc[]) pairA0d.second), c1976Wa);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1983Wi
    public final void A0c(Object obj) {
        this.A00 = (C1976Wa) obj;
    }

    public abstract Pair<C1814Ph[], RA[]> A0d(C1976Wa c1976Wa, int[][][] iArr, int[] iArr2, C1862Rk c1862Rk, Timeline timeline) throws AnonymousClass96;
}
