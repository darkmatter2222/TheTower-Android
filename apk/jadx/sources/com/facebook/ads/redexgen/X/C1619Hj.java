package com.facebook.ads.redexgen.X;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Hj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1619Hj implements InterfaceC2750l3 {
    public final Map<String, Set<String>> A00 = new HashMap();

    @Override // com.facebook.ads.redexgen.X.InterfaceC2750l3
    public final synchronized void A5Y(String str) {
        this.A00.remove(str);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2750l3
    public final synchronized boolean AB4(String str, String str2) {
        Set<String> set;
        set = this.A00.get(str2);
        return set != null && set.contains(str);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2750l3
    public final synchronized void AKW(String str, String str2) {
        Set<String> hashSet = this.A00.get(str2);
        if (hashSet == null) {
            hashSet = new HashSet<>();
            this.A00.put(str2, hashSet);
        }
        hashSet.add(str);
    }
}
