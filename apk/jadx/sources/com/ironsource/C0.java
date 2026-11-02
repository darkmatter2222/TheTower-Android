package com.ironsource;

import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.Map;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class C0 extends J5 {
    private final C3758p0 a;
    private final C3597g0 b;
    private final String c;

    public C0(C3758p0 adTools, C3597g0 adProperties, String str) {
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(adProperties, "adProperties");
        this.a = adTools;
        this.b = adProperties;
        this.c = str;
    }

    public /* synthetic */ C0(C3758p0 c3758p0, C3597g0 c3597g0, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(c3758p0, c3597g0, (i & 4) != 0 ? null : str);
    }

    @Override // com.ironsource.D0
    public Map<String, Object> a(B0 b0) {
        Map<String, Object> mapA = a(this.b);
        mapA.put(IronSourceConstants.EVENTS_PROVIDER, "Mediation");
        mapA.put("sessionDepth", Integer.valueOf(this.a.g()));
        String str = this.c;
        if (str != null) {
            mapA.put(IronSourceConstants.EVENTS_MEDIATION_LOAD_STRATEGY, str);
        }
        return mapA;
    }
}
