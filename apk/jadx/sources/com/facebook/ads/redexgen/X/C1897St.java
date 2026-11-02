package com.facebook.ads.redexgen.X;

import android.media.MediaCodec;
import android.os.SystemClock;
import android.util.Log;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.ironsource.InterfaceC3669k1;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentLinkedQueue;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.St, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1897St {
    public static byte[] A03;
    public static String[] A04 = {"GkcL9EPdEqn0A7PhJoI9bsH6AxvNOL5u", "KxLGmNj9tBxVzMOmsgtqIqkFwkedOK4g", "B55E1oGbrrzu1K7f7VrmSaJJuupeT3cI", "sJPWMepLD2r1nI", "wtcLGgQj4FXEjs2QwwDmyBbbBNjJkZ", "WeZkHqAtZ530WLIFPfcgOozgAqJ", "33UI6N3aU6fupkPFkce4mnEh7TXGWjHZ", "TngqUuh2ENkAcZsSEqObL56HjOXg0tNH"};
    public boolean A00 = false;
    public final ConcurrentLinkedQueue<C1895Sr> A01 = new ConcurrentLinkedQueue<>();
    public final /* synthetic */ C1898Su A02;

    static {
        A05();
    }

    public C1897St(C1898Su c1898Su) {
        this.A02 = c1898Su;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public InterfaceC1891Sn A02(boolean z, C2001Xc c2001Xc, EnumC2006Xh enumC2006Xh, String str) throws C2008Xj {
        Set<InterfaceC1891Sn> set;
        if (this.A02.A0I(z, c2001Xc) && C1898Su.A0G(str, c2001Xc)) {
            synchronized (this.A02.A04) {
                set = this.A02.A04.get(str);
            }
            if (set != null) {
                synchronized (set) {
                    if (!set.isEmpty()) {
                        this.A02.A00--;
                        Iterator<InterfaceC1891Sn> it = set.iterator();
                        InterfaceC1891Sn next = it.next();
                        it.remove();
                        this.A02.A03().A0A(z, str, enumC2006Xh, next.hashCode());
                        return next;
                    }
                }
            }
        }
        try {
            C2007Xi c2007XiA05 = this.A02.A03().A05(z, str, enumC2006Xh);
            InterfaceC1891Sn interfaceC1891SnA03 = A03(z, str);
            this.A02.A03().A06(c2007XiA05, interfaceC1891SnA03.hashCode());
            return interfaceC1891SnA03;
        } catch (Exception e) {
            throw new C2008Xj(str, e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public InterfaceC1891Sn A03(boolean z, String str) throws Exception {
        String strA04 = A04(150, 41, 74);
        if (z && C1898Su.A0E(str)) {
            try {
                return (InterfaceC1891Sn) Class.forName(strA04).getConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (Exception e) {
                String str2 = String.format(A04(0, 43, 73), strA04, e.getMessage());
                if (A04[7].charAt(0) != 'T') {
                    throw new RuntimeException();
                }
                A04[1] = "88UhswHBE5yWXNxnehnu2gljXz9gtbeq";
                Log.w(A04(43, 23, 118), str2);
            }
        }
        return new S5(MediaCodec.createByCodecName(str));
    }

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 99);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A05() {
        A03 = new byte[]{-15, 36, Ascii.SI, 17, Ascii.FS, 32, Ascii.NAK, Ascii.ESC, Ascii.SUB, -52, 35, Ascii.DC4, 17, Ascii.SUB, -52, 32, Ascii.RS, 37, Ascii.NAK, Ascii.SUB, 19, -52, 32, Ascii.ESC, -52, Ascii.NAK, Ascii.SUB, Ascii.US, 32, Ascii.CR, Ascii.SUB, 32, Ascii.NAK, Ascii.CR, 32, 17, -52, -47, Ascii.US, -26, -52, -47, Ascii.US, 38, 62, Base64.padSymbol, 66, 58, Ascii.FS, 72, Base64.padSymbol, 62, 60, 41, 72, 72, 69, 40, 73, 77, 66, 70, 66, 83, 62, Base64.padSymbol, 56, 69, 69, 66, 69, 0, 74, 59, 60, 63, 56, 0, 69, 56, 63, 56, 52, 70, 56, 0, 54, 66, 55, 56, 54, 0, 57, 69, 66, SignedBytes.MAX_POWER_OF_TWO, 0, 70, 56, 71, 0, 57, 60, 65, 52, 63, 63, 76, Ascii.CR, -13, -8, 70, 32, 45, 45, 42, 45, -24, 50, 35, 36, 39, 32, -24, 45, 32, 39, 32, Ascii.FS, 46, 32, -24, Ascii.RS, 42, Ascii.US, 32, Ascii.RS, -24, 33, 45, 42, 40, -24, 46, 32, 47, -11, -37, -32, 46, Ascii.DC2, 37, Ascii.FS, Ascii.GS, Ascii.EM, Ascii.SO, 38, Ascii.DC2, Ascii.US, -33, -37, Ascii.SO, 35, -34, -37, 32, Ascii.US, Ascii.DLE, -37, -15, Ascii.SO, 35, -34, 17, -6, Ascii.DC2, 17, Ascii.SYN, Ascii.SO, -16, Ascii.FS, 17, Ascii.DC2, Ascii.DLE, -18, 17, Ascii.SO, Ascii.GS, 33, Ascii.DC2, Ascii.US};
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: A07, reason: merged with bridge method [inline-methods] */
    public void A0B(EnumC2006Xh enumC2006Xh) {
        String strA04;
        String str;
        C1898Su c1898Su;
        Set<InterfaceC1891Sn> set;
        for (C1895Sr c1895Sr : this.A01) {
            try {
                try {
                    if (c1895Sr.A05) {
                        try {
                            try {
                                this.A02.A05 = SystemClock.elapsedRealtime();
                                c1895Sr.A00.reset();
                                c1898Su = this.A02;
                            } catch (Throwable th) {
                                this.A02.A05 = -1L;
                                throw th;
                            }
                        } catch (IllegalStateException unused) {
                            A09(c1895Sr.A02, c1895Sr.A00);
                            c1898Su = this.A02;
                        }
                        c1898Su.A05 = -1L;
                        if (c1895Sr.A03) {
                            synchronized (this.A02.A04) {
                                set = this.A02.A04.get(c1895Sr.A02);
                            }
                            if (set != null) {
                                synchronized (set) {
                                    set.add(c1895Sr.A00);
                                    this.A02.A00++;
                                }
                            }
                        }
                    } else {
                        A08(c1895Sr.A01, enumC2006Xh, Boolean.valueOf(c1895Sr.A04), c1895Sr.A00);
                    }
                    try {
                        synchronized (this.A01) {
                            try {
                                this.A01.remove(c1895Sr);
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                    } catch (Exception e) {
                        strA04 = A04(43, 23, 118);
                        str = String.format(A04(66, 46, InterfaceC3669k1.d.b.j), e.getMessage());
                        Log.w(strA04, str);
                    }
                } catch (Exception e2) {
                    Log.w(A04(43, 23, 118), String.format(A04(InterfaceC3669k1.d.b.j, 38, 88), e2.getMessage()));
                    try {
                        synchronized (this.A01) {
                            try {
                                this.A01.remove(c1895Sr);
                            } catch (Throwable th3) {
                                throw th3;
                            }
                        }
                    } catch (Exception e3) {
                        strA04 = A04(43, 23, 118);
                        str = String.format(A04(66, 46, InterfaceC3669k1.d.b.j), e3.getMessage());
                        Log.w(strA04, str);
                    }
                }
            } catch (Throwable th4) {
                try {
                    synchronized (this.A01) {
                        this.A01.remove(c1895Sr);
                        throw th4;
                    }
                } catch (Exception e4) {
                    Log.w(A04(43, 23, 118), String.format(A04(66, 46, InterfaceC3669k1.d.b.j), e4.getMessage()));
                }
            }
        }
    }

    private void A08(C2001Xc c2001Xc, EnumC2006Xh enumC2006Xh, Boolean bool, InterfaceC1891Sn interfaceC1891Sn) {
        try {
            if (!c2001Xc.A0Y || (!bool.booleanValue() && !c2001Xc.A0X)) {
                interfaceC1891Sn.stop();
            }
        } finally {
            this.A02.A03().A08(enumC2006Xh, interfaceC1891Sn.hashCode());
            interfaceC1891Sn.AIp();
            this.A02.A03().A07(enumC2006Xh, interfaceC1891Sn.hashCode());
        }
    }

    private void A09(String str, InterfaceC1891Sn interfaceC1891Sn) {
        Set<InterfaceC1891Sn> set;
        synchronized (this.A02.A04) {
            set = this.A02.A04.get(str);
        }
        if (set != null) {
            synchronized (set) {
                if (set.remove(interfaceC1891Sn)) {
                    this.A02.A00--;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Bottom block not found for handler: all -> 0x00e0 */
    /* JADX WARN: Code duplicated, block: B:106:0x0120 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:82:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:89:0x0108  */
    /* JADX WARN: Code duplicated, block: B:91:0x0110  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void A0A(boolean r24, com.facebook.ads.redexgen.X.C2001Xc r25, final com.facebook.ads.redexgen.X.EnumC2006Xh r26, java.lang.String r27, com.facebook.ads.redexgen.X.InterfaceC1891Sn r28) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 298
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1897St.A0A(boolean, com.facebook.ads.redexgen.X.Xc, com.facebook.ads.redexgen.X.Xh, java.lang.String, com.facebook.ads.redexgen.X.Sn):void");
    }
}
