package com.facebook.ads.redexgen.X;

import com.facebook.ads.redexgen.X.C1776Nq;
import com.facebook.ads.redexgen.X.T1;
import com.facebook.ads.redexgen.X.T2;
import com.google.common.base.Ascii;
import java.util.ArrayDeque;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class T0<I extends T2, O extends T1, E extends C1776Nq> implements InterfaceC1775Np<I, O, E> {
    public static byte[] A0D;
    public static String[] A0E = {"LiMbrZrxgqvrqbbhcxFecVRDGQl0hH56", "CXrJ7Nl2e7W2f6ed8jTwq1UpPKm31Gts", "W1", "bvJgcWNcgq6CFCJh7KPx29P1dH9QLRq7", "MIZEPeQYvyhWZ9LkvvGzioGy", "pettZvx6n2KjMYwnuigGERh0", "aKaVpTy2g7yxz9M5kZakEXjMZxRMe38K", "UhI0y1JQsaMMJodinZvSJKL8t5OGrxZk"};
    public int A00;
    public int A01;
    public int A02;
    public E A03;
    public I A04;
    public boolean A05;
    public boolean A06;
    public final Thread A08;
    public final I[] A0B;
    public final O[] A0C;
    public final Object A07 = new Object();
    public final ArrayDeque<I> A09 = new ArrayDeque<>();
    public final ArrayDeque<O> A0A = new ArrayDeque<>();

    static {
        A0S();
    }

    public T0(I[] iArr, O[] oArr) {
        this.A0B = iArr;
        this.A00 = iArr.length;
        for (int i = 0; i < this.A00; i++) {
            ((I[]) this.A0B)[i] = A0a();
        }
        this.A0C = oArr;
        this.A01 = oArr.length;
        for (int i2 = 0; i2 < this.A01; i2++) {
            ((O[]) this.A0C)[i2] = A0c();
        }
        this.A08 = new C1780Nu(this, A0O(0, 23, 7));
        this.A08.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.InterfaceC1775Np
    /* JADX INFO: renamed from: A0N, reason: merged with bridge method [inline-methods] */
    public final I A6Q() throws C1776Nq {
        I i;
        I i2;
        synchronized (this.A07) {
            A0Q();
            AbstractC1722Ln.A08(this.A04 == null);
            if (this.A00 == 0) {
                i = null;
            } else {
                I[] iArr = this.A0B;
                int i3 = this.A00 - 1;
                this.A00 = i3;
                i = iArr[i3];
            }
            this.A04 = i;
            i2 = this.A04;
        }
        return i2;
    }

    public static String A0O(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0D, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 33);
        }
        return new String(bArrCopyOfRange);
    }

    private void A0P() {
        if (A0W()) {
            this.A07.notify();
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: E extends com.facebook.ads.redexgen.X.Nq */
    private void A0Q() throws C1776Nq, E {
        E e = this.A03;
        if (e != null) {
            throw e;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0R() {
        do {
            try {
            } catch (InterruptedException e) {
                throw new IllegalStateException(e);
            }
        } while (A0X());
    }

    public static void A0S() {
        A0D = new byte[]{99, 94, 73, 118, 74, 71, 95, 67, 84, Ascii.FS, 117, 79, 75, 86, 74, 67, 98, 67, 69, 73, 66, 67, 84};
    }

    private void A0T(I i) {
        i.A0A();
        I[] iArr = this.A0B;
        int i2 = this.A00;
        this.A00 = i2 + 1;
        iArr[i2] = i;
    }

    private void A0U(O o) {
        o.A0A();
        O[] oArr = this.A0C;
        int i = this.A01;
        this.A01 = i + 1;
        oArr[i] = o;
    }

    private boolean A0W() {
        return !this.A09.isEmpty() && this.A01 > 0;
    }

    private boolean A0X() throws InterruptedException {
        E e;
        synchronized (this.A07) {
            while (!this.A06 && !A0W()) {
                this.A07.wait();
            }
            if (this.A06) {
                return false;
            }
            I iRemoveFirst = this.A09.removeFirst();
            O[] oArr = this.A0C;
            int i = this.A01 - 1;
            this.A01 = i;
            O o = oArr[i];
            boolean z = this.A05;
            this.A05 = false;
            if (iRemoveFirst.A05()) {
                o.A00(4);
            } else {
                if (iRemoveFirst.A04()) {
                    o.A00(Integer.MIN_VALUE);
                }
                if (iRemoveFirst.A06()) {
                    o.A00(134217728);
                }
                try {
                    e = (E) A0Y(iRemoveFirst, o, z);
                } catch (OutOfMemoryError e2) {
                    e = (E) A0Z(e2);
                } catch (RuntimeException e3) {
                    e = (E) A0Z(e3);
                }
                if (e != null) {
                    synchronized (this.A07) {
                        this.A03 = e;
                    }
                    return false;
                }
            }
            synchronized (this.A07) {
                if (this.A05) {
                    o.A0B();
                } else if (o.A04()) {
                    this.A02++;
                    o.A0B();
                } else {
                    o.A00 = this.A02;
                    this.A02 = 0;
                    this.A0A.addLast(o);
                }
                A0T(iRemoveFirst);
            }
            return true;
        }
    }

    public abstract E A0Y(I i, O o, boolean z);

    public abstract E A0Z(Throwable th);

    public abstract I A0a();

    @Override // com.facebook.ads.redexgen.X.InterfaceC1775Np
    /* JADX INFO: renamed from: A0b, reason: merged with bridge method [inline-methods] */
    public final O A6S() throws C1776Nq {
        synchronized (this.A07) {
            A0Q();
            if (this.A0A.isEmpty()) {
                return null;
            }
            return this.A0A.removeFirst();
        }
    }

    public abstract O A0c();

    public final void A0d(int i) {
        AbstractC1722Ln.A08(this.A00 == this.A0B.length);
        I[] iArr = this.A0B;
        String[] strArr = A0E;
        if (strArr[7].charAt(15) == strArr[3].charAt(15)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0E;
        strArr2[7] = "G5wcfQu8CQyAgdnQ0nJ39YTIdqDVR8Fl";
        strArr2[3] = "yfiizmEB7eKXM6IZdGu4FnKopr0Pba24";
        for (I i2 : iArr) {
            i2.A0C(i);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1775Np
    /* JADX INFO: renamed from: A0e, reason: merged with bridge method [inline-methods] */
    public final void AIW(I i) throws C1776Nq {
        synchronized (this.A07) {
            A0Q();
            AbstractC1722Ln.A07(i == this.A04);
            this.A09.addLast(i);
            A0P();
            this.A04 = null;
        }
    }

    public void A0f(O o) {
        synchronized (this.A07) {
            A0U(o);
            A0P();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1775Np
    public final void AIp() {
        synchronized (this.A07) {
            this.A06 = true;
            this.A07.notify();
        }
        try {
            this.A08.join();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1775Np
    public final void flush() {
        synchronized (this.A07) {
            this.A05 = true;
            this.A02 = 0;
            if (this.A04 != null) {
                A0T(this.A04);
                this.A04 = null;
            }
            while (!this.A09.isEmpty()) {
                A0T(this.A09.removeFirst());
            }
            while (!this.A0A.isEmpty()) {
                this.A0A.removeFirst().A0B();
            }
        }
    }
}
