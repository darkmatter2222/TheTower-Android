package com.facebook.ads.redexgen.X;

import android.os.ConditionVariable;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.io.File;
import java.io.IOException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableSet;
import java.util.Random;
import java.util.TreeSet;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class MT implements InterfaceC2331eB {
    public static byte[] A0B;
    public static String[] A0C = {"P4GoDyo8E", "A6DXkrBmm", "hwMFNj38hDkKhI5gmmInxb4zKvK6iPJg", "hCXbj8yeB1xowdrvIw6pFyMrsJbhR8sX", "UxtGfejscewAzLAsdw84K1LLDY5kqAZS", "DyPv3MK4pHD8x8WOQmHM2WEhEDh0MGrc", "gxUnNkGGbWBalhDbpu57KEZqBJPU7Klh", "pSHQdznhoeLhkKUUepr8Dnp5QExPGK5S"};
    public static final HashSet<File> A0D;
    public long A00;
    public long A01;
    public C2328e8 A02;
    public boolean A03;
    public final InterfaceC1745Ml A04;
    public final C2337eH A05;
    public final C2350eU A06;
    public final File A07;
    public final HashMap<String, ArrayList<InterfaceC2330eA>> A08;
    public final Random A09;
    public final boolean A0A;

    static {
        A07();
        A0D = new HashSet<>();
    }

    @Deprecated
    public MT(File file, InterfaceC1745Ml interfaceC1745Ml) {
        this(file, interfaceC1745Ml, (byte[]) null, false);
    }

    public MT(File file, InterfaceC1745Ml interfaceC1745Ml, ND nd, byte[] bArr, boolean z, boolean z2) {
        this(file, interfaceC1745Ml, new C2350eU(nd, file, bArr, z, z2), (nd == null || z2) ? null : new C2337eH(nd));
    }

    public MT(File file, InterfaceC1745Ml interfaceC1745Ml, C2350eU c2350eU, C2337eH c2337eH) {
        if (!A0H(file)) {
            throw new IllegalStateException(A04(4, 46, 118) + file);
        }
        this.A07 = file;
        this.A04 = interfaceC1745Ml;
        this.A06 = c2350eU;
        this.A05 = c2337eH;
        this.A08 = new HashMap<>();
        this.A09 = new Random();
        this.A0A = interfaceC1745Ml.AK1();
        this.A01 = -1L;
        ConditionVariable conditionVariable = new ConditionVariable();
        new C2357eb(this, A04(50, 25, 93), conditionVariable).start();
        conditionVariable.block();
    }

    @Deprecated
    public MT(File file, InterfaceC1745Ml interfaceC1745Ml, byte[] bArr, boolean z) {
        this(file, interfaceC1745Ml, null, bArr, z, true);
    }

    public static long A00(File file) throws IOException {
        long jNextLong = new SecureRandom().nextLong();
        long jAbs = jNextLong == Long.MIN_VALUE ? 0L : Math.abs(jNextLong);
        File file2 = new File(file, Long.toString(jAbs, 16) + A04(0, 4, 38));
        if (file2.createNewFile()) {
            return jAbs;
        }
        throw new IOException(A04(75, 27, 39) + file2);
    }

    public static long A01(String str) {
        return Long.parseLong(str.substring(0, str.indexOf(46)), 16);
    }

    public static long A02(File[] fileArr) {
        for (File file : fileArr) {
            String name = file.getName();
            if (name.endsWith(A04(0, 4, 38))) {
                try {
                    return A01(name);
                } catch (NumberFormatException unused) {
                    MV.A05(A04(297, 11, 39), A04(277, 20, 103) + file);
                    file.delete();
                }
            }
        }
        return -1L;
    }

    private MK A03(String str, long j, long j2) {
        MK mkA04;
        C2348eS c2348eSA0C = this.A06.A0C(str);
        if (c2348eSA0C == null) {
            return MK.A03(str, j, j2);
        }
        while (true) {
            mkA04 = c2348eSA0C.A04(j, j2);
            if (!mkA04.A05 || mkA04.A03.length() == mkA04.A01) {
                break;
            }
            A06();
        }
        return mkA04;
    }

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0B, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 119);
        }
        return new String(bArrCopyOfRange);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A05() {
        if (!this.A07.exists()) {
            try {
                A0F(this.A07);
            } catch (C2328e8 e) {
                this.A02 = e;
                return;
            }
        }
        File[] fileArrListFiles = this.A07.listFiles();
        String strA04 = A04(297, 11, 39);
        if (fileArrListFiles == null) {
            String str = A04(200, 38, 105) + this.A07;
            MV.A05(strA04, str);
            this.A02 = new C2328e8(str);
            return;
        }
        this.A01 = A02(fileArrListFiles);
        if (this.A01 == -1) {
            try {
                this.A01 = A00(this.A07);
            } catch (IOException e2) {
                String str2 = A04(102, 28, 65) + this.A07;
                MV.A08(strA04, str2, e2);
                this.A02 = new C2328e8(str2, e2);
                return;
            }
        }
        try {
            this.A06.A0J(this.A01);
            if (this.A05 != null) {
                this.A05.A06(this.A01);
                Map<String, C2336eG> mapA05 = this.A05.A05();
                A0G(this.A07, true, fileArrListFiles, mapA05);
                this.A05.A09(mapA05.keySet());
            } else {
                A0G(this.A07, true, fileArrListFiles, null);
            }
            this.A06.A0H();
            try {
                this.A06.A0I();
            } catch (IOException e3) {
                MV.A08(strA04, A04(308, 25, 5), e3);
            }
        } catch (IOException e4) {
            String str3 = A04(164, 36, 7) + this.A07;
            MV.A08(strA04, str3, e4);
            this.A02 = new C2328e8(str3, e4);
        }
    }

    private void A06() {
        ArrayList arrayList = new ArrayList();
        Iterator<C2348eS> it = this.A06.A0G().iterator();
        while (it.hasNext()) {
            for (MK mk : it.next().A06()) {
                if (A0C[2].charAt(6) != '3') {
                    throw new RuntimeException();
                }
                String[] strArr = A0C;
                strArr[0] = "eawN8WoeO";
                strArr[1] = "IBPata17s";
                MK mk2 = mk;
                if (mk2.A03.length() != mk2.A01) {
                    arrayList.add(mk2);
                }
            }
        }
        for (int i = 0; i < arrayList.size(); i++) {
            A0A((C2341eL) arrayList.get(i));
        }
    }

    public static void A07() {
        A0B = new byte[]{127, 36, 56, 53, SignedBytes.MAX_POWER_OF_TWO, 111, 110, 117, 105, 100, 115, 33, 82, 104, 108, 113, 109, 100, 66, 96, 98, 105, 100, 33, 104, 111, 114, 117, 96, 111, 98, 100, 33, 116, 114, 100, 114, 33, 117, 105, 100, 33, 103, 110, 109, 101, 100, 115, 59, 33, 111, 82, 69, 122, 70, 75, 83, 79, 88, Ascii.DLE, 121, 67, 71, 90, 70, 79, 105, 75, 73, 66, 79, 99, 68, 67, 94, Ascii.SYN, 49, 57, 60, 53, 52, 112, 36, 63, 112, 51, 34, 53, 49, 36, 53, 112, 5, Ascii.EM, Ascii.DC4, 112, 54, 57, 60, 53, 106, 112, 112, 87, 95, 90, 83, 82, Ascii.SYN, 66, 89, Ascii.SYN, 85, 68, 83, 87, 66, 83, Ascii.SYN, 85, 87, 85, 94, 83, Ascii.SYN, 99, 127, 114, Ascii.FF, Ascii.SYN, 43, Ascii.FF, 4, 1, 8, 9, 77, Ascii.EM, 2, 77, Ascii.SO, Ascii.US, 8, Ascii.FF, Ascii.EM, 8, 77, Ascii.SO, Ascii.FF, Ascii.SO, 5, 8, 77, 9, 4, Ascii.US, 8, Ascii.SO, Ascii.EM, 2, Ascii.US, Ascii.DC4, 87, 77, 54, 17, Ascii.EM, Ascii.FS, Ascii.NAK, Ascii.DC4, 80, 4, Ascii.US, 80, Ascii.EM, Ascii.RS, Ascii.EM, 4, Ascii.EM, 17, Ascii.FS, Ascii.EM, 10, Ascii.NAK, 80, 19, 17, 19, Ascii.CAN, Ascii.NAK, 80, Ascii.EM, Ascii.RS, Ascii.DC4, Ascii.EM, 19, Ascii.NAK, 3, 74, 80, 88, 127, 119, 114, 123, 122, 62, 106, 113, 62, 114, 119, 109, 106, 62, 125, 127, 125, 118, 123, 62, 122, 119, 108, 123, 125, 106, 113, 108, 103, 62, 120, 119, 114, 123, 109, 36, 62, 116, 83, 91, 94, 87, 86, Ascii.DC2, 70, 93, Ascii.DC2, SignedBytes.MAX_POWER_OF_TWO, 87, 95, 93, 68, 87, Ascii.DC2, 84, 91, 94, 87, Ascii.DC2, 91, 92, 86, 87, 74, Ascii.DC2, 87, 92, 70, SignedBytes.MAX_POWER_OF_TWO, 75, Ascii.DC2, 84, 93, SignedBytes.MAX_POWER_OF_TWO, 8, Ascii.DC2, 93, 113, 124, 118, 127, 98, 125, 117, 116, 48, 69, 89, 84, 48, 118, 121, 124, 117, 42, 48, 3, 57, Base64.padSymbol, 32, 60, 53, 19, 49, 51, 56, 53, 33, 6, Ascii.GS, 0, Ascii.ESC, Ascii.FS, Ascii.NAK, 82, Ascii.ESC, Ascii.FS, Ascii.SYN, Ascii.ETB, 10, 82, Ascii.DC4, Ascii.ESC, Ascii.RS, Ascii.ETB, 82, Ascii.DC4, 19, Ascii.ESC, Ascii.RS, Ascii.ETB, Ascii.SYN};
    }

    private final synchronized void A08() throws C2328e8 {
        if (this.A02 != null) {
            throw this.A02;
        }
    }

    private void A09(C2341eL c2341eL) {
        ArrayList<InterfaceC2330eA> arrayList = this.A08.get(c2341eL.A04);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).AHA(this, c2341eL);
            }
        }
        this.A04.AHA(this, c2341eL);
    }

    private void A0A(C2341eL c2341eL) {
        C2348eS c2348eSA0C = this.A06.A0C(c2341eL.A04);
        if (c2348eSA0C == null || !c2348eSA0C.A0D(c2341eL)) {
            return;
        }
        this.A00 -= c2341eL.A01;
        if (this.A05 != null) {
            String name = c2341eL.A03.getName();
            try {
                this.A05.A07(name);
            } catch (IOException unused) {
                MV.A07(A04(297, 11, 39), A04(238, 39, 69) + name);
            }
        }
        C2350eU c2350eU = this.A06;
        String str = c2348eSA0C.A02;
        if (A0C[7].charAt(27) != 'P') {
            throw new RuntimeException();
        }
        A0C[7] = "4FBL0ef2jxD9PjGt0TcD7gEGeZLPOBaN";
        c2350eU.A0K(str);
        A09(c2341eL);
    }

    private void A0C(MK mk) {
        this.A06.A0D(mk.A04).A08(mk);
        this.A00 += mk.A01;
        A0D(mk);
    }

    private void A0D(MK mk) {
        ArrayList<InterfaceC2330eA> arrayList = this.A08.get(mk.A04);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).AH9(this, mk);
            }
        }
        InterfaceC1745Ml interfaceC1745Ml = this.A04;
        String[] strArr = A0C;
        if (strArr[3].charAt(25) != strArr[6].charAt(25)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0C;
        strArr2[3] = "z3BmcKNpVL7bPTToNuM3mCqzkJELDM7m";
        strArr2[6] = "DURKtpzSiLeRaXMV7NFaS6Sl3Jus5Q8f";
        interfaceC1745Ml.AH9(this, mk);
    }

    private void A0E(MK mk, C2341eL c2341eL) {
        ArrayList<InterfaceC2330eA> arrayList = this.A08.get(mk.A04);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).AHB(this, mk, c2341eL);
            }
        }
        this.A04.AHB(this, mk, c2341eL);
    }

    public static void A0F(File file) throws C2328e8 {
        if (file.mkdirs() || file.isDirectory()) {
            return;
        }
        String str = A04(130, 34, 26) + file;
        MV.A05(A04(297, 11, 39), str);
        throw new C2328e8(str);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x006d  */
    /* JADX WARN: Code duplicated, block: B:30:0x0076  */
    /* JADX WARN: Code duplicated, block: B:34:0x0094  */
    /* JADX WARN: Code duplicated, block: B:35:0x0096  */
    /* JADX WARN: Code duplicated, block: B:37:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:41:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:42:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:43:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:50:0x008e A[SYNTHETIC] */
    private void A0G(File file, boolean z, File[] fileArr, Map<String, C2336eG> map) {
        long j;
        long j2;
        C2336eG c2336eG;
        MK mkA00;
        String[] strArr;
        C2336eG c2336eGRemove;
        String[] strArr2;
        if (fileArr == null || fileArr.length == 0) {
            if (z) {
                return;
            }
            file.delete();
            return;
        }
        for (File file2 : fileArr) {
            String name = file2.getName();
            if (z && name.indexOf(46) == -1) {
                File[] fileArrListFiles = file2.listFiles();
                if (A0C[4].charAt(5) != 'e') {
                    throw new RuntimeException();
                }
                A0C[5] = "5GN43lgLpMJ0wZmTsy7BOt9jlWzzrA24";
                A0G(file2, false, fileArrListFiles, map);
            } else {
                if (z) {
                    boolean zA0A = C2350eU.A0A(name);
                    if (A0C[7].charAt(27) != 'P') {
                        throw new RuntimeException();
                    }
                    A0C[5] = "Y6vD3WplWD8jLPPaXaYaYAbH0nyrA2FJ";
                    if (!zA0A && !name.endsWith(A04(0, 4, 38))) {
                        j = -1;
                        j2 = -9223372036854775807L;
                        if (map != null) {
                            c2336eGRemove = map.remove(name);
                            strArr2 = A0C;
                            if (strArr2[3].charAt(25) != strArr2[6].charAt(25)) {
                                throw new RuntimeException();
                            }
                            String[] strArr3 = A0C;
                            strArr3[3] = "xEsDck04987zaIJQDaudZGvr9JlJiHGF";
                            strArr3[6] = "2eXbOc7NWcD8gVF03Arr9f8hVJcFB5gE";
                            c2336eG = c2336eGRemove;
                        } else {
                            c2336eG = null;
                        }
                        if (c2336eG != null) {
                            j = c2336eG.A01;
                            j2 = c2336eG.A00;
                            strArr = A0C;
                            if (strArr[3].charAt(25) == strArr[6].charAt(25)) {
                                String[] strArr4 = A0C;
                                strArr4[0] = "BKyA9hBSa";
                                strArr4[1] = "EZwSQvqM4";
                            }
                        }
                        mkA00 = MK.A00(file2, j, j2, this.A06);
                        if (mkA00 != null) {
                            A0C(mkA00);
                        } else {
                            file2.delete();
                        }
                    }
                } else {
                    j = -1;
                    j2 = -9223372036854775807L;
                    if (map != null) {
                        c2336eGRemove = map.remove(name);
                        strArr2 = A0C;
                        if (strArr2[3].charAt(25) != strArr2[6].charAt(25)) {
                            throw new RuntimeException();
                        }
                        String[] strArr5 = A0C;
                        strArr5[3] = "xEsDck04987zaIJQDaudZGvr9JlJiHGF";
                        strArr5[6] = "2eXbOc7NWcD8gVF03Arr9f8hVJcFB5gE";
                        c2336eG = c2336eGRemove;
                    } else {
                        c2336eG = null;
                    }
                    if (c2336eG != null) {
                        j = c2336eG.A01;
                        j2 = c2336eG.A00;
                        strArr = A0C;
                        if (strArr[3].charAt(25) == strArr[6].charAt(25)) {
                            String[] strArr6 = A0C;
                            strArr6[0] = "BKyA9hBSa";
                            strArr6[1] = "EZwSQvqM4";
                        }
                    }
                    mkA00 = MK.A00(file2, j, j2, this.A06);
                    if (mkA00 != null) {
                        A0C(mkA00);
                    } else {
                        file2.delete();
                    }
                }
            }
        }
    }

    public static synchronized boolean A0H(File file) {
        return A0D.add(file.getAbsoluteFile());
    }

    public final synchronized NavigableSet<C2341eL> A0I(String str) {
        C2348eS c2348eSA0C;
        AbstractC1722Ln.A08(!this.A03);
        c2348eSA0C = this.A06.A0C(str);
        return (c2348eSA0C == null || c2348eSA0C.A09()) ? new TreeSet() : new TreeSet((Collection) c2348eSA0C.A06());
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2331eB
    public final synchronized void A4f(String str, C2353eX c2353eX) throws C2328e8 {
        AbstractC1722Ln.A08(!this.A03);
        A08();
        this.A06.A0L(str, c2353eX);
        try {
            this.A06.A0I();
        } catch (IOException e) {
            throw new C2328e8(e);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2331eB
    public final synchronized void A5e(File file, long j) throws C2328e8 {
        AbstractC1722Ln.A08(!this.A03);
        if (file.exists()) {
            if (j == 0) {
                file.delete();
                return;
            }
            MK mk = (MK) AbstractC1722Ln.A01(MK.A01(file, j, this.A06));
            C2348eS c2348eS = (C2348eS) AbstractC1722Ln.A01(this.A06.A0C(mk.A04));
            AbstractC1722Ln.A08(c2348eS.A0B(mk.A02, mk.A01));
            long jA00 = AbstractC2351eV.A00(c2348eS.A03());
            if (jA00 != -1) {
                AbstractC1722Ln.A08(mk.A02 + mk.A01 <= jA00);
            }
            if (this.A05 == null) {
                A0C(mk);
                this.A06.A0I();
                notifyAll();
                return;
            }
            try {
                this.A05.A08(file.getName(), mk.A01, mk.A00);
                A0C(mk);
                try {
                    this.A06.A0I();
                    notifyAll();
                    return;
                } catch (IOException e) {
                    throw new C2328e8(e);
                }
            } catch (IOException e2) {
                throw new C2328e8(e2);
            }
            throw th;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2331eB
    public final synchronized long A7k() {
        AbstractC1722Ln.A08(!this.A03);
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2331eB
    public final synchronized long A7l(String str, long j, long j2) {
        long j3;
        long j4 = j;
        synchronized (this) {
            long j5 = j2 == -1 ? Long.MAX_VALUE : j4 + j2;
            if (j5 < 0) {
                j5 = Long.MAX_VALUE;
            }
            j3 = 0;
            while (j4 < j5) {
                long jA7m = A7m(str, j4, j5 - j4);
                if (jA7m > 0) {
                    j3 += jA7m;
                } else {
                    jA7m = -jA7m;
                }
                j4 += jA7m;
            }
        }
        return j3;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2331eB
    @MetaExoPlayerCustomization
    public final synchronized long A7m(String str, long j, long j2) {
        C2348eS c2348eSA0C;
        AbstractC1722Ln.A08(!this.A03);
        if (j2 == -1) {
            j2 = Long.MAX_VALUE;
        }
        c2348eSA0C = this.A06.A0C(str);
        return c2348eSA0C != null ? c2348eSA0C.A02(j, j2) : -j2;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2331eB
    public final synchronized InterfaceC2352eW A83(String str) {
        AbstractC1722Ln.A08(!this.A03);
        return this.A06.A0E(str);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2331eB
    public final synchronized void AIu(C2341eL c2341eL) {
        AbstractC1722Ln.A08(!this.A03);
        C2348eS c2348eS = (C2348eS) AbstractC1722Ln.A01(this.A06.A0C(c2341eL.A04));
        c2348eS.A07(c2341eL.A02);
        this.A06.A0K(c2348eS.A02);
        notifyAll();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2331eB
    public final synchronized void AJl(String str) {
        AbstractC1722Ln.A08(!this.A03);
        Iterator<C2341eL> it = A0I(str).iterator();
        while (it.hasNext()) {
            A0A(it.next());
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2331eB
    public final synchronized void AJm(C2341eL c2341eL) {
        AbstractC1722Ln.A08(!this.A03);
        A0A(c2341eL);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2331eB
    public final synchronized File ALR(String str, long j, long j2) throws C2328e8 {
        C2348eS c2348eSA0C;
        File file;
        AbstractC1722Ln.A08(!this.A03);
        A08();
        c2348eSA0C = this.A06.A0C(str);
        AbstractC1722Ln.A01(c2348eSA0C);
        AbstractC1722Ln.A08(c2348eSA0C.A0B(j, j2));
        if (!this.A07.exists()) {
            A0F(this.A07);
            A06();
        }
        this.A04.AHC(this, str, j, j2);
        file = new File(this.A07, Integer.toString(this.A09.nextInt(10)));
        if (!file.exists()) {
            A0F(file);
        }
        return MK.A04(file, c2348eSA0C.A01, j, System.currentTimeMillis());
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2331eB
    public final synchronized C2341eL ALT(String str, long j, long j2, EnumC2329e9 enumC2329e9) throws C2328e8, InterruptedException {
        MK mkALU;
        AbstractC1722Ln.A08(!this.A03);
        A08();
        while (true) {
            mkALU = ALU(str, j, j2, enumC2329e9);
            if (mkALU == null) {
                wait();
            }
        }
        return mkALU;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2331eB
    public final synchronized MK ALU(String str, long j, long j2, EnumC2329e9 enumC2329e9) throws C2328e8 {
        AbstractC1722Ln.A08(!this.A03);
        A08();
        MK mkA03 = A03(str, j, j2);
        if (mkA03.A05) {
            MK mkA05 = this.A06.A0C(str).A05(mkA03, mkA03.A00, false);
            A0E(mkA03, mkA05);
            return mkA05;
        }
        if (this.A06.A0D(str).A0C(j, mkA03.A01)) {
            return mkA03;
        }
        return null;
    }
}
