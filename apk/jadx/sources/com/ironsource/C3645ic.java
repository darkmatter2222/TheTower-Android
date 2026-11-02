package com.ironsource;

import com.ironsource.mediationsdk.IronSource;
import java.util.UUID;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.ic, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3645ic extends C3597g0 {
    public C3645ic() {
        this(C3950z7.a.a(), "", null, 4, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3645ic(UUID adId, String adUnitId, C3717md c3717md) {
        super(IronSource.a.NATIVE_AD, adId, adUnitId, c3717md, null, null, 48, null);
        Intrinsics.checkNotNullParameter(adId, "adId");
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
    }

    public /* synthetic */ C3645ic(UUID uuid, String str, C3717md c3717md, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(uuid, str, (i & 4) != 0 ? null : c3717md);
    }
}
