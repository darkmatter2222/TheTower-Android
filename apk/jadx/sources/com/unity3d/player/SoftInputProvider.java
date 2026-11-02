package com.unity3d.player;

import com.unity3d.player.a.AbstractC4095k;

/* JADX INFO: loaded from: classes5.dex */
abstract class SoftInputProvider {
    public static int a() {
        int iNativeGetSoftInputType = nativeGetSoftInputType();
        int[] iArrB = AbstractC4095k.b(4);
        int length = iArrB.length;
        int i = 0;
        while (true) {
            int i2 = 1;
            if (i >= length) {
                return 1;
            }
            int i3 = iArrB[i];
            if (i3 == 1) {
                i2 = -1;
            } else if (i3 == 2) {
                i2 = 0;
            } else if (i3 != 3) {
                if (i3 != 4) {
                    throw null;
                }
                i2 = 2;
            }
            if (i2 == iNativeGetSoftInputType) {
                return i3;
            }
            i++;
        }
    }

    private static final native int nativeGetSoftInputType();
}
