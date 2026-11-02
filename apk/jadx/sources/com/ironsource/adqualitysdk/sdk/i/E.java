package com.ironsource.adqualitysdk.sdk.i;

import com.vungle.warren.model.Placement;
import com.vungle.warren.persistence.Repository;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class E implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ J f96;

    public E(J j) {
        this.f96 = j;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        J j = this.f96;
        Repository repository = (Repository) arrayList.get(0);
        String str = (String) arrayList.get(1);
        j.getClass();
        return (Placement) repository.load(str, Placement.class).get();
    }
}
