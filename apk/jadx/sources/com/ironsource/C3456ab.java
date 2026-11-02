package com.ironsource;

import com.unity3d.mediation.LevelPlay;
import com.unity3d.mediation.LevelPlayAdSize;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import p005kotlin.NoWhenBranchMatchedException;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.ab, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3456ab extends C3794qe {

    /* JADX INFO: renamed from: com.ironsource.ab$a */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[LevelPlay.AdFormat.values().length];
            try {
                iArr[LevelPlay.AdFormat.REWARDED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LevelPlay.AdFormat.INTERSTITIAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LevelPlay.AdFormat.BANNER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[LevelPlay.AdFormat.NATIVE_AD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3456ab(C3794qe sdkConfig) {
        super(sdkConfig);
        Intrinsics.checkNotNullParameter(sdkConfig, "sdkConfig");
    }

    private final InterfaceC3949z6.c a(LevelPlay.AdFormat adFormat, String str) {
        C3832t.b bVarB;
        Hd hdG;
        Map<String, C3832t.b> mapA;
        C3832t.b bVar;
        Hd hdG2;
        boolean z = adFormat == LevelPlay.AdFormat.REWARDED;
        C3832t c3832t = g().a().a().get(adFormat);
        InterfaceC3949z6.c cVarA = null;
        InterfaceC3949z6.c cVarA2 = (c3832t == null || (mapA = c3832t.a()) == null || (bVar = mapA.get(str)) == null || (hdG2 = bVar.g()) == null) ? null : hdG2.a();
        if (c3832t != null && (bVarB = c3832t.b()) != null && (hdG = bVarB.g()) != null) {
            cVarA = hdG.a();
        }
        if (cVarA2 == null) {
            cVarA2 = cVarA;
        }
        if (cVarA2 != null) {
            return cVarA2;
        }
        return z ? InterfaceC3949z6.c.PROGRESSIVE_ON_SHOW_SUCCESS : InterfaceC3949z6.c.SINGLE;
    }

    public final Za.a a(String adUnitId) {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        C3448a3 c3448a3C = g().a().c();
        C3448a3.a aVar = c3448a3C.a().get(adUnitId);
        return new Za.a(aVar != null ? aVar.e() : c3448a3C.b().e(), aVar != null ? aVar.c() : c3448a3C.b().c(), aVar != null ? aVar.d() : c3448a3C.b().d());
    }

    public final C3871v0 a(C3936yb tools) {
        Intrinsics.checkNotNullParameter(tools, "tools");
        return new C3871v0(tools, g().a().a());
    }

    public final List<String> a(LevelPlay.AdFormat adFormat) {
        Map<String, Kd.b> mapA;
        Set<String> setKeySet;
        List<String> list;
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        Kd.a aVar = g().d().a().get(adFormat);
        return (aVar == null || (mapA = aVar.a()) == null || (setKeySet = mapA.keySet()) == null || (list = CollectionsKt.toList(setKeySet)) == null) ? CollectionsKt.emptyList() : list;
    }

    public final boolean a(String adUnitId, LevelPlay.AdFormat adFormat) {
        Map<String, Kd.b> mapA;
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        Kd.a aVar = g().d().a().get(adFormat);
        return (aVar == null || (mapA = aVar.a()) == null || !mapA.containsKey(adUnitId)) ? false : true;
    }

    public final long b(LevelPlay.AdFormat adFormat) {
        C3832t.b bVarB;
        Long lD;
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        C3832t c3832t = g().a().a().get(adFormat);
        long jLongValue = (c3832t == null || (bVarB = c3832t.b()) == null || (lD = bVarB.d()) == null) ? 60L : lD.longValue();
        return jLongValue > 0 ? TimeUnit.MINUTES.toMillis(jLongValue) : jLongValue;
    }

    public final C3775pd b(C3936yb tools) {
        Intrinsics.checkNotNullParameter(tools, "tools");
        return new C3775pd(tools, g().a().a());
    }

    public final InterfaceC3949z6.a b(LevelPlay.AdFormat adFormat, String adUnitId) {
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        return new InterfaceC3949z6.a(a(adFormat, adUnitId));
    }

    public final Wd c(C3936yb tools) {
        Intrinsics.checkNotNullParameter(tools, "tools");
        C3832t c3832t = g().a().a().get(LevelPlay.AdFormat.REWARDED);
        return new Wd(tools, c3832t != null ? c3832t.a() : null, c3832t != null ? c3832t.c() : null);
    }

    public final C3717md c(LevelPlay.AdFormat adFormat, String str) {
        C3717md c3717mdA;
        P9 p9A;
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        int i = a.a[adFormat.ordinal()];
        if (i == 1) {
            C3647ie c3647ieF = d().c().f();
            if (c3647ieF == null || (c3717mdA = c3647ieF.a(str)) == null) {
                return null;
            }
            return new C3717md(c3717mdA.b(), c3717mdA.c(), c3717mdA.d(), c3717mdA.f(), c3717mdA.e(), c3717mdA.a());
        }
        if (i == 2) {
            L9 l9D = d().c().d();
            if (l9D == null || (p9A = l9D.a(str)) == null) {
                return null;
            }
            return new C3717md(p9A);
        }
        if (i == 3) {
            C3509b3 c3509b3C = d().c().c();
            if (c3509b3C == null) {
                throw new IllegalStateException("Error getting " + adFormat + " configurations");
            }
            C3689l3 c3689l3A = c3509b3C.a(str);
            if (c3689l3A == null) {
                c3689l3A = c3509b3C.i();
                Intrinsics.checkNotNullExpressionValue(c3689l3A, "getDefaultBannerPlacement(...)");
            }
            return new C3717md(c3689l3A);
        }
        if (i != 4) {
            throw new NoWhenBranchMatchedException();
        }
        Wb wbE = d().c().e();
        if (wbE != null && str != null) {
            C3627hc c3627hcA = wbE.a(str);
            if (c3627hcA == null) {
                c3627hcA = wbE.e();
            }
            if (c3627hcA != null) {
                return new C3717md(c3627hcA);
            }
        }
        throw new IllegalStateException("Error getting " + adFormat + " configurations");
    }

    public final List<Kd.c> c(LevelPlay.AdFormat adFormat) {
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        return g().d().a(adFormat);
    }

    public final List<Ec> d(LevelPlay.AdFormat adFormat) {
        Map<String, Kd.b> mapA;
        Set<String> setKeySet;
        List<Ec> listDistinct;
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        Kd.a aVar = g().d().a().get(adFormat);
        if (aVar != null && (mapA = aVar.a()) != null && (setKeySet = mapA.keySet()) != null) {
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(setKeySet, 10));
            Iterator<T> it = setKeySet.iterator();
            while (it.hasNext()) {
                arrayList.add(d(adFormat, (String) it.next()));
            }
            List listFlatten = CollectionsKt.flatten(arrayList);
            if (listFlatten != null && (listDistinct = CollectionsKt.distinct(listFlatten)) != null) {
                return listDistinct;
            }
        }
        return CollectionsKt.emptyList();
    }

    public final List<Ec> d(LevelPlay.AdFormat adFormat, String adUnitId) {
        Map<String, Kd.b> mapA;
        Kd.b bVar;
        List<String> listA;
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Kd.a aVar = g().d().a().get(adFormat);
        if (aVar == null || (mapA = aVar.a()) == null || (bVar = mapA.get(adUnitId)) == null || (listA = bVar.a()) == null) {
            return CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = listA.iterator();
        while (it.hasNext()) {
            Ec ec = g().e().a().get((String) it.next());
            if (ec != null) {
                arrayList.add(ec);
            }
        }
        return arrayList;
    }

    public final String h() {
        return g().a().b().c().a();
    }

    public final Set<String> i() throws JSONException {
        JSONArray jSONArrayE = g().a().b().d().e();
        if (jSONArrayE == null) {
            return null;
        }
        List<String> listB = C3768pa.b(jSONArrayE);
        Intrinsics.checkNotNullExpressionValue(listB, "jsonArrayToStringList(...)");
        return CollectionsKt.toSet(listB);
    }

    public final List<LevelPlayAdSize> j() {
        List<String> listA = g().a().c().b().a();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listA, 10));
        Iterator<T> it = listA.iterator();
        while (it.hasNext()) {
            arrayList.add(LevelPlayAdSize.Companion.createAdSize$mediationsdk_release((String) it.next()));
        }
        return arrayList;
    }

    public final float k() {
        return g().a().c().b().b();
    }

    public final boolean l() {
        com.ironsource.mediationsdk.adquality.a aVarA = d().c().a();
        return aVarA != null && aVarA.c();
    }

    public final boolean m() {
        return g().a().b().e();
    }
}
