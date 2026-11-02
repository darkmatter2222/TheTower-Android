package com.facebook.ads.redexgen.X;

import com.google.android.gms.nearby.connection.ConnectionsStatusCodes;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.9H, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C9H implements NN {
    public InterfaceC1768Ni A02;
    public InterfaceC1994Wt<String> A03;
    public String A04;
    public boolean A05;
    public boolean A06;
    public final C1763Nd A07 = new C1763Nd();
    public int A00 = ConnectionsStatusCodes.STATUS_NETWORK_NOT_CONNECTED;
    public int A01 = ConnectionsStatusCodes.STATUS_NETWORK_NOT_CONNECTED;

    public final C9H A00(InterfaceC1768Ni interfaceC1768Ni) {
        this.A02 = interfaceC1768Ni;
        return this;
    }

    public final C9H A01(String str) {
        this.A04 = str;
        return this;
    }

    @Override // com.facebook.ads.redexgen.X.NN
    /* JADX INFO: renamed from: A02, reason: merged with bridge method [inline-methods] */
    public final C4L A5r() {
        C4L c4l = new C4L(this.A04, this.A00, this.A01, this.A05, this.A07, this.A03, this.A06);
        if (this.A02 != null) {
            c4l.A4T(this.A02);
        }
        return c4l;
    }
}
