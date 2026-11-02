package com.ironsource;

import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.model.NetworkSettings;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
import p005kotlin.Pair;
import p005kotlin.TuplesKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes4.dex */
public final class Lc extends Kg {
    private final T0 e;
    private final AbstractC3907x0 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Lc(T0 tools, AbstractC3907x0 adUnitData) {
        super(tools, adUnitData);
        Intrinsics.checkNotNullParameter(tools, "tools");
        Intrinsics.checkNotNullParameter(adUnitData, "adUnitData");
        this.e = tools;
        this.f = adUnitData;
    }

    private final void a(Lg lg, C3873v2 c3873v2, D d) {
        IronLog.INTERNAL.verbose(C3758p0.a(this.e, (String) null, (String) null, 3, (Object) null));
        lg.a(Kg.a(this, f(), e(), c3873v2, d, null, 16, null));
    }

    private final C3873v2 d() {
        return new C3873v2("", new JSONObject(), null, 0, "");
    }

    private final Map<String, H> e() {
        Tf tfG = this.f.b().g();
        List<NetworkSettings> listN = this.f.n();
        ArrayList<NetworkSettings> arrayList = new ArrayList();
        for (Object obj : listN) {
            NetworkSettings networkSettings = (NetworkSettings) obj;
            if (tfG == null || tfG.a(networkSettings, this.f.b().a())) {
                if (!networkSettings.isBidder(this.f.b().a())) {
                    arrayList.add(obj);
                }
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(arrayList, 10)), 16));
        for (NetworkSettings networkSettings2 : arrayList) {
            Pair pair = TuplesKt.to(networkSettings2.getProviderInstanceName(), new H(this.e, this.f, networkSettings2));
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        return linkedHashMap;
    }

    private final List<C3927y2> f() {
        Tf tfG = this.f.b().g();
        List<NetworkSettings> listN = this.f.n();
        ArrayList arrayList = new ArrayList();
        for (Object obj : listN) {
            NetworkSettings networkSettings = (NetworkSettings) obj;
            if (tfG == null || tfG.a(networkSettings, this.f.b().a())) {
                if (!networkSettings.isBidder(this.f.b().a())) {
                    arrayList.add(obj);
                }
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(new C3927y2(((NetworkSettings) it.next()).getProviderInstanceName()));
        }
        return arrayList2;
    }

    @Override // com.ironsource.Kg
    public void a(D adInstanceFactory, Lg waterfallFetcherListener) {
        Intrinsics.checkNotNullParameter(adInstanceFactory, "adInstanceFactory");
        Intrinsics.checkNotNullParameter(waterfallFetcherListener, "waterfallFetcherListener");
        IronLog.INTERNAL.verbose(C3758p0.a(this.e, "auction disabled", (String) null, 2, (Object) null));
        a(waterfallFetcherListener, d(), adInstanceFactory);
    }

    public final void a(Lg waterfallFetcherListener, int i, String auctionFallback, String auctionId, D adInstanceFactory) {
        Intrinsics.checkNotNullParameter(waterfallFetcherListener, "waterfallFetcherListener");
        Intrinsics.checkNotNullParameter(auctionFallback, "auctionFallback");
        Intrinsics.checkNotNullParameter(auctionId, "auctionId");
        Intrinsics.checkNotNullParameter(adInstanceFactory, "adInstanceFactory");
        a(waterfallFetcherListener, new C3873v2(auctionId, new JSONObject(), null, i, auctionFallback), adInstanceFactory);
    }
}
