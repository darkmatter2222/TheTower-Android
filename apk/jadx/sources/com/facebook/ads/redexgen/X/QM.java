package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.view.Display;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class QM implements InterfaceC2016Xr, DisplayManager.DisplayListener {
    public static byte[] A02;
    public InterfaceC2015Xq A00;
    public final DisplayManager A01;

    static {
        A03();
    }

    public QM(DisplayManager displayManager) {
        this.A01 = displayManager;
    }

    private Display A00() {
        return this.A01.getDisplay(0);
    }

    public static QM A01(Context context) {
        DisplayManager displayManager = (DisplayManager) context.getSystemService(A02(0, 7, 85));
        if (displayManager != null) {
            return new QM(displayManager);
        }
        return null;
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 29);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A02 = new byte[]{44, 33, 59, 56, 36, 41, 49};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2016Xr
    public final void AIl(InterfaceC2015Xq interfaceC2015Xq) {
        this.A00 = interfaceC2015Xq;
        this.A01.registerDisplayListener(this, N1.A0Y());
        interfaceC2015Xq.AEe(A00());
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2016Xr
    public final void ALq() {
        this.A01.unregisterDisplayListener(this);
        this.A00 = null;
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayAdded(int i) {
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayChanged(int i) {
        if (this.A00 == null || i != 0) {
            return;
        }
        this.A00.AEe(A00());
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayRemoved(int i) {
    }
}
