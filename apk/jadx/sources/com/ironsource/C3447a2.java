package com.ironsource;

import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBaseInterface;
import com.ironsource.mediationsdk.adunit.adapter.internal.BaseAdAdapter;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdData;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import p005kotlin.Pair;
import p005kotlin.TuplesKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.ranges.RangesKt;

/* JADX INFO: renamed from: com.ironsource.a2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3447a2 {
    private final T0 a;
    private final AbstractC3907x0 b;
    private final Map<String, H> c;
    private final C3782q2 d;
    private final List<CallableC3892w3> e;
    private final boolean f;

    /* JADX INFO: renamed from: com.ironsource.a2$a */
    public static final class a extends com.ironsource.environment.thread.a {
        final /* synthetic */ C3946z3 b;
        final /* synthetic */ C3447a2 c;
        final /* synthetic */ C3946z3.b d;

        a(C3946z3 c3946z3, C3447a2 c3447a2, C3946z3.b bVar) {
            this.b = c3946z3;
            this.c = c3447a2;
            this.d = bVar;
        }

        @Override // com.ironsource.environment.thread.a
        public void a() {
            this.b.a(this.c.e(), this.d, this.c.b.f(), TimeUnit.MILLISECONDS);
        }
    }

    /* JADX INFO: renamed from: com.ironsource.a2$b */
    public static final class b implements InterfaceC3910x3 {
        b() {
        }

        @Override // com.ironsource.InterfaceC3910x3
        public void a(NetworkSettings networkSettings) {
            AdapterBaseInterface adapterBaseInterfaceA;
            if (C3447a2.this.h()) {
                adapterBaseInterfaceA = null;
                BaseAdAdapter baseAdAdapterB = C3447a2.this.b(networkSettings != null ? networkSettings.getProviderName() : null);
                if (baseAdAdapterB != null) {
                    adapterBaseInterfaceA = baseAdAdapterB.getNetworkAdapter();
                }
            } else {
                adapterBaseInterfaceA = C3447a2.this.a(networkSettings);
            }
            if (adapterBaseInterfaceA != null) {
                C3447a2.this.a.f().g().b(C3447a2.this.a(networkSettings, adapterBaseInterfaceA));
            }
        }

        @Override // com.ironsource.InterfaceC3910x3
        public void a(String str) {
            C3447a2.this.a.f().h().g(str);
        }
    }

    /* JADX INFO: renamed from: com.ironsource.a2$c */
    public static final class c implements C3946z3.b {
        final /* synthetic */ d b;

        c(d dVar) {
            this.b = dVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(C3447a2 c3447a2, long j, List list, List list2, d dVar) {
            c3447a2.a(j, list, list2, dVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(C3447a2 c3447a2, String str, d dVar) {
            c3447a2.a.f().g().a(str);
            dVar.a(c3447a2, str);
        }

        @Override // com.ironsource.C3946z3.b
        public void a(final List<? extends A3> biddingDataList, final long j, final List<String> reachedTimeout) {
            Intrinsics.checkNotNullParameter(biddingDataList, "biddingDataList");
            Intrinsics.checkNotNullParameter(reachedTimeout, "reachedTimeout");
            T0 t0 = C3447a2.this.a;
            final C3447a2 c3447a2 = C3447a2.this;
            final d dVar = this.b;
            t0.a(new Runnable() { // from class: com.ironsource.a2$c$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    C3447a2.c.a(c3447a2, j, biddingDataList, reachedTimeout, dVar);
                }
            });
        }

        @Override // com.ironsource.C3946z3.b
        public void onFailure(final String error) {
            Intrinsics.checkNotNullParameter(error, "error");
            T0 t0 = C3447a2.this.a;
            final C3447a2 c3447a2 = C3447a2.this;
            final d dVar = this.b;
            t0.a(new Runnable() { // from class: com.ironsource.a2$c$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    C3447a2.c.a(c3447a2, error, dVar);
                }
            });
        }
    }

    /* JADX INFO: renamed from: com.ironsource.a2$d */
    public interface d {
        void a(C3447a2 c3447a2);

        void a(C3447a2 c3447a2, String str);
    }

    public C3447a2(T0 adTools, AbstractC3907x0 adUnitData, C3710m6 c3710m6) {
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(adUnitData, "adUnitData");
        this.a = adTools;
        this.b = adUnitData;
        this.c = a();
        this.d = new C3782q2(adUnitData);
        this.e = new ArrayList();
        this.f = adUnitData.e().q();
        b bVarB = b();
        Tf tfG = adUnitData.b().g();
        boolean z = Pb.w.d().h().z() && (adUnitData.b().a() == IronSource.a.INTERSTITIAL || adUnitData.b().a() == IronSource.a.REWARDED_VIDEO);
        for (NetworkSettings networkSettings : adUnitData.n()) {
            if (tfG == null || tfG.a(networkSettings, this.b.b().a())) {
                AdData adDataA = this.b.a(networkSettings);
                if (networkSettings.isBidder(this.b.b().a())) {
                    Object objB = this.f ? b(networkSettings.getProviderName()) : a(networkSettings);
                    if (objB instanceof InterfaceC3928y3) {
                        this.e.add(new CallableC3892w3(networkSettings.getInstanceType(this.b.b().a()), networkSettings.getProviderInstanceName(), adDataA, (InterfaceC3928y3) objB, bVarB, networkSettings));
                    } else {
                        this.a.f().h().g(objB == null ? "prepareAuctionCandidates - could not load network adapter " + networkSettings.getProviderName() : "network adapter " + networkSettings.getProviderName() + " does not implementing BiddingDataInterface");
                    }
                } else if (!z) {
                    this.d.a(networkSettings);
                }
            }
        }
        this.d.a(c3710m6);
    }

    public /* synthetic */ C3447a2(T0 t0, AbstractC3907x0 abstractC3907x0, C3710m6 c3710m6, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(t0, abstractC3907x0, (i & 4) != 0 ? null : c3710m6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AdapterBaseInterface a(NetworkSettings networkSettings) {
        return com.ironsource.mediationsdk.c.c().b(networkSettings, this.b.b().a(), this.b.b().b());
    }

    private final Map<String, H> a() {
        List<NetworkSettings> listN = this.b.n();
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(listN, 10)), 16));
        Iterator<T> it = listN.iterator();
        while (it.hasNext()) {
            H h = new H(this.a, this.b, (NetworkSettings) it.next());
            Pair pair = TuplesKt.to(h.c(), h);
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        return linkedHashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Map<String, Object> a(NetworkSettings networkSettings, AdapterBaseInterface adapterBaseInterface) {
        String providerDefaultInstance;
        HashMap map = new HashMap();
        if (networkSettings != null) {
            try {
                providerDefaultInstance = networkSettings.getProviderDefaultInstance();
            } catch (Exception e) {
                C3801r4.d().a(e);
                IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.INTERNAL, "getProviderEventData " + (networkSettings != null ? networkSettings.getProviderDefaultInstance() : null), e);
                return map;
            }
        } else {
            providerDefaultInstance = null;
        }
        map.put(IronSourceConstants.EVENTS_PROVIDER, providerDefaultInstance);
        map.put(IronSourceConstants.EVENTS_PROVIDER_ADAPTER_VERSION, adapterBaseInterface != null ? adapterBaseInterface.getAdapterVersion() : null);
        map.put(IronSourceConstants.EVENTS_PROVIDER_SDK_VERSION, adapterBaseInterface != null ? adapterBaseInterface.getNetworkSDKVersion() : null);
        map.put("spId", networkSettings != null ? networkSettings.getSubProviderId() : null);
        map.put(IronSourceConstants.EVENTS_PROGRAMMATIC, 1);
        map.put("instanceType", networkSettings != null ? Integer.valueOf(networkSettings.getInstanceType(this.b.b().a())) : null);
        return map;
    }

    private final Map<String, Object> a(String str) {
        AdapterBaseInterface adapterBaseInterfaceA;
        NetworkSettings networkSettingsA = this.b.a(str);
        if (this.f) {
            BaseAdAdapter<?, ?> baseAdAdapterB = b(str);
            adapterBaseInterfaceA = baseAdAdapterB != null ? baseAdAdapterB.getNetworkAdapter() : null;
        } else {
            adapterBaseInterfaceA = a(networkSettingsA);
        }
        return a(networkSettingsA, adapterBaseInterfaceA);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(long j, List<? extends A3> list, List<String> list2, d dVar) {
        this.a.f().g().b(j);
        for (A3 a3 : list) {
            String strC = a3.c();
            Intrinsics.checkNotNullExpressionValue(strC, "getInstanceName(...)");
            Map<String, Object> mapA = a(strC);
            if (a3.a() != null) {
                this.d.a(a3);
                this.a.f().g().a(mapA, a3.e());
            } else {
                this.a.f().g().a(mapA, a3.e(), a3.b());
            }
        }
        Iterator<String> it = list2.iterator();
        while (it.hasNext()) {
            this.a.f().g().b(a(it.next()), j);
        }
        dVar.a(this);
    }

    private final b b() {
        return new b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BaseAdAdapter<?, ?> b(String str) {
        H h = this.c.get(str);
        if (h != null) {
            return h.b();
        }
        return null;
    }

    private final C3946z3.b b(d dVar) {
        return new c(dVar);
    }

    public final void a(d biddingDataListener) {
        Intrinsics.checkNotNullParameter(biddingDataListener, "biddingDataListener");
        C3946z3 c3946z3 = new C3946z3();
        C3946z3.b bVarB = b(biddingDataListener);
        this.a.f().g().a(this.b.f());
        this.a.a((com.ironsource.environment.thread.a) new a(c3946z3, this, bVarB));
    }

    public final Map<String, H> c() {
        return this.c;
    }

    public final C3782q2 d() {
        return this.d;
    }

    public final List<CallableC3892w3> e() {
        return this.e;
    }

    public final boolean f() {
        return !this.e.isEmpty();
    }

    public final boolean g() {
        return this.d.e();
    }

    public final boolean h() {
        return this.f;
    }
}
