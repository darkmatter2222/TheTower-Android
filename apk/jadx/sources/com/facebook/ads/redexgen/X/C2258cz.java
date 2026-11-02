package com.facebook.ads.redexgen.X;

import java.util.Collections;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.cz, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2258cz {
    public final int A00;
    public final String A01;
    public final List<C2257cy> A02;
    public final byte[] A03;

    public C2258cz(int i, String str, List<C2257cy> list, byte[] bArr) {
        this.A00 = i;
        this.A01 = str;
        this.A02 = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
        this.A03 = bArr;
    }
}
