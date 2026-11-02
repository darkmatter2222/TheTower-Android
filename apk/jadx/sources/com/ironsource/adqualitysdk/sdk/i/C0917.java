package com.ironsource.adqualitysdk.sdk.i;

import com.amazon.device.ads.DTBFetchManager;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.HashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﬥ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0917 extends HashMap implements InterfaceC0513 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0909 f3308;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0943 f3309;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0917(C0909 c0909, HashMap map, C0943 c0943) {
        super(map);
        this.f3308 = c0909;
        this.f3309 = c0943;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        String str = (String) obj;
        DTBFetchManager dTBFetchManager = (DTBFetchManager) obj2;
        this.f3308.m2030(this, this.f3309, StringFog.decrypt("M6WLOfLLY4c6kKce8NpyhD+Quhfa3nDBB4S9\n", "d/HJf5e/AO8=\n"), str, dTBFetchManager);
        return (DTBFetchManager) super.put(str, dTBFetchManager);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0513
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1868() {
        return this;
    }
}
