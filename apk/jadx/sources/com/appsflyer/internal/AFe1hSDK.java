package com.appsflyer.internal;

import com.appsflyer.PurchaseHandler;
import com.appsflyer.internal.components.network.http.ResponseNetwork;
import java.util.Map;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AFe1hSDK extends AFe1gSDK {
    private final PurchaseHandler.PurchaseValidationCallback areAllFieldsValid;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AFe1hSDK(AFe1mSDK aFe1mSDK, AFe1mSDK[] aFe1mSDKArr, AFc1bSDK aFc1bSDK, Map<String, ? extends Object> map, PurchaseHandler.PurchaseValidationCallback purchaseValidationCallback) {
        super(aFe1mSDK, aFe1mSDKArr, aFc1bSDK, null, map);
        Intrinsics.checkNotNullParameter(aFe1mSDK, "");
        Intrinsics.checkNotNullParameter(aFe1mSDKArr, "");
        Intrinsics.checkNotNullParameter(aFc1bSDK, "");
        Intrinsics.checkNotNullParameter(map, "");
        this.areAllFieldsValid = purchaseValidationCallback;
    }

    @Override // com.appsflyer.internal.AFe1eSDK, com.appsflyer.internal.AFe1lSDK
    public boolean AFAdRevenueData() {
        if (((AFe1eSDK) this).component3 != null) {
            ResponseNetwork responseNetwork = ((AFe1eSDK) this).component3;
            Intrinsics.checkNotNull(responseNetwork);
            if (responseNetwork.getStatusCode() == 503) {
                return true;
            }
        }
        return super.AFAdRevenueData();
    }

    @Override // com.appsflyer.internal.AFe1gSDK
    protected final boolean component2() {
        return true;
    }

    @Override // com.appsflyer.internal.AFe1gSDK
    protected final String getMediationNetwork(Map<String, Object> map) {
        Intrinsics.checkNotNullParameter(map, "");
        if (map.containsKey("billing_library_version")) {
            Object objRemove = map.remove("billing_library_version");
            if (objRemove instanceof String) {
                return (String) objRemove;
            }
        }
        return null;
    }

    @Override // com.appsflyer.internal.AFe1gSDK
    protected final String getMonetizationNetwork(Map<String, Object> map) {
        Intrinsics.checkNotNullParameter(map, "");
        if (map.containsKey("connector_version")) {
            Object objRemove = map.remove("connector_version");
            if (objRemove instanceof String) {
                return (String) objRemove;
            }
        }
        return null;
    }

    @Override // com.appsflyer.internal.AFe1eSDK, com.appsflyer.internal.AFe1lSDK
    public final void getRevenue() {
        PurchaseHandler.PurchaseValidationCallback purchaseValidationCallback;
        PurchaseHandler.PurchaseValidationCallback purchaseValidationCallback2;
        super.getRevenue();
        Throwable thComponent1 = component1();
        if (thComponent1 != null && (purchaseValidationCallback2 = this.areAllFieldsValid) != null) {
            purchaseValidationCallback2.onFailure(thComponent1);
        }
        ResponseNetwork<String> responseNetwork = ((AFe1eSDK) this).component3;
        if (responseNetwork == null || (purchaseValidationCallback = this.areAllFieldsValid) == null) {
            return;
        }
        purchaseValidationCallback.onResponse(responseNetwork);
    }
}
