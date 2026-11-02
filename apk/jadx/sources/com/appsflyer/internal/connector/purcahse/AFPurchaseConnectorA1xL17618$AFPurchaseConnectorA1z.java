package com.appsflyer.internal.connector.purcahse;

import android.graphics.Color;
import android.media.AudioTrack;
import android.os.Process;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.appsflyer.PurchaseHandler;
import com.appsflyer.api.PurchaseClient;
import com.appsflyer.api.SubscriptionPurchaseEvent;
import com.appsflyer.internal.components.network.http.ResponseNetwork;
import java.lang.reflect.Method;
import java.util.List;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class AFPurchaseConnectorA1xL17618$AFPurchaseConnectorA1z implements PurchaseHandler.PurchaseValidationCallback {
    private /* synthetic */ List<SubscriptionPurchaseEvent> InAppPurchaseEvent;
    private /* synthetic */ PurchaseClient getPackageName;

    public AFPurchaseConnectorA1xL17618$AFPurchaseConnectorA1z(PurchaseClient purchaseClient, List<SubscriptionPurchaseEvent> list) {
        this.getPackageName = purchaseClient;
        this.InAppPurchaseEvent = list;
    }

    @Override // com.appsflyer.PurchaseHandler.PurchaseValidationCallback
    public final void onFailure(Throwable th) throws Throwable {
        Intrinsics.checkNotNullParameter(th, "");
        try {
            Object[] objArr = {this.getPackageName};
            Object method = AFPurchaseConnectorA1w.PurchaseClientCompanion.get(794963980);
            if (method == null) {
                method = ((Class) AFPurchaseConnectorA1w.getQuantity(70 - (ViewConfiguration.getMaximumDrawingCacheSize() >> 24), Color.blue(0), (char) ((ViewConfiguration.getKeyRepeatDelay() >> 16) + 41951))).getMethod("getOneTimePurchaseOfferDetails", (Class) AFPurchaseConnectorA1w.getQuantity(70 - (ViewConfiguration.getScrollDefaultDelay() >> 16), KeyEvent.getMaxKeyCode() >> 16, (char) (41951 - Color.green(0))));
                AFPurchaseConnectorA1w.PurchaseClientCompanion.put(794963980, method);
            }
            PurchaseClient.SubscriptionPurchaseValidationResultListener subscriptionPurchaseValidationResultListener = (PurchaseClient.SubscriptionPurchaseValidationResultListener) ((Method) method).invoke(null, objArr);
            if (subscriptionPurchaseValidationResultListener != null) {
                subscriptionPurchaseValidationResultListener.onFailure("[PurchaseConnector]: Communication exception", th);
            }
        } catch (Throwable th2) {
            Throwable cause = th2.getCause();
            if (cause == null) {
                throw th2;
            }
            throw cause;
        }
    }

    @Override // com.appsflyer.PurchaseHandler.PurchaseValidationCallback
    public final void onResponse(ResponseNetwork<String> responseNetwork) throws Throwable {
        Intrinsics.checkNotNullParameter(responseNetwork, "");
        boolean zIsSuccessful = responseNetwork.isSuccessful();
        if (zIsSuccessful) {
            try {
                Object[] objArr = {this.getPackageName, this.InAppPurchaseEvent};
                Object method = AFPurchaseConnectorA1w.PurchaseClientCompanion.get(2011750110);
                if (method == null) {
                    method = ((Class) AFPurchaseConnectorA1w.getQuantity(70 - TextUtils.getOffsetBefore("", 0), Color.red(0), (char) (Color.green(0) + 41951))).getMethod("getPackageName", (Class) AFPurchaseConnectorA1w.getQuantity(70 - KeyEvent.keyCodeFromString(""), Process.myTid() >> 22, (char) (View.MeasureSpec.getSize(0) + 41951)), List.class);
                    AFPurchaseConnectorA1w.PurchaseClientCompanion.put(2011750110, method);
                }
                ((Method) method).invoke(null, objArr);
            } catch (Throwable th) {
                Throwable cause = th.getCause();
                if (cause == null) {
                    throw th;
                }
                throw cause;
            }
        }
        Object[] objArr2 = {this.getPackageName};
        Object method2 = AFPurchaseConnectorA1w.PurchaseClientCompanion.get(794963980);
        if (method2 == null) {
            method2 = ((Class) AFPurchaseConnectorA1w.getQuantity(69 - Process.getGidForName(""), (-1) - ExpandableListView.getPackedPositionChild(0L), (char) (41950 - TextUtils.indexOf((CharSequence) "", '0', 0, 0)))).getMethod("getOneTimePurchaseOfferDetails", (Class) AFPurchaseConnectorA1w.getQuantity(TextUtils.indexOf((CharSequence) "", '0') + 71, Color.green(0), (char) ((ViewConfiguration.getWindowTouchSlop() >> 8) + 41951)));
            AFPurchaseConnectorA1w.PurchaseClientCompanion.put(794963980, method2);
        }
        PurchaseClient.SubscriptionPurchaseValidationResultListener subscriptionPurchaseValidationResultListener = (PurchaseClient.SubscriptionPurchaseValidationResultListener) ((Method) method2).invoke(null, objArr2);
        if (subscriptionPurchaseValidationResultListener != null) {
            if (!zIsSuccessful) {
                String body = responseNetwork.getBody();
                Intrinsics.checkNotNullExpressionValue(body, "");
                subscriptionPurchaseValidationResultListener.onFailure(body, null);
            } else {
                Object[] objArr3 = {responseNetwork};
                Object method3 = AFPurchaseConnectorA1w.PurchaseClientCompanion.get(784799476);
                if (method3 == null) {
                    method3 = ((Class) AFPurchaseConnectorA1w.getQuantity(Color.rgb(0, 0, 0) + 16777286, 70 - (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)), (char) ExpandableListView.getPackedPositionGroup(0L))).getMethod("getQuantity", ResponseNetwork.class);
                    AFPurchaseConnectorA1w.PurchaseClientCompanion.put(784799476, method3);
                }
                subscriptionPurchaseValidationResultListener.onResponse(((Method) method3).invoke(null, objArr3));
            }
        }
    }
}
