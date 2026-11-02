package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import com.facebook.ads.androidx.media3.common.Timeline;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Rv, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC1873Rv implements InterfaceC1936Uj {
    public Looper A00;
    public Timeline A01;
    public QD A02;
    public final ArrayList<InterfaceC1935Ui> A05 = new ArrayList<>(1);
    public final HashSet<InterfaceC1935Ui> A06 = new HashSet<>(1);
    public final C1947Uu A04 = new C1947Uu();
    public final C1867Rp A03 = new C1867Rp();

    public final QD A00() {
        return (QD) AbstractC1722Ln.A02(this.A02);
    }

    public final C1867Rp A01(C1862Rk c1862Rk) {
        return this.A03.A00(0, c1862Rk);
    }

    public final C1947Uu A02(C1862Rk c1862Rk) {
        return this.A04.A02(0, c1862Rk, 0L);
    }

    public void A03() {
    }

    public void A04() {
    }

    public final void A05(Timeline timeline) {
        this.A01 = timeline;
        Iterator<InterfaceC1935Ui> it = this.A05.iterator();
        while (it.hasNext()) {
            it.next().AH8(this, timeline);
        }
    }

    public final void A06(InterfaceC1935Ui interfaceC1935Ui) {
        boolean z = !this.A06.isEmpty();
        this.A06.remove(interfaceC1935Ui);
        if (z && this.A06.isEmpty()) {
            A03();
        }
    }

    public final void A07(InterfaceC1935Ui interfaceC1935Ui) {
        AbstractC1722Ln.A01(this.A00);
        boolean zIsEmpty = this.A06.isEmpty();
        this.A06.add(interfaceC1935Ui);
        if (zIsEmpty) {
            A04();
        }
    }

    public final void A08(InterfaceC1935Ui interfaceC1935Ui, InterfaceC1768Ni interfaceC1768Ni, QD qd) {
        Looper looperMyLooper = Looper.myLooper();
        AbstractC1722Ln.A07(this.A00 == null || this.A00 == looperMyLooper);
        this.A02 = qd;
        Timeline timeline = this.A01;
        this.A05.add(interfaceC1935Ui);
        if (this.A00 == null) {
            this.A00 = looperMyLooper;
            this.A06.add(interfaceC1935Ui);
            A0A(interfaceC1768Ni);
        } else if (timeline != null) {
            A07(interfaceC1935Ui);
            interfaceC1935Ui.AH8(this, timeline);
        }
    }

    public abstract void A09();

    public abstract void A0A(InterfaceC1768Ni interfaceC1768Ni);

    @Override // com.facebook.ads.redexgen.X.InterfaceC1936Uj
    public final void A4P(Handler handler, InterfaceC1948Uv interfaceC1948Uv) {
        AbstractC1722Ln.A01(handler);
        AbstractC1722Ln.A01(interfaceC1948Uv);
        this.A04.A04(handler, interfaceC1948Uv);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1936Uj
    public final void AIK(InterfaceC1935Ui interfaceC1935Ui, InterfaceC1768Ni interfaceC1768Ni) {
        A08(interfaceC1935Ui, interfaceC1768Ni, QD.A03);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1936Uj
    public final void AIz(InterfaceC1935Ui interfaceC1935Ui) {
        this.A05.remove(interfaceC1935Ui);
        if (!this.A05.isEmpty()) {
            A06(interfaceC1935Ui);
            return;
        }
        this.A00 = null;
        this.A01 = null;
        this.A02 = null;
        this.A06.clear();
        A09();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1936Uj
    public final void AJj(InterfaceC1948Uv interfaceC1948Uv) {
        this.A04.A0D(interfaceC1948Uv);
    }
}
