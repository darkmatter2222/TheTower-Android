package com.facebook.ads.redexgen.X;

import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.fe, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C2421fe extends LinkedHashMap<String, C2420fd> {
    public C2421fe(int i, float f, boolean z) {
        super(i, f, z);
    }

    @Override // java.util.LinkedHashMap
    public final boolean removeEldestEntry(Map.Entry<String, C2420fd> entry) {
        return size() > 10;
    }
}
