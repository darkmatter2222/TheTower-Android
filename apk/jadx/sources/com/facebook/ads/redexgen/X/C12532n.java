package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.2n, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C12532n<ModelType, StateType> {
    public final ModelType A03;
    public final StateType A04;
    public final String A05;
    public final String A06;
    public List<InterfaceC12592t<ModelType, StateType>> A01 = null;
    public C12512l<?, ?> A00 = C12512l.A0C;
    public boolean A02 = false;

    public C12532n(ModelType modeltype, StateType statetype, String str) {
        this.A03 = modeltype;
        this.A04 = statetype;
        this.A06 = str;
        this.A05 = str;
    }

    public final C12532n<ModelType, StateType> A06(InterfaceC12592t<ModelType, StateType> interfaceC12592t) {
        if (this.A01 == null) {
            this.A01 = new ArrayList();
        }
        this.A01.add(interfaceC12592t);
        return this;
    }

    public final C12512l<ModelType, StateType> A07() {
        return new C12512l<>(this);
    }
}
