package kotlin;

import com.google.android.gms.nearby.uwb.RangingPosition;
import com.google.common.base.Ascii;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class my {
    private static volatile int g = 100;
    int a;
    int b;
    int c;
    int d;
    Object e;
    private boolean f;

    public static final class a extends my {
        private final byte[] h;
        private final int i;
        private final boolean j;
        private int k;
        private int l;
        private int m;
        private int n;
        private boolean o;
        private int p;

        private a(byte[] bArr, int i, int i2, boolean z) {
            super();
            this.p = Integer.MAX_VALUE;
            this.h = bArr;
            int i3 = i2 + i;
            this.i = i3;
            this.k = i3;
            this.l = i;
            this.m = i;
            this.j = z;
        }

        /* JADX WARN: Code duplicated, block: B:31:0x006b A[PHI: r3
  0x006b: PHI (r3v6 int) = (r3v5 int), (r3v10 int), (r3v12 int) binds: [B:16:0x0041, B:20:0x004d, B:24:0x0059] A[DONT_GENERATE, DONT_INLINE]] */
        private int E() throws IOException {
            int i = this.l;
            byte[] bArr = this.h;
            int i2 = i + 1;
            int i3 = bArr[i];
            if (i3 < 0) {
                int i4 = i + 2;
                int i5 = (bArr[i2] << 7) ^ i3;
                if (i5 < 0) {
                    i3 = (i5 == true ? 1 : 0) ^ RangingPosition.RSSI_UNKNOWN;
                } else {
                    int i6 = i + 3;
                    int i7 = (i5 == true ? 1 : 0) ^ (bArr[i4] << 14);
                    if (i7 >= 0) {
                        int i8 = i7 ^ 16256;
                        i2 = i6;
                        i3 = i8;
                    } else {
                        i4 = i + 4;
                        int i9 = i7 ^ (bArr[i6] << 21);
                        if (i9 < 0) {
                            i3 = i9 ^ (-2080896);
                        } else {
                            int i10 = i + 5;
                            int i11 = bArr[i4];
                            int i12 = (i9 ^ (i11 << 28)) ^ 266354560;
                            if (i11 < 0) {
                                i4 = i + 6;
                                if (bArr[i10] < 0) {
                                    i10 = i + 7;
                                    if (bArr[i4] < 0) {
                                        i4 = i + 8;
                                        if (bArr[i10] < 0) {
                                            i10 = i + 9;
                                            if (bArr[i4] < 0) {
                                                int i13 = i + 10;
                                                if (bArr[i10] < 0) {
                                                    throw np1.f();
                                                }
                                                i3 = i12;
                                                i2 = i13;
                                            } else {
                                                int i14 = i10;
                                                i3 = i12;
                                                i2 = i14;
                                            }
                                        }
                                    } else {
                                        int i15 = i10;
                                        i3 = i12;
                                        i2 = i15;
                                    }
                                }
                                i3 = i12;
                            } else {
                                int i16 = i10;
                                i3 = i12;
                                i2 = i16;
                            }
                        }
                    }
                }
                i2 = i4;
            }
            this.l = i2;
            return i3;
        }

        private void H() throws IOException {
            if (this.k - this.l >= 10) {
                I();
            } else {
                J();
            }
        }

        private void I() throws IOException {
            for (int i = 0; i < 10; i++) {
                byte[] bArr = this.h;
                int i2 = this.l;
                this.l = i2 + 1;
                if (bArr[i2] >= 0) {
                    return;
                }
            }
            throw np1.f();
        }

        private void J() throws IOException {
            for (int i = 0; i < 10; i++) {
                if (B() >= 0) {
                    return;
                }
            }
            throw np1.f();
        }

        private du b(boolean z) throws IOException {
            int iQ = q();
            if (iQ > 0) {
                int i = this.k;
                int i2 = this.l;
                if (iQ <= i - i2) {
                    du duVarB = (this.j && this.o) ? du.b(this.h, i2, iQ, z) : du.a(this.h, i2, iQ, z);
                    this.l += iQ;
                    return duVarB;
                }
            }
            return iQ == 0 ? du.b : du.a(h(iQ), z);
        }

        private void i(int i) {
            this.p = i;
            int i2 = this.i;
            if (i <= i2) {
                this.k = i;
            } else {
                this.k = i2;
            }
        }

        public byte B() throws IOException {
            int i = this.l;
            if (i == this.k) {
                throw np1.l();
            }
            byte[] bArr = this.h;
            this.l = i + 1;
            return bArr[i];
        }

        public int C() throws IOException {
            int i = this.l;
            if (this.k - i < 4) {
                throw np1.l();
            }
            byte[] bArr = this.h;
            this.l = i + 4;
            return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
        }

        public long D() throws IOException {
            int i = this.l;
            if (this.k - i < 8) {
                throw np1.l();
            }
            byte[] bArr = this.h;
            this.l = i + 8;
            return ((((long) bArr[i + 7]) & 255) << 56) | (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48);
        }

        public long F() throws IOException {
            long j;
            long j2;
            long j3;
            int i = this.l;
            int i2 = this.k;
            if (i2 != i) {
                byte[] bArr = this.h;
                int i3 = i + 1;
                byte b = bArr[i];
                if (b >= 0) {
                    this.l = i3;
                    return b;
                }
                if (i2 - i3 >= 9) {
                    int i4 = i + 2;
                    int i5 = (bArr[i3] << 7) ^ b;
                    if (i5 < 0) {
                        j = i5 ^ RangingPosition.RSSI_UNKNOWN;
                    } else {
                        int i6 = i + 3;
                        int i7 = (bArr[i4] << Ascii.SO) ^ i5;
                        if (i7 >= 0) {
                            j = i7 ^ 16256;
                            i4 = i6;
                        } else {
                            int i8 = i + 4;
                            int i9 = i7 ^ (bArr[i6] << Ascii.NAK);
                            if (i9 < 0) {
                                long j4 = (-2080896) ^ i9;
                                i4 = i8;
                                j = j4;
                            } else {
                                long j5 = i9;
                                i4 = i + 5;
                                long j6 = j5 ^ (((long) bArr[i8]) << 28);
                                if (j6 >= 0) {
                                    j2 = 266354560;
                                } else {
                                    int i10 = i + 6;
                                    long j7 = j6 ^ (((long) bArr[i4]) << 35);
                                    if (j7 < 0) {
                                        j3 = -34093383808L;
                                    } else {
                                        i4 = i + 7;
                                        j6 = j7 ^ (((long) bArr[i10]) << 42);
                                        if (j6 >= 0) {
                                            j2 = 4363953127296L;
                                        } else {
                                            i10 = i + 8;
                                            j7 = j6 ^ (((long) bArr[i4]) << 49);
                                            if (j7 < 0) {
                                                j3 = -558586000294016L;
                                            } else {
                                                i4 = i + 9;
                                                j6 = j7 ^ (((long) bArr[i10]) << 56);
                                                if (j6 >= 0) {
                                                    j2 = 71499008037633920L;
                                                } else {
                                                    byte b2 = bArr[i4];
                                                    long j8 = j6 ^ (((long) b2) << 63);
                                                    if (j8 >= 0) {
                                                        int i11 = i + 10;
                                                        if (b2 >= 0) {
                                                            j = j8 ^ (-9151873028817141888L);
                                                            i4 = i11;
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    j = j7 ^ j3;
                                    i4 = i10;
                                }
                                j = j6 ^ j2;
                            }
                        }
                    }
                    this.l = i4;
                    return j;
                }
            }
            return G();
        }

        public long G() throws IOException {
            long j = 0;
            for (int i = 0; i < 64; i += 7) {
                byte B = B();
                j |= ((long) (B & 127)) << i;
                if ((B & 128) == 0) {
                    return j;
                }
            }
            throw np1.f();
        }

        @Override // kotlin.my
        public void a(int i) throws np1 {
            if (this.n != i) {
                throw np1.b();
            }
        }

        @Override // kotlin.my
        public void a(boolean z) {
            this.o = z;
        }

        @Override // kotlin.my
        public int c() {
            int i = this.p;
            if (i == Integer.MAX_VALUE) {
                return -1;
            }
            return i - this.l;
        }

        @Override // kotlin.my
        public void c(int i) {
            i(i);
        }

        @Override // kotlin.my
        public int e() {
            return this.l - this.m;
        }

        @Override // kotlin.my
        public int e(int i) throws np1 {
            if (i < 0) {
                throw np1.g();
            }
            int i2 = this.l;
            int i3 = i2 + i;
            if (i3 < 0) {
                i3 = Integer.MAX_VALUE;
                if (i > Integer.MAX_VALUE - (i2 - this.m)) {
                    throw np1.k();
                }
            }
            int i4 = this.p;
            if (i3 > i4) {
                throw np1.l();
            }
            i(i3);
            return i4;
        }

        @Override // kotlin.my
        public boolean f() throws IOException {
            return this.l == this.k;
        }

        @Override // kotlin.my
        public boolean g(int i) throws IOException {
            int iB = u24.b(i);
            if (iB == 0) {
                H();
                return true;
            }
            if (iB == 1) {
                j(8);
                return true;
            }
            if (iB == 2) {
                j(q());
                return true;
            }
            if (iB == 3) {
                A();
                a(u24.a(u24.a(i), 4));
                return true;
            }
            if (iB == 4) {
                b();
                return false;
            }
            if (iB != 5) {
                throw np1.e();
            }
            j(4);
            return true;
        }

        @Override // kotlin.my
        public boolean h() throws IOException {
            return F() != 0;
        }

        public byte[] h(int i) throws IOException {
            if (i > 0) {
                int i2 = this.k;
                int i3 = this.l;
                if (i <= i2 - i3) {
                    int i4 = i + i3;
                    this.l = i4;
                    return Arrays.copyOfRange(this.h, i3, i4);
                }
            }
            if (i > 0) {
                throw np1.l();
            }
            if (i == 0) {
                return yh1.a;
            }
            throw np1.g();
        }

        @Override // kotlin.my
        public du i() throws IOException {
            return b(false);
        }

        @Override // kotlin.my
        public double j() throws IOException {
            return Double.longBitsToDouble(D());
        }

        public void j(int i) throws IOException {
            if (i >= 0) {
                int i2 = this.k;
                int i3 = this.l;
                if (i <= i2 - i3) {
                    this.l = i3 + i;
                    return;
                }
            }
            if (i >= 0) {
                throw np1.l();
            }
            throw np1.g();
        }

        @Override // kotlin.my
        public int k() throws IOException {
            return q();
        }

        @Override // kotlin.my
        public int l() throws IOException {
            return C();
        }

        @Override // kotlin.my
        public long m() throws IOException {
            return D();
        }

        @Override // kotlin.my
        public float n() throws IOException {
            return Float.intBitsToFloat(C());
        }

        @Override // kotlin.my
        public int o() throws IOException {
            return q();
        }

        @Override // kotlin.my
        public long p() throws IOException {
            return F();
        }

        @Override // kotlin.my
        public int q() throws IOException {
            try {
                int iE = E();
                if (this.l <= this.k) {
                    return iE;
                }
                throw np1.l();
            } catch (np1 e) {
                if (this.l > this.k) {
                    throw np1.l();
                }
                throw e;
            } catch (IndexOutOfBoundsException unused) {
                throw np1.l();
            }
        }

        @Override // kotlin.my
        public int r() throws IOException {
            return C();
        }

        @Override // kotlin.my
        public long s() throws IOException {
            return D();
        }

        @Override // kotlin.my
        public int t() throws IOException {
            return my.b(q());
        }

        @Override // kotlin.my
        public long u() throws IOException {
            return my.a(F());
        }

        @Override // kotlin.my
        public String v() throws IOException {
            int iQ = q();
            if (iQ > 0) {
                int i = this.k;
                int i2 = this.l;
                if (iQ <= i - i2) {
                    String str = new String(this.h, i2, iQ, StandardCharsets.UTF_8);
                    this.l += iQ;
                    return str;
                }
            }
            if (iQ == 0) {
                return "";
            }
            if (iQ < 0) {
                throw np1.g();
            }
            throw np1.l();
        }

        @Override // kotlin.my
        public String w() throws IOException {
            int iQ = q();
            if (iQ > 0) {
                int i = this.k;
                int i2 = this.l;
                if (iQ <= i - i2) {
                    String strA = hx3.a(this.h, i2, iQ);
                    this.l += iQ;
                    return strA;
                }
            }
            if (iQ == 0) {
                return "";
            }
            if (iQ <= 0) {
                throw np1.g();
            }
            throw np1.l();
        }

        @Override // kotlin.my
        public int x() throws IOException {
            if (f()) {
                this.n = 0;
                return 0;
            }
            int iQ = q();
            this.n = iQ;
            if (u24.a(iQ) != 0) {
                return this.n;
            }
            throw np1.c();
        }

        @Override // kotlin.my
        public int y() throws IOException {
            return q();
        }

        @Override // kotlin.my
        public long z() throws IOException {
            return F();
        }
    }

    public static final class b extends my {
        private final InputStream h;
        private final byte[] i;
        private int j;
        private int k;
        private int l;
        private int m;
        private int n;
        private int o;

        private b(InputStream inputStream, int i) {
            super();
            this.o = Integer.MAX_VALUE;
            yh1.a(inputStream, "input");
            i = i < 8 ? 8 : i;
            this.h = inputStream;
            this.i = new byte[i];
            this.j = 0;
            this.l = 0;
            this.n = 0;
        }

        private void G() {
            int i = this.j + this.k;
            this.j = i;
            int i2 = this.n + i;
            int i3 = this.o;
            if (i2 <= i3) {
                this.k = 0;
                return;
            }
            int i4 = i2 - i3;
            this.k = i4;
            this.j = i - i4;
        }

        private void H() throws IOException {
            if (this.j - this.l >= 10) {
                I();
            } else {
                J();
            }
        }

        private void I() throws IOException {
            for (int i = 0; i < 10; i++) {
                byte[] bArr = this.i;
                int i2 = this.l;
                this.l = i2 + 1;
                if (bArr[i2] >= 0) {
                    return;
                }
            }
            throw np1.f();
        }

        private void J() throws IOException {
            for (int i = 0; i < 10; i++) {
                if (B() >= 0) {
                    return;
                }
            }
            throw np1.f();
        }

        private static int a(InputStream inputStream, byte[] bArr, int i, int i2) throws IOException {
            try {
                return inputStream.read(bArr, i, i2);
            } catch (np1 e) {
                e.j();
                throw e;
            }
        }

        private static long a(InputStream inputStream, long j) throws IOException {
            try {
                return inputStream.skip(j);
            } catch (np1 e) {
                e.j();
                throw e;
            }
        }

        private du a(int i, boolean z) throws IOException {
            byte[] bArrH = h(i);
            if (bArrH != null) {
                return du.a(bArrH, 0, bArrH.length, z);
            }
            int i2 = this.l;
            int i3 = this.j;
            int length = i3 - i2;
            this.n += i3;
            this.l = 0;
            this.j = 0;
            List<byte[]> listI = i(i - length);
            byte[] bArr = new byte[i];
            System.arraycopy(this.i, i2, bArr, 0, length);
            for (byte[] bArr2 : listI) {
                System.arraycopy(bArr2, 0, bArr, length, bArr2.length);
                length += bArr2.length;
            }
            if (!z || hx3.a(bArr)) {
                return du.b(bArr);
            }
            throw np1.d();
        }

        private static boolean a(int i, int i2, int i3) {
            return i3 < i || i2 > i3 - i;
        }

        private static int b(InputStream inputStream) throws IOException {
            try {
                return inputStream.available();
            } catch (np1 e) {
                e.j();
                throw e;
            }
        }

        private du b(boolean z) throws IOException {
            int iQ = q();
            int i = this.j;
            int i2 = this.l;
            if (iQ <= i - i2 && iQ > 0) {
                du duVarA = du.a(this.i, i2, iQ, z);
                this.l += iQ;
                return duVarA;
            }
            if (iQ == 0) {
                return du.b;
            }
            if (iQ >= 0) {
                return a(iQ, z);
            }
            throw np1.g();
        }

        private byte[] b(int i, boolean z) throws IOException {
            byte[] bArrH = h(i);
            if (bArrH != null) {
                return z ? (byte[]) bArrH.clone() : bArrH;
            }
            int i2 = this.l;
            int i3 = this.j;
            int length = i3 - i2;
            this.n += i3;
            this.l = 0;
            this.j = 0;
            List<byte[]> listI = i(i - length);
            byte[] bArr = new byte[i];
            System.arraycopy(this.i, i2, bArr, 0, length);
            for (byte[] bArr2 : listI) {
                System.arraycopy(bArr2, 0, bArr, length, bArr2.length);
                length += bArr2.length;
            }
            return bArr;
        }

        private byte[] h(int i) throws IOException {
            if (i == 0) {
                return yh1.a;
            }
            if (i < 0) {
                throw np1.g();
            }
            int i2 = this.n + this.l;
            if (a(i2, i, this.d)) {
                throw np1.k();
            }
            if (a(i2, i, this.o)) {
                int i3 = this.o;
                if (i3 >= i2) {
                    k(i3 - i2);
                }
                throw np1.l();
            }
            int i4 = this.j - this.l;
            int i5 = i - i4;
            if (i5 >= 4096 && i5 > b(this.h)) {
                return null;
            }
            byte[] bArr = new byte[i];
            System.arraycopy(this.i, this.l, bArr, 0, i4);
            this.n += this.j;
            this.l = 0;
            this.j = 0;
            while (i4 < i) {
                int iA = a(this.h, bArr, i4, i - i4);
                if (iA == -1) {
                    throw np1.l();
                }
                this.n += iA;
                i4 += iA;
            }
            return bArr;
        }

        private List<byte[]> i(int i) throws IOException {
            ArrayList arrayList = new ArrayList();
            while (i > 0) {
                int iMin = Math.min(i, 4096);
                byte[] bArr = new byte[iMin];
                int i2 = 0;
                while (i2 < iMin) {
                    int iA = a(this.h, bArr, i2, iMin - i2);
                    if (iA == -1) {
                        throw np1.l();
                    }
                    this.n += iA;
                    i2 += iA;
                }
                i -= iMin;
                arrayList.add(bArr);
            }
            return arrayList;
        }

        private void j(int i) throws IOException {
            if (m(i)) {
                return;
            }
            if (!a(this.n + this.l, i, this.d)) {
                throw np1.l();
            }
            throw np1.k();
        }

        private void l(int i) throws IOException {
            if (i < 0) {
                throw np1.g();
            }
            int i2 = this.n + this.l;
            if (a(i2, i, this.d)) {
                throw np1.k();
            }
            if (a(i2, i, this.o)) {
                int i3 = this.o;
                if (i3 >= i2) {
                    k(i3 - i2);
                }
                throw np1.l();
            }
            int i4 = this.n;
            int i5 = this.l;
            this.n = i4 + i5;
            int i6 = this.j - i5;
            this.j = 0;
            this.l = 0;
            while (i6 < i) {
                try {
                    long j = i - i6;
                    long jA = a(this.h, j);
                    if (jA < 0 || jA > j) {
                        throw new IllegalStateException(String.valueOf(this.h.getClass()) + "#skip returned invalid result: " + jA + "\nThe InputStream implementation is buggy.");
                    }
                    if (jA == 0) {
                        break;
                    } else {
                        i6 += (int) jA;
                    }
                } catch (Throwable th) {
                    this.n += i6;
                    G();
                    throw th;
                }
            }
            this.n += i6;
            G();
            if (i6 >= i) {
                return;
            }
            int i7 = this.j;
            int i8 = i7 - this.l;
            this.l = i7;
            j(1);
            while (true) {
                int i9 = i - i8;
                int i10 = this.j;
                if (i9 <= i10) {
                    this.l = i9;
                    return;
                } else {
                    i8 += i10;
                    this.l = i10;
                    j(1);
                }
            }
        }

        private boolean m(int i) throws IOException {
            int i2 = this.l;
            if (i2 + i <= this.j) {
                throw new IllegalStateException("refillBuffer() called when " + i + " bytes were already available in buffer");
            }
            int i3 = this.n + i2;
            if (a(i3, i, this.d) || a(i3, i, this.o)) {
                return false;
            }
            int i4 = this.l;
            if (i4 > 0) {
                int i5 = this.j;
                if (i5 > i4) {
                    byte[] bArr = this.i;
                    System.arraycopy(bArr, i4, bArr, 0, i5 - i4);
                }
                this.n += i4;
                this.j -= i4;
                this.l = 0;
            }
            while (true) {
                int i6 = this.j;
                if (i6 >= i) {
                    return true;
                }
                int i7 = (this.d - this.n) - i6;
                if (i7 <= 0) {
                    return false;
                }
                int iA = a(this.h, this.i, this.j, Math.min(this.i.length - i6, i7));
                if (iA == 0 || iA < -1 || iA > this.i.length) {
                    throw new IllegalStateException(String.valueOf(this.h.getClass()) + "#read(byte[]) returned invalid result: " + iA + "\nThe InputStream implementation is buggy.");
                }
                if (iA <= 0) {
                    return false;
                }
                this.j += iA;
                G();
            }
        }

        public byte B() throws IOException {
            if (this.l == this.j) {
                j(1);
            }
            byte[] bArr = this.i;
            int i = this.l;
            this.l = i + 1;
            return bArr[i];
        }

        public int C() throws IOException {
            int i = this.l;
            if (this.j - i < 4) {
                j(4);
                i = this.l;
            }
            byte[] bArr = this.i;
            this.l = i + 4;
            return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
        }

        public long D() throws IOException {
            int i = this.l;
            if (this.j - i < 8) {
                j(8);
                i = this.l;
            }
            byte[] bArr = this.i;
            this.l = i + 8;
            return ((((long) bArr[i + 7]) & 255) << 56) | (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48);
        }

        public long E() throws IOException {
            long j;
            long j2;
            long j3;
            int i = this.l;
            int i2 = this.j;
            if (i2 != i) {
                byte[] bArr = this.i;
                int i3 = i + 1;
                byte b = bArr[i];
                if (b >= 0) {
                    this.l = i3;
                    return b;
                }
                if (i2 - i3 >= 9) {
                    int i4 = i + 2;
                    int i5 = (bArr[i3] << 7) ^ b;
                    if (i5 < 0) {
                        j = i5 ^ RangingPosition.RSSI_UNKNOWN;
                    } else {
                        int i6 = i + 3;
                        int i7 = (bArr[i4] << Ascii.SO) ^ i5;
                        if (i7 >= 0) {
                            j = i7 ^ 16256;
                            i4 = i6;
                        } else {
                            int i8 = i + 4;
                            int i9 = i7 ^ (bArr[i6] << Ascii.NAK);
                            if (i9 < 0) {
                                long j4 = (-2080896) ^ i9;
                                i4 = i8;
                                j = j4;
                            } else {
                                long j5 = i9;
                                i4 = i + 5;
                                long j6 = j5 ^ (((long) bArr[i8]) << 28);
                                if (j6 >= 0) {
                                    j2 = 266354560;
                                } else {
                                    int i10 = i + 6;
                                    long j7 = j6 ^ (((long) bArr[i4]) << 35);
                                    if (j7 < 0) {
                                        j3 = -34093383808L;
                                    } else {
                                        i4 = i + 7;
                                        j6 = j7 ^ (((long) bArr[i10]) << 42);
                                        if (j6 >= 0) {
                                            j2 = 4363953127296L;
                                        } else {
                                            i10 = i + 8;
                                            j7 = j6 ^ (((long) bArr[i4]) << 49);
                                            if (j7 < 0) {
                                                j3 = -558586000294016L;
                                            } else {
                                                i4 = i + 9;
                                                j6 = j7 ^ (((long) bArr[i10]) << 56);
                                                if (j6 >= 0) {
                                                    j2 = 71499008037633920L;
                                                } else {
                                                    byte b2 = bArr[i4];
                                                    long j8 = j6 ^ (((long) b2) << 63);
                                                    if (j8 >= 0) {
                                                        int i11 = i + 10;
                                                        if (b2 >= 0) {
                                                            j = j8 ^ (-9151873028817141888L);
                                                            i4 = i11;
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    j = j7 ^ j3;
                                    i4 = i10;
                                }
                                j = j6 ^ j2;
                            }
                        }
                    }
                    this.l = i4;
                    return j;
                }
            }
            return F();
        }

        public long F() throws IOException {
            long j = 0;
            for (int i = 0; i < 64; i += 7) {
                byte B = B();
                j |= ((long) (B & 127)) << i;
                if ((B & 128) == 0) {
                    return j;
                }
            }
            throw np1.f();
        }

        @Override // kotlin.my
        public void a(int i) throws np1 {
            if (this.m != i) {
                throw np1.b();
            }
        }

        @Override // kotlin.my
        public void a(boolean z) {
        }

        @Override // kotlin.my
        public int c() {
            int i = this.o;
            if (i == Integer.MAX_VALUE) {
                return -1;
            }
            return i - (this.n + this.l);
        }

        @Override // kotlin.my
        public void c(int i) {
            this.o = i;
            G();
        }

        @Override // kotlin.my
        public int e() {
            return this.n + this.l;
        }

        @Override // kotlin.my
        public int e(int i) throws np1 {
            if (i < 0) {
                throw np1.g();
            }
            int i2 = this.n + this.l;
            if (i > Integer.MAX_VALUE - i2) {
                throw np1.k();
            }
            if (a(i2, i, this.o)) {
                throw np1.l();
            }
            int i3 = this.o;
            this.o = i2 + i;
            G();
            return i3;
        }

        @Override // kotlin.my
        public boolean f() throws IOException {
            return this.l == this.j && !m(1);
        }

        @Override // kotlin.my
        public boolean g(int i) throws IOException {
            int iB = u24.b(i);
            if (iB == 0) {
                H();
                return true;
            }
            if (iB == 1) {
                k(8);
                return true;
            }
            if (iB == 2) {
                k(q());
                return true;
            }
            if (iB == 3) {
                A();
                a(u24.a(u24.a(i), 4));
                return true;
            }
            if (iB == 4) {
                b();
                return false;
            }
            if (iB != 5) {
                throw np1.e();
            }
            k(4);
            return true;
        }

        @Override // kotlin.my
        public boolean h() throws IOException {
            return E() != 0;
        }

        @Override // kotlin.my
        public du i() throws IOException {
            return b(false);
        }

        @Override // kotlin.my
        public double j() throws IOException {
            return Double.longBitsToDouble(D());
        }

        @Override // kotlin.my
        public int k() throws IOException {
            return q();
        }

        public void k(int i) throws IOException {
            int i2 = this.j;
            int i3 = this.l;
            if (i > i2 - i3 || i < 0) {
                l(i);
            } else {
                this.l = i3 + i;
            }
        }

        @Override // kotlin.my
        public int l() throws IOException {
            return C();
        }

        @Override // kotlin.my
        public long m() throws IOException {
            return D();
        }

        @Override // kotlin.my
        public float n() throws IOException {
            return Float.intBitsToFloat(C());
        }

        @Override // kotlin.my
        public int o() throws IOException {
            return q();
        }

        @Override // kotlin.my
        public long p() throws IOException {
            return E();
        }

        /* JADX WARN: Code duplicated, block: B:37:0x0073 A[PHI: r3
  0x0073: PHI (r3v7 int) = (r3v6 int), (r3v9 int) binds: [B:25:0x0051, B:29:0x005d] A[DONT_GENERATE, DONT_INLINE]] */
        @Override // kotlin.my
        public int q() throws IOException {
            int i;
            int i2 = this.l;
            int i3 = this.j;
            if (i3 != i2) {
                byte[] bArr = this.i;
                int i4 = i2 + 1;
                byte b = bArr[i2];
                if (b >= 0) {
                    this.l = i4;
                    return b;
                }
                if (i3 - i4 >= 9) {
                    int i5 = i2 + 2;
                    int i6 = (bArr[i4] << 7) ^ b;
                    if (i6 < 0) {
                        i = i6 ^ RangingPosition.RSSI_UNKNOWN;
                    } else {
                        int i7 = i2 + 3;
                        int i8 = (bArr[i5] << Ascii.SO) ^ i6;
                        if (i8 >= 0) {
                            i = i8 ^ 16256;
                        } else {
                            int i9 = i2 + 4;
                            int i10 = i8 ^ (bArr[i7] << Ascii.NAK);
                            if (i10 < 0) {
                                i = (-2080896) ^ i10;
                                i5 = i9;
                            } else {
                                i7 = i2 + 5;
                                byte b2 = bArr[i9];
                                int i11 = (i10 ^ (b2 << Ascii.FS)) ^ 266354560;
                                if (b2 < 0) {
                                    int i12 = i2 + 6;
                                    if (bArr[i7] < 0) {
                                        i7 = i2 + 7;
                                        if (bArr[i12] < 0) {
                                            i12 = i2 + 8;
                                            if (bArr[i7] < 0) {
                                                i7 = i2 + 9;
                                                if (bArr[i12] < 0) {
                                                    int i13 = i2 + 10;
                                                    if (bArr[i7] >= 0) {
                                                        i7 = i13;
                                                    }
                                                }
                                            } else {
                                                i7 = i12;
                                            }
                                        }
                                    } else {
                                        i7 = i12;
                                    }
                                }
                                i = i11;
                            }
                        }
                        i5 = i7;
                    }
                    this.l = i5;
                    return i;
                }
            }
            return (int) F();
        }

        @Override // kotlin.my
        public int r() throws IOException {
            return C();
        }

        @Override // kotlin.my
        public long s() throws IOException {
            return D();
        }

        @Override // kotlin.my
        public int t() throws IOException {
            return my.b(q());
        }

        @Override // kotlin.my
        public long u() throws IOException {
            return my.a(E());
        }

        @Override // kotlin.my
        public String v() throws IOException {
            int iQ = q();
            if (iQ > 0) {
                int i = this.j;
                int i2 = this.l;
                if (iQ <= i - i2) {
                    String str = new String(this.i, i2, iQ, StandardCharsets.UTF_8);
                    this.l += iQ;
                    return str;
                }
            }
            if (iQ == 0) {
                return "";
            }
            if (iQ < 0) {
                throw np1.g();
            }
            if (iQ > this.j) {
                return new String(b(iQ, false), StandardCharsets.UTF_8);
            }
            j(iQ);
            String str2 = new String(this.i, this.l, iQ, StandardCharsets.UTF_8);
            this.l += iQ;
            return str2;
        }

        @Override // kotlin.my
        public String w() throws IOException {
            byte[] bArrB;
            int iQ = q();
            int i = this.l;
            int i2 = this.j;
            if (iQ <= i2 - i && iQ > 0) {
                bArrB = this.i;
                this.l = i + iQ;
            } else {
                if (iQ == 0) {
                    return "";
                }
                if (iQ < 0) {
                    throw np1.g();
                }
                i = 0;
                if (iQ <= i2) {
                    j(iQ);
                    bArrB = this.i;
                    this.l = iQ;
                } else {
                    bArrB = b(iQ, false);
                }
            }
            return hx3.a(bArrB, i, iQ);
        }

        @Override // kotlin.my
        public int x() throws IOException {
            if (f()) {
                this.m = 0;
                return 0;
            }
            int iQ = q();
            this.m = iQ;
            if (u24.a(iQ) != 0) {
                return this.m;
            }
            throw np1.c();
        }

        @Override // kotlin.my
        public int y() throws IOException {
            return q();
        }

        @Override // kotlin.my
        public long z() throws IOException {
            return E();
        }
    }

    private my() {
        this.c = g;
        this.d = Integer.MAX_VALUE;
        this.f = false;
    }

    public static long a(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    public static my a(InputStream inputStream) {
        return a(inputStream, 4096);
    }

    public static my a(InputStream inputStream, int i) {
        if (i > 0) {
            return inputStream == null ? a(yh1.a) : new b(inputStream, i);
        }
        throw new IllegalArgumentException("bufferSize must be > 0");
    }

    public static my a(Iterable<ByteBuffer> iterable, boolean z) {
        return a(new up1(iterable));
    }

    public static my a(byte[] bArr) {
        return a(bArr, 0, bArr.length);
    }

    public static my a(byte[] bArr, int i, int i2) {
        return a(bArr, i, i2, false);
    }

    public static my a(byte[] bArr, int i, int i2, boolean z) {
        a aVar = new a(bArr, i, i2, z);
        try {
            aVar.e(i2);
            return aVar;
        } catch (np1 e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static int b(int i) {
        return (-(i & 1)) ^ (i >>> 1);
    }

    public void A() throws IOException {
        boolean zG;
        do {
            int iX = x();
            if (iX == 0) {
                return;
            }
            a();
            this.b++;
            zG = g(iX);
            this.b--;
        } while (zG);
    }

    public void a() throws np1 {
        if (this.a + this.b >= this.c) {
            throw np1.i();
        }
    }

    public abstract void a(int i) throws np1;

    public abstract void a(boolean z);

    public void b() throws np1 {
        if (this.b == 0) {
            a(0);
        }
    }

    public abstract int c();

    public abstract void c(int i);

    public final int d() {
        return (this.c - this.a) - this.b;
    }

    public final void d(int i) throws IOException {
        a(0);
        this.a--;
        if (c() != 0) {
            throw np1.l();
        }
        c(i);
    }

    public abstract int e();

    public abstract int e(int i) throws np1;

    public final int f(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Recursion limit cannot be negative: " + i);
        }
        int i2 = this.c;
        this.c = i;
        return i2;
    }

    public abstract boolean f() throws IOException;

    public final int g() throws IOException {
        int iQ = q();
        a();
        int iE = e(iQ);
        this.a++;
        return iE;
    }

    public abstract boolean g(int i) throws IOException;

    public abstract boolean h() throws IOException;

    public abstract du i() throws IOException;

    public abstract double j() throws IOException;

    public abstract int k() throws IOException;

    public abstract int l() throws IOException;

    public abstract long m() throws IOException;

    public abstract float n() throws IOException;

    public abstract int o() throws IOException;

    public abstract long p() throws IOException;

    public abstract int q() throws IOException;

    public abstract int r() throws IOException;

    public abstract long s() throws IOException;

    public abstract int t() throws IOException;

    public abstract long u() throws IOException;

    public abstract String v() throws IOException;

    public abstract String w() throws IOException;

    public abstract int x() throws IOException;

    public abstract int y() throws IOException;

    public abstract long z() throws IOException;
}
