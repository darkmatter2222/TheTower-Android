package com.facebook.ads.redexgen.X;

import java.io.IOException;
import java.io.InterruptedIOException;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.eQ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2346eQ {
    public static String[] A0A = {"t4b1NIYxcZBrapVcjEzL4J0oJeRqrgew", "swfMi0mumkRMNTfN9gjixboFPAbGrR7b", "0NRJscgydOLmxuKxdcXS6qyTWNEVTV2L", "ohQHELtXyKexlFHse2cuWokjw1EsRvOg", "VhJ6SuQTF6tn8wTQKVjWlG8ESzgqX0mL", "t5bqH2QV2Q1caO6B62lIjTzaAwZLEpph", "SmWNgPIgg2cQ4UXWYZ0EUcN61mFZDYar", "fEDmRUEmNCVt0TxVjdiAbAnLVC0eYFcb"};
    public long A00;
    public long A01;
    public long A02;
    public final NX A03;
    public final InterfaceC2331eB A04;
    public final C13927y A05;
    public final InterfaceC2345eP A06;
    public final String A07;
    public final byte[] A08;
    public volatile boolean A09;

    public C2346eQ(C13927y c13927y, NX nx, byte[] bArr, InterfaceC2345eP interfaceC2345eP) {
        this.A05 = c13927y;
        this.A04 = c13927y.A0E();
        this.A03 = nx;
        this.A08 = bArr == null ? new byte[131072] : bArr;
        this.A06 = interfaceC2345eP;
        this.A07 = c13927y.A0F().A5H(nx);
        this.A02 = nx.A04;
    }

    private long A00() {
        if (this.A01 == -1) {
            return -1L;
        }
        return this.A01 - this.A03.A04;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x009c  */
    /* JADX WARN: Code duplicated, block: B:29:0x00a0  */
    private long A01(long j, long j2) throws Throwable {
        boolean z = j + j2 == this.A01 || j2 == -1;
        long jAHv = -1;
        boolean z2 = false;
        if (j2 != -1) {
            try {
                jAHv = this.A05.AHv(this.A03.A04().A04(j).A03(j2).A09());
                z2 = true;
            } catch (IOException unused) {
                NS.A00(this.A05);
            }
        }
        if (!z2) {
            A02();
            NU nuA04 = this.A03.A04().A04(j);
            if (A0A[3].charAt(18) == 'n') {
                throw new RuntimeException();
            }
            String[] strArr = A0A;
            strArr[7] = "lwhQ70maHLBavT5pyDr2TpFeNkUtAbuJ";
            strArr[1] = "CU0hCQJxktl4rTaOrIxtyYkdr1BOY2uo";
            try {
                jAHv = this.A05.AHv(nuA04.A03(-1L).A09());
            } catch (IOException e) {
                NS.A00(this.A05);
                throw e;
            }
        }
        int i = 0;
        String[] strArr2 = A0A;
        if (strArr2[2].charAt(5) != strArr2[6].charAt(5)) {
            A0A[4] = "xTJir3I7BX27771GysfBU4JEyYNpOXNe";
            if (z) {
                if (jAHv != -1) {
                    try {
                        A04(j + jAHv);
                    } catch (IOException e2) {
                        NS.A00(this.A05);
                        throw e2;
                    }
                }
            }
        } else if (z) {
            if (jAHv != -1) {
                A04(j + jAHv);
            }
        }
        int i2 = 0;
        while (i2 != -1) {
            A02();
            i2 = this.A05.read(this.A08, 0, this.A08.length);
            if (i2 != -1) {
                A03(i2);
                i += i2;
            }
        }
        if (z) {
            A04(((long) i) + j);
        }
        this.A05.close();
        return i;
    }

    private void A02() throws InterruptedIOException {
        if (this.A09) {
            throw new InterruptedIOException();
        }
    }

    private void A03(long j) {
        this.A00 += j;
        if (this.A06 != null) {
            this.A06.AGe(A00(), this.A00, j);
        }
    }

    private void A04(long j) {
        if (this.A01 == j) {
            return;
        }
        this.A01 = j;
        if (this.A06 != null) {
            this.A06.AGe(A00(), this.A00, 0L);
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x00ae  */
    public final void A05() throws IOException {
        A02();
        this.A00 = this.A04.A7l(this.A07, this.A03.A04, this.A03.A03);
        if (this.A03.A03 != -1) {
            this.A01 = this.A03.A04 + this.A03.A03;
        } else {
            long jA00 = AbstractC2351eV.A00(this.A04.A83(this.A07));
            if (jA00 == -1) {
                jA00 = -1;
            }
            this.A01 = jA00;
        }
        InterfaceC2345eP interfaceC2345eP = this.A06;
        if (A0A[3].charAt(18) == 'n') {
            throw new RuntimeException();
        }
        String[] strArr = A0A;
        strArr[0] = "TeIFe1Mz8p8maSChOI3PVQ5YMHFhVeuu";
        strArr[5] = "GNyz65g1wLXgaMeobnhvqXqPza21p8BG";
        if (interfaceC2345eP != null) {
            this.A06.AGe(A00(), this.A00, 0L);
        }
        while (true) {
            if (this.A01 != -1 && this.A02 >= this.A01) {
                return;
            }
            A02();
            long jA7m = this.A04.A7m(this.A07, this.A02, this.A01 == -1 ? Long.MAX_VALUE : this.A01 - this.A02);
            if (jA7m > 0) {
                this.A02 += jA7m;
            } else {
                long j = -jA7m;
                String[] strArr2 = A0A;
                if (strArr2[7].charAt(13) != strArr2[1].charAt(13)) {
                    String[] strArr3 = A0A;
                    strArr3[7] = "OyOwyOhE02hOhTM0oEgw0vlySnueffSW";
                    strArr3[1] = "9V8RVoRBqt04lTm22thBpzlD3AnibB1O";
                    if (j == Long.MAX_VALUE) {
                        j = -1;
                    }
                } else {
                    A0A[3] = "vf27TIFB9AGyGOX9zJxRzcpHYFAsHHT1";
                    if (j == Long.MAX_VALUE) {
                        j = -1;
                    }
                }
                this.A02 += A01(this.A02, j);
            }
        }
    }

    public final void A06() {
        this.A09 = true;
    }
}
