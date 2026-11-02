package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Hn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1623Hn extends AbstractRunnableC2979oq {
    public final /* synthetic */ InterfaceC2738kr A00;
    public final /* synthetic */ C2739ks A01;
    public final /* synthetic */ C2746kz A02;
    public final /* synthetic */ ArrayList A03;
    public final /* synthetic */ ArrayList A04;

    public C1623Hn(C2746kz c2746kz, ArrayList arrayList, C2739ks c2739ks, InterfaceC2738kr interfaceC2738kr, ArrayList arrayList2) {
        this.A02 = c2746kz;
        this.A03 = arrayList;
        this.A01 = c2739ks;
        this.A00 = interfaceC2738kr;
        this.A04 = arrayList2;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC2979oq
    public final void A07() {
        AtomicBoolean atomicBooleanA0D = C2746kz.A0D(this.A03);
        if (this.A02.A04 instanceof C1618Hi) {
            C1618Hi c1618Hi = (C1618Hi) this.A02.A04;
            if (this.A01.A00 == -1) {
                if (atomicBooleanA0D.get()) {
                    c1618Hi.A0F().A5L(C3076qS.A01(this.A02.A00));
                } else {
                    c1618Hi.A0F().A5J(C3076qS.A01(this.A02.A00));
                }
            } else if (atomicBooleanA0D.get()) {
                c1618Hi.A0F().A5M(C3076qS.A01(this.A02.A00), this.A01.A00);
            } else {
                c1618Hi.A0F().A5K(C3076qS.A01(this.A02.A00), this.A01.A00);
            }
        }
        this.A02.A02.post(new C1624Ho(this, atomicBooleanA0D));
        C2746kz.A0D(this.A04);
    }
}
