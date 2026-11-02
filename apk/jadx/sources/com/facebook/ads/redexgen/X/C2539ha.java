package com.facebook.ads.redexgen.X;

import android.graphics.drawable.Drawable;
import android.view.Display;
import android.view.View;
import com.google.common.base.Ascii;
import java.lang.reflect.Field;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ha, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C2539ha {
    public static Field A00;
    public static boolean A01;
    public static byte[] A02;

    static {
        A01();
        A01 = false;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 72);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{Ascii.SUB, 54, Ascii.DC4, Ascii.DC4, Ascii.DC2, 4, 4, Ascii.RS, Ascii.NAK, Ascii.RS, Ascii.ESC, Ascii.RS, 3, Ascii.SO, 51, Ascii.DC2, Ascii.ESC, Ascii.DC2, Ascii.DLE, Ascii.SYN, 3, Ascii.DC2};
    }

    public abstract int A02(View view);

    public abstract int A03(View view);

    public abstract int A04(View view);

    public abstract int A05(View view);

    public abstract Display A06(View view);

    public abstract C2556hs A07(View view, C2556hs c2556hs);

    public abstract C2556hs A08(View view, C2556hs c2556hs);

    public abstract void A09(View view);

    public abstract void A0A(View view);

    public abstract void A0B(View view, int i);

    public abstract void A0C(View view, Drawable drawable);

    public final void A0D(View view, AbstractC2518hF abstractC2518hF) {
        view.setAccessibilityDelegate(abstractC2518hF == null ? null : abstractC2518hF.A00());
    }

    public abstract void A0E(View view, InterfaceC2524hL interfaceC2524hL);

    public abstract void A0F(View view, Runnable runnable);

    public abstract void A0G(View view, Runnable runnable, long j);

    public final boolean A0H(View view) {
        if (A01) {
            return false;
        }
        if (A00 == null) {
            try {
                A00 = View.class.getDeclaredField(A00(0, 22, 63));
                A00.setAccessible(true);
            } catch (Throwable unused) {
                A01 = true;
                return false;
            }
        }
        try {
            return A00.get(view) != null;
        } catch (Throwable unused2) {
            A01 = true;
            return false;
        }
    }

    public abstract boolean A0I(View view);

    public abstract boolean A0J(View view);
}
