package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.ContextWrapper;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.lA, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C2755lA extends ContextWrapper {
    public final InterfaceC2757lC A00;
    public final AtomicReference<String> A01;

    public C2755lA(Context context, InterfaceC2757lC interfaceC2757lC) {
        super(context.getApplicationContext());
        this.A01 = new AtomicReference<>();
        this.A00 = interfaceC2757lC;
    }

    public final InterfaceC2304dj A00(C2755lA c2755lA) {
        return this.A00.A8n(c2755lA);
    }

    public final InterfaceC2750l3 A01() {
        return this.A00.A7r();
    }

    public final C1617Hh A02() {
        return this.A00.A9c(this);
    }

    public final InterfaceC2756lB A03() {
        return this.A00.A7e(this);
    }

    public final InterfaceC2758lD A04() {
        return this.A00.A8Y(this);
    }

    public final InterfaceC2760lF A05() {
        return this.A00.A9b(this);
    }

    public final InterfaceC2761lG A06() {
        return this.A00.A9s();
    }

    public final InterfaceC2772lR A07() {
        return this.A00.A8M(this);
    }

    public final InterfaceC2785le A08() {
        return this.A00.A8O(this);
    }

    public final C2816mA A09() {
        return this.A00.A9j();
    }

    public final InterfaceC2884nG A0A() {
        return this.A00.A7N(A02());
    }

    public final InterfaceC2896nS A0B() {
        return this.A00.A9d(A02());
    }

    public final String A0C() {
        return this.A01.get();
    }

    public final void A0D(String str) {
        this.A01.set(str);
    }
}
