package com.appsflyer.unity;

import android.util.Log;
import com.appsflyer.AFAdRevenueData;
import com.appsflyer.AFLogger;
import com.appsflyer.AFPurchaseDetails;
import com.appsflyer.AFPurchaseType;
import com.appsflyer.AppsFlyerConsent;
import com.appsflyer.AppsFlyerConversionListener;
import com.appsflyer.AppsFlyerInAppPurchaseValidationCallback;
import com.appsflyer.AppsFlyerInAppPurchaseValidatorListener;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.MediationNetwork;
import com.appsflyer.api.PurchaseClient;
import com.appsflyer.api.Store;
import com.appsflyer.attribution.AppsFlyerRequestListener;
import com.appsflyer.deeplink.DeepLinkListener;
import com.appsflyer.deeplink.DeepLinkResult;
import com.appsflyer.internal.models.InAppPurchaseValidationResult;
import com.appsflyer.internal.models.ProductPurchase;
import com.appsflyer.internal.models.SubscriptionPurchase;
import com.appsflyer.internal.models.SubscriptionValidationResult;
import com.appsflyer.internal.models.ValidationFailureData;
import com.appsflyer.internal.platform_extension.Plugin;
import com.appsflyer.internal.platform_extension.PluginInfo;
import com.appsflyer.share.CrossPromotionHelper;
import com.appsflyer.share.LinkGenerator;
import com.appsflyer.share.ShareInviteHelper;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TapjoyConstants;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import com.unity3d.player.UnityPlayer;
import java.util.HashMap;
import java.util.Map;
import java.util.function.BiConsumer;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class AppsFlyerAndroidWrapper {
    private static final long DDL_TIMEOUT_DEFAULT = 3000;
    private static final String ERROR_CALLBACK = "didReceivePurchaseRevenueError";
    private static final String GCD_CALLBACK = "onConversionDataSuccess";
    private static final String GCD_ERROR_CALLBACK = "onConversionDataFail";
    private static final String GENERATE_LINK_CALLBACK = "onInviteLinkGenerated";
    private static final String GENERATE_LINK_ERROR_CALLBACK = "onInviteLinkGeneratedFailure";
    private static final String IN_APP_RESPONSE_CALLBACK = "inAppResponseReceived";
    private static final String OAOA_CALLBACK = "onAppOpenAttribution";
    private static final String OAOA_ERROR_CALLBACK = "onAppOpenAttributionFailure";
    private static final String ON_DEEPLINKING = "onDeepLinking";
    private static final String PLUGIN_VERSION = "6.17.3";
    private static final String START_REQUEST_CALLBACK = "requestResponseReceived";
    private static final String VALIDATE_AND_LOG_V2_CALLBACK = "onValidateAndLogComplete";
    private static final String VALIDATE_AND_LOG_V2__ERROR_CALLBACK = "onValidateAndLogFailure";
    private static final String VALIDATE_CALLBACK = "didFinishValidateReceipt";
    private static final String VALIDATE_ERROR_CALLBACK = "didFinishValidateReceiptWithError";
    private static final String VALIDATION_CALLBACK = "didReceivePurchaseRevenueValidationInfo";
    private static PurchaseClient.Builder builder = null;
    private static AppsFlyerConversionListener conversionListener = null;
    private static long ddlTimeout = 3000;
    private static String devkey = "";
    private static PurchaseClient purchaseClientInstance;
    private static String unityObjectName;

    /* JADX INFO: renamed from: com.appsflyer.unity.AppsFlyerAndroidWrapper$10, reason: invalid class name */
    class AnonymousClass10 implements PurchaseClient.InAppPurchaseValidationResultListener {
        AnonymousClass10() {
        }

        static /* synthetic */ void lambda$onResponse$0(String str, InAppPurchaseValidationResult inAppPurchaseValidationResult) {
            HashMap map = new HashMap();
            HashMap map2 = new HashMap();
            map.put("token", str);
            map.put("success", inAppPurchaseValidationResult.getSuccess() ? "true" : "false");
            if (inAppPurchaseValidationResult.getSuccess()) {
                ProductPurchase productPurchase = inAppPurchaseValidationResult.getProductPurchase();
                map2.put(InAppPurchaseMetaData.KEY_PRODUCT_ID, productPurchase.getProductId());
                map2.put("purchaseState", Integer.valueOf(productPurchase.getPurchaseState()));
                map2.put("kind", productPurchase.getKind());
                map2.put("purchaseTimeMillis", productPurchase.getPurchaseTimeMillis());
                map2.put("consumptionState", Integer.valueOf(productPurchase.getConsumptionState()));
                map2.put("developerPayload", productPurchase.getDeveloperPayload());
                map2.put("orderId", productPurchase.getOrderId());
                map2.put("purchaseType", Integer.valueOf(productPurchase.getPurchaseType()));
                map2.put("acknowledgementState", Integer.valueOf(productPurchase.getAcknowledgementState()));
                map2.put("purchaseToken", productPurchase.getPurchaseToken());
                map2.put(FirebaseAnalytics.Param.QUANTITY, Integer.valueOf(productPurchase.getQuantity()));
                map2.put("obfuscatedExternalAccountId", productPurchase.getObfuscatedExternalAccountId());
                map2.put("obfuscatedExternalProfileId", productPurchase.getObfuscatedExternalProfileId());
                map2.put("regionCode", productPurchase.getRegionCode());
                map.put("productPurchase", map2);
            } else {
                ValidationFailureData failureData = inAppPurchaseValidationResult.getFailureData();
                HashMap map3 = new HashMap();
                map3.put("status", Integer.valueOf(failureData.getStatus()));
                map3.put("description", failureData.getDescription());
                map.put("failureData", map3);
            }
            UnityPlayer.UnitySendMessage(AppsFlyerAndroidWrapper.unityObjectName, AppsFlyerAndroidWrapper.VALIDATION_CALLBACK, new JSONObject(map).toString());
        }

        @Override // com.appsflyer.api.PurchaseClient.ValidationResultListener
        public void onFailure(String str, Throwable th) {
            if (AppsFlyerAndroidWrapper.unityObjectName != null) {
                UnityPlayer.UnitySendMessage(AppsFlyerAndroidWrapper.unityObjectName, AppsFlyerAndroidWrapper.ERROR_CALLBACK, str);
            }
        }

        @Override // com.appsflyer.api.PurchaseClient.ValidationResultListener
        public void onResponse(Map<String, ? extends InAppPurchaseValidationResult> map) {
            if (AppsFlyerAndroidWrapper.unityObjectName == null || map == null) {
                return;
            }
            map.forEach(new BiConsumer() { // from class: com.appsflyer.unity.AppsFlyerAndroidWrapper$10$$ExternalSyntheticLambda0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    AppsFlyerAndroidWrapper.AnonymousClass10.lambda$onResponse$0((String) obj, (InAppPurchaseValidationResult) obj2);
                }
            });
        }
    }

    /* JADX INFO: renamed from: com.appsflyer.unity.AppsFlyerAndroidWrapper$9, reason: invalid class name */
    class AnonymousClass9 implements PurchaseClient.SubscriptionPurchaseValidationResultListener {
        AnonymousClass9() {
        }

        static /* synthetic */ void lambda$onResponse$0(String str, SubscriptionValidationResult subscriptionValidationResult) {
            HashMap map = new HashMap();
            HashMap map2 = new HashMap();
            map.put(InAppPurchaseMetaData.KEY_PRODUCT_ID, str);
            map.put("success", subscriptionValidationResult.getSuccess() ? "true" : "false");
            if (subscriptionValidationResult.getSuccess()) {
                SubscriptionPurchase subscriptionPurchase = subscriptionValidationResult.getSubscriptionPurchase();
                HashMap map3 = new HashMap();
                if (subscriptionPurchase.getCanceledStateContext() != null) {
                    HashMap map4 = new HashMap();
                    HashMap map5 = new HashMap();
                    if (subscriptionPurchase.getCanceledStateContext().getUserInitiatedCancellation() != null) {
                        if (subscriptionPurchase.getCanceledStateContext().getUserInitiatedCancellation().getCancelSurveyResult() != null) {
                            map3.put("reason", subscriptionPurchase.getCanceledStateContext().getUserInitiatedCancellation().getCancelSurveyResult().getReason());
                            map3.put("reasonUserInput", subscriptionPurchase.getCanceledStateContext().getUserInitiatedCancellation().getCancelSurveyResult().getReasonUserInput());
                            map5.put("cancelSurveyResult", map3);
                        }
                        map5.put("cancelTime", subscriptionPurchase.getCanceledStateContext().getUserInitiatedCancellation().getCancelTime());
                    }
                    map4.put("developerInitiatedCancellation", null);
                    map4.put("replacementCancellation", null);
                    map4.put("systemInitiatedCancellation", null);
                    map4.put("userInitiatedCancellation", map5);
                }
                if (subscriptionPurchase.getExternalAccountIdentifiers() != null) {
                    HashMap map6 = new HashMap();
                    map6.put("externalAccountId", subscriptionPurchase.getExternalAccountIdentifiers().getExternalAccountId());
                    map6.put("obfuscatedExternalAccountId", subscriptionPurchase.getExternalAccountIdentifiers().getObfuscatedExternalAccountId());
                    map6.put("obfuscatedExternalProfileId", subscriptionPurchase.getExternalAccountIdentifiers().getObfuscatedExternalProfileId());
                    map2.put("externalAccountIdentifiers", map6);
                }
                if (subscriptionPurchase.getPausedStateContext() != null) {
                    HashMap map7 = new HashMap();
                    map7.put("autoResumeTime", subscriptionPurchase.getPausedStateContext().getAutoResumeTime());
                    map2.put("pausedStateContext", map7);
                }
                if (subscriptionPurchase.getSubscribeWithGoogleInfo() != null) {
                    HashMap map8 = new HashMap();
                    map8.put("emailAddress", subscriptionPurchase.getSubscribeWithGoogleInfo().getEmailAddress());
                    map8.put("familyName", subscriptionPurchase.getSubscribeWithGoogleInfo().getFamilyName());
                    map8.put("givenName", subscriptionPurchase.getSubscribeWithGoogleInfo().getGivenName());
                    map8.put("profileId", subscriptionPurchase.getSubscribeWithGoogleInfo().getProfileId());
                    map8.put("profileName", subscriptionPurchase.getSubscribeWithGoogleInfo().getProfileName());
                    map2.put("subscribeWithGoogleInfo", map8);
                }
                int size = subscriptionPurchase.getLineItems().size();
                Map[] mapArr = new Map[size];
                for (int i = 0; i < size; i++) {
                    HashMap map9 = new HashMap();
                    map9.put("expiryTime", subscriptionPurchase.getLineItems().get(i).getExpiryTime());
                    map9.put(InAppPurchaseMetaData.KEY_PRODUCT_ID, subscriptionPurchase.getLineItems().get(i).getProductId());
                    if (subscriptionPurchase.getLineItems().get(i).getAutoRenewingPlan() != null) {
                        HashMap map10 = new HashMap();
                        if (subscriptionPurchase.getLineItems().get(i).getAutoRenewingPlan().getAutoRenewEnabled() != null) {
                            map10.put("autoRenewEnabled", subscriptionPurchase.getLineItems().get(i).getAutoRenewingPlan().getAutoRenewEnabled().booleanValue() ? "true" : "false");
                        }
                        if (subscriptionPurchase.getLineItems().get(i).getAutoRenewingPlan().getPriceChangeDetails() != null) {
                            HashMap map11 = new HashMap();
                            map11.put("expectedNewPriceChargeTime", subscriptionPurchase.getLineItems().get(i).getAutoRenewingPlan().getPriceChangeDetails().getExpectedNewPriceChargeTime());
                            map11.put("priceChangeMode", subscriptionPurchase.getLineItems().get(i).getAutoRenewingPlan().getPriceChangeDetails().getPriceChangeMode());
                            map11.put("priceChangeState", subscriptionPurchase.getLineItems().get(i).getAutoRenewingPlan().getPriceChangeDetails().getPriceChangeState());
                            map10.put("priceChangeDetails", map11);
                            if (subscriptionPurchase.getLineItems().get(i).getAutoRenewingPlan().getPriceChangeDetails().getNewPrice() != null) {
                                HashMap map12 = new HashMap();
                                map12.put(AppsFlyerProperties.CURRENCY_CODE, subscriptionPurchase.getLineItems().get(i).getAutoRenewingPlan().getPriceChangeDetails().getNewPrice().getCurrencyCode());
                                map12.put("nanos", Long.valueOf(subscriptionPurchase.getLineItems().get(i).getAutoRenewingPlan().getPriceChangeDetails().getNewPrice().getNanos()));
                                map12.put("units", Long.valueOf(subscriptionPurchase.getLineItems().get(i).getAutoRenewingPlan().getPriceChangeDetails().getNewPrice().getUnits()));
                                map11.put("newPrice", map12);
                            }
                        }
                        map9.put("autoRenewingPlan", map10);
                    }
                    if (subscriptionPurchase.getLineItems().get(i).getOfferDetails() != null) {
                        HashMap map13 = new HashMap();
                        map13.put("basePlanId", subscriptionPurchase.getLineItems().get(i).getOfferDetails().getBasePlanId());
                        if (subscriptionPurchase.getLineItems().get(i).getOfferDetails().getOfferId() != null) {
                            map13.put(TapjoyConstants.TJC_PLACEMENT_OFFER_ID, subscriptionPurchase.getLineItems().get(i).getOfferDetails().getOfferId());
                        }
                        map9.put("offerDetails", map13);
                    }
                    if (subscriptionPurchase.getLineItems().get(i).getDeferredItemReplacement() != null) {
                        HashMap map14 = new HashMap();
                        map14.put(InAppPurchaseMetaData.KEY_PRODUCT_ID, subscriptionPurchase.getLineItems().get(i).getDeferredItemReplacement().getProductId());
                        map9.put("deferredItemReplacement", map14);
                    }
                    if (subscriptionPurchase.getLineItems().get(i).getPrepaidPlan() != null && subscriptionPurchase.getLineItems().get(i).getPrepaidPlan().getAllowExtendAfterTime() != null) {
                        HashMap map15 = new HashMap();
                        map15.put("allowExtendAfterTime", subscriptionPurchase.getLineItems().get(i).getPrepaidPlan().getAllowExtendAfterTime());
                        map9.put("prepaidPlan", map15);
                    }
                    mapArr[i] = map9;
                }
                map2.put("lineItems", mapArr);
                map2.put("acknowledgementState", subscriptionPurchase.getAcknowledgementState());
                map2.put("canceledStateContext", subscriptionPurchase.getCanceledStateContext());
                map2.put("kind", subscriptionPurchase.getKind());
                map2.put("latestOrderId", subscriptionPurchase.getLatestOrderId());
                map2.put("linkedPurchaseToken", subscriptionPurchase.getLinkedPurchaseToken());
                map2.put("regionCode", subscriptionPurchase.getRegionCode());
                map2.put("subscriptionState", subscriptionPurchase.getSubscriptionState());
                map2.put("testPurchase", null);
                map2.put("startTime", subscriptionPurchase.getStartTime());
                map.put("subscriptionPurchase", map2);
            } else {
                ValidationFailureData failureData = subscriptionValidationResult.getFailureData();
                HashMap map16 = new HashMap();
                map16.put("status", Integer.valueOf(failureData.getStatus()));
                map16.put("description", failureData.getDescription());
                map.put("failureData", map16);
            }
            UnityPlayer.UnitySendMessage(AppsFlyerAndroidWrapper.unityObjectName, AppsFlyerAndroidWrapper.VALIDATION_CALLBACK, new JSONObject(map).toString());
        }

        @Override // com.appsflyer.api.PurchaseClient.ValidationResultListener
        public void onFailure(String str, Throwable th) {
            if (AppsFlyerAndroidWrapper.unityObjectName != null) {
                UnityPlayer.UnitySendMessage(AppsFlyerAndroidWrapper.unityObjectName, AppsFlyerAndroidWrapper.ERROR_CALLBACK, str);
            }
        }

        @Override // com.appsflyer.api.PurchaseClient.ValidationResultListener
        public void onResponse(Map<String, ? extends SubscriptionValidationResult> map) {
            if (AppsFlyerAndroidWrapper.unityObjectName == null || map == null) {
                return;
            }
            map.forEach(new BiConsumer() { // from class: com.appsflyer.unity.AppsFlyerAndroidWrapper$9$$ExternalSyntheticLambda0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    AppsFlyerAndroidWrapper.AnonymousClass9.lambda$onResponse$0((String) obj, (SubscriptionValidationResult) obj2);
                }
            });
        }
    }

    public static void addPushNotificationDeepLinkPath(String... strArr) {
        AppsFlyerLib.getInstance().addPushNotificationDeepLinkPath(strArr);
    }

    public static void attributeAndOpenStore(String str, String str2, Map<String, String> map) {
        CrossPromotionHelper.logAndOpenStore(UnityPlayer.currentActivity, str, str2, map);
    }

    public static void build() {
        PurchaseClient.Builder builder2 = builder;
        if (builder2 != null) {
            purchaseClientInstance = builder2.build();
        } else {
            Log.w("AppsFlyer_Connector", "[PurchaseConnector]: Initialization is required prior to building.");
        }
    }

    public static void createOneLinkInviteListener(Map<String, String> map, final String str) {
        LinkGenerator linkGeneratorGenerateInviteUrl = ShareInviteHelper.generateInviteUrl(UnityPlayer.currentActivity);
        linkGeneratorGenerateInviteUrl.setChannel(map.get(AppsFlyerProperties.CHANNEL));
        linkGeneratorGenerateInviteUrl.setCampaign(map.get("campaign"));
        linkGeneratorGenerateInviteUrl.setReferrerName(map.get("referrerName"));
        linkGeneratorGenerateInviteUrl.setReferrerImageURL(map.get("referrerImageUrl"));
        linkGeneratorGenerateInviteUrl.setReferrerCustomerId(map.get("customerID"));
        linkGeneratorGenerateInviteUrl.setBaseDeeplink(map.get("baseDeepLink"));
        linkGeneratorGenerateInviteUrl.setBrandDomain(map.get("brandDomain"));
        map.remove(AppsFlyerProperties.CHANNEL);
        map.remove("campaign");
        map.remove("referrerName");
        map.remove("referrerImageUrl");
        map.remove("customerID");
        map.remove("baseDeepLink");
        map.remove("brandDomain");
        linkGeneratorGenerateInviteUrl.addParameters(map);
        linkGeneratorGenerateInviteUrl.generateLink(UnityPlayer.currentActivity, new LinkGenerator.ResponseListener() { // from class: com.appsflyer.unity.AppsFlyerAndroidWrapper.6
            @Override // com.appsflyer.share.LinkGenerator.ResponseListener
            public void onResponse(String str2) {
                String str3 = str;
                if (str3 != null) {
                    UnityPlayer.UnitySendMessage(str3, AppsFlyerAndroidWrapper.GENERATE_LINK_CALLBACK, str2);
                }
            }

            @Override // com.appsflyer.share.LinkGenerator.ResponseListener
            public void onResponseError(String str2) {
                String str3 = str;
                if (str3 != null) {
                    UnityPlayer.UnitySendMessage(str3, AppsFlyerAndroidWrapper.GENERATE_LINK_ERROR_CALLBACK, str2);
                }
            }
        });
    }

    public static void enableFacebookDeferredApplinks(boolean z) {
        AppsFlyerLib.getInstance().enableFacebookDeferredApplinks(z);
    }

    public static void enableTCFDataCollection(boolean z) {
        AppsFlyerLib.getInstance().enableTCFDataCollection(z);
    }

    public static String getAppsFlyerId() {
        return AppsFlyerLib.getInstance().getAppsFlyerUID(UnityPlayer.currentActivity);
    }

    public static String getAttributionId() {
        return AppsFlyerLib.getInstance().getAttributionId(UnityPlayer.currentActivity);
    }

    public static void getConversionData(String str) {
        if (conversionListener == null) {
            conversionListener = getConversionListener(str);
        }
        AppsFlyerLib.getInstance().registerConversionListener(UnityPlayer.currentActivity, conversionListener);
    }

    private static AppsFlyerConversionListener getConversionListener(final String str) {
        return new AppsFlyerConversionListener() { // from class: com.appsflyer.unity.AppsFlyerAndroidWrapper.3
            @Override // com.appsflyer.AppsFlyerConversionListener
            public void onAppOpenAttribution(Map<String, String> map) {
                if (str != null) {
                    UnityPlayer.UnitySendMessage(str, AppsFlyerAndroidWrapper.OAOA_CALLBACK, new JSONObject(map).toString());
                }
            }

            @Override // com.appsflyer.AppsFlyerConversionListener
            public void onAttributionFailure(String str2) {
                String str3 = str;
                if (str3 != null) {
                    UnityPlayer.UnitySendMessage(str3, AppsFlyerAndroidWrapper.OAOA_ERROR_CALLBACK, str2);
                }
            }

            @Override // com.appsflyer.AppsFlyerConversionListener
            public void onConversionDataFail(String str2) {
                String str3 = str;
                if (str3 != null) {
                    UnityPlayer.UnitySendMessage(str3, AppsFlyerAndroidWrapper.GCD_ERROR_CALLBACK, str2);
                }
            }

            @Override // com.appsflyer.AppsFlyerConversionListener
            public void onConversionDataSuccess(Map<String, Object> map) {
                if (str != null) {
                    UnityPlayer.UnitySendMessage(str, AppsFlyerAndroidWrapper.GCD_CALLBACK, new JSONObject(map).toString());
                }
            }
        };
    }

    public static String getHostName() {
        return AppsFlyerLib.getInstance().getHostName();
    }

    public static String getHostPrefix() {
        return AppsFlyerLib.getInstance().getHostPrefix();
    }

    public static String getOutOfStore() {
        return AppsFlyerLib.getInstance().getOutOfStore(UnityPlayer.currentActivity);
    }

    public static String getSdkVersion() {
        return AppsFlyerLib.getInstance().getSdkVersion();
    }

    public static void handlePushNotifications() {
        AppsFlyerLib.getInstance().sendPushNotificationData(UnityPlayer.currentActivity);
    }

    public static void initInAppPurchaseValidatorListener(final String str) {
        AppsFlyerLib.getInstance().registerValidatorListener(UnityPlayer.currentActivity, new AppsFlyerInAppPurchaseValidatorListener() { // from class: com.appsflyer.unity.AppsFlyerAndroidWrapper.4
            @Override // com.appsflyer.AppsFlyerInAppPurchaseValidatorListener
            public void onValidateInApp() {
                String str2 = str;
                if (str2 != null) {
                    UnityPlayer.UnitySendMessage(str2, AppsFlyerAndroidWrapper.VALIDATE_CALLBACK, "Validate success");
                }
            }

            @Override // com.appsflyer.AppsFlyerInAppPurchaseValidatorListener
            public void onValidateInAppFailure(String str2) {
                String str3 = str;
                if (str3 != null) {
                    UnityPlayer.UnitySendMessage(str3, AppsFlyerAndroidWrapper.VALIDATE_ERROR_CALLBACK, str2);
                }
            }
        });
    }

    public static AppsFlyerInAppPurchaseValidationCallback initInAppPurchaseValidatorV2Listener(final String str) {
        return new AppsFlyerInAppPurchaseValidationCallback() { // from class: com.appsflyer.unity.AppsFlyerAndroidWrapper.5
            @Override // com.appsflyer.AppsFlyerInAppPurchaseValidationCallback
            public void onInAppPurchaseValidationError(Map<String, ?> map) {
                if (str != null) {
                    UnityPlayer.UnitySendMessage(str, AppsFlyerAndroidWrapper.VALIDATE_AND_LOG_V2__ERROR_CALLBACK, new JSONObject(map).toString());
                }
            }

            @Override // com.appsflyer.AppsFlyerInAppPurchaseValidationCallback
            public void onInAppPurchaseValidationFinished(Map<String, ?> map) {
                if (str != null) {
                    UnityPlayer.UnitySendMessage(str, AppsFlyerAndroidWrapper.VALIDATE_AND_LOG_V2_CALLBACK, new JSONObject(map).toString());
                }
            }
        };
    }

    public static void initPurchaseConnector(String str, int i) {
        unityObjectName = str;
        Store storeMappingEnum = mappingEnum(i);
        if (storeMappingEnum == null) {
            Log.w("AppsFlyer_Connector", "[PurchaseConnector]: Please choose a valid store.");
            return;
        }
        PurchaseClient.Builder builder2 = new PurchaseClient.Builder(UnityPlayer.currentActivity, storeMappingEnum);
        builder = builder2;
        builder = PurchaseRevenueBridge.configurePurchaseClient(builder2);
    }

    public static void initSDK(String str, String str2) {
        if (conversionListener == null && str2 != null) {
            conversionListener = getConversionListener(str2);
        }
        devkey = str;
        setPluginInfo();
        AppsFlyerLib.getInstance().init(str, conversionListener, UnityPlayer.currentActivity);
    }

    public static boolean isPreInstalledApp() {
        return AppsFlyerLib.getInstance().isPreInstalledApp(UnityPlayer.currentActivity);
    }

    public static boolean isTrackingStopped() {
        return AppsFlyerLib.getInstance().isStopped();
    }

    public static void logAdRevenue(String str, MediationNetwork mediationNetwork, String str2, double d, HashMap<String, Object> map) {
        AppsFlyerLib.getInstance().logAdRevenue(new AFAdRevenueData(str, mediationNetwork, str2, d), map);
    }

    private static Store mappingEnum(int i) {
        if (i != 0) {
            return null;
        }
        return Store.GOOGLE;
    }

    private static Boolean parseNullableBoolean(String str) {
        if (str == null) {
            return null;
        }
        if (str.equalsIgnoreCase("true")) {
            return true;
        }
        return str.equalsIgnoreCase("false") ? false : null;
    }

    public static void recordCrossPromoteImpression(String str, String str2, Map<String, String> map) {
        CrossPromotionHelper.logCrossPromoteImpression(UnityPlayer.currentActivity, str, str2, map);
    }

    public static void setAdditionalData(HashMap<String, Object> map) {
        AppsFlyerLib.getInstance().setAdditionalData(map);
    }

    public static void setAndroidIdData(String str) {
        AppsFlyerLib.getInstance().setAndroidIdData(str);
    }

    public static void setAppInviteOneLinkID(String str) {
        AppsFlyerLib.getInstance().setAppInviteOneLink(str);
    }

    public static void setAutoLogInApps(boolean z) {
        PurchaseClient.Builder builder2 = builder;
        if (builder2 != null) {
            builder2.autoLogInApps(z);
        }
    }

    public static void setAutoLogSubscriptions(boolean z) {
        PurchaseClient.Builder builder2 = builder;
        if (builder2 != null) {
            builder2.logSubscriptions(z);
        }
    }

    public static void setCollectAndroidID(boolean z) {
        AppsFlyerLib.getInstance().setCollectAndroidID(z);
    }

    public static void setCollectIMEI(boolean z) {
        AppsFlyerLib.getInstance().setCollectIMEI(z);
    }

    public static void setCollectOaid(boolean z) {
        AppsFlyerLib.getInstance().setCollectOaid(z);
    }

    public static void setConsentData(String str, String str2, String str3, String str4) {
        AppsFlyerLib.getInstance().setConsentData(new AppsFlyerConsent(parseNullableBoolean(str), parseNullableBoolean(str2), parseNullableBoolean(str3), parseNullableBoolean(str4)));
    }

    public static void setConsumeAFDeepLinks(boolean z) {
    }

    public static void setCurrencyCode(String str) {
        AppsFlyerLib.getInstance().setCurrencyCode(str);
    }

    public static void setCustomerIdAndTrack(String str) {
        AppsFlyerLib.getInstance().setCustomerIdAndLogSession(str, UnityPlayer.currentActivity);
    }

    public static void setCustomerUserId(String str) {
        AppsFlyerLib.getInstance().setCustomerUserId(str);
    }

    public static void setDeepLinkTimeout(long j) {
        ddlTimeout = j;
    }

    public static void setDeviceTrackingDisabled(boolean z) {
        AppsFlyerLib.getInstance().anonymizeUser(z);
    }

    public static void setDisableAdvertisingIdentifiers(boolean z) {
        AppsFlyerLib.getInstance().setDisableAdvertisingIdentifiers(z);
    }

    public static void setDisableNetworkData(boolean z) {
        AppsFlyerLib.getInstance().setDisableNetworkData(z);
    }

    public static void setHost(String str, String str2) {
        AppsFlyerLib.getInstance().setHost(str, str2);
    }

    public static void setImeiData(String str) {
        AppsFlyerLib.getInstance().setImeiData(str);
    }

    public static void setIsDebug(boolean z) {
        AppsFlyerLib.getInstance().setDebugLog(z);
    }

    public static void setIsSandbox(boolean z) {
        PurchaseClient.Builder builder2 = builder;
        if (builder2 != null) {
            builder2.setSandbox(z);
        }
    }

    public static void setIsUpdate(boolean z) {
        AppsFlyerLib.getInstance().setIsUpdate(z);
    }

    public static void setLogLevel(AFLogger.LogLevel logLevel) {
        AppsFlyerLib.getInstance().setLogLevel(logLevel);
    }

    public static void setMinTimeBetweenSessions(int i) {
        AppsFlyerLib.getInstance().setMinTimeBetweenSessions(i);
    }

    public static void setOneLinkCustomDomain(String... strArr) {
        AppsFlyerLib.getInstance().setOneLinkCustomDomain(strArr);
    }

    public static void setOutOfStore(String str) {
        AppsFlyerLib.getInstance().setOutOfStore(str);
    }

    public static void setPhoneNumber(String str) {
        AppsFlyerLib.getInstance().setPhoneNumber(str);
    }

    public static void setPluginInfo() {
        AppsFlyerLib.getInstance().setPluginInfo(new PluginInfo(Plugin.UNITY, PLUGIN_VERSION));
    }

    public static void setPreinstallAttribution(String str, String str2, String str3) {
        AppsFlyerLib.getInstance().setPreinstallAttribution(str, str2, str3);
    }

    public static void setPurchaseRevenueValidationListeners(boolean z) {
        PurchaseClient.Builder builder2 = builder;
        if (builder2 == null || !z) {
            return;
        }
        builder2.setSubscriptionValidationResultListener(new AnonymousClass9());
        builder.setInAppValidationResultListener(new AnonymousClass10());
    }

    public static void setResolveDeepLinkURLs(String... strArr) {
        AppsFlyerLib.getInstance().setResolveDeepLinkURLs(strArr);
    }

    public static void setSharingFilter(String... strArr) {
        AppsFlyerLib.getInstance().setSharingFilter(strArr);
    }

    public static void setSharingFilterForAllPartners() {
        AppsFlyerLib.getInstance().setSharingFilterForAllPartners();
    }

    public static void setSharingFilterForPartners(String... strArr) {
        AppsFlyerLib.getInstance().setSharingFilterForPartners(strArr);
    }

    public static void setUserEmails(AppsFlyerProperties.EmailsCryptType emailsCryptType, String... strArr) {
        AppsFlyerLib.getInstance().setUserEmails(emailsCryptType, strArr);
    }

    public static void setUserEmails(String... strArr) {
        AppsFlyerLib.getInstance().setUserEmails(strArr);
    }

    public static void startObservingTransactions() {
        PurchaseClient purchaseClient = purchaseClientInstance;
        if (purchaseClient != null) {
            purchaseClient.startObservingTransactions();
        } else {
            Log.w("AppsFlyer_Connector", "[PurchaseConnector]: startObservingTransactions was not called because the purchase client instance is null, please call build() prior to this function.");
        }
    }

    public static void startTracking() {
        startTracking(false, null);
    }

    public static void startTracking(final boolean z, final String str) {
        AppsFlyerLib.getInstance().start(UnityPlayer.currentActivity, devkey, new AppsFlyerRequestListener() { // from class: com.appsflyer.unity.AppsFlyerAndroidWrapper.1
            @Override // com.appsflyer.attribution.AppsFlyerRequestListener
            public void onError(int i, String str2) {
                if (!z || str == null) {
                    return;
                }
                HashMap map = new HashMap();
                map.put("statusCode", Integer.valueOf(i));
                map.put("errorDescription", str2);
                UnityPlayer.UnitySendMessage(str, AppsFlyerAndroidWrapper.START_REQUEST_CALLBACK, new JSONObject(map).toString());
            }

            @Override // com.appsflyer.attribution.AppsFlyerRequestListener
            public void onSuccess() {
                if (!z || str == null) {
                    return;
                }
                HashMap map = new HashMap();
                map.put("statusCode", 200);
                UnityPlayer.UnitySendMessage(str, AppsFlyerAndroidWrapper.START_REQUEST_CALLBACK, new JSONObject(map).toString());
            }
        });
    }

    public static void stopObservingTransactions() {
        PurchaseClient purchaseClient = purchaseClientInstance;
        if (purchaseClient != null) {
            purchaseClient.stopObservingTransactions();
        } else {
            Log.w("AppsFlyer_Connector", "[PurchaseConnector]: stopObservingTransactions was not called because the purchase client instance is null, please call build() prior to this function.");
        }
    }

    public static void stopTracking(boolean z) {
        AppsFlyerLib.getInstance().stop(z, UnityPlayer.currentActivity);
    }

    public static void subscribeForDeepLink(final String str) {
        if (ddlTimeout != DDL_TIMEOUT_DEFAULT) {
            AppsFlyerLib.getInstance().subscribeForDeepLink(new DeepLinkListener() { // from class: com.appsflyer.unity.AppsFlyerAndroidWrapper.7
                @Override // com.appsflyer.deeplink.DeepLinkListener
                public void onDeepLinking(DeepLinkResult deepLinkResult) {
                    String str2 = str;
                    if (str2 != null) {
                        UnityPlayer.UnitySendMessage(str2, AppsFlyerAndroidWrapper.ON_DEEPLINKING, deepLinkResult.toString());
                    }
                }
            }, ddlTimeout);
        } else {
            AppsFlyerLib.getInstance().subscribeForDeepLink(new DeepLinkListener() { // from class: com.appsflyer.unity.AppsFlyerAndroidWrapper.8
                @Override // com.appsflyer.deeplink.DeepLinkListener
                public void onDeepLinking(DeepLinkResult deepLinkResult) {
                    String str2 = str;
                    if (str2 != null) {
                        UnityPlayer.UnitySendMessage(str2, AppsFlyerAndroidWrapper.ON_DEEPLINKING, deepLinkResult.toString());
                    }
                }
            });
        }
    }

    public static void trackEvent(String str, HashMap<String, Object> map) {
        trackEvent(str, map, false, null);
    }

    public static void trackEvent(String str, HashMap<String, Object> map, final boolean z, final String str2) {
        AppsFlyerLib.getInstance().logEvent(UnityPlayer.currentActivity, str, map, new AppsFlyerRequestListener() { // from class: com.appsflyer.unity.AppsFlyerAndroidWrapper.2
            @Override // com.appsflyer.attribution.AppsFlyerRequestListener
            public void onError(int i, String str3) {
                if (!z || str2 == null) {
                    return;
                }
                HashMap map2 = new HashMap();
                map2.put("statusCode", Integer.valueOf(i));
                map2.put("errorDescription", str3);
                UnityPlayer.UnitySendMessage(str2, AppsFlyerAndroidWrapper.IN_APP_RESPONSE_CALLBACK, new JSONObject(map2).toString());
            }

            @Override // com.appsflyer.attribution.AppsFlyerRequestListener
            public void onSuccess() {
                if (!z || str2 == null) {
                    return;
                }
                HashMap map2 = new HashMap();
                map2.put("statusCode", 200);
                UnityPlayer.UnitySendMessage(str2, AppsFlyerAndroidWrapper.IN_APP_RESPONSE_CALLBACK, new JSONObject(map2).toString());
            }
        });
    }

    public static void trackLocation(double d, double d2) {
        AppsFlyerLib.getInstance().logLocation(UnityPlayer.currentActivity, d, d2);
    }

    public static void updateServerUninstallToken(String str) {
        AppsFlyerLib.getInstance().updateServerUninstallToken(UnityPlayer.currentActivity, str);
    }

    public static void validateAndTrackInAppPurchase(String str, String str2, String str3, String str4, String str5, HashMap<String, String> map, String str6) {
        AppsFlyerLib.getInstance().validateAndLogInAppPurchase(UnityPlayer.currentActivity, str, str2, str3, str4, str5, map);
        if (str6 != null) {
            initInAppPurchaseValidatorListener(str6);
        }
    }

    public static void validateAndTrackInAppPurchaseV2(int i, String str, String str2, HashMap<String, String> map, String str3) {
        AFPurchaseDetails aFPurchaseDetails = new AFPurchaseDetails(i == 0 ? AFPurchaseType.SUBSCRIPTION : AFPurchaseType.ONE_TIME_PURCHASE, str, str2);
        if (str3 != null) {
            AppsFlyerLib.getInstance().validateAndLogInAppPurchase(aFPurchaseDetails, map, initInAppPurchaseValidatorV2Listener(str3));
        }
    }

    public static void waitForCustomerUserId(boolean z) {
        AppsFlyerLib.getInstance().waitForCustomerUserId(true);
    }
}
