package com.ironsource;

import android.content.Context;
import com.ironsource.mediationsdk.ISBannerSize;
import com.ironsource.mediationsdk.IronSource;
import com.unity3d.mediation.LevelPlayAdSize;
import java.util.List;
import p005kotlin.NoWhenBranchMatchedException;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.math.MathKt;

/* JADX INFO: renamed from: com.ironsource.m0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3704m0 extends C3936yb {
    private final E5 a;
    private final If.b b;
    private final M8 c;

    public C3704m0() {
        IronSource.a aVar = IronSource.a.BANNER;
        this.a = new E5(aVar, E0.b.MEDIATION, null, null, 12, null);
        If.b bVarB = If.b(aVar);
        Intrinsics.checkNotNullExpressionValue(bVarB, "createLogFactory(...)");
        this.b = bVarB;
        this.c = Pb.w.d().f();
    }

    private final ISBannerSize a(LevelPlayAdSize levelPlayAdSize) {
        LevelPlayAdSize fallbackAdSize$mediationsdk_release = levelPlayAdSize.getFallbackAdSize$mediationsdk_release();
        if (fallbackAdSize$mediationsdk_release == null) {
            fallbackAdSize$mediationsdk_release = LevelPlayAdSize.BANNER;
        }
        ISBannerSize iSBannerSizeB = b(fallbackAdSize$mediationsdk_release);
        iSBannerSizeB.setAdaptive(true);
        com.ironsource.mediationsdk.m.a.a(iSBannerSizeB, new Y7(levelPlayAdSize.getWidth(), levelPlayAdSize.getHeight()));
        return iSBannerSizeB;
    }

    public static /* synthetic */ String a(C3704m0 c3704m0, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            str2 = null;
        }
        return c3704m0.a(str, str2);
    }

    private final ISBannerSize c(LevelPlayAdSize levelPlayAdSize) {
        if (Intrinsics.areEqual(levelPlayAdSize, LevelPlayAdSize.LARGE)) {
            return new ISBannerSize("LARGE", levelPlayAdSize.getWidth(), levelPlayAdSize.getHeight());
        }
        if (Intrinsics.areEqual(levelPlayAdSize, LevelPlayAdSize.MEDIUM_RECTANGLE)) {
            return new ISBannerSize("RECTANGLE", levelPlayAdSize.getWidth(), levelPlayAdSize.getHeight());
        }
        if (Intrinsics.areEqual(levelPlayAdSize, LevelPlayAdSize.LEADERBOARD)) {
            return new ISBannerSize("SMART", 0, 0);
        }
        return Intrinsics.areEqual(levelPlayAdSize, LevelPlayAdSize.Companion.createCustomSize(levelPlayAdSize.getWidth(), levelPlayAdSize.getHeight())) ? new ISBannerSize(levelPlayAdSize.getWidth(), levelPlayAdSize.getHeight()) : new ISBannerSize("BANNER", levelPlayAdSize.getWidth(), levelPlayAdSize.getHeight());
    }

    private final Float d() {
        C3456ab c3456abA = this.c.a();
        Float fValueOf = c3456abA != null ? Float.valueOf(c3456abA.k()) : null;
        if (fValueOf != null) {
            return fValueOf;
        }
        this.a.h().f("MaxScreenSizePercentageForBannerHeight is null: Error getting sdk configurations");
        return null;
    }

    public final int a(int i) {
        return com.ironsource.mediationsdk.j.a(i);
    }

    public final String a(String str, String str2) {
        String strA = this.b.a(str, str2);
        Intrinsics.checkNotNullExpressionValue(strA, "createLogMessage(...)");
        return strA;
    }

    public final ISBannerSize b(LevelPlayAdSize size) {
        Intrinsics.checkNotNullParameter(size, "size");
        boolean zIsAdaptive = size.isAdaptive();
        if (zIsAdaptive) {
            return a(size);
        }
        if (zIsAdaptive) {
            throw new NoWhenBranchMatchedException();
        }
        return c(size);
    }

    public final Integer b(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Float fD = d();
        if (fD != null) {
            return Integer.valueOf(MathKt.roundToInt(fD.floatValue() * C3566e5.a.a(context)));
        }
        return null;
    }

    public final List<LevelPlayAdSize> c() {
        C3456ab c3456abA = this.c.a();
        if (c3456abA != null) {
            return c3456abA.j();
        }
        throw new IllegalStateException("Error getting sdk configurations");
    }
}
