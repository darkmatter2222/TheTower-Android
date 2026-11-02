package com.appsflyer.internal.connector.purcahse;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.os.Process;
import android.telephony.cdma.CdmaCellLocation;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingClientStateListener;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.PurchasesResponseListener;
import com.android.billingclient.api.PurchasesUpdatedListener;
import com.android.billingclient.api.QueryProductDetailsParams;
import com.android.billingclient.api.QueryPurchasesParams;
import com.appsflyer.AFLogger;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import kotlin.fh;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public class AFPurchaseConnectorA1u implements BillingClientStateListener, PurchasesUpdatedListener, AFPurchaseConnectorA1r, AFPurchaseConnectorA1y {
    private static int $10 = 0;
    private static int $11 = 1;
    private static int PurchaseClientBuilder = 0;
    private static int logSubscriptions = 1;
    private static long setSandbox = 1913538383092066235L;
    private AFPurchaseConnectorA1r.AFPurchaseConnectorA1x InAppPurchaseEvent;
    private ScheduledExecutorService equals;
    private final BillingClient getOneTimePurchaseOfferDetails;
    private final AFPurchaseConnectorA1l getPackageName;
    final SharedPreferences getQuantity;
    private final AFPurchaseConnectorA1v stopObservingTransactions;
    final Context toJsonMap;
    private final PurchasesResponseListener startObservingTransactions = new PurchasesResponseListener() { // from class: com.appsflyer.internal.connector.purcahse.AFPurchaseConnectorA1u.5
        @Override // com.android.billingclient.api.PurchasesResponseListener
        public final void onQueryPurchasesResponse(BillingResult billingResult, List<Purchase> list) {
            if (billingResult.getResponseCode() != 0) {
                AFLogger.afWarnLog("[PurchaseConnector]: Failed to query purchases history");
            } else if (!list.isEmpty()) {
                AFPurchaseConnectorA1u.this.getPackageName(list);
            } else {
                AFPurchaseConnectorA1u.this.getQuantity.edit().putBoolean("inapp_purchases_history_processed", true).apply();
                AFLogger.afDebugLog("[PurchaseConnector]: No history for non-consumed one-time purchases found");
            }
        }
    };
    private final PurchasesResponseListener PurchaseClient = new PurchasesResponseListener() { // from class: com.appsflyer.internal.connector.purcahse.AFPurchaseConnectorA1u.1
        private static int $10 = 0;
        private static int $11 = 1;
        private static int getOneTimePurchaseOfferDetails = 1;
        private static int[] getPackageName = {1480127459, 1870905519, -2086726114, -1195519311, -721237928, 1029398052, 1886925259, 513191056, -1623653556, -402706125, -2037654713, 233685496, -1374427459, 130651729, -1313398039, -1738649748, -1699343426, 1532763029};
        private static int getQuantity;

        private static void a(int[] iArr, int i, Object[] objArr) {
            int length;
            int[] iArr2;
            int i2;
            int length2;
            int[] iArr3;
            int i3;
            int i4 = 2 % 2;
            AFPurchaseConnectorA1c aFPurchaseConnectorA1c = new AFPurchaseConnectorA1c();
            char[] cArr = new char[4];
            char[] cArr2 = new char[iArr.length * 2];
            int[] iArr4 = getPackageName;
            long j = -6033101233399176549L;
            if (iArr4 != null) {
                int i5 = $11 + 79;
                $10 = i5 % 128;
                if (i5 % 2 != 0) {
                    length2 = iArr4.length;
                    iArr3 = new int[length2];
                    i3 = 1;
                } else {
                    length2 = iArr4.length;
                    iArr3 = new int[length2];
                    i3 = 0;
                }
                while (i3 < length2) {
                    int i6 = $10 + 81;
                    $11 = i6 % 128;
                    if (i6 % 2 == 0) {
                        iArr3[i3] = (int) (((long) iArr4[i3]) - 6033101233399176549L);
                        i3 >>= 1;
                    } else {
                        iArr3[i3] = (int) (((long) iArr4[i3]) ^ (-6033101233399176549L));
                        i3++;
                    }
                }
                iArr4 = iArr3;
            }
            int length3 = iArr4.length;
            int[] iArr5 = new int[length3];
            int[] iArr6 = getPackageName;
            if (iArr6 != null) {
                int i7 = $10 + fh.h1;
                $11 = i7 % 128;
                if (i7 % 2 == 0) {
                    length = iArr6.length;
                    iArr2 = new int[length];
                    i2 = 1;
                } else {
                    length = iArr6.length;
                    iArr2 = new int[length];
                    i2 = 0;
                }
                while (i2 < length) {
                    long j2 = j;
                    iArr2[i2] = (int) (((long) iArr6[i2]) ^ j2);
                    i2++;
                    j = j2;
                }
                iArr6 = iArr2;
            }
            System.arraycopy(iArr6, 0, iArr5, 0, length3);
            aFPurchaseConnectorA1c.InAppPurchaseEvent = 0;
            while (aFPurchaseConnectorA1c.InAppPurchaseEvent < iArr.length) {
                cArr[0] = (char) (iArr[aFPurchaseConnectorA1c.InAppPurchaseEvent] >> 16);
                cArr[1] = (char) iArr[aFPurchaseConnectorA1c.InAppPurchaseEvent];
                cArr[2] = (char) (iArr[aFPurchaseConnectorA1c.InAppPurchaseEvent + 1] >> 16);
                cArr[3] = (char) iArr[aFPurchaseConnectorA1c.InAppPurchaseEvent + 1];
                aFPurchaseConnectorA1c.getQuantity = (cArr[0] << 16) + cArr[1];
                aFPurchaseConnectorA1c.toJsonMap = (cArr[2] << 16) + cArr[3];
                AFPurchaseConnectorA1c.InAppPurchaseEvent(iArr5);
                int i8 = 0;
                while (i8 < 16) {
                    aFPurchaseConnectorA1c.getQuantity ^= iArr5[i8];
                    aFPurchaseConnectorA1c.toJsonMap = AFPurchaseConnectorA1c.getQuantity(aFPurchaseConnectorA1c.getQuantity) ^ aFPurchaseConnectorA1c.toJsonMap;
                    int i9 = aFPurchaseConnectorA1c.getQuantity;
                    aFPurchaseConnectorA1c.getQuantity = aFPurchaseConnectorA1c.toJsonMap;
                    aFPurchaseConnectorA1c.toJsonMap = i9;
                    i8++;
                    int i10 = $10 + 73;
                    $11 = i10 % 128;
                    int i11 = i10 % 2;
                }
                int i12 = aFPurchaseConnectorA1c.getQuantity;
                aFPurchaseConnectorA1c.getQuantity = aFPurchaseConnectorA1c.toJsonMap;
                aFPurchaseConnectorA1c.toJsonMap = i12;
                aFPurchaseConnectorA1c.toJsonMap ^= iArr5[16];
                aFPurchaseConnectorA1c.getQuantity ^= iArr5[17];
                int i13 = aFPurchaseConnectorA1c.getQuantity;
                int i14 = aFPurchaseConnectorA1c.toJsonMap;
                cArr[0] = (char) (aFPurchaseConnectorA1c.getQuantity >>> 16);
                cArr[1] = (char) aFPurchaseConnectorA1c.getQuantity;
                cArr[2] = (char) (aFPurchaseConnectorA1c.toJsonMap >>> 16);
                cArr[3] = (char) aFPurchaseConnectorA1c.toJsonMap;
                AFPurchaseConnectorA1c.InAppPurchaseEvent(iArr5);
                cArr2[aFPurchaseConnectorA1c.InAppPurchaseEvent * 2] = cArr[0];
                cArr2[(aFPurchaseConnectorA1c.InAppPurchaseEvent * 2) + 1] = cArr[1];
                cArr2[(aFPurchaseConnectorA1c.InAppPurchaseEvent * 2) + 2] = cArr[2];
                cArr2[(aFPurchaseConnectorA1c.InAppPurchaseEvent * 2) + 3] = cArr[3];
                aFPurchaseConnectorA1c.InAppPurchaseEvent += 2;
                int i15 = $10 + 79;
                $11 = i15 % 128;
                int i16 = i15 % 2;
            }
            objArr[0] = new String(cArr2, 0, i);
        }

        @Override // com.android.billingclient.api.PurchasesResponseListener
        public final void onQueryPurchasesResponse(BillingResult billingResult, List<Purchase> list) throws Throwable {
            int i = 2 % 2;
            int i2 = getQuantity + 117;
            getOneTimePurchaseOfferDetails = i2 % 128;
            if (i2 % 2 == 0) {
                billingResult.getResponseCode();
                Object obj = null;
                obj.hashCode();
                throw null;
            }
            if (billingResult.getResponseCode() != 0) {
                AFLogger.afWarnLog("[PurchaseConnector]: Failed to query purchases history");
                return;
            }
            if (!list.isEmpty()) {
                AFPurchaseConnectorA1u.this.getPackageName(billingResult, list, true);
                int i3 = getOneTimePurchaseOfferDetails + 81;
                getQuantity = i3 % 128;
                if (i3 % 2 != 0) {
                    int i4 = 43 / 0;
                    return;
                }
                return;
            }
            int i5 = getQuantity + 101;
            getOneTimePurchaseOfferDetails = i5 % 128;
            int i6 = i5 % 2;
            SharedPreferences.Editor editorEdit = AFPurchaseConnectorA1u.this.getQuantity.edit();
            Object[] objArr = new Object[1];
            a(new int[]{781822138, 818696279, 1224573440, -2078472429, -624357308, -34214158, -544312192, 273047310, -785581712, -501433753, -78984151, 684984616}, (ViewConfiguration.getScrollDefaultDelay() >> 16) + 23, objArr);
            editorEdit.putBoolean(((String) objArr[0]).intern(), true).apply();
            AFLogger.afDebugLog("[PurchaseConnector]: No active subscriptions and/or non-consumed one-time purchases found");
        }
    };
    private final PurchasesResponseListener hashCode = new PurchasesResponseListener() { // from class: com.appsflyer.internal.connector.purcahse.AFPurchaseConnectorA1u$$ExternalSyntheticLambda0
        @Override // com.android.billingclient.api.PurchasesResponseListener
        public final void onQueryPurchasesResponse(BillingResult billingResult, List list) throws Throwable {
            this.f$0.toJsonMap(billingResult, list);
        }
    };
    private boolean autoLogInApps = true;

    public class AFPurchaseConnectorA1x implements AFPurchaseConnectorA1r.AFPurchaseConnectorA1w<BillingClient> {
        final PurchasesUpdatedListener getOneTimePurchaseOfferDetails;

        public AFPurchaseConnectorA1x(PurchasesUpdatedListener purchasesUpdatedListener) {
            this.getOneTimePurchaseOfferDetails = purchasesUpdatedListener;
        }
    }

    public AFPurchaseConnectorA1u(Context context, AFPurchaseConnectorA1x aFPurchaseConnectorA1x, SharedPreferences sharedPreferences, AFPurchaseConnectorA1l aFPurchaseConnectorA1l) {
        aFPurchaseConnectorA1x = aFPurchaseConnectorA1x == null ? new AFPurchaseConnectorA1x(this) : aFPurchaseConnectorA1x;
        this.toJsonMap = context;
        this.getQuantity = sharedPreferences;
        this.getOneTimePurchaseOfferDetails = BillingClient.newBuilder(AFPurchaseConnectorA1u.this.toJsonMap).setListener(aFPurchaseConnectorA1x.getOneTimePurchaseOfferDetails).enablePendingPurchases().build();
        this.getPackageName = aFPurchaseConnectorA1l;
        this.stopObservingTransactions = new AFPurchaseConnectorA1v(this, getQuantity());
    }

    private static void a(String str, int i, Object[] objArr) {
        int i2 = 2 % 2;
        Object charArray = str;
        if (str != null) {
            int i3 = $11 + 55;
            $10 = i3 % 128;
            if (i3 % 2 != 0) {
                str.toCharArray();
                Object obj = null;
                obj.hashCode();
                throw null;
            }
            charArray = str.toCharArray();
        }
        AFPurchaseConnectorA2z aFPurchaseConnectorA2z = new AFPurchaseConnectorA2z();
        char[] oneTimePurchaseOfferDetails = AFPurchaseConnectorA2z.getOneTimePurchaseOfferDetails(setSandbox ^ 7848782090230080433L, (char[]) charArray, i);
        aFPurchaseConnectorA2z.getPackageName = 4;
        while (aFPurchaseConnectorA2z.getPackageName < oneTimePurchaseOfferDetails.length) {
            int i4 = $11 + 63;
            $10 = i4 % 128;
            int i5 = i4 % 2;
            aFPurchaseConnectorA2z.getOneTimePurchaseOfferDetails = aFPurchaseConnectorA2z.getPackageName - 4;
            oneTimePurchaseOfferDetails[aFPurchaseConnectorA2z.getPackageName] = (char) (((long) (oneTimePurchaseOfferDetails[aFPurchaseConnectorA2z.getPackageName] ^ oneTimePurchaseOfferDetails[aFPurchaseConnectorA2z.getPackageName % 4])) ^ (((long) aFPurchaseConnectorA2z.getOneTimePurchaseOfferDetails) * (setSandbox ^ 7848782090230080433L)));
            aFPurchaseConnectorA2z.getPackageName++;
            int i6 = $10 + 39;
            $11 = i6 % 128;
            int i7 = i6 % 2;
        }
        objArr[0] = new String(oneTimePurchaseOfferDetails, 4, oneTimePurchaseOfferDetails.length - 4);
    }

    private void equals() throws Throwable {
        int i = 2 % 2;
        int i2 = PurchaseClientBuilder + 49;
        logSubscriptions = i2 % 128;
        int i3 = i2 % 2;
        try {
            if (this.getQuantity.getBoolean("inapp_purchases_history_processed", false)) {
                return;
            }
            this.getOneTimePurchaseOfferDetails.queryPurchasesAsync(QueryPurchasesParams.newBuilder().setProductType(BillingClient.ProductType.INAPP).build(), this.startObservingTransactions);
            int i4 = PurchaseClientBuilder + 27;
            logSubscriptions = i4 % 128;
            int i5 = i4 % 2;
        } catch (Throwable th) {
            try {
                Object[] objArr = {th};
                Object method = AFPurchaseConnectorA1w.PurchaseClientCompanion.get(-1174844903);
                if (method == null) {
                    method = ((Class) AFPurchaseConnectorA1w.getQuantity(70 - (CdmaCellLocation.convertQuartSecToDecDegrees(0) > FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE ? 1 : (CdmaCellLocation.convertQuartSecToDecDegrees(0) == FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE ? 0 : -1)), 69 - Process.getGidForName(""), (char) View.MeasureSpec.getSize(0))).getMethod("getQuantity", Throwable.class);
                    AFPurchaseConnectorA1w.PurchaseClientCompanion.put(-1174844903, method);
                }
                ((Method) method).invoke(null, objArr);
                AFLogger.afErrorLog("[PurchaseConnector]: Failed to log purchases history", th, true);
            } catch (Throwable th2) {
                Throwable cause = th2.getCause();
                if (cause == null) {
                    throw th2;
                }
                throw cause;
            }
        }
    }

    private void getOneTimePurchaseOfferDetails(String str, List<String> list, List<Purchase> list2, boolean z) throws Throwable {
        int i = 2 % 2;
        int i2 = logSubscriptions + 11;
        PurchaseClientBuilder = i2 % 128;
        Object obj = null;
        if (i2 % 2 != 0) {
            BillingClient.ProductType.SUBS.equals(str);
            throw null;
        }
        if ((!BillingClient.ProductType.SUBS.equals(str)) && !BillingClient.ProductType.INAPP.equals(str)) {
            AFLogger.afWarnLog(new StringBuilder("[PurchaseConnector]: ").append(str).append(" SKU type is illegal").toString());
            return;
        }
        StringBuilder sbAppend = new StringBuilder("[PurchaseConnector]: Querying Sku details:\n\ttype: ").append(str).append("\n\tSkus: ");
        try {
            Object[] objArr = {list, ", "};
            Object method = AFPurchaseConnectorA1w.PurchaseClientCompanion.get(-1211899119);
            if (method == null) {
                method = ((Class) AFPurchaseConnectorA1w.getQuantity(TextUtils.getTrimmedLength("") + 70, (ViewConfiguration.getKeyRepeatDelay() >> 16) + 70, (char) KeyEvent.keyCodeFromString(""))).getMethod("getPackageName", List.class, CharSequence.class);
                AFPurchaseConnectorA1w.PurchaseClientCompanion.put(-1211899119, method);
            }
            AFLogger.afDebugLog(sbAppend.append((String) ((Method) method).invoke(null, objArr)).toString());
            ArrayList arrayList = new ArrayList();
            Iterator<String> it = list.iterator();
            int i3 = PurchaseClientBuilder + 57;
            logSubscriptions = i3 % 128;
            int i4 = i3 % 2;
            while (it.hasNext()) {
                int i5 = PurchaseClientBuilder + 35;
                logSubscriptions = i5 % 128;
                if (i5 % 2 == 0) {
                    arrayList.add(QueryProductDetailsParams.Product.newBuilder().setProductId(it.next()).setProductType(str).build());
                    obj.hashCode();
                    throw null;
                }
                arrayList.add(QueryProductDetailsParams.Product.newBuilder().setProductId(it.next()).setProductType(str).build());
            }
            QueryProductDetailsParams queryProductDetailsParamsBuild = QueryProductDetailsParams.newBuilder().setProductList(arrayList).build();
            if (this.InAppPurchaseEvent == null) {
                AFLogger.afWarnLog("[PurchaseConnector]: Skipping queryProductDetailsAsync because BillingUpdatesListener is null");
                return;
            }
            this.getOneTimePurchaseOfferDetails.queryProductDetailsAsync(queryProductDetailsParamsBuild, new AFPurchaseConnectorA1n(str, this.InAppPurchaseEvent, list2, z));
            int i6 = logSubscriptions + 83;
            PurchaseClientBuilder = i6 % 128;
            if (i6 % 2 != 0) {
                throw null;
            }
        } catch (Throwable th) {
            Throwable cause = th.getCause();
            if (cause == null) {
                throw th;
            }
            throw cause;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0049, code lost:
    
        if (r1.getBoolean(((java.lang.String) r6[0]).intern(), false) != false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void stopObservingTransactions() throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 206
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.connector.purcahse.AFPurchaseConnectorA1u.stopObservingTransactions():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void toJsonMap(BillingResult billingResult, List list) throws Throwable {
        int i = 2 % 2;
        if (billingResult.getResponseCode() == 0) {
            getPackageName(billingResult, list, false);
            int i2 = PurchaseClientBuilder + 63;
            logSubscriptions = i2 % 128;
            if (i2 % 2 == 0) {
                int i3 = 66 / 0;
                return;
            }
            return;
        }
        int i4 = PurchaseClientBuilder + 31;
        logSubscriptions = i4 % 128;
        if (i4 % 2 != 0) {
            AFLogger.afWarnLog("[PurchaseConnector]: Failed to query purchases history");
            return;
        }
        AFLogger.afWarnLog("[PurchaseConnector]: Failed to query purchases history");
        Object obj = null;
        obj.hashCode();
        throw null;
    }

    @Override // com.appsflyer.internal.connector.purcahse.AFPurchaseConnectorA1r
    public void InAppPurchaseEvent() {
        int i = 2 % 2;
        int i2 = PurchaseClientBuilder + 91;
        logSubscriptions = i2 % 128;
        int i3 = i2 % 2;
        if (this.autoLogInApps) {
            this.autoLogInApps = false;
            this.getOneTimePurchaseOfferDetails.startConnection(this);
            Context context = this.toJsonMap;
            if (context instanceof Application) {
                int i4 = logSubscriptions + 39;
                PurchaseClientBuilder = i4 % 128;
                if (i4 % 2 != 0) {
                    ((Application) context).registerActivityLifecycleCallbacks(this.stopObservingTransactions);
                    Object obj = null;
                    obj.hashCode();
                    throw null;
                }
                ((Application) context).registerActivityLifecycleCallbacks(this.stopObservingTransactions);
            }
        }
        int i5 = logSubscriptions + 5;
        PurchaseClientBuilder = i5 % 128;
        if (i5 % 2 != 0) {
            int i6 = 46 / 0;
        }
    }

    @Override // com.appsflyer.internal.connector.purcahse.AFPurchaseConnectorA1r
    public boolean getOneTimePurchaseOfferDetails() {
        int i = 2 % 2;
        int i2 = logSubscriptions;
        int i3 = i2 + 73;
        PurchaseClientBuilder = i3 % 128;
        int i4 = i3 % 2;
        boolean z = this.autoLogInApps;
        int i5 = i2 + 57;
        PurchaseClientBuilder = i5 % 128;
        if (i5 % 2 == 0) {
            return z;
        }
        throw null;
    }

    @Override // com.appsflyer.internal.connector.purcahse.AFPurchaseConnectorA1r
    public void getPackageName() {
        int i = 2 % 2;
        int i2 = PurchaseClientBuilder + 15;
        logSubscriptions = i2 % 128;
        int i3 = i2 % 2;
        if (!this.autoLogInApps) {
            this.autoLogInApps = true;
            this.getOneTimePurchaseOfferDetails.endConnection();
        }
        int i4 = PurchaseClientBuilder + 19;
        logSubscriptions = i4 % 128;
        if (i4 % 2 == 0) {
            throw null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:60:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:61:0x01b3 A[Catch: all -> 0x01ee, TryCatch #2 {all -> 0x01ee, blocks: (B:58:0x019f, B:62:0x01e3, B:61:0x01b3), top: B:74:0x019f }] */
    void getPackageName(BillingResult billingResult, List<Purchase> list, boolean z) throws Throwable {
        Object method;
        int i = 2;
        int i2 = 2 % 2;
        int i3 = logSubscriptions + 31;
        PurchaseClientBuilder = i3 % 128;
        int i4 = i3 % 2;
        try {
            if (billingResult.getResponseCode() == 0 && list != null) {
                if (this.getOneTimePurchaseOfferDetails == null) {
                    AFLogger.afWarnLog("[PurchaseConnector]: Got Ars billing callback but billing client is missing!");
                    return;
                }
                Set<String> quantity = this.getPackageName.getQuantity();
                AFLogger.afDebugLog(new StringBuilder("tokens: ").append(Arrays.deepToString(quantity.toArray(new String[0]))).toString());
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                Iterator<Purchase> it = list.iterator();
                while (it.hasNext()) {
                    int i5 = PurchaseClientBuilder + fh.h1;
                    logSubscriptions = i5 % 128;
                    if (i5 % i == 0) {
                        try {
                            Object[] objArr = {it.next().getPurchaseToken()};
                            Object method2 = AFPurchaseConnectorA1w.PurchaseClientCompanion.get(-857619108);
                            if (method2 == null) {
                                method2 = ((Class) AFPurchaseConnectorA1w.getQuantity((ViewConfiguration.getMaximumDrawingCacheSize() >> 24) + 70, (Process.myPid() >> 22) + 70, (char) (Color.rgb(0, 0, 0) + 16777216))).getMethod("getQuantity", String.class);
                                AFPurchaseConnectorA1w.PurchaseClientCompanion.put(-857619108, method2);
                            }
                            quantity.contains(((Method) method2).invoke(null, objArr));
                            throw null;
                        } catch (Throwable th) {
                            Throwable cause = th.getCause();
                            if (cause == null) {
                                throw th;
                            }
                            throw cause;
                        }
                    }
                    Purchase next = it.next();
                    try {
                        Object[] objArr2 = {next.getPurchaseToken()};
                        Object method3 = AFPurchaseConnectorA1w.PurchaseClientCompanion.get(-857619108);
                        if (method3 == null) {
                            method3 = ((Class) AFPurchaseConnectorA1w.getQuantity(70 - TextUtils.getTrimmedLength(""), (ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)) + 70, (char) (ViewConfiguration.getWindowTouchSlop() >> 8))).getMethod("getQuantity", String.class);
                            AFPurchaseConnectorA1w.PurchaseClientCompanion.put(-857619108, method3);
                        }
                        if (!quantity.contains(((Method) method3).invoke(null, objArr2))) {
                            arrayList2.add(next);
                            arrayList.addAll(next.getProducts());
                            int i6 = PurchaseClientBuilder + 101;
                            logSubscriptions = i6 % 128;
                            int i7 = i6 % 2;
                        }
                        i = i;
                    } catch (Throwable th2) {
                        Throwable cause2 = th2.getCause();
                        if (cause2 == null) {
                            throw th2;
                        }
                        throw cause2;
                    }
                    try {
                        Object[] objArr3 = {th};
                        method = AFPurchaseConnectorA1w.PurchaseClientCompanion.get(-1174844903);
                        if (method != null) {
                            method = ((Class) AFPurchaseConnectorA1w.getQuantity(((Process.getThreadPriority(0) + 20) >> 6) + 70, 70 - (ViewConfiguration.getKeyRepeatDelay() >> 16), (char) KeyEvent.getDeadChar(0, 0))).getMethod("getQuantity", Throwable.class);
                            AFPurchaseConnectorA1w.PurchaseClientCompanion.put(-1174844903, method);
                        }
                        ((Method) method).invoke(null, objArr3);
                        AFLogger.afErrorLog("[PurchaseConnector]: Failed to query new purchase details", th, true);
                    } catch (Throwable th3) {
                        Throwable cause3 = th3.getCause();
                        if (cause3 == null) {
                            throw th3;
                        }
                        throw cause3;
                    }
                }
                if (arrayList2.isEmpty()) {
                    return;
                }
                getOneTimePurchaseOfferDetails(BillingClient.ProductType.SUBS, arrayList, arrayList2, z);
                getOneTimePurchaseOfferDetails(BillingClient.ProductType.INAPP, arrayList, arrayList2, z);
                int i8 = PurchaseClientBuilder + 99;
                logSubscriptions = i8 % 128;
                int i9 = i8 % 2;
                return;
            }
            AFLogger.afWarnLog(new StringBuilder("[PurchaseConnector]: Failed to setup Ars Play billing service: ").append(billingResult.getResponseCode()).append(" ").append(billingResult.getDebugMessage()).toString());
            int i10 = logSubscriptions + 39;
            PurchaseClientBuilder = i10 % 128;
            if (i10 % 2 != 0) {
                int i11 = 73 / 0;
            }
        } catch (Throwable th4) {
            Object[] objArr4 = {th4};
            method = AFPurchaseConnectorA1w.PurchaseClientCompanion.get(-1174844903);
            if (method != null) {
                method = ((Class) AFPurchaseConnectorA1w.getQuantity(((Process.getThreadPriority(0) + 20) >> 6) + 70, 70 - (ViewConfiguration.getKeyRepeatDelay() >> 16), (char) KeyEvent.getDeadChar(0, 0))).getMethod("getQuantity", Throwable.class);
                AFPurchaseConnectorA1w.PurchaseClientCompanion.put(-1174844903, method);
            }
            ((Method) method).invoke(null, objArr4);
            AFLogger.afErrorLog("[PurchaseConnector]: Failed to query new purchase details", th4, true);
        }
    }

    void getPackageName(List<Purchase> list) {
        int i = 2 % 2;
        HashSet hashSet = new HashSet();
        Iterator<Purchase> it = list.iterator();
        while (it.hasNext()) {
            int i2 = logSubscriptions + 73;
            PurchaseClientBuilder = i2 % 128;
            int i3 = i2 % 2;
            hashSet.add(it.next().getPurchaseToken());
            int i4 = PurchaseClientBuilder + 39;
            logSubscriptions = i4 % 128;
            int i5 = i4 % 2;
        }
        this.getPackageName.toJsonMap(hashSet);
        this.getQuantity.edit().putBoolean("inapp_purchases_history_processed", true).apply();
    }

    /* JADX WARN: Code duplicated, block: B:15:0x001e A[Catch: all -> 0x0040, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x000f, B:16:0x0029, B:23:0x003d, B:15:0x001e, B:12:0x0019, B:13:0x001a, B:8:0x0013, B:19:0x0038), top: B:29:0x0002, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:18:0x0036  */
    /* JADX WARN: Code duplicated, block: B:24:0x003e A[DONT_GENERATE] */
    /* JADX WARN: Instruction removed from duplicated block: B:24:0x003e, please report this as an issue */
    public synchronized ScheduledExecutorService getQuantity() {
        ScheduledExecutorService scheduledExecutorService;
        int i;
        int i2 = 2 % 2;
        int i3 = PurchaseClientBuilder + 1;
        logSubscriptions = i3 % 128;
        if (i3 % 2 != 0) {
            if (this.equals == null) {
                ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(2);
                Intrinsics.checkNotNullExpressionValue(scheduledExecutorServiceNewScheduledThreadPool, "");
                this.equals = scheduledExecutorServiceNewScheduledThreadPool;
            }
            scheduledExecutorService = this.equals;
            i = logSubscriptions + 5;
            PurchaseClientBuilder = i % 128;
            if (i % 2 != 0) {
                return scheduledExecutorService;
            }
            int i4 = 68 / 0;
            return scheduledExecutorService;
        }
        int i5 = 20 / 0;
        if (this.equals == null) {
            ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool2 = Executors.newScheduledThreadPool(2);
            Intrinsics.checkNotNullExpressionValue(scheduledExecutorServiceNewScheduledThreadPool2, "");
            this.equals = scheduledExecutorServiceNewScheduledThreadPool2;
        }
        scheduledExecutorService = this.equals;
        i = logSubscriptions + 5;
        PurchaseClientBuilder = i % 128;
        if (i % 2 != 0) {
            return scheduledExecutorService;
        }
        int i6 = 68 / 0;
        return scheduledExecutorService;
        throw th;
    }

    @Override // com.android.billingclient.api.BillingClientStateListener
    public void onBillingServiceDisconnected() {
        int i = 2 % 2;
        int i2 = logSubscriptions + 47;
        PurchaseClientBuilder = i2 % 128;
        int i3 = i2 % 2;
        AFLogger.afDebugLog("[PurchaseConnector]: onBillingServiceDisconnected");
        int i4 = PurchaseClientBuilder + 1;
        logSubscriptions = i4 % 128;
        if (i4 % 2 == 0) {
            throw null;
        }
    }

    @Override // com.android.billingclient.api.BillingClientStateListener
    public void onBillingSetupFinished(BillingResult billingResult) throws Throwable {
        int i = 2 % 2;
        int i2 = logSubscriptions + 91;
        PurchaseClientBuilder = i2 % 128;
        int i3 = i2 % 2;
        AFLogger.afDebugLog("[PurchaseConnector]: onBillingSetupFinished");
        if (billingResult.getResponseCode() != 0) {
            return;
        }
        stopObservingTransactions();
        equals();
        int i4 = PurchaseClientBuilder + 3;
        logSubscriptions = i4 % 128;
        if (i4 % 2 == 0) {
            int i5 = 83 / 0;
        }
    }

    @Override // com.android.billingclient.api.PurchasesUpdatedListener
    public void onPurchasesUpdated(BillingResult billingResult, List<Purchase> list) throws Throwable {
        int i = 2 % 2;
        int i2 = logSubscriptions + 17;
        PurchaseClientBuilder = i2 % 128;
        int i3 = i2 % 2;
        AFLogger.afDebugLog("[PurchaseConnector]: onPurchasesUpdated");
        getPackageName(billingResult, list, false);
        int i4 = logSubscriptions + 9;
        PurchaseClientBuilder = i4 % 128;
        if (i4 % 2 == 0) {
            return;
        }
        Object obj = null;
        obj.hashCode();
        throw null;
    }

    @Override // com.appsflyer.internal.connector.purcahse.AFPurchaseConnectorA1y
    public void toJsonMap() {
        int i = 2 % 2;
        int i2 = PurchaseClientBuilder + 101;
        logSubscriptions = i2 % 128;
        int i3 = i2 % 2;
        SharedPreferences sharedPreferences = this.getQuantity;
        Object[] objArr = new Object[1];
        a("搜摽炽\uf4c5䆏\uaacc䧨⚍瑓\ue4e0姜㛭䐠풂榴ۊ名쑌祷ᘵⓎ둮।昁㒱ꐁᤧ", (-1) - TextUtils.indexOf((CharSequence) "", '0', 0), objArr);
        if (sharedPreferences.getBoolean(((String) objArr[0]).intern(), false)) {
            int i4 = PurchaseClientBuilder + 57;
            logSubscriptions = i4 % 128;
            if (i4 % 2 == 0) {
                this.getOneTimePurchaseOfferDetails.queryPurchasesAsync(QueryPurchasesParams.newBuilder().setProductType(BillingClient.ProductType.SUBS).build(), this.hashCode);
                throw null;
            }
            this.getOneTimePurchaseOfferDetails.queryPurchasesAsync(QueryPurchasesParams.newBuilder().setProductType(BillingClient.ProductType.SUBS).build(), this.hashCode);
            int i5 = logSubscriptions + 51;
            PurchaseClientBuilder = i5 % 128;
            int i6 = i5 % 2;
        }
        if (this.getQuantity.getBoolean("inapp_purchases_history_processed", false)) {
            this.getOneTimePurchaseOfferDetails.queryPurchasesAsync(QueryPurchasesParams.newBuilder().setProductType(BillingClient.ProductType.INAPP).build(), this.hashCode);
            int i7 = PurchaseClientBuilder + 75;
            logSubscriptions = i7 % 128;
            int i8 = i7 % 2;
        }
    }

    @Override // com.appsflyer.internal.connector.purcahse.AFPurchaseConnectorA1r
    public void toJsonMap(AFPurchaseConnectorA1r.AFPurchaseConnectorA1x aFPurchaseConnectorA1x) {
        int i = 2 % 2;
        int i2 = PurchaseClientBuilder + 119;
        int i3 = i2 % 128;
        logSubscriptions = i3;
        if (i2 % 2 == 0) {
            this.InAppPurchaseEvent = aFPurchaseConnectorA1x;
            int i4 = 76 / 0;
        } else {
            this.InAppPurchaseEvent = aFPurchaseConnectorA1x;
        }
        int i5 = i3 + 55;
        PurchaseClientBuilder = i5 % 128;
        if (i5 % 2 != 0) {
            throw null;
        }
    }
}
