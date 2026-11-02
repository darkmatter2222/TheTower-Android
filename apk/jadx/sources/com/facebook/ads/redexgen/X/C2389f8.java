package com.facebook.ads.redexgen.X;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.f8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2389f8 extends BroadcastReceiver {
    public static byte[] A03;
    public static String[] A04 = {"X1IVw5mZrPwWgp59pDL9aLZ3Fov3W2Wm", "N1AsLxATz8LfRIPBbwS0prqi9bKFNGwZ", "KvfN8PD7zJtQDsMeVTqT5dRzLvhiPQFs", "CwJ4sBopjGul5sxVyPsrv7O0APgi12j8", "riYYfsMk5nddhbnpPSj9znzkTr5bDpPf", "Be1xHvNUMQ0R9QZ", "t7JwnvsmbbV8km6q46", "oSYhwD14tF3vT8zAS1lFRiV2H2FAfEUD"};
    public Context A00;
    public AnonymousClass72 A01;
    public boolean A02 = false;

    static {
        A01();
    }

    public C2389f8(AnonymousClass72 anonymousClass72, Context context) {
        this.A01 = anonymousClass72;
        this.A00 = context;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 97);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{Ascii.EM, 3, Ascii.SI, Ascii.CR, 78, 6, 1, 3, 5, 2, Ascii.SI, Ascii.SI, Ascii.VT, 78, 1, 4, 19, 78, 9, Ascii.SO, Ascii.DC4, 5, Ascii.DC2, 19, Ascii.DC4, 9, Ascii.DC4, 9, 1, Ascii.FF, 78, 4, 9, 19, Ascii.DLE, Ascii.FF, 1, Ascii.EM, 5, 4, 19, Ascii.US, Ascii.GS, 94, Ascii.SYN, 17, 19, Ascii.NAK, Ascii.DC2, Ascii.US, Ascii.US, Ascii.ESC, 94, 17, Ascii.DC4, 3, 94, Ascii.EM, Ascii.RS, 4, Ascii.NAK, 2, 3, 4, Ascii.EM, 4, Ascii.EM, 17, Ascii.FS, 94, Ascii.DC4, Ascii.EM, 3, 0, Ascii.FS, 17, 9, Ascii.NAK, Ascii.DC4, 74, Ascii.DC2, 1, Ascii.DC2, Ascii.EM, 3, 81, 68, 83, 71, 78, 83, 76, 98, 85, SignedBytes.MAX_POWER_OF_TWO, 98, 77, 72, 66, 74, 83, 70, 81, 69, 76, 81, 78, 96, 87, 66, 96, 79, 74, SignedBytes.MAX_POWER_OF_TWO, 72, Ascii.EM, 45, 50, 63, 62, 52, Ascii.DC2, 53, 47, 62, 41, 40, 47, 50, 47, 58, 55, Ascii.RS, 45, 62, 53, 47, 2, Ascii.GS, Ascii.DLE, 17, Ascii.ESC, Base64.padSymbol, Ascii.SUB, 0, 17, 6, 7, 0, Ascii.GS, 0, Ascii.NAK, Ascii.CAN, 49, 2, 17, Ascii.SUB, 0, 78};
    }

    public final void A02() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(A00(40, 40, 17) + this.A01.getUniqueId());
        intentFilter.addAction(A00(137, 22, 21) + this.A01.getUniqueId());
        intentFilter.addAction(A00(100, 16, 66) + this.A01.getUniqueId());
        C2500gw.A00(this.A00).A06(this, intentFilter);
    }

    public final void A03() {
        try {
            C2500gw.A00(this.A00).A05(this);
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x0139, code lost:
    
        if (r5 != false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0141, code lost:
    
        if (r7.A01.getListener() == null) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0143, code lost:
    
        r7.A01.getListener().AGH();
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x014c, code lost:
    
        r7.A02 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0156, code lost:
    
        if (r5 != false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x015b, code lost:
    
        if ((r4 instanceof com.facebook.ads.redexgen.X.C5W) == false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0163, code lost:
    
        if (r7.A01.getListener() == null) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0165, code lost:
    
        r7.A01.getListener().onPause();
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:?, code lost:
    
        return;
     */
    @Override // android.content.BroadcastReceiver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onReceive(android.content.Context r8, android.content.Intent r9) {
        /*
            Method dump skipped, instruction units count: 406
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2389f8.onReceive(android.content.Context, android.content.Intent):void");
    }
}
