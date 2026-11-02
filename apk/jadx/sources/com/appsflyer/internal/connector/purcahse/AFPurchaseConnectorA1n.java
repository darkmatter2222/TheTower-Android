package com.appsflyer.internal.connector.purcahse;

import android.graphics.ImageFormat;
import android.os.Process;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.ProductDetails;
import com.android.billingclient.api.ProductDetailsResponseListener;
import com.android.billingclient.api.Purchase;
import com.appsflyer.AFLogger;
import com.appsflyer.api.InAppPurchaseEvent;
import com.appsflyer.api.Store;
import com.appsflyer.api.SubscriptionPurchaseEvent;
import com.appsflyer.api.models.OneTimePurchaseOfferDetails;
import com.appsflyer.api.models.PricingPhases;
import com.appsflyer.api.models.SubscriptionOfferDetails;
import com.appsflyer.exceptions.WrongProductTypeException;
import com.unity3d.services.store.gpbl.proxies.ProductDetailsResponseListenerProxy;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p005kotlin.Metadata;
import p005kotlin.Pair;
import p005kotlin.TuplesKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0012\b\u0002\u0010\b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u0006\u0012\b\b\u0002\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ5\u0010\u0010\u001a\u001a\u0012\u0004\u0012\u00020\u0007\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000e0\u000f0\u000f2\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u000e0\rH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J5\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u00062\u001e\u0010\u0003\u001a\u001a\u0012\u0004\u0012\u00020\u0007\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000e0\u000f0\u000fH\u0002¢\u0006\u0004\b\u0013\u0010\u0014J5\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u00062\u001e\u0010\u0003\u001a\u001a\u0012\u0004\u0012\u00020\u0007\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000e0\u000f0\u000fH\u0002¢\u0006\u0004\b\u0016\u0010\u0014J%\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0003\u001a\u00020\u00172\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u000e0\rH\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ%\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000e0\u000f*\b\u0012\u0004\u0012\u00020\u000e0\rH\u0002¢\u0006\u0004\b\u0013\u0010\u0011R\u0014\u0010\u0010\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u001bR\u0014\u0010\u001d\u001a\u00020\u00048\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u001cR\u001e\u0010\u001f\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u00068\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0014\u0010\u0016\u001a\u00020\u00028\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010 R\u0018\u0010\u0013\u001a\u00020\"*\u00020!8CX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010#R\u0018\u0010'\u001a\u00020%*\u00020$8CX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010&R\u0018\u0010+\u001a\u00020)*\u00020(8CX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010*"}, d2 = {"Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1n;", "Lcom/android/billingclient/api/ProductDetailsResponseListener;", "", "p0", "Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1r$AFPurchaseConnectorA1x;", "p1", "", "Lcom/android/billingclient/api/Purchase;", "p2", "", "p3", "<init>", "(Ljava/lang/String;Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1r$AFPurchaseConnectorA1x;Ljava/util/List;Z)V", "", "Lcom/android/billingclient/api/ProductDetails;", "", "getOneTimePurchaseOfferDetails", "(Ljava/util/List;)Ljava/util/Map;", "Lcom/appsflyer/api/InAppPurchaseEvent;", "InAppPurchaseEvent", "(Ljava/util/Map;)Ljava/util/List;", "Lcom/appsflyer/api/SubscriptionPurchaseEvent;", "toJsonMap", "Lcom/android/billingclient/api/BillingResult;", "", ProductDetailsResponseListenerProxy.onProductDetailsResponseMethodName, "(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V", "Z", "Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1r$AFPurchaseConnectorA1x;", "getQuantity", "Ljava/util/List;", "getPackageName", "Ljava/lang/String;", "Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;", "Lcom/appsflyer/api/models/OneTimePurchaseOfferDetails;", "(Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;)Lcom/appsflyer/api/models/OneTimePurchaseOfferDetails;", "Lcom/android/billingclient/api/ProductDetails$PricingPhase;", "Lcom/appsflyer/api/models/PricingPhases;", "(Lcom/android/billingclient/api/ProductDetails$PricingPhase;)Lcom/appsflyer/api/models/PricingPhases;", "startObservingTransactions", "Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;", "Lcom/appsflyer/api/models/SubscriptionOfferDetails;", "(Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;)Lcom/appsflyer/api/models/SubscriptionOfferDetails;", "hashCode"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class AFPurchaseConnectorA1n implements ProductDetailsResponseListener {

    /* JADX INFO: renamed from: InAppPurchaseEvent, reason: from kotlin metadata */
    private final AFPurchaseConnectorA1r.AFPurchaseConnectorA1x getQuantity;
    private final boolean getOneTimePurchaseOfferDetails;

    /* JADX INFO: renamed from: getQuantity, reason: from kotlin metadata */
    private final List<Purchase> getPackageName;
    private final String toJsonMap;

    /* JADX WARN: Multi-variable type inference failed */
    public AFPurchaseConnectorA1n(String str, AFPurchaseConnectorA1r.AFPurchaseConnectorA1x aFPurchaseConnectorA1x, List<? extends Purchase> list, boolean z) {
        Intrinsics.checkNotNullParameter(str, "");
        Intrinsics.checkNotNullParameter(aFPurchaseConnectorA1x, "");
        this.toJsonMap = str;
        this.getQuantity = aFPurchaseConnectorA1x;
        this.getPackageName = list;
        this.getOneTimePurchaseOfferDetails = z;
    }

    public /* synthetic */ AFPurchaseConnectorA1n(String str, AFPurchaseConnectorA1r.AFPurchaseConnectorA1x aFPurchaseConnectorA1x, List list, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, aFPurchaseConnectorA1x, (i & 4) != 0 ? null : list, (i & 8) != 0 ? false : z);
    }

    private final List<InAppPurchaseEvent> InAppPurchaseEvent(Map<Purchase, ? extends Map<String, ProductDetails>> p0) {
        OneTimePurchaseOfferDetails jsonMap;
        ArrayList arrayList = new ArrayList(p0.size());
        for (Map.Entry<Purchase, ? extends Map<String, ProductDetails>> entry : p0.entrySet()) {
            Purchase key = entry.getKey();
            key.getPurchaseTime();
            Set<Map.Entry<String, ProductDetails>> setEntrySet = entry.getValue().entrySet();
            LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(setEntrySet, 10)), 16));
            Iterator<T> it = setEntrySet.iterator();
            while (it.hasNext()) {
                Map.Entry entry2 = (Map.Entry) it.next();
                Object key2 = entry2.getKey();
                ProductDetails.OneTimePurchaseOfferDetails oneTimePurchaseOfferDetails = ((ProductDetails) entry2.getValue()).getOneTimePurchaseOfferDetails();
                if (oneTimePurchaseOfferDetails != null) {
                    Intrinsics.checkNotNullExpressionValue(oneTimePurchaseOfferDetails, "");
                    jsonMap = toJsonMap(oneTimePurchaseOfferDetails);
                } else {
                    jsonMap = null;
                }
                Pair pair = TuplesKt.to(key2, jsonMap);
                linkedHashMap.put(pair.getFirst(), pair.getSecond());
            }
            List<String> products = key.getProducts();
            Intrinsics.checkNotNullExpressionValue(products, "");
            String purchaseToken = key.getPurchaseToken();
            Intrinsics.checkNotNullExpressionValue(purchaseToken, "");
            Store store = Store.GOOGLE;
            long purchaseTime = key.getPurchaseTime();
            String packageName = key.getPackageName();
            Intrinsics.checkNotNullExpressionValue(packageName, "");
            arrayList.add(new InAppPurchaseEvent(products, purchaseToken, store, purchaseTime, packageName, key.getQuantity(), linkedHashMap));
        }
        return arrayList;
    }

    private final Map<String, ProductDetails> InAppPurchaseEvent(List<ProductDetails> list) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (ProductDetails productDetails : list) {
            if (Intrinsics.areEqual(productDetails.getProductType(), this.toJsonMap)) {
                String productId = productDetails.getProductId();
                Intrinsics.checkNotNullExpressionValue(productId, "");
                linkedHashMap.put(productId, productDetails);
            } else {
                String str = "[PurchaseConnector]: expected Product type of " + this.toJsonMap + ", but received " + productDetails.getProductType();
                AFLogger.afErrorLog(str, new WrongProductTypeException(str));
            }
        }
        return linkedHashMap;
    }

    private final Map<Purchase, Map<String, ProductDetails>> getOneTimePurchaseOfferDetails(List<ProductDetails> p0) {
        List<String> products;
        Map<String, ProductDetails> mapInAppPurchaseEvent = InAppPurchaseEvent(p0);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        List<Purchase> list = this.getPackageName;
        if (list != null) {
            for (Purchase purchase : list) {
                if (purchase != null && (products = purchase.getProducts()) != null) {
                    Intrinsics.checkNotNullExpressionValue(products, "");
                    for (String str : products) {
                        if (!mapInAppPurchaseEvent.containsKey(str)) {
                            break;
                        }
                        if (linkedHashMap.containsKey(purchase)) {
                            Object obj = linkedHashMap.get(purchase);
                            Intrinsics.checkNotNull(obj);
                            Intrinsics.checkNotNullExpressionValue(str, "");
                            ProductDetails productDetails = mapInAppPurchaseEvent.get(str);
                            Intrinsics.checkNotNull(productDetails);
                            ((Map) obj).put(str, productDetails);
                        } else {
                            ProductDetails productDetails2 = mapInAppPurchaseEvent.get(str);
                            Intrinsics.checkNotNull(productDetails2);
                            linkedHashMap.put(purchase, MapsKt.mutableMapOf(TuplesKt.to(str, productDetails2)));
                        }
                    }
                }
            }
        }
        return linkedHashMap;
    }

    private final SubscriptionOfferDetails getPackageName(ProductDetails.SubscriptionOfferDetails subscriptionOfferDetails) {
        String basePlanId = subscriptionOfferDetails.getBasePlanId();
        Intrinsics.checkNotNullExpressionValue(basePlanId, "");
        String offerId = subscriptionOfferDetails.getOfferId();
        List<String> offerTags = subscriptionOfferDetails.getOfferTags();
        Intrinsics.checkNotNullExpressionValue(offerTags, "");
        String offerToken = subscriptionOfferDetails.getOfferToken();
        Intrinsics.checkNotNullExpressionValue(offerToken, "");
        List<ProductDetails.PricingPhase> pricingPhaseList = subscriptionOfferDetails.getPricingPhases().getPricingPhaseList();
        Intrinsics.checkNotNullExpressionValue(pricingPhaseList, "");
        List<ProductDetails.PricingPhase> list = pricingPhaseList;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        for (ProductDetails.PricingPhase pricingPhase : list) {
            Intrinsics.checkNotNullExpressionValue(pricingPhase, "");
            arrayList.add(toJsonMap(pricingPhase));
        }
        return new SubscriptionOfferDetails(basePlanId, offerId, offerTags, offerToken, arrayList);
    }

    private final OneTimePurchaseOfferDetails toJsonMap(ProductDetails.OneTimePurchaseOfferDetails oneTimePurchaseOfferDetails) {
        String formattedPrice = oneTimePurchaseOfferDetails.getFormattedPrice();
        Intrinsics.checkNotNullExpressionValue(formattedPrice, "");
        long priceAmountMicros = oneTimePurchaseOfferDetails.getPriceAmountMicros();
        String priceCurrencyCode = oneTimePurchaseOfferDetails.getPriceCurrencyCode();
        Intrinsics.checkNotNullExpressionValue(priceCurrencyCode, "");
        return new OneTimePurchaseOfferDetails(formattedPrice, priceAmountMicros, priceCurrencyCode);
    }

    private final PricingPhases toJsonMap(ProductDetails.PricingPhase pricingPhase) {
        int billingCycleCount = pricingPhase.getBillingCycleCount();
        String billingPeriod = pricingPhase.getBillingPeriod();
        Intrinsics.checkNotNullExpressionValue(billingPeriod, "");
        String formattedPrice = pricingPhase.getFormattedPrice();
        Intrinsics.checkNotNullExpressionValue(formattedPrice, "");
        long priceAmountMicros = pricingPhase.getPriceAmountMicros();
        String priceCurrencyCode = pricingPhase.getPriceCurrencyCode();
        Intrinsics.checkNotNullExpressionValue(priceCurrencyCode, "");
        return new PricingPhases(billingCycleCount, billingPeriod, formattedPrice, priceAmountMicros, priceCurrencyCode, pricingPhase.getRecurrenceMode());
    }

    private final List<SubscriptionPurchaseEvent> toJsonMap(Map<Purchase, ? extends Map<String, ProductDetails>> p0) {
        ArrayList arrayList;
        ArrayList arrayList2 = new ArrayList(p0.size());
        for (Map.Entry<Purchase, ? extends Map<String, ProductDetails>> entry : p0.entrySet()) {
            Purchase key = entry.getKey();
            Set<Map.Entry<String, ProductDetails>> setEntrySet = entry.getValue().entrySet();
            LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(setEntrySet, 10)), 16));
            Iterator<T> it = setEntrySet.iterator();
            while (it.hasNext()) {
                Map.Entry entry2 = (Map.Entry) it.next();
                Object key2 = entry2.getKey();
                List<ProductDetails.SubscriptionOfferDetails> subscriptionOfferDetails = ((ProductDetails) entry2.getValue()).getSubscriptionOfferDetails();
                if (subscriptionOfferDetails != null) {
                    Intrinsics.checkNotNullExpressionValue(subscriptionOfferDetails, "");
                    List<ProductDetails.SubscriptionOfferDetails> list = subscriptionOfferDetails;
                    ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
                    for (ProductDetails.SubscriptionOfferDetails subscriptionOfferDetails2 : list) {
                        Intrinsics.checkNotNullExpressionValue(subscriptionOfferDetails2, "");
                        arrayList3.add(getPackageName(subscriptionOfferDetails2));
                    }
                    arrayList = arrayList3;
                } else {
                    arrayList = null;
                }
                Pair pair = TuplesKt.to(key2, arrayList);
                linkedHashMap.put(pair.getFirst(), pair.getSecond());
            }
            List<String> products = key.getProducts();
            Intrinsics.checkNotNullExpressionValue(products, "");
            String purchaseToken = key.getPurchaseToken();
            Intrinsics.checkNotNullExpressionValue(purchaseToken, "");
            arrayList2.add(new SubscriptionPurchaseEvent(products, purchaseToken, Store.GOOGLE, key.getPurchaseTime(), linkedHashMap));
        }
        return arrayList2;
    }

    public final void onProductDetailsResponse(BillingResult p0, List<ProductDetails> p1) throws Throwable {
        Intrinsics.checkNotNullParameter(p0, "");
        Intrinsics.checkNotNullParameter(p1, "");
        try {
            if (p0.getResponseCode() == 0 && !p1.isEmpty()) {
                AFLogger.afDebugLog("[PurchaseConnector]: Received the following Product details:\n\ttype: " + this.toJsonMap + "\n\tProduct Ids: " + CollectionsKt.joinToString$default(p1, ", ", null, null, 0, null, new Function1<ProductDetails, CharSequence>() { // from class: com.appsflyer.internal.connector.purcahse.AFPurchaseConnectorA1n.2
                    @Override // p005kotlin.jvm.functions.Function1
                    /* JADX INFO: renamed from: InAppPurchaseEvent, reason: merged with bridge method [inline-methods] */
                    public final CharSequence invoke(ProductDetails productDetails) {
                        Intrinsics.checkNotNullParameter(productDetails, "");
                        String productId = productDetails.getProductId();
                        Intrinsics.checkNotNullExpressionValue(productId, "");
                        return productId;
                    }
                }, 30, null));
                Map<Purchase, Map<String, ProductDetails>> oneTimePurchaseOfferDetails = getOneTimePurchaseOfferDetails(p1);
                if (oneTimePurchaseOfferDetails.isEmpty()) {
                    return;
                }
                if (!Intrinsics.areEqual(BillingClient.ProductType.SUBS, this.toJsonMap)) {
                    this.getQuantity.toJsonMap(InAppPurchaseEvent(oneTimePurchaseOfferDetails));
                    return;
                }
                List<SubscriptionPurchaseEvent> jsonMap = toJsonMap(oneTimePurchaseOfferDetails);
                if (this.getOneTimePurchaseOfferDetails) {
                    this.getQuantity.getOneTimePurchaseOfferDetails(jsonMap);
                } else {
                    this.getQuantity.getQuantity(jsonMap);
                }
            }
        } catch (Throwable th) {
            try {
                Object[] objArr = {th};
                Object method = AFPurchaseConnectorA1w.PurchaseClientCompanion.get(-1174844903);
                if (method == null) {
                    method = ((Class) AFPurchaseConnectorA1w.getQuantity(70 - (ViewConfiguration.getKeyRepeatDelay() >> 16), (Process.myPid() >> 22) + 70, (char) (ImageFormat.getBitsPerPixel(0) + 1))).getMethod("getQuantity", Throwable.class);
                    AFPurchaseConnectorA1w.PurchaseClientCompanion.put(-1174844903, method);
                }
                ((Method) method).invoke(null, objArr);
                Object[] objArr2 = {th};
                Object method2 = AFPurchaseConnectorA1w.PurchaseClientCompanion.get(595644357);
                if (method2 == null) {
                    method2 = ((Class) AFPurchaseConnectorA1w.getQuantity((ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)) + 69, 69 - MotionEvent.axisFromString(""), (char) ((Process.getThreadPriority(0) + 20) >> 6))).getMethod("getPackageName", Throwable.class);
                    AFPurchaseConnectorA1w.PurchaseClientCompanion.put(595644357, method2);
                }
                ((Method) method2).invoke(null, objArr2);
                AFLogger.afErrorLog("[PurchaseConnector]: Failed to log new purchase", th, true);
            } catch (Throwable th2) {
                Throwable cause = th2.getCause();
                if (cause == null) {
                    throw th2;
                }
                throw cause;
            }
        }
    }
}
