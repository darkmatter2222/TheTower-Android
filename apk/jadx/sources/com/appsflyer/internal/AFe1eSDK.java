package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import com.appsflyer.attribution.AppsFlyerRequestListener;
import com.appsflyer.internal.components.network.http.exceptions.HttpException;
import com.appsflyer.internal.components.network.http.exceptions.ParsingException;
import com.appsflyer.internal.components.queue.exceptions.CreateHttpCallException;
import com.google.firebase.firestore.util.ExponentialBackoff;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AFe1eSDK<Result> extends AFe1lSDK<AFe1xSDK<Result>> {
    private AFc1uSDK areAllFieldsValid;
    protected final AFd1lSDK component1;
    public final AFf1cSDK component2;
    public AFe1xSDK<Result> component3;
    protected final AFd1mSDK component4;
    private String hashCode;

    public AFe1eSDK(AFe1mSDK aFe1mSDK, AFe1mSDK[] aFe1mSDKArr, AFc1bSDK aFc1bSDK, String str) {
        this(aFe1mSDK, aFe1mSDKArr, aFc1bSDK.getRevenue(), aFc1bSDK.AFKeystoreWrapper(), aFc1bSDK.equals(), aFc1bSDK.AFInAppEventType(), str);
    }

    public AFe1eSDK(AFe1mSDK aFe1mSDK, AFe1mSDK[] aFe1mSDKArr, AFc1bSDK aFc1bSDK, String str, String str2) {
        this(aFe1mSDK, aFe1mSDKArr, aFc1bSDK.getRevenue(), aFc1bSDK.AFKeystoreWrapper(), aFc1bSDK.equals(), aFc1bSDK.AFInAppEventType(), str);
        this.hashCode = str2;
    }

    private AFe1eSDK(AFe1mSDK aFe1mSDK, AFe1mSDK[] aFe1mSDKArr, AFd1lSDK aFd1lSDK, AFf1cSDK aFf1cSDK, AFd1mSDK aFd1mSDK, AFc1uSDK aFc1uSDK, String str) {
        super(aFe1mSDK, aFe1mSDKArr, str);
        this.component1 = aFd1lSDK;
        this.component2 = aFf1cSDK;
        this.component4 = aFd1mSDK;
        this.areAllFieldsValid = aFc1uSDK;
    }

    private void getMonetizationNetwork(AFd1dSDK aFd1dSDK) {
        String str = this.hashCode;
        this.hashCode = this.areAllFieldsValid.getMonetizationNetwork(new AFc1tSDK(aFd1dSDK.getRevenue, aFd1dSDK.getMediationNetwork(), "6.17.3", this.getCurrencyIso4217Code));
        if (str != null) {
            this.areAllFieldsValid.getCurrencyIso4217Code(str);
        }
    }

    @Override // com.appsflyer.internal.AFe1lSDK
    public boolean AFAdRevenueData() {
        if (component1() instanceof AFe1iSDK) {
            return false;
        }
        if (this.AFAdRevenueData == AFe1uSDK.TIMEOUT) {
            return true;
        }
        Throwable thComponent1 = component1();
        return (thComponent1 instanceof IOException) && !(thComponent1 instanceof ParsingException);
    }

    protected boolean a_() {
        return true;
    }

    protected abstract AppsFlyerRequestListener areAllFieldsValid();

    protected abstract boolean copydefault();

    @Override // com.appsflyer.internal.AFe1lSDK
    public long getCurrencyIso4217Code() {
        return ExponentialBackoff.DEFAULT_BACKOFF_MAX_DELAY_MS;
    }

    @Override // com.appsflyer.internal.AFe1lSDK
    public AFe1uSDK getMediationNetwork() throws Exception {
        if (a_() && this.component2.getMonetizationNetwork()) {
            AppsFlyerRequestListener appsFlyerRequestListenerAreAllFieldsValid = areAllFieldsValid();
            if (appsFlyerRequestListenerAreAllFieldsValid != null) {
                appsFlyerRequestListenerAreAllFieldsValid.onError(11, "Skipping event because 'isStopped' is true");
            }
            throw new AFe1iSDK();
        }
        String mediationNetwork = this.component2.getMediationNetwork();
        if (mediationNetwork == null || mediationNetwork.trim().isEmpty()) {
            AppsFlyerRequestListener appsFlyerRequestListenerAreAllFieldsValid2 = areAllFieldsValid();
            if (appsFlyerRequestListenerAreAllFieldsValid2 != null) {
                appsFlyerRequestListenerAreAllFieldsValid2.onError(41, "No dev key");
            }
            throw new AFe1pSDK();
        }
        AFd1jSDK<Result> revenue = getRevenue(mediationNetwork);
        if (revenue == null) {
            AFLogger.INSTANCE.e(AFg1cSDK.HTTP_CLIENT, "Failed to create a cached HTTP call", new CreateHttpCallException("createHttpCall returned null"), false, false);
            return AFe1uSDK.FAILURE;
        }
        if (copydefault()) {
            getMonetizationNetwork(revenue.getRevenue);
        }
        AFe1xSDK<Result> aFe1xSDKAFAdRevenueData = revenue.AFAdRevenueData();
        this.component3 = aFe1xSDKAFAdRevenueData;
        this.component4.getMonetizationNetwork(revenue.getRevenue.getRevenue, aFe1xSDKAFAdRevenueData.getStatusCode(), aFe1xSDKAFAdRevenueData.getBody().toString());
        AppsFlyerRequestListener appsFlyerRequestListenerAreAllFieldsValid3 = areAllFieldsValid();
        if (appsFlyerRequestListenerAreAllFieldsValid3 != null) {
            if (aFe1xSDKAFAdRevenueData.isSuccessful()) {
                appsFlyerRequestListenerAreAllFieldsValid3.onSuccess();
            } else {
                appsFlyerRequestListenerAreAllFieldsValid3.onError(50, new StringBuilder("Status code failure ").append(aFe1xSDKAFAdRevenueData.getStatusCode()).toString());
            }
        }
        return aFe1xSDKAFAdRevenueData.isSuccessful() ? AFe1uSDK.SUCCESS : AFe1uSDK.FAILURE;
    }

    @Override // com.appsflyer.internal.AFe1lSDK
    public final void getMediationNetwork(Throwable th) {
        Throwable th2;
        boolean z = !(th instanceof HttpException);
        if (th instanceof AFe1iSDK) {
            th2 = th;
            AFLogger.INSTANCE.e(AFg1cSDK.HTTP_CLIENT, "AppsFlyer SDK is stopped: the request was not sent to the server", th2, true, false);
        } else {
            th2 = th;
            AFLogger.INSTANCE.e(AFg1cSDK.HTTP_CLIENT, "Error while sending request to server: ".concat(String.valueOf(th2)), th2, false, false, z);
            AFLogger.INSTANCE.w(AFg1cSDK.HTTP_CLIENT, "Error while sending request to server: ".concat(String.valueOf(th2)));
        }
        AppsFlyerRequestListener appsFlyerRequestListenerAreAllFieldsValid = areAllFieldsValid();
        if (appsFlyerRequestListenerAreAllFieldsValid != null) {
            String message = th2.getMessage();
            if (message == null) {
                message = "";
            }
            appsFlyerRequestListenerAreAllFieldsValid.onError(40, message);
        }
    }

    @Override // com.appsflyer.internal.AFe1lSDK
    public final void getMonetizationNetwork() {
        String mediationNetwork;
        super.getMonetizationNetwork();
        if (!copydefault() || (mediationNetwork = this.component2.getMediationNetwork()) == null || mediationNetwork.trim().isEmpty()) {
            return;
        }
        AFd1jSDK<Result> revenue = getRevenue(mediationNetwork);
        if (revenue != null) {
            getMonetizationNetwork(revenue.getRevenue);
        } else {
            AFLogger.INSTANCE.e(AFg1cSDK.HTTP_CLIENT, "Failed to create a cached HTTP call", new CreateHttpCallException("createHttpCall returned null"), false, false);
        }
    }

    protected abstract AFd1jSDK<Result> getRevenue(String str);

    @Override // com.appsflyer.internal.AFe1lSDK
    public void getRevenue() {
        String str;
        if (this.AFAdRevenueData == AFe1uSDK.SUCCESS) {
            String str2 = this.hashCode;
            if (str2 != null) {
                this.areAllFieldsValid.getCurrencyIso4217Code(str2);
                return;
            }
            return;
        }
        if (AFAdRevenueData() || (str = this.hashCode) == null) {
            return;
        }
        this.areAllFieldsValid.getCurrencyIso4217Code(str);
    }
}
