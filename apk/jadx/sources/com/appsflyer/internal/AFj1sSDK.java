package com.appsflyer.internal;

import android.content.ContentProviderClient;
import android.content.Context;
import android.content.pm.PackageItemInfo;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.DeadObjectException;
import android.os.RemoteException;
import com.appsflyer.AFLogger;
import com.ironsource.Ue;
import com.tapjoy.TapjoyConstants;

/* JADX INFO: loaded from: classes2.dex */
public final class AFj1sSDK extends AFj1qSDK {
    private final AFc1bSDK getMediationNetwork;
    final ProviderInfo getRevenue;

    public AFj1sSDK(ProviderInfo providerInfo, Runnable runnable, AFc1bSDK aFc1bSDK) {
        super("af_referrer", providerInfo.authority, runnable);
        this.getMediationNetwork = aFc1bSDK;
        this.getRevenue = providerInfo;
    }

    public static ContentProviderClient B_(Context context, Uri uri) {
        try {
            return context.getContentResolver().acquireUnstableContentProviderClient(uri);
        } catch (SecurityException e) {
            AFLogger.INSTANCE.e(AFg1cSDK.PREINSTALL, "Failed to acquire unstable content providerClient due to SecurityException", e, false, true, false);
            return null;
        } catch (Throwable th) {
            AFLogger.INSTANCE.e(AFg1cSDK.PREINSTALL, "Failed to acquire unstable content providerClient due to unexpected throwable", th, false, true, false);
            return null;
        }
    }

    @Override // com.appsflyer.internal.AFj1qSDK
    public final void getCurrencyIso4217Code(final Context context) {
        this.getMediationNetwork.getMediationNetwork().execute(new Runnable() { // from class: com.appsflyer.internal.AFj1sSDK.5
            @Override // java.lang.Runnable
            public final void run() {
                Cursor cursorQuery;
                AFj1sSDK aFj1sSDK = AFj1sSDK.this;
                aFj1sSDK.component1 = System.currentTimeMillis();
                aFj1sSDK.areAllFieldsValid = AFj1qSDK.AFa1vSDK.STARTED;
                aFj1sSDK.addObserver(new AFj1qSDK.AnonymousClass1());
                Uri uri = Uri.parse(new StringBuilder("content://").append(AFj1sSDK.this.getRevenue.authority).append("/transaction_id").toString());
                ContentProviderClient contentProviderClientB_ = AFj1sSDK.B_(context, uri);
                try {
                    cursorQuery = contentProviderClientB_ != null ? contentProviderClientB_.query(uri, null, new StringBuilder("app_id=").append(context.getPackageName()).toString(), null, null) : null;
                } catch (DeadObjectException e) {
                    AFLogger.INSTANCE.e(AFg1cSDK.PREINSTALL, "Failed to acquire unstable content providerClient", e, false, true, false);
                } catch (RemoteException e2) {
                    AFLogger.INSTANCE.e(AFg1cSDK.PREINSTALL, "Failed to query unstable content providerClient", e2, false, true, false);
                } catch (Throwable th) {
                    AFLogger.INSTANCE.e(AFg1cSDK.PREINSTALL, "Error to get data from providerClient ", th, false, true, false);
                } finally {
                    contentProviderClientB_.close();
                }
                if (cursorQuery != null) {
                    int columnIndex = cursorQuery.getColumnIndex("transaction_id");
                    if (columnIndex == -1) {
                        AFLogger.INSTANCE.w(AFg1cSDK.PREINSTALL, "Wrong column name");
                        AFj1sSDK.this.AFAdRevenueData.put(Ue.n, "FEATURE_NOT_SUPPORTED");
                    } else {
                        AFj1sSDK.this.AFAdRevenueData.put(Ue.n, "OK");
                        if (cursorQuery.moveToFirst()) {
                            String string = cursorQuery.getString(columnIndex);
                            cursorQuery.close();
                            if (string != null && !string.isEmpty()) {
                                AFj1sSDK.this.AFAdRevenueData.put(TapjoyConstants.TJC_REFERRER, string);
                            }
                        }
                    }
                    cursorQuery.close();
                } else {
                    AFLogger.INSTANCE.w(AFg1cSDK.PREINSTALL, "ContentProvider query failed, got null Cursor");
                    AFj1sSDK.this.AFAdRevenueData.put(Ue.n, "SERVICE_UNAVAILABLE");
                }
                AFj1sSDK.this.AFAdRevenueData.put("api_ver", Long.valueOf(AFj1iSDK.getCurrencyIso4217Code(context, ((PackageItemInfo) AFj1sSDK.this.getRevenue).packageName)));
                AFj1sSDK.this.AFAdRevenueData.put("api_ver_name", AFj1iSDK.getRevenue(context, ((PackageItemInfo) AFj1sSDK.this.getRevenue).packageName));
                AFj1sSDK.this.getMonetizationNetwork();
            }
        });
    }
}
