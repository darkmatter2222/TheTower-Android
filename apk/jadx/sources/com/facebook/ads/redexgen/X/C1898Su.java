package com.facebook.ads.redexgen.X;

import android.os.SystemClock;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import javax.annotation.Nullable;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Su, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1898Su {
    public static byte[] A06;
    public static String[] A07 = {"pSdLAabVJhqo7QB", "504ZY1AuKgNOiNBWtmEDc4VNIn9M1Am", "5Zl8ARr", "3vpm0W2HV", "koFPP", "dusBklPSZ06TUnBE7Ond9ns", "pdB1RHpxrB8GMHOKLZJpUDiRkcqMNya4", "7Flzf08JBPT5P838Pw8mNc"};
    public static final C1898Su A08;

    @Nullable
    public AbstractC2005Xg A01;

    @Nullable
    public Boolean A02;
    public volatile Map<String, Set<InterfaceC1891Sn>> A04 = new HashMap();
    public final C1897St A03 = new C1897St(this);
    public int A00 = 0;
    public volatile long A05 = -1;

    static {
        A08();
        A08 = new C1898Su();
    }

    private InterfaceC1891Sn A01(boolean z, C2001Xc c2001Xc, EnumC2006Xh enumC2006Xh, String str) throws C2008Xj {
        if (A0I(z, c2001Xc) && A0G(str, c2001Xc)) {
            synchronized (this) {
                Set<InterfaceC1891Sn> set = this.A04.get(str);
                if (set != null && !set.isEmpty()) {
                    this.A00--;
                    Iterator<InterfaceC1891Sn> it = set.iterator();
                    InterfaceC1891Sn next = it.next();
                    it.remove();
                    A03().A0A(z, str, enumC2006Xh, next.hashCode());
                    return next;
                }
            }
        }
        try {
            C2007Xi c2007XiA05 = A03().A05(z, str, enumC2006Xh);
            InterfaceC1891Sn interfaceC1891SnA03 = this.A03.A03(z, str);
            A03().A06(c2007XiA05, interfaceC1891SnA03.hashCode());
            return interfaceC1891SnA03;
        } catch (Exception e) {
            throw new C2008Xj(str, e);
        }
    }

    public static C1898Su A02() {
        return A08;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AbstractC2005Xg A03() {
        return this.A01 != null ? this.A01 : A8.A02;
    }

    public static String A05(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 70);
        }
        return new String(bArrCopyOfRange);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Set<InterfaceC1891Sn> A06() {
        return (this.A02 == null || !this.A02.booleanValue()) ? new HashSet() : new CopyOnWriteArraySet();
    }

    public static void A08() {
        byte[] bArr = {50, 42, 57, 38, -13, 41, 38, 59, -10, 41, -13, 38, 59, -10, -13, 41, 42, 40, 52, 41, 42, 55};
        String[] strArr = A07;
        if (strArr[7].length() == strArr[4].length()) {
            throw new RuntimeException();
        }
        A07[5] = "AysKoXJUbI28ptcFU7Ec0EF";
        A06 = bArr;
    }

    private void A09(AbstractC2005Xg abstractC2005Xg) {
        if (this.A01 == null) {
            this.A01 = abstractC2005Xg;
        }
    }

    private void A0A(C2001Xc c2001Xc) {
        if (this.A02 == null) {
            synchronized (this) {
                if (this.A02 == null) {
                    this.A02 = Boolean.valueOf(c2001Xc.A0Z);
                    if (this.A02.booleanValue()) {
                        this.A04 = new ConcurrentHashMap();
                    }
                }
            }
        }
    }

    private void A0B(String str, InterfaceC1891Sn interfaceC1891Sn) {
        Set<InterfaceC1891Sn> set = this.A04.get(str);
        if (set == null || !set.remove(interfaceC1891Sn)) {
            return;
        }
        this.A00--;
    }

    /* JADX WARN: Code duplicated, block: B:46:0x0082 A[Catch: all -> 0x009f, TRY_LEAVE, TryCatch #3 {all -> 0x009f, blocks: (B:41:0x0078, B:44:0x007e, B:46:0x0082), top: B:56:0x0078 }] */
    private void A0C(boolean z, C2001Xc c2001Xc, EnumC2006Xh enumC2006Xh, String str, InterfaceC1891Sn interfaceC1891Sn) {
        if (A0I(z, c2001Xc) && A0G(str, c2001Xc)) {
            boolean z2 = true;
            synchronized (this) {
                if (this.A00 < c2001Xc.A07) {
                    Set<InterfaceC1891Sn> setA06 = this.A04.get(str);
                    if (setA06 == null) {
                        setA06 = A06();
                        this.A04.put(str, setA06);
                    }
                    if (setA06.contains(interfaceC1891Sn)) {
                        z2 = false;
                    } else if (((z && c2001Xc.A0T) || (!z && c2001Xc.A0R)) && setA06.size() < c2001Xc.A06) {
                        setA06.add(interfaceC1891Sn);
                        this.A00++;
                        z2 = false;
                    }
                }
                if (!z2) {
                    try {
                        try {
                            this.A05 = SystemClock.elapsedRealtime();
                            interfaceC1891Sn.reset();
                            A03().A09(enumC2006Xh, interfaceC1891Sn.hashCode());
                            this.A05 = -1L;
                            return;
                        } catch (IllegalStateException unused) {
                            A0B(str, interfaceC1891Sn);
                            this.A05 = -1L;
                            if (c2001Xc.A0Y) {
                                interfaceC1891Sn.stop();
                            } else {
                                interfaceC1891Sn.stop();
                            }
                        }
                    } catch (Throwable th) {
                        this.A05 = -1L;
                        throw th;
                    }
                }
            }
        }
        try {
            if (c2001Xc.A0Y || (!z && !c2001Xc.A0X)) {
                interfaceC1891Sn.stop();
            }
        } finally {
            A03().A08(enumC2006Xh, interfaceC1891Sn.hashCode());
            interfaceC1891Sn.AIp();
            A03().A07(enumC2006Xh, interfaceC1891Sn.hashCode());
        }
    }

    public static boolean A0E(String str) {
        return str.equals(A05(0, 22, 127));
    }

    public static boolean A0G(String str, C2001Xc c2001Xc) {
        if (!A0E(str)) {
            return true;
        }
        boolean z = c2001Xc.A0D;
        if (A07[5].length() != 23) {
            throw new RuntimeException();
        }
        A07[5] = "nwAzwGEiO0ZIWdxLaYMsKGp";
        return !z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A0I(boolean z, C2001Xc c2001Xc) {
        if (c2001Xc.A0F && this.A05 != -1) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j = this.A05;
            String[] strArr = A07;
            if (strArr[3].length() == strArr[1].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A07;
            strArr2[3] = "0y00mGdSc";
            strArr2[1] = "YbKfGYgoQHCL7FNckkRcEOTrXyIiST7";
            if (jElapsedRealtime - j > 5000) {
                return false;
            }
        }
        return A0J(z, c2001Xc);
    }

    public static boolean A0J(boolean z, C2001Xc c2001Xc) {
        return (z && c2001Xc.A0T) || (!z && c2001Xc.A0R);
    }

    public final InterfaceC1891Sn A0K(boolean z, C2001Xc c2001Xc, AbstractC2005Xg abstractC2005Xg, EnumC2006Xh enumC2006Xh, String str) throws C2008Xj {
        A09(abstractC2005Xg);
        A0A(c2001Xc);
        return c2001Xc.A0O ? this.A03.A02(z, c2001Xc, enumC2006Xh, str) : A01(z, c2001Xc, enumC2006Xh, str);
    }

    public final void A0L(boolean z, C2001Xc c2001Xc, AbstractC2005Xg abstractC2005Xg, EnumC2006Xh enumC2006Xh, String str, InterfaceC1891Sn interfaceC1891Sn) throws Throwable {
        A09(abstractC2005Xg);
        if (c2001Xc.A0O) {
            this.A03.A0A(z, c2001Xc, enumC2006Xh, str, interfaceC1891Sn);
        } else {
            A0C(z, c2001Xc, enumC2006Xh, str, interfaceC1891Sn);
        }
    }
}
