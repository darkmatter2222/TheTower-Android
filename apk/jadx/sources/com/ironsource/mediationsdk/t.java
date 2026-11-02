package com.ironsource.mediationsdk;

import com.ironsource.C5;
import com.ironsource.D5;
import com.ironsource.N9;
import com.ironsource.adapters.facebook.FacebookConstants;
import com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBaseWrapper;
import com.ironsource.mediationsdk.adunit.adapter.internal.AdapterNetworkDataInterface;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.sequences.SequencesKt;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class t implements AdapterNetworkData {
    private final String a;
    private final JSONObject b;

    public t(String networkName, JSONObject data) {
        Intrinsics.checkNotNullParameter(networkName, "networkName");
        Intrinsics.checkNotNullParameter(data, "data");
        this.a = networkName;
        this.b = new JSONObject(data.toString());
    }

    private final void a(Collection<? extends AbstractAdapter> collection) {
        List listFilterNotNull = CollectionsKt.filterNotNull(collection);
        ArrayList arrayList = new ArrayList();
        for (Object obj : listFilterNotNull) {
            if (c.a(this.a, (AbstractAdapter) obj)) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((AbstractAdapter) it.next()).setNetworkData(this);
        }
    }

    private final void b(Collection<? extends AdapterBaseWrapper> collection) {
        List listFilterNotNull = CollectionsKt.filterNotNull(collection);
        ArrayList arrayList = new ArrayList();
        for (Object obj : listFilterNotNull) {
            if (c.a(this.a, (AdapterBaseWrapper) obj)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((AdapterBaseWrapper) it.next()).getAdapterBaseInterface());
        }
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : arrayList2) {
            if (obj2 instanceof AdapterNetworkDataInterface) {
                arrayList3.add(obj2);
            }
        }
        Iterator it2 = arrayList3.iterator();
        while (it2.hasNext()) {
            ((AdapterNetworkDataInterface) it2.next()).setNetworkData(this);
        }
    }

    public final String a() {
        return this.a;
    }

    public final void a(Collection<? extends AbstractAdapter> adapters, Collection<? extends AdapterBaseWrapper> networkAdapters) {
        Intrinsics.checkNotNullParameter(adapters, "adapters");
        Intrinsics.checkNotNullParameter(networkAdapters, "networkAdapters");
        try {
            a(adapters);
            b(networkAdapters);
        } catch (Exception e) {
            IronLog.INTERNAL.error("error while setting network data: " + e.getMessage());
        }
    }

    @Override // com.ironsource.mediationsdk.AdapterNetworkData
    public JSONObject allData() {
        return this.b;
    }

    public final void b() throws JSONException {
        Iterator<String> itKeys = this.b.keys();
        Intrinsics.checkNotNullExpressionValue(itKeys, "keys(...)");
        N9.i().a(new C5(D5.SET_NETWORK_DATA, IronSourceUtils.b(false).put(IronSourceConstants.EVENTS_EXT1, this.a + " - " + CollectionsKt.joinToString$default(SequencesKt.toList(SequencesKt.asSequence(itKeys)), FacebookConstants.PLACEMENT_IDS_SEPARATOR, null, null, 0, null, null, 62, null))));
    }

    @Override // com.ironsource.mediationsdk.AdapterNetworkData
    public <T> T dataByKeyIgnoreCase(String desiredKey, Class<T> valueType) {
        T next;
        Intrinsics.checkNotNullParameter(desiredKey, "desiredKey");
        Intrinsics.checkNotNullParameter(valueType, "valueType");
        Iterator<String> itKeys = allData().keys();
        Intrinsics.checkNotNullExpressionValue(itKeys, "keys(...)");
        Iterator<T> it = SequencesKt.asSequence(itKeys).iterator();
        do {
            if (!it.hasNext()) {
                next = (T) null;
                break;
            }
            next = it.next();
        } while (!StringsKt.equals((String) next, desiredKey, true));
        String str = next;
        if (str != null) {
            Object objOpt = allData().opt(str);
            if (!valueType.isInstance(objOpt)) {
                objOpt = null;
            }
            if (objOpt != null) {
                return valueType.cast(objOpt);
            }
        }
        return null;
    }

    @Override // com.ironsource.mediationsdk.AdapterNetworkData
    public JSONObject networkDataByAdUnit(IronSource.a adUnit) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        JSONObject jSONObjectOptJSONObject = this.b.optJSONObject(adUnit.toString());
        return jSONObjectOptJSONObject == null ? new JSONObject() : jSONObjectOptJSONObject;
    }

    public String toString() {
        return "NetworkData(networkName=" + this.a + ", networkData=" + this.b + ")";
    }
}
