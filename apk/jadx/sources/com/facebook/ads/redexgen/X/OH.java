package com.facebook.ads.redexgen.X;

import android.net.Uri;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import java.util.Map;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class OH implements InterfaceC2043Yv {
    public static byte[] A0C;
    public static String[] A0D = {"F9tU3fP4bS75Ai6N0xcHreCr1t", "e0mcG9nK", "uPW5Tfa1SV", "2zghnPZ5MvpUZv9vym", "bDS3GVUL9EkDIh7pewT1jUPQV6vbxBj8", "SJTtxKjmk6RM84gHd2FPzBanjkvoN1bO", "uq2IBIssOIBH5LGogXLo5bvXyy9LVYIy", "s0E918xjklYSc5ojfCo8j66VkU"};
    public static final InterfaceC2047Yz A0E;
    public int A00;
    public long A01;
    public long A02;
    public InterfaceC2044Yw A03;
    public boolean A04;
    public boolean A05;
    public boolean A06;
    public final int A07;
    public final C1743Mj A08;
    public final C1744Mk A09;
    public final C1744Mk A0A;
    public final OG A0B;

    static {
        A04();
        A0E = new InterfaceC2047Yz() { // from class: com.facebook.ads.redexgen.X.OI
            @Override // com.facebook.ads.redexgen.X.InterfaceC2047Yz
            public final InterfaceC2043Yv[] A5w() {
                return OH.A07();
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC2047Yz
            public final /* synthetic */ InterfaceC2043Yv[] A5x(Uri uri, Map map) {
                return AbstractC2046Yy.A01(this, uri, map);
            }
        };
    }

    public OH() {
        this(0);
    }

    public OH(int i) {
        this.A07 = (i & 2) != 0 ? i | 1 : i;
        this.A0B = new OG(true);
        this.A09 = new C1744Mk(2048);
        this.A00 = -1;
        this.A01 = -1L;
        this.A0A = new C1744Mk(10);
        this.A08 = new C1743Mj(this.A0A.A0l());
    }

    public static int A00(int i, long j) {
        return (int) (((((long) i) * 8) * 1000000) / j);
    }

    private int A01(Q9 q9) throws IOException {
        int i = 0;
        while (true) {
            q9.AI6(this.A0A.A0l(), 0, 10);
            this.A0A.A0f(0);
            if (this.A0A.A0K() != 4801587) {
                break;
            }
            this.A0A.A0g(3);
            int iA0H = this.A0A.A0H();
            i += iA0H + 10;
            q9.A4X(iA0H);
        }
        q9.AK3();
        q9.A4X(i);
        if (this.A01 == -1) {
            this.A01 = i;
        }
        return i;
    }

    private QI A02(long j, boolean z) {
        return new QI(j, this.A01, A00(this.A00, this.A0B.A0J()), this.A00, z);
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0C, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            byte b = (byte) ((bArrCopyOfRange[i4] - i3) - 60);
            if (A0D[4].charAt(0) != 'b') {
                throw new RuntimeException();
            }
            A0D[1] = "uIPObzg7";
            bArrCopyOfRange[i4] = b;
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A0C = new byte[]{-115, -95, -84, -90, -81, -78, -83, -91, -92, 96, -127, -124, -108, -109, 96, -77, -76, -78, -91, -95, -83};
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0045  */
    @RequiresNonNull
    private void A05(long j, boolean z) {
        if (this.A05) {
            return;
        }
        boolean z2 = (this.A07 & 1) != 0 && this.A00 > 0;
        if (z2 && this.A0B.A0J() == -9223372036854775807L && !z) {
            return;
        }
        if (z2) {
            long jA0J = this.A0B.A0J();
            if (A0D[4].charAt(0) != 'b') {
                throw new RuntimeException();
            }
            A0D[2] = "OEHF76Qkx8";
            if (jA0J != -9223372036854775807L) {
                this.A03.AKP(A02(j, (this.A07 & 2) != 0));
            } else {
                this.A03.AKP(new Q4(-9223372036854775807L));
            }
        } else {
            this.A03.AKP(new Q4(-9223372036854775807L));
        }
        this.A05 = true;
    }

    private void A06(Q9 q9) throws IOException {
        int iA04;
        if (this.A04) {
            return;
        }
        this.A00 = -1;
        q9.AK3();
        if (q9.A9Q() == 0) {
            A01(q9);
        }
        int i = 0;
        if (A0D[6].charAt(1) != 'q') {
            throw new RuntimeException();
        }
        A0D[5] = "N5VSOvNSp6UcrBwxQjBkSgFK0Xta8zYN";
        long j = 0;
        do {
            try {
                if (!q9.AI7(this.A0A.A0l(), 0, 2, true)) {
                    break;
                }
                this.A0A.A0f(0);
                if (!OG.A0F(this.A0A.A0M())) {
                    i = 0;
                    break;
                }
                if (!q9.AI7(this.A0A.A0l(), 0, 4, true)) {
                    break;
                }
                this.A08.A08(14);
                iA04 = this.A08.A04(13);
                if (iA04 <= 6) {
                    this.A04 = true;
                    throw L9.A01(A03(0, 21, 4), null);
                }
                j += (long) iA04;
                i++;
                if (i == 1000) {
                    break;
                }
            } catch (EOFException unused) {
            }
        } while (q9.A4Y(iA04 - 6, true));
        q9.AK3();
        if (i > 0) {
            this.A00 = (int) (j / ((long) i));
        } else {
            this.A00 = -1;
        }
        this.A04 = true;
    }

    public static /* synthetic */ InterfaceC2043Yv[] A07() {
        return new InterfaceC2043Yv[]{new OH()};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final void AAq(InterfaceC2044Yw interfaceC2044Yw) {
        this.A03 = interfaceC2044Yw;
        this.A0B.A6B(interfaceC2044Yw, new C2261d2(0, 1));
        interfaceC2044Yw.A6x();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final int AIY(Q9 q9, ZH zh) throws IOException {
        AbstractC1722Ln.A02(this.A03);
        long jA90 = q9.A90();
        if (((this.A07 & 2) == 0 && ((this.A07 & 1) == 0 || jA90 == -1)) ? false : true) {
            A06(q9);
        }
        int i = q9.read(this.A09.A0l(), 0, 2048);
        boolean z = i == -1;
        A05(jA90, z);
        if (z) {
            return -1;
        }
        this.A09.A0f(0);
        this.A09.A0e(i);
        boolean z2 = this.A06;
        if (A0D[1].length() != 8) {
            throw new RuntimeException();
        }
        A0D[6] = "AqaLiJXQzgm3pUXyquw54MLj08tQrNbC";
        if (!z2) {
            this.A0B.AI3(this.A02, 4);
            this.A06 = true;
        }
        this.A0B.A5j(this.A09);
        return 0;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final void AIp() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final void AKO(long j, long j2) {
        this.A06 = false;
        this.A0B.AKN();
        this.A02 = j2;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final boolean ALN(Q9 q9) throws IOException {
        int iA01 = A01(q9);
        int i = iA01;
        int i2 = 0;
        int i3 = 0;
        do {
            q9.AI6(this.A0A.A0l(), 0, 2);
            this.A0A.A0f(0);
            if (OG.A0F(this.A0A.A0M())) {
                i3++;
                if (i3 >= 4 && i2 > 188) {
                    return true;
                }
                q9.AI6(this.A0A.A0l(), 0, 4);
                this.A08.A08(14);
                int iA04 = this.A08.A04(13);
                if (iA04 <= 6) {
                    i3 = 0;
                    i2 = 0;
                    i++;
                    q9.AK3();
                    q9.A4X(i);
                } else {
                    q9.A4X(iA04 - 6);
                    i2 += iA04;
                }
            } else {
                i3 = 0;
                i2 = 0;
                i++;
                q9.AK3();
                q9.A4X(i);
            }
        } while (i - iA01 < 8192);
        return false;
    }
}
