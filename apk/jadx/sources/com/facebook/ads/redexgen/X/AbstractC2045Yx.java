package com.facebook.ads.redexgen.X;

import java.io.EOFException;
import java.io.IOException;
import org.checkerframework.dataflow.qual.Pure;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Yx, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2045Yx {
    public static int A00(Q9 q9, byte[] bArr, int i, int i2) throws IOException {
        int i3 = 0;
        while (i3 < i2) {
            int iAI5 = q9.AI5(bArr, i + i3, i2 - i3);
            if (iAI5 == -1) {
                break;
            }
            i3 += iAI5;
        }
        return i3;
    }

    @Pure
    public static void A01(boolean z, String str) throws L9 {
        if (!z) {
            throw L9.A01(str, null);
        }
    }

    public static boolean A02(Q9 q9, int i) throws IOException {
        try {
            q9.ALL(i);
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }

    public static boolean A03(Q9 q9, byte[] bArr, int i, int i2) throws IOException {
        try {
            q9.readFully(bArr, i, i2);
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }

    public static boolean A04(Q9 q9, byte[] bArr, int i, int i2, boolean z) throws IOException {
        try {
            return q9.AI7(bArr, i, i2, z);
        } catch (EOFException e) {
            if (z) {
                return false;
            }
            throw e;
        }
    }
}
