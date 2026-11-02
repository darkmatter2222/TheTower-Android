package com.facebook.ads.redexgen.X;

import java.util.LinkedList;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.nr, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2921nr {
    public final InterfaceC2919np A0B;
    public final boolean A0F;
    public final String A0C = C2921nr.class.getSimpleName();
    public final int A07 = 101;
    public final int A0A = 102;
    public final int A08 = 103;
    public final int A03 = 104;
    public final int A09 = 105;
    public final int A02 = kotlin.fh.g1;
    public final int A04 = kotlin.fh.h1;
    public final int A05 = 108;
    public final int A06 = 109;
    public final int A01 = 110;
    public final boolean A0E = false;
    public long A00 = -1;
    public final List<C2920nq> A0D = new LinkedList();

    public C2921nr(C2755lA c2755lA, InterfaceC2919np interfaceC2919np) {
        int iA0D = AbstractC2865mx.A0D(c2755lA);
        if (iA0D < 1) {
            this.A0F = false;
        } else {
            this.A0F = c2755lA.A09().A00() < 1.0d / ((double) iA0D);
        }
        this.A0B = interfaceC2919np;
    }

    private int A00() {
        return this.A0B.A8E();
    }

    private int A01() {
        if (this.A00 > 0) {
            return (int) (System.currentTimeMillis() - this.A00);
        }
        return -1;
    }

    private void A03(C2920nq c2920nq) {
        synchronized (this.A0D) {
            this.A0D.add(c2920nq);
        }
    }

    public final void A04() {
        if (this.A0F) {
            A03(new C2920nq(A01(), 110, A00(), null));
        }
    }

    public final void A05() {
        if (this.A0F) {
            A03(new C2920nq(A01(), kotlin.fh.g1, A00(), null));
        }
    }

    public final void A06() {
        if (this.A0F) {
            A03(new C2920nq(A01(), 104, A00(), null));
        }
    }

    public final void A07() {
        if (this.A0F) {
            A03(new C2920nq(A01(), 109, -1, null));
        }
    }

    public final void A08() {
        if (this.A0F) {
            A03(new C2920nq(A01(), 108, A00(), null));
        }
    }

    public final void A09() {
        if (this.A0F) {
            this.A00 = System.currentTimeMillis();
            A03(new C2920nq(0, 101, -1, null));
        }
    }

    public final void A0A() {
        if (this.A0F) {
            A03(new C2920nq(A01(), 105, A00(), null));
        }
    }

    public final void A0B() {
        if (this.A0F) {
            A03(new C2920nq(A01(), 102, A00(), null));
        }
    }

    public final void A0C(C2755lA c2755lA, String str) {
        if (this.A0F) {
            A03(new C2920nq(A01(), 103, A00(), null));
            ExecutorC3091qh.A06.execute(new RunnableC2918no(this, str, c2755lA));
        }
    }
}
