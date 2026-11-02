package com.appsflyer.api.models;

import com.appsflyer.internal.connector.purcahse.AFPurchaseConnectorA1z;
import com.tapjoy.TapjoyConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p005kotlin.Metadata;
import p005kotlin.Pair;
import p005kotlin.TuplesKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\b\u000f\b\u0087\b\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0005¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0002HÇ\u0003¢\u0006\u0004\b\f\u0010\rJ\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u0002HÇ\u0003¢\u0006\u0004\b\u000e\u0010\rJ\u0016\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005HÇ\u0003¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u0002HÇ\u0003¢\u0006\u0004\b\u0011\u0010\rJ\u0016\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\b0\u0005HÇ\u0003¢\u0006\u0004\b\u0012\u0010\u0010JP\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00022\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00022\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0005HÇ\u0001¢\u0006\u0004\b\u0013\u0010\u0014J\u001a\u0010\u0017\u001a\u00020\u00162\b\u0010\u0003\u001a\u0004\u0018\u00010\u0015HÖ\u0003¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u001a\u001a\u00020\u0019HÖ\u0001¢\u0006\u0004\b\u001a\u0010\u001bJ\u001b\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00150\u001cH\u0017¢\u0006\u0004\b\u001d\u0010\u001eJ\u0010\u0010\u001f\u001a\u00020\u0002H×\u0001¢\u0006\u0004\b\u001f\u0010\rR\u001a\u0010 \u001a\u00020\u00028\u0007X\u0087\u0004¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010\rR\u001c\u0010#\u001a\u0004\u0018\u00010\u00028\u0007X\u0087\u0004¢\u0006\f\n\u0004\b#\u0010!\u001a\u0004\b$\u0010\rR \u0010%\u001a\b\u0012\u0004\u0012\u00020\u00020\u00058\u0007X\u0087\u0004¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010\u0010R\u001a\u0010(\u001a\u00020\u00028\u0007X\u0087\u0004¢\u0006\f\n\u0004\b(\u0010!\u001a\u0004\b)\u0010\rR \u0010*\u001a\b\u0012\u0004\u0012\u00020\b0\u00058\u0007X\u0087\u0004¢\u0006\f\n\u0004\b*\u0010&\u001a\u0004\b+\u0010\u0010"}, d2 = {"Lcom/appsflyer/api/models/SubscriptionOfferDetails;", "Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1z;", "", "p0", "p1", "", "p2", "p3", "Lcom/appsflyer/api/models/PricingPhases;", "p4", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V", "component1", "()Ljava/lang/String;", "component2", "component3", "()Ljava/util/List;", "component4", "component5", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)Lcom/appsflyer/api/models/SubscriptionOfferDetails;", "", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "", "toJsonMap", "()Ljava/util/Map;", "toString", "basePlanId", "Ljava/lang/String;", "getBasePlanId", TapjoyConstants.TJC_PLACEMENT_OFFER_ID, "getOfferId", "offerTags", "Ljava/util/List;", "getOfferTags", "offerToken", "getOfferToken", "pricingPhases", "getPricingPhases"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class SubscriptionOfferDetails implements AFPurchaseConnectorA1z {
    private final String basePlanId;
    private final String offerId;
    private final List<String> offerTags;
    private final String offerToken;
    private final List<PricingPhases> pricingPhases;

    public SubscriptionOfferDetails(String str, String str2, List<String> list, String str3, List<PricingPhases> list2) {
        Intrinsics.checkNotNullParameter(str, "");
        Intrinsics.checkNotNullParameter(list, "");
        Intrinsics.checkNotNullParameter(str3, "");
        Intrinsics.checkNotNullParameter(list2, "");
        this.basePlanId = str;
        this.offerId = str2;
        this.offerTags = list;
        this.offerToken = str3;
        this.pricingPhases = list2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SubscriptionOfferDetails copy$default(SubscriptionOfferDetails subscriptionOfferDetails, String str, String str2, List list, String str3, List list2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = subscriptionOfferDetails.basePlanId;
        }
        if ((i & 2) != 0) {
            str2 = subscriptionOfferDetails.offerId;
        }
        if ((i & 4) != 0) {
            list = subscriptionOfferDetails.offerTags;
        }
        if ((i & 8) != 0) {
            str3 = subscriptionOfferDetails.offerToken;
        }
        if ((i & 16) != 0) {
            list2 = subscriptionOfferDetails.pricingPhases;
        }
        List list3 = list2;
        List list4 = list;
        return subscriptionOfferDetails.copy(str, str2, list4, str3, list3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getBasePlanId() {
        return this.basePlanId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getOfferId() {
        return this.offerId;
    }

    public final List<String> component3() {
        return this.offerTags;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getOfferToken() {
        return this.offerToken;
    }

    public final List<PricingPhases> component5() {
        return this.pricingPhases;
    }

    public final SubscriptionOfferDetails copy(String p0, String p1, List<String> p2, String p3, List<PricingPhases> p4) {
        Intrinsics.checkNotNullParameter(p0, "");
        Intrinsics.checkNotNullParameter(p2, "");
        Intrinsics.checkNotNullParameter(p3, "");
        Intrinsics.checkNotNullParameter(p4, "");
        return new SubscriptionOfferDetails(p0, p1, p2, p3, p4);
    }

    public final boolean equals(Object p0) {
        if (this == p0) {
            return true;
        }
        if (!(p0 instanceof SubscriptionOfferDetails)) {
            return false;
        }
        SubscriptionOfferDetails subscriptionOfferDetails = (SubscriptionOfferDetails) p0;
        return Intrinsics.areEqual(this.basePlanId, subscriptionOfferDetails.basePlanId) && Intrinsics.areEqual(this.offerId, subscriptionOfferDetails.offerId) && Intrinsics.areEqual(this.offerTags, subscriptionOfferDetails.offerTags) && Intrinsics.areEqual(this.offerToken, subscriptionOfferDetails.offerToken) && Intrinsics.areEqual(this.pricingPhases, subscriptionOfferDetails.pricingPhases);
    }

    public final String getBasePlanId() {
        return this.basePlanId;
    }

    public final String getOfferId() {
        return this.offerId;
    }

    public final List<String> getOfferTags() {
        return this.offerTags;
    }

    public final String getOfferToken() {
        return this.offerToken;
    }

    public final List<PricingPhases> getPricingPhases() {
        return this.pricingPhases;
    }

    public final int hashCode() {
        int iHashCode = this.basePlanId.hashCode() * 31;
        String str = this.offerId;
        return ((((((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.offerTags.hashCode()) * 31) + this.offerToken.hashCode()) * 31) + this.pricingPhases.hashCode();
    }

    public final Map<String, Object> toJsonMap() {
        Pair[] pairArr = new Pair[4];
        pairArr[0] = TuplesKt.to("base_plan_id", this.basePlanId);
        pairArr[1] = TuplesKt.to("offer_tags", this.offerTags);
        pairArr[2] = TuplesKt.to("offer_token", this.offerToken);
        List<PricingPhases> list = this.pricingPhases;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((PricingPhases) it.next()).toJsonMap());
        }
        pairArr[3] = TuplesKt.to("pricing_phases", arrayList);
        Map<String, Object> mapMutableMapOf = MapsKt.mutableMapOf(pairArr);
        String str = this.offerId;
        if (str != null) {
            mapMutableMapOf.put("offer_id", str);
        }
        return mapMutableMapOf;
    }

    public final String toString() {
        return "SubscriptionOfferDetails(basePlanId=" + this.basePlanId + ", offerId=" + this.offerId + ", offerTags=" + this.offerTags + ", offerToken=" + this.offerToken + ", pricingPhases=" + this.pricingPhases + ")";
    }
}
