package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.res.ColorStateList;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class JT implements InterfaceC2492go {
    private C2493gp A00(InterfaceC2491gn interfaceC2491gn) {
        return (C2493gp) interfaceC2491gn.A7o();
    }

    public final void A01(InterfaceC2491gn interfaceC2491gn) {
        if (!interfaceC2491gn.AA4()) {
            interfaceC2491gn.AL3(0, 0, 0, 0);
            return;
        }
        float fA94 = A94(interfaceC2491gn);
        float fA9U = A9U(interfaceC2491gn);
        int iCeil = (int) Math.ceil(AbstractC2495gr.A00(fA94, fA9U, interfaceC2491gn.A9T()));
        int iCeil2 = (int) Math.ceil(AbstractC2495gr.A01(fA94, fA9U, interfaceC2491gn.A9T()));
        interfaceC2491gn.AL3(iCeil, iCeil2, iCeil, iCeil2);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2492go
    public final ColorStateList A7b(InterfaceC2491gn interfaceC2491gn) {
        return A00(interfaceC2491gn).A05();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2492go
    public final float A8W(InterfaceC2491gn interfaceC2491gn) {
        return interfaceC2491gn.A7p().getElevation();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2492go
    public final float A94(InterfaceC2491gn interfaceC2491gn) {
        return A00(interfaceC2491gn).A03();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2492go
    public final float A9A(InterfaceC2491gn interfaceC2491gn) {
        return A9U(interfaceC2491gn) * 2.0f;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2492go
    public final float A9B(InterfaceC2491gn interfaceC2491gn) {
        return A9U(interfaceC2491gn) * 2.0f;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2492go
    public final float A9U(InterfaceC2491gn interfaceC2491gn) {
        return A00(interfaceC2491gn).A04();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2492go
    public final void AAs() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2492go
    public final void AAu(InterfaceC2491gn interfaceC2491gn, Context context, ColorStateList colorStateList, float f, float f2, float f3) {
        interfaceC2491gn.AKc(new C2493gp(colorStateList, f));
        C2490gm c2490gmA7p = interfaceC2491gn.A7p();
        c2490gmA7p.setClipToOutline(true);
        c2490gmA7p.setElevation(f2);
        AKp(interfaceC2491gn, f3);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2492go
    public final void AEQ(InterfaceC2491gn interfaceC2491gn) {
        AKp(interfaceC2491gn, A94(interfaceC2491gn));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2492go
    public final void AGY(InterfaceC2491gn interfaceC2491gn) {
        AKp(interfaceC2491gn, A94(interfaceC2491gn));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2492go
    public final void AKb(InterfaceC2491gn interfaceC2491gn, ColorStateList colorStateList) {
        A00(interfaceC2491gn).A08(colorStateList);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2492go
    public final void AKh(InterfaceC2491gn interfaceC2491gn, float f) {
        interfaceC2491gn.A7p().setElevation(f);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2492go
    public final void AKp(InterfaceC2491gn interfaceC2491gn, float f) {
        A00(interfaceC2491gn).A07(f, interfaceC2491gn.AA4(), interfaceC2491gn.A9T());
        A01(interfaceC2491gn);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2492go
    public final void AL1(InterfaceC2491gn interfaceC2491gn, float f) {
        A00(interfaceC2491gn).A06(f);
    }
}
