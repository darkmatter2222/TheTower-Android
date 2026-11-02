package com.ironsource;

import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.model.NetworkSettings;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Kg {
    public static final a d = new a(null);
    private final T0 a;
    private final AbstractC3907x0 b;
    private final InterfaceC3537cd c;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Kg a(T0 adTools, AbstractC3907x0 adUnitData) {
            Intrinsics.checkNotNullParameter(adTools, "adTools");
            Intrinsics.checkNotNullParameter(adUnitData, "adUnitData");
            return adUnitData.u() ? new B2(adTools, adUnitData) : new Lc(adTools, adUnitData);
        }
    }

    public /* synthetic */ class b {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[IronSource.a.values().length];
            try {
                iArr[IronSource.a.INTERSTITIAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[IronSource.a.REWARDED_VIDEO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    public static final class c implements InterfaceC3537cd {
        c() {
        }
    }

    public Kg(T0 adTools, AbstractC3907x0 adUnitData) {
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(adUnitData, "adUnitData");
        this.a = adTools;
        this.b = adUnitData;
        this.c = new c();
    }

    private final A a(C3927y2 c3927y2, C3873v2 c3873v2, D d2, H h) {
        AbstractC3907x0 abstractC3907x0 = this.b;
        String strC = c3927y2.c();
        Intrinsics.checkNotNullExpressionValue(strC, "getInstanceName(...)");
        NetworkSettings networkSettingsA = abstractC3907x0.a(strC);
        if (networkSettingsA == null) {
            String strC2 = c3927y2.c();
            Intrinsics.checkNotNullExpressionValue(strC2, "getInstanceName(...)");
            a("Could not find matching provider settings for auction response item", strC2);
            return null;
        }
        if (h == null) {
            String strC3 = c3927y2.c();
            Intrinsics.checkNotNullExpressionValue(strC3, "getInstanceName(...)");
            a("Could not find matching adInstancePayload for auction response item", strC3);
            return null;
        }
        com.ironsource.mediationsdk.c.c().b(networkSettingsA, this.b.b().a(), this.b.b().b());
        int iG = this.a.g();
        AbstractC3907x0 abstractC3907x1 = this.b;
        return d2.a(new B(abstractC3907x1, networkSettingsA, c3873v2, new C3525c1(networkSettingsA, abstractC3907x1.b(networkSettingsA), this.b.b().a()), c3927y2, iG, false, 64, null), h);
    }

    public static /* synthetic */ Mg a(Kg kg, List list, Map map, C3873v2 c3873v2, D d2, A a2, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createAdInstanceWaterfall");
        }
        if ((i & 16) != 0) {
            a2 = null;
        }
        return kg.a(list, map, c3873v2, d2, a2);
    }

    private final void a(String str, String str2) {
        String str3 = str + " - item = " + str2;
        IronLog.INTERNAL.error(C3758p0.a(this.a, str3, (String) null, 2, (Object) null));
        this.a.f().h().i(str3);
    }

    private final Dd b() {
        int i = b.a[this.b.b().a().ordinal()];
        if (i == 1) {
            return Pb.w.d().C();
        }
        if (i == 2) {
            return Pb.w.d().H();
        }
        IronLog.INTERNAL.warning(C3758p0.a(this.a, "Unable to reset preloaded instance", (String) null, 2, (Object) null));
        return null;
    }

    public final Mg a(List<? extends C3927y2> waterfallItems, Map<String, H> adInstancePayloads, C3873v2 auctionData, D adInstanceFactory, A a2) {
        Intrinsics.checkNotNullParameter(waterfallItems, "waterfallItems");
        Intrinsics.checkNotNullParameter(adInstancePayloads, "adInstancePayloads");
        Intrinsics.checkNotNullParameter(auctionData, "auctionData");
        Intrinsics.checkNotNullParameter(adInstanceFactory, "adInstanceFactory");
        IronLog.INTERNAL.verbose(C3758p0.a(this.a, "waterfall.size() = " + waterfallItems.size(), (String) null, 2, (Object) null));
        ArrayList arrayList = new ArrayList();
        int size = waterfallItems.size();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            C3927y2 c3927y2 = waterfallItems.get(i);
            if (z || a2 == null || !Intrinsics.areEqual(a2.p(), c3927y2.c())) {
                A a3 = a(c3927y2, auctionData, adInstanceFactory, adInstancePayloads.get(c3927y2.c()));
                if (a3 != null && a3.g() != null) {
                    arrayList.add(a3);
                }
            } else {
                a2.a(c3927y2);
                arrayList.add(a2);
                z = true;
            }
        }
        if (a2 != null && !z) {
            c();
        }
        Mg mg = new Mg(arrayList);
        IronLog.INTERNAL.verbose(C3758p0.a(this.a, "updateWaterfall() - next waterfall is " + mg.d(), (String) null, 2, (Object) null));
        return mg;
    }

    public InterfaceC3537cd a() {
        return this.c;
    }

    public abstract void a(D d2, Lg lg);

    protected final void c() {
        Dd ddB = b();
        if (ddB == null) {
            return;
        }
        ddB.a(this.b.b().c(), false);
    }
}
