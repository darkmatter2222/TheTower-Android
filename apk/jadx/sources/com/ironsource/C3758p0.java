package com.ironsource;

import com.ironsource.mediationsdk.ISBannerSize;
import com.ironsource.mediationsdk.IronSource;
import com.unity3d.mediation.LevelPlay;
import com.unity3d.mediation.LevelPlayAdSize;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import p005kotlin.jvm.JvmStatic;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.p0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public class C3758p0 extends C3936yb {
    private final IronSource.a a;
    private final If.b b;
    private final E5 c;
    private final M8 d;
    private final long e;

    /* JADX INFO: renamed from: com.ironsource.p0$a */
    public static final class a {
        public static final a a = new a();

        private a() {
        }

        @JvmStatic
        public static final C3758p0 a(IronSource.a adFormat, E0.b level) {
            Intrinsics.checkNotNullParameter(adFormat, "adFormat");
            Intrinsics.checkNotNullParameter(level, "level");
            return new C3758p0(adFormat, level);
        }
    }

    public C3758p0(IronSource.a adFormat, E0.b level) {
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        Intrinsics.checkNotNullParameter(level, "level");
        this.d = Pb.w.d().f();
        this.e = TimeUnit.HOURS.toMillis(1L);
        this.a = adFormat;
        this.c = new E5(adFormat, level, null, null, 12, null);
        If.b bVarB = If.b(adFormat);
        Intrinsics.checkNotNullExpressionValue(bVarB, "createLogFactory(...)");
        this.b = bVarB;
    }

    public C3758p0(C3758p0 adTools, E0.b level) {
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(level, "level");
        this.d = Pb.w.d().f();
        this.e = TimeUnit.HOURS.toMillis(1L);
        IronSource.a aVar = adTools.a;
        this.a = aVar;
        this.b = adTools.b;
        this.c = new E5(aVar, level, adTools.c.c(), null, 8, null);
    }

    public static /* synthetic */ String a(C3758p0 c3758p0, String str, String str2, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createLogMessage");
        }
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            str2 = null;
        }
        return c3758p0.a(str, str2);
    }

    public final C3717md a(LevelPlay.AdFormat adFormat, String str) {
        C3456ab c3456abA;
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        if (str == null || (c3456abA = this.d.a()) == null) {
            return null;
        }
        return c3456abA.c(adFormat, str);
    }

    public final C3717md a(String placementName) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        C3456ab c3456abA = this.d.a();
        if (c3456abA == null) {
            throw new IllegalStateException("Error getting sdk configurations");
        }
        C3717md c3717mdC = c3456abA.c(LevelPlay.AdFormat.BANNER, placementName);
        if (c3717mdC != null) {
            return c3717mdC;
        }
        throw new IllegalStateException("Error getting placement");
    }

    public final ISBannerSize a(LevelPlayAdSize adSize) {
        Intrinsics.checkNotNullParameter(adSize, "adSize");
        return new C3704m0().b(adSize);
    }

    public final String a(String str, String str2) {
        String strA = this.b.a(str, str2);
        Intrinsics.checkNotNullExpressionValue(strA, "createLogMessage(...)");
        return strA;
    }

    public final void a(Map<String, Object> data, ISBannerSize size) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(size, "size");
        com.ironsource.mediationsdk.j.a(data, size);
    }

    public final long b(LevelPlay.AdFormat adFormat) {
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        C3456ab c3456abA = this.d.a();
        return c3456abA != null ? c3456abA.b(adFormat) : this.e;
    }

    public final InterfaceC3949z6.a b(LevelPlay.AdFormat adFormat, String adUnitId) {
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        C3456ab c3456abA = this.d.a();
        if (c3456abA != null) {
            return c3456abA.b(adFormat, adUnitId);
        }
        throw new IllegalStateException("Error getting sdk configurations");
    }

    public final String b(String str) {
        return a(this, str, (String) null, 2, (Object) null);
    }

    public final com.ironsource.lifecycle.b c() {
        com.ironsource.lifecycle.b bVarD = com.ironsource.lifecycle.b.d();
        Intrinsics.checkNotNullExpressionValue(bVarD, "getInstance(...)");
        return bVarD;
    }

    public final C3717md c(String placementName) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        C3456ab c3456abA = this.d.a();
        if (c3456abA == null) {
            throw new IllegalStateException("Error getting sdk configurations");
        }
        C3717md c3717mdC = c3456abA.c(LevelPlay.AdFormat.NATIVE_AD, placementName);
        if (c3717mdC != null) {
            return c3717mdC;
        }
        throw new IllegalStateException("Error getting sdk configurations");
    }

    public final Za.a d(String adUnitId) {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        C3456ab c3456abA = this.d.a();
        if (c3456abA != null) {
            return c3456abA.a(adUnitId);
        }
        throw new IllegalStateException("Error getting sdk configurations");
    }

    public final String d() {
        return a(this, (String) null, (String) null, 3, (Object) null);
    }

    protected final IronSource.a e() {
        return this.a;
    }

    public final E5 f() {
        return this.c;
    }

    public final int g() {
        return Pb.w.d().s().a(this.a);
    }
}
