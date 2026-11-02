package com.appsflyer.internal;

import android.text.TextUtils;
import android.util.Base64;
import com.appsflyer.AFLogger;
import com.appsflyer.internal.components.network.http.exceptions.HttpException;
import com.appsflyer.internal.components.network.http.exceptions.ParsingException;
import com.google.android.gms.common.ConnectionResult;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes2.dex */
public final class AFf1mSDK extends AFe1lSDK<AFf1oSDK> {
    private final AFc1pSDK areAllFieldsValid;
    public final AFf1nSDK component1;
    public AFf1oSDK component2;
    public AFi1vSDK component3;
    private final AFf1qSDK component4;
    private final String copy;
    private final AFf1iSDK copydefault;
    private final AFf1hSDK equals;
    private final AFf1cSDK hashCode;
    private final AFd1lSDK toString;

    public AFf1mSDK(AFf1qSDK aFf1qSDK, AFc1pSDK aFc1pSDK, AFf1cSDK aFf1cSDK, AFf1iSDK aFf1iSDK, AFd1lSDK aFd1lSDK, AFf1hSDK aFf1hSDK, String str, AFf1nSDK aFf1nSDK) {
        super(AFe1mSDK.RC_CDN, new AFe1mSDK[0], "UpdateRemoteConfiguration");
        this.component2 = null;
        this.component4 = aFf1qSDK;
        this.areAllFieldsValid = aFc1pSDK;
        this.hashCode = aFf1cSDK;
        this.copydefault = aFf1iSDK;
        this.toString = aFd1lSDK;
        this.equals = aFf1hSDK;
        this.copy = str;
        this.component1 = aFf1nSDK;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0058  */
    /* JADX WARN: Code duplicated, block: B:17:0x006c A[Catch: all -> 0x0191, IOException -> 0x01cd, TryCatch #2 {IOException -> 0x01cd, all -> 0x0191, blocks: (B:15:0x0064, B:17:0x006c, B:19:0x0093, B:21:0x00ad, B:24:0x00b9, B:26:0x00c5, B:28:0x0140, B:30:0x0156, B:32:0x0160, B:34:0x0185), top: B:54:0x0064 }] */
    /* JADX WARN: Code duplicated, block: B:19:0x0093 A[Catch: all -> 0x0191, IOException -> 0x01cd, TryCatch #2 {IOException -> 0x01cd, all -> 0x0191, blocks: (B:15:0x0064, B:17:0x006c, B:19:0x0093, B:21:0x00ad, B:24:0x00b9, B:26:0x00c5, B:28:0x0140, B:30:0x0156, B:32:0x0160, B:34:0x0185), top: B:54:0x0064 }] */
    /* JADX WARN: Code duplicated, block: B:26:0x00c5 A[Catch: all -> 0x0191, IOException -> 0x01cd, TryCatch #2 {IOException -> 0x01cd, all -> 0x0191, blocks: (B:15:0x0064, B:17:0x006c, B:19:0x0093, B:21:0x00ad, B:24:0x00b9, B:26:0x00c5, B:28:0x0140, B:30:0x0156, B:32:0x0160, B:34:0x0185), top: B:54:0x0064 }] */
    /* JADX WARN: Code duplicated, block: B:28:0x0140 A[Catch: all -> 0x0191, IOException -> 0x01cd, TryCatch #2 {IOException -> 0x01cd, all -> 0x0191, blocks: (B:15:0x0064, B:17:0x006c, B:19:0x0093, B:21:0x00ad, B:24:0x00b9, B:26:0x00c5, B:28:0x0140, B:30:0x0156, B:32:0x0160, B:34:0x0185), top: B:54:0x0064 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x0160 A[Catch: all -> 0x0191, IOException -> 0x01cd, TryCatch #2 {IOException -> 0x01cd, all -> 0x0191, blocks: (B:15:0x0064, B:17:0x006c, B:19:0x0093, B:21:0x00ad, B:24:0x00b9, B:26:0x00c5, B:28:0x0140, B:30:0x0156, B:32:0x0160, B:34:0x0185), top: B:54:0x0064 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x0185 A[Catch: all -> 0x0191, IOException -> 0x01cd, TRY_LEAVE, TryCatch #2 {IOException -> 0x01cd, all -> 0x0191, blocks: (B:15:0x0064, B:17:0x006c, B:19:0x0093, B:21:0x00ad, B:24:0x00b9, B:26:0x00c5, B:28:0x0140, B:30:0x0156, B:32:0x0160, B:34:0x0185), top: B:54:0x0064 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x0064 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    private AFf1oSDK component2() throws InterruptedException, InterruptedIOException {
        String revenue;
        AFe1xSDK<AFi1wSDK> aFe1xSDKAFAdRevenueData;
        AFi1wSDK body;
        String mediationNetwork;
        String mediationNetwork2;
        String mediationNetwork3;
        AFi1rSDK revenue2;
        long jCurrentTimeMillis = System.currentTimeMillis();
        String str = this.copy;
        String mediationNetwork4 = this.hashCode.getMediationNetwork();
        if (mediationNetwork4 != null && mediationNetwork4.trim().length() != 0) {
            if (str == null) {
                AFLogger.INSTANCE.w(AFg1cSDK.REMOTE_CONTROL, "Can't create CDN token, domain or version is not provided.");
            } else {
                revenue = AFj1bSDK.getRevenue(TextUtils.join("\u2063", new String[]{"appsflyersdk.com", str, this.areAllFieldsValid.getRevenue.getRevenue.getPackageName()}), mediationNetwork4);
            }
            if (revenue == null) {
                AFLogger.INSTANCE.v(AFg1cSDK.REMOTE_CONTROL, "can't create CDN token, skipping fetch config");
                return AFf1oSDK.FAILURE;
            }
            try {
                if (this.equals.getRevenue()) {
                    AFLogger.INSTANCE.d(AFg1cSDK.REMOTE_CONTROL, "active config is valid, skipping fetch");
                    return AFf1oSDK.USE_CACHED;
                }
                AFLogger.INSTANCE.i(AFg1cSDK.REMOTE_CONTROL, "Cached config is expired, updating...");
                aFe1xSDKAFAdRevenueData = this.toString.getMonetizationNetwork(this.equals.getCurrencyIso4217Code(), this.equals.AFAdRevenueData(), revenue, ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED).AFAdRevenueData();
                if (aFe1xSDKAFAdRevenueData.isSuccessful()) {
                    getRevenue(revenue, jCurrentTimeMillis, null, null, aFe1xSDKAFAdRevenueData);
                    AFLogger.INSTANCE.w(AFg1cSDK.REMOTE_CONTROL, new StringBuilder("failed to fetch remote config from CDN with status code: ").append(aFe1xSDKAFAdRevenueData.getStatusCode()).toString());
                    return AFf1oSDK.FAILURE;
                }
                body = aFe1xSDKAFAdRevenueData.getBody();
                mediationNetwork = aFe1xSDKAFAdRevenueData.getMediationNetwork("x-amz-meta-af-auth-v1");
                mediationNetwork2 = aFe1xSDKAFAdRevenueData.getMediationNetwork("CF-Cache-Status");
                mediationNetwork3 = this.hashCode.getMediationNetwork();
                if (mediationNetwork3 != null && mediationNetwork3.trim().length() != 0) {
                    revenue2 = this.component4.getRevenue(body, mediationNetwork, revenue, mediationNetwork3);
                    if (revenue2.getRevenue()) {
                        getRevenue(revenue, jCurrentTimeMillis, revenue2.getMediationNetwork, mediationNetwork2, aFe1xSDKAFAdRevenueData);
                        AFLogger.INSTANCE.w(AFg1cSDK.REMOTE_CONTROL, "fetched config is not valid (MITM?) refuse to use it.");
                        return AFf1oSDK.FAILURE;
                    }
                    long monetizationNetwork = this.equals.getMonetizationNetwork();
                    AFLogger.INSTANCE.v(AFg1cSDK.REMOTE_CONTROL, new StringBuilder("using max-age fallback: ").append(monetizationNetwork).append(" seconds").toString());
                    long jCurrentTimeMillis2 = System.currentTimeMillis();
                    AFf1iSDK aFf1iSDK = this.copydefault;
                    aFf1iSDK.getMonetizationNetwork.AFAdRevenueData("af_remote_config", Base64.encodeToString(body.getRevenue.getBytes(Charset.defaultCharset()), 2));
                    aFf1iSDK.getMediationNetwork = aFf1iSDK.AFAdRevenueData;
                    aFf1iSDK.getMonetizationNetwork.getRevenue("af_rc_timestamp", jCurrentTimeMillis2);
                    aFf1iSDK.getMonetizationNetwork.getRevenue("af_rc_max_age", monetizationNetwork);
                    aFf1iSDK.AFAdRevenueData = body;
                    aFf1iSDK.getCurrencyIso4217Code = jCurrentTimeMillis2;
                    aFf1iSDK.getRevenue = monetizationNetwork;
                    AFLogger.INSTANCE.d(AFg1cSDK.REMOTE_CONTROL, new StringBuilder("Config successfully updated, timeToLive: ").append(monetizationNetwork).append(" seconds").toString());
                    getRevenue(revenue, jCurrentTimeMillis, revenue2.getMediationNetwork, mediationNetwork2, aFe1xSDKAFAdRevenueData);
                    return AFf1oSDK.SUCCESS;
                }
                AFLogger.INSTANCE.w(AFg1cSDK.REMOTE_CONTROL, "Dev key is not set, SDK is not started.");
                return AFf1oSDK.FAILURE;
            } catch (IOException e) {
                AFLogger.INSTANCE.e(AFg1cSDK.REMOTE_CONTROL, new StringBuilder("failed to fetch remote config: ").append(e.getMessage()).toString(), e, true, false, false);
                getMediationNetwork(revenue, jCurrentTimeMillis, e instanceof ParsingException ? ((ParsingException) e).getRawResponse() : null, null, null, null, e);
                if (e.getCause() instanceof InterruptedIOException) {
                    throw ((InterruptedIOException) e.getCause());
                }
                return AFf1oSDK.FAILURE;
            } catch (Throwable th) {
                AFLogger.INSTANCE.e(AFg1cSDK.REMOTE_CONTROL, new StringBuilder("failed to update remote config: ").append(th.getMessage()).toString(), th, true, false, false);
                getMediationNetwork(revenue, jCurrentTimeMillis, null, null, null, null, th);
                if (th.getCause() instanceof InterruptedException) {
                    throw ((InterruptedException) th.getCause());
                }
                return AFf1oSDK.FAILURE;
            }
        }
        AFLogger.INSTANCE.w(AFg1cSDK.REMOTE_CONTROL, "Dev key is not set, SDK is not started.");
        revenue = null;
        if (revenue == null) {
            AFLogger.INSTANCE.v(AFg1cSDK.REMOTE_CONTROL, "can't create CDN token, skipping fetch config");
            return AFf1oSDK.FAILURE;
        }
        if (this.equals.getRevenue()) {
            AFLogger.INSTANCE.d(AFg1cSDK.REMOTE_CONTROL, "active config is valid, skipping fetch");
            return AFf1oSDK.USE_CACHED;
        }
        AFLogger.INSTANCE.i(AFg1cSDK.REMOTE_CONTROL, "Cached config is expired, updating...");
        aFe1xSDKAFAdRevenueData = this.toString.getMonetizationNetwork(this.equals.getCurrencyIso4217Code(), this.equals.AFAdRevenueData(), revenue, ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED).AFAdRevenueData();
        if (aFe1xSDKAFAdRevenueData.isSuccessful()) {
            getRevenue(revenue, jCurrentTimeMillis, null, null, aFe1xSDKAFAdRevenueData);
            AFLogger.INSTANCE.w(AFg1cSDK.REMOTE_CONTROL, new StringBuilder("failed to fetch remote config from CDN with status code: ").append(aFe1xSDKAFAdRevenueData.getStatusCode()).toString());
            return AFf1oSDK.FAILURE;
        }
        body = aFe1xSDKAFAdRevenueData.getBody();
        mediationNetwork = aFe1xSDKAFAdRevenueData.getMediationNetwork("x-amz-meta-af-auth-v1");
        mediationNetwork2 = aFe1xSDKAFAdRevenueData.getMediationNetwork("CF-Cache-Status");
        mediationNetwork3 = this.hashCode.getMediationNetwork();
        if (mediationNetwork3 != null) {
            revenue2 = this.component4.getRevenue(body, mediationNetwork, revenue, mediationNetwork3);
            if (revenue2.getRevenue()) {
                getRevenue(revenue, jCurrentTimeMillis, revenue2.getMediationNetwork, mediationNetwork2, aFe1xSDKAFAdRevenueData);
                AFLogger.INSTANCE.w(AFg1cSDK.REMOTE_CONTROL, "fetched config is not valid (MITM?) refuse to use it.");
                return AFf1oSDK.FAILURE;
            }
            long monetizationNetwork2 = this.equals.getMonetizationNetwork();
            AFLogger.INSTANCE.v(AFg1cSDK.REMOTE_CONTROL, new StringBuilder("using max-age fallback: ").append(monetizationNetwork2).append(" seconds").toString());
            long jCurrentTimeMillis3 = System.currentTimeMillis();
            AFf1iSDK aFf1iSDK2 = this.copydefault;
            aFf1iSDK2.getMonetizationNetwork.AFAdRevenueData("af_remote_config", Base64.encodeToString(body.getRevenue.getBytes(Charset.defaultCharset()), 2));
            aFf1iSDK2.getMediationNetwork = aFf1iSDK2.AFAdRevenueData;
            aFf1iSDK2.getMonetizationNetwork.getRevenue("af_rc_timestamp", jCurrentTimeMillis3);
            aFf1iSDK2.getMonetizationNetwork.getRevenue("af_rc_max_age", monetizationNetwork2);
            aFf1iSDK2.AFAdRevenueData = body;
            aFf1iSDK2.getCurrencyIso4217Code = jCurrentTimeMillis3;
            aFf1iSDK2.getRevenue = monetizationNetwork2;
            AFLogger.INSTANCE.d(AFg1cSDK.REMOTE_CONTROL, new StringBuilder("Config successfully updated, timeToLive: ").append(monetizationNetwork2).append(" seconds").toString());
            getRevenue(revenue, jCurrentTimeMillis, revenue2.getMediationNetwork, mediationNetwork2, aFe1xSDKAFAdRevenueData);
            return AFf1oSDK.SUCCESS;
        }
        AFLogger.INSTANCE.w(AFg1cSDK.REMOTE_CONTROL, "Dev key is not set, SDK is not started.");
        return AFf1oSDK.FAILURE;
    }

    private void getMediationNetwork(String str, long j, AFe1xSDK<?> aFe1xSDK, AFi1wSDK aFi1wSDK, AFi1uSDK aFi1uSDK, String str2, Throwable th) {
        long j2;
        int statusCode;
        Throwable th2;
        if (aFe1xSDK != null) {
            j2 = aFe1xSDK.AFAdRevenueData.getRevenue;
            statusCode = aFe1xSDK.getStatusCode();
        } else {
            j2 = 0;
            statusCode = 0;
        }
        int i = statusCode;
        if (th instanceof HttpException) {
            Throwable cause = th.getCause();
            j2 = ((HttpException) th).getMetrics().getRevenue;
            th2 = cause;
        } else {
            th2 = th;
        }
        this.component3 = new AFi1vSDK(aFi1wSDK != null ? aFi1wSDK.getCurrencyIso4217Code : null, str, j2, System.currentTimeMillis() - j, i, aFi1uSDK, str2, th2);
    }

    private void getRevenue(String str, long j, AFi1uSDK aFi1uSDK, String str2, AFe1xSDK<AFi1wSDK> aFe1xSDK) {
        getMediationNetwork(str, j, aFe1xSDK, aFe1xSDK != null ? aFe1xSDK.getBody() : null, aFi1uSDK, str2 != null ? str2 : null, null);
    }

    @Override // com.appsflyer.internal.AFe1lSDK
    public final boolean AFAdRevenueData() {
        return false;
    }

    @Override // com.appsflyer.internal.AFe1lSDK
    public final long getCurrencyIso4217Code() {
        return 1500L;
    }

    @Override // com.appsflyer.internal.AFe1lSDK
    public final AFe1uSDK getMediationNetwork() throws Exception {
        try {
            AFf1oSDK aFf1oSDKComponent2 = component2();
            this.component2 = aFf1oSDKComponent2;
            return aFf1oSDKComponent2 == AFf1oSDK.FAILURE ? AFe1uSDK.FAILURE : AFe1uSDK.SUCCESS;
        } catch (InterruptedIOException e) {
            e = e;
            AFLogger.INSTANCE.e(AFg1cSDK.REMOTE_CONTROL, "RC update config failed", e, false, false, false);
            this.component2 = AFf1oSDK.FAILURE;
            return AFe1uSDK.TIMEOUT;
        } catch (InterruptedException e2) {
            e = e2;
            AFLogger.INSTANCE.e(AFg1cSDK.REMOTE_CONTROL, "RC update config failed", e, false, false, false);
            this.component2 = AFf1oSDK.FAILURE;
            return AFe1uSDK.TIMEOUT;
        } catch (SocketTimeoutException unused) {
            this.component2 = AFf1oSDK.FAILURE;
            return AFe1uSDK.TIMEOUT;
        }
    }
}
