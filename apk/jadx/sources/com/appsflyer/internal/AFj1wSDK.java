package com.appsflyer.internal;

import android.content.ContentProviderClient;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.appsflyer.AFLogger;
import com.facebook.ads.internal.util.common.FbValidationUtils;
import com.ironsource.Ue;
import com.tapjoy.TapjoyConstants;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import p005kotlin.NoWhenBranchMatchedException;
import p005kotlin.TuplesKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes2.dex */
public final class AFj1wSDK extends AFi1aSDK {
    private final AFj1xSDK component2;
    private final Runnable component3;
    private final AFc1pSDK getMediationNetwork;
    private final ExecutorService getRevenue;
    private String toString;

    public /* synthetic */ class AFa1vSDK {
        public static final /* synthetic */ int[] getRevenue;

        static {
            int[] iArr = new int[AFj1xSDK.values().length];
            try {
                iArr[AFj1xSDK.FACEBOOK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AFj1xSDK.INSTAGRAM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AFj1xSDK.FACEBOOK_LITE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            getRevenue = iArr;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public AFj1wSDK(AFc1pSDK aFc1pSDK, ExecutorService executorService, AFj1xSDK aFj1xSDK, Runnable runnable, Runnable runnable2) {
        String str;
        Intrinsics.checkNotNullParameter(aFc1pSDK, "");
        Intrinsics.checkNotNullParameter(executorService, "");
        Intrinsics.checkNotNullParameter(aFj1xSDK, "");
        Intrinsics.checkNotNullParameter(runnable, "");
        Intrinsics.checkNotNullParameter(runnable2, "");
        int i = AFj1tSDK.AFa1zSDK.AFAdRevenueData[aFj1xSDK.ordinal()];
        if (i == 1) {
            str = "facebook";
        } else if (i == 2) {
            str = "instagram";
        } else {
            if (i != 3) {
                throw new NoWhenBranchMatchedException();
            }
            str = "facebook_lite";
        }
        super(TapjoyConstants.TJC_APP_PLACEMENT, str, aFc1pSDK, runnable);
        this.getMediationNetwork = aFc1pSDK;
        this.getRevenue = executorService;
        this.component2 = aFj1xSDK;
        this.component3 = runnable2;
    }

    private final boolean AFAdRevenueData(Context context) {
        int i = AFa1vSDK.getRevenue[this.component2.ordinal()];
        if (i == 1) {
            return getRevenue(context);
        }
        if (i == 2) {
            return getMediationNetwork(context);
        }
        if (i == 3) {
            return component2(context);
        }
        throw new NoWhenBranchMatchedException();
    }

    private static boolean component2(Context context) {
        return context.getPackageManager().resolveContentProvider("com.facebook.lite.provider.InstallReferrerProvider", 0) != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:70:0x025d  */
    /* JADX WARN: Code duplicated, block: B:85:0x02a7  */
    /* JADX WARN: Code duplicated, block: B:87:0x02ac A[PHI: r24
  0x02ac: PHI (r24v2 android.content.ContentProviderClient) = 
  (r24v1 android.content.ContentProviderClient)
  (r24v3 android.content.ContentProviderClient)
  (r24v3 android.content.ContentProviderClient)
 binds: [B:86:0x02aa, B:66:0x0249, B:71:0x0260] A[DONT_GENERATE, DONT_INLINE]] */
    public static final void getCurrencyIso4217Code(AFj1wSDK aFj1wSDK, Context context) {
        String str;
        Throwable th;
        Cursor cursor;
        ContentProviderClient contentProviderClientAcquireUnstableContentProviderClient;
        Uri uri;
        String string;
        String str2;
        Intrinsics.checkNotNullParameter(aFj1wSDK, "");
        Intrinsics.checkNotNullParameter(context, "");
        aFj1wSDK.component1 = System.currentTimeMillis();
        aFj1wSDK.areAllFieldsValid = AFj1qSDK.AFa1vSDK.STARTED;
        aFj1wSDK.addObserver(new AFj1qSDK.AnonymousClass1());
        String str3 = aFj1wSDK.toString;
        Intrinsics.checkNotNull(str3);
        try {
            int i = AFa1vSDK.getRevenue[aFj1wSDK.component2.ordinal()];
            str = "Error while collecting Meta Install Referrer for ";
            try {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            throw new NoWhenBranchMatchedException();
                        }
                        if (component2(context)) {
                            AFh1ySDK.d$default(AFLogger.INSTANCE, AFg1cSDK.META_REFERRER, "Found Facebook Lite content provider", false, 4, null);
                            uri = Uri.parse("content://com.facebook.lite.provider.InstallReferrerProvider/" + str3);
                        } else {
                            AFh1ySDK.d$default(AFLogger.INSTANCE, AFg1cSDK.META_REFERRER, "Facebook Lite content provider not found", false, 4, null);
                            uri = null;
                        }
                    } else if (getMediationNetwork(context)) {
                        AFh1ySDK.d$default(AFLogger.INSTANCE, AFg1cSDK.META_REFERRER, "Found Instagram content provider", false, 4, null);
                        uri = Uri.parse("content://com.instagram.contentprovider.InstallReferrerProvider/" + str3);
                    } else {
                        AFh1ySDK.d$default(AFLogger.INSTANCE, AFg1cSDK.META_REFERRER, "Instagram content provider not found", false, 4, null);
                        uri = null;
                    }
                } else if (getRevenue(context)) {
                    AFh1ySDK.d$default(AFLogger.INSTANCE, AFg1cSDK.META_REFERRER, "Found Facebook content provider", false, 4, null);
                    uri = Uri.parse("content://com.facebook.katana.provider.InstallReferrerProvider/" + str3);
                } else {
                    AFh1ySDK.d$default(AFLogger.INSTANCE, AFg1cSDK.META_REFERRER, "Facebook content provider not found", false, 4, null);
                    uri = null;
                }
                if (uri != null) {
                    contentProviderClientAcquireUnstableContentProviderClient = context.getContentResolver().acquireUnstableContentProviderClient(uri);
                    try {
                        Cursor cursorQuery = contentProviderClientAcquireUnstableContentProviderClient != null ? contentProviderClientAcquireUnstableContentProviderClient.query(uri, new String[]{"install_referrer", "is_ct", "actual_timestamp"}, null, null, null) : null;
                        if (cursorQuery != null) {
                            try {
                                if (cursorQuery.moveToFirst()) {
                                    int columnIndex = cursorQuery.getColumnIndex("install_referrer");
                                    if (columnIndex != -1) {
                                        string = cursorQuery.getString(columnIndex);
                                    } else {
                                        AFh1ySDK.d$default(AFLogger.INSTANCE, AFg1cSDK.META_REFERRER, "No such column, " + aFj1wSDK.component2 + " provider", false, 4, null);
                                        string = null;
                                    }
                                    if (string != null) {
                                        AFh1ySDK.d$default(AFLogger.INSTANCE, AFg1cSDK.META_REFERRER, "Collected " + aFj1wSDK.component2 + " attribution data.", false, 4, null);
                                        Map<String, Object> map = aFj1wSDK.AFAdRevenueData;
                                        Intrinsics.checkNotNullExpressionValue(map, "");
                                        map.put(Ue.n, "OK");
                                        Map<String, Object> map2 = aFj1wSDK.AFAdRevenueData;
                                        Intrinsics.checkNotNullExpressionValue(map2, "");
                                        map2.put(TapjoyConstants.TJC_REFERRER, string);
                                        int columnIndex2 = cursorQuery.getColumnIndex("actual_timestamp");
                                        Long lValueOf = columnIndex2 != -1 ? Long.valueOf(cursorQuery.getLong(columnIndex2)) : null;
                                        if (lValueOf != null) {
                                            aFj1wSDK.AFAdRevenueData.put("click_ts", Long.valueOf(lValueOf.longValue()));
                                        }
                                        int columnIndex3 = cursorQuery.getColumnIndex("is_ct");
                                        Integer numValueOf = columnIndex3 != -1 ? Integer.valueOf(cursorQuery.getInt(columnIndex3)) : null;
                                        if (numValueOf != null) {
                                            aFj1wSDK.AFAdRevenueData.put("meta_custom", MapsKt.mutableMapOf(TuplesKt.to("is_ct", Integer.valueOf(numValueOf.intValue()))));
                                        }
                                        int i2 = AFa1vSDK.getRevenue[aFj1wSDK.component2.ordinal()];
                                        if (i2 == 1) {
                                            str2 = FbValidationUtils.FB_PACKAGE;
                                        } else if (i2 == 2) {
                                            str2 = "com.instagram.android";
                                        } else {
                                            if (i2 != 3) {
                                                throw new NoWhenBranchMatchedException();
                                            }
                                            str2 = "com.facebook.lite";
                                        }
                                        Map<String, Object> map3 = aFj1wSDK.AFAdRevenueData;
                                        Intrinsics.checkNotNullExpressionValue(map3, "");
                                        map3.put("api_ver", Long.valueOf(AFj1iSDK.getCurrencyIso4217Code(context, str2)));
                                        Map<String, Object> map4 = aFj1wSDK.AFAdRevenueData;
                                        Intrinsics.checkNotNullExpressionValue(map4, "");
                                        map4.put("api_ver_name", AFj1iSDK.getRevenue(context, str2));
                                    }
                                    cursorQuery.close();
                                    if (contentProviderClientAcquireUnstableContentProviderClient != null) {
                                        contentProviderClientAcquireUnstableContentProviderClient.close();
                                    }
                                } else {
                                    AFh1ySDK.d$default(AFLogger.INSTANCE, AFg1cSDK.META_REFERRER, "Content provider returned no data", false, 4, null);
                                    if (cursorQuery != null) {
                                        cursorQuery.close();
                                    }
                                    if (contentProviderClientAcquireUnstableContentProviderClient != null) {
                                        contentProviderClientAcquireUnstableContentProviderClient.close();
                                    }
                                }
                            } catch (Throwable th2) {
                                cursor = cursorQuery;
                                th = th2;
                                try {
                                    AFh1ySDK.e$default(AFLogger.INSTANCE, AFg1cSDK.META_REFERRER, str + aFj1wSDK.component2.name() + " provider", th, false, false, false, false, 120, null);
                                    if (cursor != null) {
                                        cursor.close();
                                    }
                                    if (contentProviderClientAcquireUnstableContentProviderClient != null) {
                                        contentProviderClientAcquireUnstableContentProviderClient.close();
                                    }
                                } catch (Throwable th3) {
                                    if (cursor != null) {
                                        cursor.close();
                                    }
                                    if (contentProviderClientAcquireUnstableContentProviderClient != null) {
                                        contentProviderClientAcquireUnstableContentProviderClient.close();
                                    }
                                    throw th3;
                                }
                            }
                        } else {
                            AFh1ySDK.d$default(AFLogger.INSTANCE, AFg1cSDK.META_REFERRER, "Content provider returned no data", false, 4, null);
                            if (cursorQuery != null) {
                                cursorQuery.close();
                            }
                            if (contentProviderClientAcquireUnstableContentProviderClient != null) {
                                contentProviderClientAcquireUnstableContentProviderClient.close();
                            }
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        cursor = null;
                    }
                }
            } catch (Throwable th5) {
                th = th5;
                th = th;
                cursor = null;
                contentProviderClientAcquireUnstableContentProviderClient = null;
                AFh1ySDK.e$default(AFLogger.INSTANCE, AFg1cSDK.META_REFERRER, str + aFj1wSDK.component2.name() + " provider", th, false, false, false, false, 120, null);
                if (cursor != null) {
                    cursor.close();
                }
                if (contentProviderClientAcquireUnstableContentProviderClient != null) {
                    contentProviderClientAcquireUnstableContentProviderClient.close();
                }
                aFj1wSDK.getMonetizationNetwork();
                aFj1wSDK.component3.run();
            }
        } catch (Throwable th6) {
            th = th6;
            str = "Error while collecting Meta Install Referrer for ";
        }
        aFj1wSDK.getMonetizationNetwork();
        aFj1wSDK.component3.run();
    }

    private static boolean getMediationNetwork(Context context) {
        return context.getPackageManager().resolveContentProvider("com.instagram.contentprovider.InstallReferrerProvider", 0) != null;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00aa A[PHI: r0
  0x00aa: PHI (r0v8 java.lang.String) = (r0v7 java.lang.String), (r0v15 java.lang.String), (r0v22 java.lang.String) binds: [B:15:0x0048, B:25:0x0078, B:35:0x00a7] A[DONT_GENERATE, DONT_INLINE]] */
    private final boolean getMonetizationNetwork(Context context) {
        String str;
        if (!getMediationNetwork()) {
            AFh1ySDK.d$default(AFLogger.INSTANCE, AFg1cSDK.META_REFERRER, "Referrer collection disallowed by counter.", false, 4, null);
            return false;
        }
        String monetizationNetwork = this.getMediationNetwork.getMonetizationNetwork("com.facebook.sdk.ApplicationId");
        String strRemovePrefix = monetizationNetwork != null ? StringsKt.removePrefix(monetizationNetwork, (CharSequence) "fb") : null;
        String str2 = strRemovePrefix;
        if (str2 == null || str2.length() == 0) {
            AFh1ySDK.d$default(AFLogger.INSTANCE, AFg1cSDK.META_REFERRER, "Facebook app id Manifest metadata is not found.", false, 4, null);
            strRemovePrefix = null;
        }
        if (strRemovePrefix == null) {
            String mediationNetwork = this.getMediationNetwork.getMediationNetwork("facebook_application_id");
            strRemovePrefix = mediationNetwork != null ? StringsKt.removePrefix(mediationNetwork, (CharSequence) "fb") : null;
            String str3 = strRemovePrefix;
            if (str3 == null || str3.length() == 0) {
                AFh1ySDK.d$default(AFLogger.INSTANCE, AFg1cSDK.META_REFERRER, "Facebook app id string resource is not found.", false, 4, null);
                strRemovePrefix = null;
            }
            if (strRemovePrefix == null) {
                String monetizationNetwork2 = this.getMediationNetwork.getMonetizationNetwork("com.appsflyer.FacebookApplicationId");
                strRemovePrefix = monetizationNetwork2 != null ? StringsKt.removePrefix(monetizationNetwork2, (CharSequence) "fb") : null;
                String str4 = strRemovePrefix;
                if (str4 == null || str4.length() == 0) {
                    AFh1ySDK.d$default(AFLogger.INSTANCE, AFg1cSDK.META_REFERRER, "AF Facebook app id Manifest metadata is not found.", false, 4, null);
                    strRemovePrefix = null;
                }
                str = strRemovePrefix != null ? strRemovePrefix : null;
            }
        }
        this.toString = str;
        if (str == null) {
            AFh1ySDK.d$default(AFLogger.INSTANCE, AFg1cSDK.META_REFERRER, "Referrer collection disallowed by missing Facebook app id.", false, 4, null);
            return false;
        }
        if (AFAdRevenueData(context)) {
            return true;
        }
        AFh1ySDK.d$default(AFLogger.INSTANCE, AFg1cSDK.META_REFERRER, "Referrer collection disallowed by missing content providers.", false, 4, null);
        return false;
    }

    private static boolean getRevenue(Context context) {
        return context.getPackageManager().resolveContentProvider("com.facebook.katana.provider.InstallReferrerProvider", 0) != null;
    }

    @Override // com.appsflyer.internal.AFj1qSDK
    public final void getCurrencyIso4217Code(final Context context) {
        Intrinsics.checkNotNullParameter(context, "");
        if (getMonetizationNetwork(context)) {
            this.getRevenue.execute(new Runnable() { // from class: com.appsflyer.internal.AFj1wSDK$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    AFj1wSDK.getCurrencyIso4217Code(this.f$0, context);
                }
            });
        } else {
            this.component3.run();
        }
    }
}
