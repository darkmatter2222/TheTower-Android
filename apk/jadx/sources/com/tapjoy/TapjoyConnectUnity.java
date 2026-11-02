package com.tapjoy;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import com.ironsource.adapters.facebook.FacebookConstants;
import com.unity3d.player.UnityPlayer;
import java.util.HashMap;
import java.util.Hashtable;

/* JADX INFO: loaded from: classes4.dex */
public final class TapjoyConnectUnity {
    private static final String CONNECT_FLAG_DICTIONARY_NAME = "connectFlags";
    private static final int CURRENCY_ALERT_CODE = 1;
    private static final String SEGMENTATION_DICTIONARY_NAME = "segmentationParams";
    private static final String TAG = "TapjoyConnectUnity";
    private static final String UNITY_GAME_OBJECT_NAME = "TapjoyUnity";
    private static Activity activity;
    private static Context applicationContext;
    private static Handler handler;
    private static TJPrivacyPolicy privacyPolicy;
    private static TapjoyConnectUnity tapjoyUnity;
    private int tapjoycurrencyTotal = 0;
    private static Hashtable<String, TJPlacement> cSharpGuidMap = new Hashtable<>();
    private static Hashtable<String, String> javaToCSharpMap = new Hashtable<>();
    private static Hashtable<String, TJActionRequest> actionRequestMap = new Hashtable<>();
    private static Hashtable<String, Object> cSharpDictionaryRefs = new Hashtable<>();
    private static int earnedAmount = 0;
    private static String earnedCurrencyName = "Points";
    private static final TJConnectListener CONNECT_LISTENER = new TJConnectListener() { // from class: com.tapjoy.TapjoyConnectUnity.1
        @Override // com.tapjoy.TJConnectListener
        public void onConnectFailure() {
            UnityPlayer.UnitySendMessage(TapjoyConnectUnity.UNITY_GAME_OBJECT_NAME, "OnNativeConnectCallback", "OnConnectFailure");
        }

        @Override // com.tapjoy.TJConnectListener
        public void onConnectSuccess() {
            Tapjoy.setEarnedCurrencyListener(TapjoyConnectUnity.EARNED_CURRENCY_LISTENER);
            Tapjoy.setVideoListener(TapjoyConnectUnity.VIDEO_LISTENER);
            UnityPlayer.UnitySendMessage(TapjoyConnectUnity.UNITY_GAME_OBJECT_NAME, "OnNativeConnectCallback", "OnConnectSuccess");
        }
    };
    private static final TJVideoListener VIDEO_LISTENER = new TJVideoListener() { // from class: com.tapjoy.TapjoyConnectUnity.2
        @Override // com.tapjoy.TJVideoListener
        public void onVideoComplete() {
            UnityPlayer.UnitySendMessage(TapjoyConnectUnity.UNITY_GAME_OBJECT_NAME, "OnNativeVideoCallback", "OnVideoComplete");
        }

        @Override // com.tapjoy.TJVideoListener
        public void onVideoError(int i) {
            UnityPlayer.UnitySendMessage(TapjoyConnectUnity.UNITY_GAME_OBJECT_NAME, "OnNativeVideoCallback", "OnVideoError," + i);
        }

        @Override // com.tapjoy.TJVideoListener
        public void onVideoStart() {
            UnityPlayer.UnitySendMessage(TapjoyConnectUnity.UNITY_GAME_OBJECT_NAME, "OnNativeVideoCallback", "OnVideoStart");
        }
    };
    private static final TJPlacementListener PLACEMENT_LISTENER = new TJPlacementListener() { // from class: com.tapjoy.TapjoyConnectUnity.3
        @Override // com.tapjoy.TJPlacementListener
        public void onClick(TJPlacement tJPlacement) {
            String name;
            String str = (String) TapjoyConnectUnity.javaToCSharpMap.get(tJPlacement.getGUID());
            try {
                name = Uri.encode(tJPlacement.getName(), "UTF-8");
            } catch (Exception unused) {
                name = tJPlacement.getName();
            }
            UnityPlayer.UnitySendMessage(TapjoyConnectUnity.UNITY_GAME_OBJECT_NAME, "OnNativePlacementCallback", "OnPlacementClick," + str + FacebookConstants.PLACEMENT_IDS_SEPARATOR + name);
        }

        @Override // com.tapjoy.TJPlacementListener
        public void onContentDismiss(TJPlacement tJPlacement) {
            String name;
            String str = (String) TapjoyConnectUnity.javaToCSharpMap.get(tJPlacement.getGUID());
            try {
                name = Uri.encode(tJPlacement.getName(), "UTF-8");
            } catch (Exception unused) {
                name = tJPlacement.getName();
            }
            UnityPlayer.UnitySendMessage(TapjoyConnectUnity.UNITY_GAME_OBJECT_NAME, "OnNativePlacementCallback", "OnPlacementContentDismiss," + str + FacebookConstants.PLACEMENT_IDS_SEPARATOR + name);
        }

        @Override // com.tapjoy.TJPlacementListener
        public void onContentReady(TJPlacement tJPlacement) {
            String name;
            String str = (String) TapjoyConnectUnity.javaToCSharpMap.get(tJPlacement.getGUID());
            try {
                name = Uri.encode(tJPlacement.getName(), "UTF-8");
            } catch (Exception unused) {
                name = tJPlacement.getName();
            }
            UnityPlayer.UnitySendMessage(TapjoyConnectUnity.UNITY_GAME_OBJECT_NAME, "OnNativePlacementCallback", "OnPlacementContentReady," + str + FacebookConstants.PLACEMENT_IDS_SEPARATOR + name);
        }

        @Override // com.tapjoy.TJPlacementListener
        public void onContentShow(TJPlacement tJPlacement) {
            String name;
            String str = (String) TapjoyConnectUnity.javaToCSharpMap.get(tJPlacement.getGUID());
            try {
                name = Uri.encode(tJPlacement.getName(), "UTF-8");
            } catch (Exception unused) {
                name = tJPlacement.getName();
            }
            UnityPlayer.UnitySendMessage(TapjoyConnectUnity.UNITY_GAME_OBJECT_NAME, "OnNativePlacementCallback", "OnPlacementContentShow," + str + FacebookConstants.PLACEMENT_IDS_SEPARATOR + name);
        }

        @Override // com.tapjoy.TJPlacementListener
        public void onPurchaseRequest(TJPlacement tJPlacement, TJActionRequest tJActionRequest, String str) {
            String name;
            String str2 = (String) TapjoyConnectUnity.javaToCSharpMap.get(tJPlacement.getGUID());
            TapjoyConnectUnity.actionRequestMap.put(str2, tJActionRequest);
            try {
                name = Uri.encode(tJPlacement.getName(), "UTF-8");
            } catch (Exception unused) {
                name = tJPlacement.getName();
            }
            UnityPlayer.UnitySendMessage(TapjoyConnectUnity.UNITY_GAME_OBJECT_NAME, "OnNativePlacementCallback", "OnPurchaseRequest," + str2 + FacebookConstants.PLACEMENT_IDS_SEPARATOR + name + FacebookConstants.PLACEMENT_IDS_SEPARATOR + tJActionRequest.getRequestId() + FacebookConstants.PLACEMENT_IDS_SEPARATOR + tJActionRequest.getToken() + FacebookConstants.PLACEMENT_IDS_SEPARATOR + str);
        }

        @Override // com.tapjoy.TJPlacementListener
        public void onRequestFailure(TJPlacement tJPlacement, TJError tJError) {
            String name;
            String str = (String) TapjoyConnectUnity.javaToCSharpMap.get(tJPlacement.getGUID());
            try {
                name = Uri.encode(tJPlacement.getName(), "UTF-8");
            } catch (Exception unused) {
                name = tJPlacement.getName();
            }
            UnityPlayer.UnitySendMessage(TapjoyConnectUnity.UNITY_GAME_OBJECT_NAME, "OnNativePlacementCallback", "OnPlacementRequestFailure," + str + FacebookConstants.PLACEMENT_IDS_SEPARATOR + name + FacebookConstants.PLACEMENT_IDS_SEPARATOR + tJError.message);
        }

        @Override // com.tapjoy.TJPlacementListener
        public void onRequestSuccess(TJPlacement tJPlacement) {
            String name;
            String str = (String) TapjoyConnectUnity.javaToCSharpMap.get(tJPlacement.getGUID());
            try {
                name = Uri.encode(tJPlacement.getName(), "UTF-8");
            } catch (Exception unused) {
                name = tJPlacement.getName();
            }
            UnityPlayer.UnitySendMessage(TapjoyConnectUnity.UNITY_GAME_OBJECT_NAME, "OnNativePlacementCallback", "OnPlacementRequestSuccess," + str + FacebookConstants.PLACEMENT_IDS_SEPARATOR + name + FacebookConstants.PLACEMENT_IDS_SEPARATOR + tJPlacement.isContentAvailable());
        }

        @Override // com.tapjoy.TJPlacementListener
        public void onRewardRequest(TJPlacement tJPlacement, TJActionRequest tJActionRequest, String str, int i) {
            String name;
            String str2 = (String) TapjoyConnectUnity.javaToCSharpMap.get(tJPlacement.getGUID());
            TapjoyConnectUnity.actionRequestMap.put(str2, tJActionRequest);
            try {
                name = Uri.encode(tJPlacement.getName(), "UTF-8");
            } catch (Exception unused) {
                name = tJPlacement.getName();
            }
            UnityPlayer.UnitySendMessage(TapjoyConnectUnity.UNITY_GAME_OBJECT_NAME, "OnNativePlacementCallback", "OnRewardRequest," + str2 + FacebookConstants.PLACEMENT_IDS_SEPARATOR + name + FacebookConstants.PLACEMENT_IDS_SEPARATOR + tJActionRequest.getRequestId() + FacebookConstants.PLACEMENT_IDS_SEPARATOR + tJActionRequest.getToken() + FacebookConstants.PLACEMENT_IDS_SEPARATOR + str + FacebookConstants.PLACEMENT_IDS_SEPARATOR + i);
        }
    };
    private static final TJPlacementVideoListener PLACEMENT_VIDEO_LISTENER = new TJPlacementVideoListener() { // from class: com.tapjoy.TapjoyConnectUnity.4
        @Override // com.tapjoy.TJPlacementVideoListener
        public void onVideoComplete(TJPlacement tJPlacement) {
            String name;
            String str = (String) TapjoyConnectUnity.javaToCSharpMap.get(tJPlacement.getGUID());
            try {
                name = Uri.encode(tJPlacement.getName(), "UTF-8");
            } catch (Exception unused) {
                name = tJPlacement.getName();
            }
            UnityPlayer.UnitySendMessage(TapjoyConnectUnity.UNITY_GAME_OBJECT_NAME, "OnNativePlacementVideoCallback", "OnVideoComplete," + str + FacebookConstants.PLACEMENT_IDS_SEPARATOR + name);
        }

        @Override // com.tapjoy.TJPlacementVideoListener
        public void onVideoError(TJPlacement tJPlacement, String str) {
            String name;
            String str2 = (String) TapjoyConnectUnity.javaToCSharpMap.get(tJPlacement.getGUID());
            try {
                name = Uri.encode(tJPlacement.getName(), "UTF-8");
            } catch (Exception unused) {
                name = tJPlacement.getName();
            }
            UnityPlayer.UnitySendMessage(TapjoyConnectUnity.UNITY_GAME_OBJECT_NAME, "OnNativePlacementVideoCallback", "OnVideoError," + str2 + FacebookConstants.PLACEMENT_IDS_SEPARATOR + name + FacebookConstants.PLACEMENT_IDS_SEPARATOR + str);
        }

        @Override // com.tapjoy.TJPlacementVideoListener
        public void onVideoStart(TJPlacement tJPlacement) {
            String name;
            String str = (String) TapjoyConnectUnity.javaToCSharpMap.get(tJPlacement.getGUID());
            try {
                name = Uri.encode(tJPlacement.getName(), "UTF-8");
            } catch (Exception unused) {
                name = tJPlacement.getName();
            }
            UnityPlayer.UnitySendMessage(TapjoyConnectUnity.UNITY_GAME_OBJECT_NAME, "OnNativePlacementVideoCallback", "OnVideoStart," + str + FacebookConstants.PLACEMENT_IDS_SEPARATOR + name);
        }
    };
    private static final TJSetUserIDListener SET_USER_ID_LISTENER = new TJSetUserIDListener() { // from class: com.tapjoy.TapjoyConnectUnity.5
        @Override // com.tapjoy.TJSetUserIDListener
        public void onSetUserIDFailure(String str) {
            UnityPlayer.UnitySendMessage(TapjoyConnectUnity.UNITY_GAME_OBJECT_NAME, "OnNativeSetUserIDCallback", "OnSetUserIDFailure," + str);
        }

        @Override // com.tapjoy.TJSetUserIDListener
        public void onSetUserIDSuccess() {
            UnityPlayer.UnitySendMessage(TapjoyConnectUnity.UNITY_GAME_OBJECT_NAME, "OnNativeSetUserIDCallback", "OnSetUserIDSuccess");
        }
    };
    private static final TJGetCurrencyBalanceListener GET_CURRENCY_BALANCE_LISTENER = new TJGetCurrencyBalanceListener() { // from class: com.tapjoy.TapjoyConnectUnity.6
        @Override // com.tapjoy.TJGetCurrencyBalanceListener
        public void onGetCurrencyBalanceResponse(String str, int i) {
            UnityPlayer.UnitySendMessage(TapjoyConnectUnity.UNITY_GAME_OBJECT_NAME, "OnNativeCurrencyCallback", "OnGetCurrencyBalanceResponse," + str + FacebookConstants.PLACEMENT_IDS_SEPARATOR + i);
        }

        @Override // com.tapjoy.TJGetCurrencyBalanceListener
        public void onGetCurrencyBalanceResponseFailure(String str) {
            UnityPlayer.UnitySendMessage(TapjoyConnectUnity.UNITY_GAME_OBJECT_NAME, "OnNativeCurrencyCallback", "OnGetCurrencyBalanceResponseFailure," + str);
        }
    };
    private static final TJSpendCurrencyListener SPEND_CURRENCY_LISTENER = new TJSpendCurrencyListener() { // from class: com.tapjoy.TapjoyConnectUnity.7
        @Override // com.tapjoy.TJSpendCurrencyListener
        public void onSpendCurrencyResponse(String str, int i) {
            UnityPlayer.UnitySendMessage(TapjoyConnectUnity.UNITY_GAME_OBJECT_NAME, "OnNativeCurrencyCallback", "OnSpendCurrencyResponse," + str + FacebookConstants.PLACEMENT_IDS_SEPARATOR + i);
        }

        @Override // com.tapjoy.TJSpendCurrencyListener
        public void onSpendCurrencyResponseFailure(String str) {
            UnityPlayer.UnitySendMessage(TapjoyConnectUnity.UNITY_GAME_OBJECT_NAME, "OnNativeCurrencyCallback", "OnSpendCurrencyResponseFailure," + str);
        }
    };
    private static final TJAwardCurrencyListener AWARD_CURRENCY_LISTENER = new TJAwardCurrencyListener() { // from class: com.tapjoy.TapjoyConnectUnity.8
        @Override // com.tapjoy.TJAwardCurrencyListener
        public void onAwardCurrencyResponse(String str, int i) {
            UnityPlayer.UnitySendMessage(TapjoyConnectUnity.UNITY_GAME_OBJECT_NAME, "OnNativeCurrencyCallback", "OnAwardCurrencyResponse," + str + FacebookConstants.PLACEMENT_IDS_SEPARATOR + i);
        }

        @Override // com.tapjoy.TJAwardCurrencyListener
        public void onAwardCurrencyResponseFailure(String str) {
            UnityPlayer.UnitySendMessage(TapjoyConnectUnity.UNITY_GAME_OBJECT_NAME, "OnNativeCurrencyCallback", "OnAwardCurrencyResponseFailure," + str);
        }
    };
    private static final TJEarnedCurrencyListener EARNED_CURRENCY_LISTENER = new TJEarnedCurrencyListener() { // from class: com.tapjoy.TapjoyConnectUnity.9
        @Override // com.tapjoy.TJEarnedCurrencyListener
        public void onEarnedCurrency(String str, int i) {
            int unused = TapjoyConnectUnity.earnedAmount = i;
            UnityPlayer.UnitySendMessage(TapjoyConnectUnity.UNITY_GAME_OBJECT_NAME, "OnNativeCurrencyCallback", "OnEarnedCurrency," + str + FacebookConstants.PLACEMENT_IDS_SEPARATOR + i);
        }
    };
    static final Runnable showDefaultEarnedCurrencyAlert = new Runnable() { // from class: com.tapjoy.TapjoyConnectUnity.14
        @Override // java.lang.Runnable
        public void run() {
            try {
                new AlertDialog.Builder(TapjoyConnectUnity.activity).setTitle("Congratulations!").setMessage("You've just earned " + TapjoyConnectUnity.earnedAmount + " " + TapjoyConnectUnity.earnedCurrencyName).setPositiveButton("OK", new DialogInterface.OnClickListener() { // from class: com.tapjoy.TapjoyConnectUnity.14.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        dialogInterface.dismiss();
                    }
                }).create().show();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    };

    /* JADX INFO: renamed from: com.tapjoy.TapjoyConnectUnity$12, reason: invalid class name */
    static class AnonymousClass12 implements Runnable {
        AnonymousClass12() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Tapjoy.onActivityStart(TapjoyConnectUnity.activity);
        }
    }

    /* JADX INFO: renamed from: com.tapjoy.TapjoyConnectUnity$13, reason: invalid class name */
    static class AnonymousClass13 implements Runnable {
        AnonymousClass13() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Tapjoy.onActivityStop(TapjoyConnectUnity.activity);
        }
    }

    private TapjoyConnectUnity() {
    }

    public static void actionComplete(String str) {
        Tapjoy.actionComplete(str);
    }

    public static void actionRequestCancelled(String str) {
        TJActionRequest tJActionRequest = actionRequestMap.get(str);
        if (tJActionRequest != null) {
            tJActionRequest.cancelled();
            actionRequestMap.remove(str);
        }
    }

    public static void actionRequestCompleted(String str) {
        TJActionRequest tJActionRequest = actionRequestMap.get(str);
        if (tJActionRequest != null) {
            tJActionRequest.completed();
            actionRequestMap.remove(str);
        }
    }

    public static void activate(String str) {
        Activity activity2 = UnityPlayer.currentActivity;
        activity = activity2;
        applicationContext = activity2.getApplicationContext();
        if (activity != null) {
            TapjoyConnectCore.setPlugin("unity");
            activity.runOnUiThread(new Runnable() { // from class: com.tapjoy.TapjoyConnectUnity.10
                @Override // java.lang.Runnable
                public void run() {
                    Tapjoy.setActivity(TapjoyConnectUnity.activity);
                    Handler unused = TapjoyConnectUnity.handler = new Handler() { // from class: com.tapjoy.TapjoyConnectUnity.10.1
                        @Override // android.os.Handler
                        public void handleMessage(Message message) {
                            super.handleMessage(message);
                            if (message == null || message.arg1 != 1) {
                                return;
                            }
                            post(TapjoyConnectUnity.showDefaultEarnedCurrencyAlert);
                        }
                    };
                }
            });
        }
    }

    public static void activateInstallReferrerClient() {
        Tapjoy.activateInstallReferrerClient(applicationContext);
    }

    public static void awardCurrency(int i) {
        Tapjoy.awardCurrency(i, AWARD_CURRENCY_LISTENER);
    }

    public static void connect(String str) {
        connect(str, getReferenceDictionary(CONNECT_FLAG_DICTIONARY_NAME, false));
    }

    public static void connect(final String str, final Hashtable<String, Object> hashtable) {
        tapjoyUnity = new TapjoyConnectUnity();
        Activity activity2 = activity;
        if (activity2 != null) {
            activity2.runOnUiThread(new Runnable() { // from class: com.tapjoy.TapjoyConnectUnity.11
                @Override // java.lang.Runnable
                public void run() {
                    Tapjoy.connect(TapjoyConnectUnity.applicationContext, str, hashtable, TapjoyConnectUnity.CONNECT_LISTENER);
                }
            });
        }
    }

    public static void createPlacement(String str, String str2) {
        TJPlacement tJPlacement = new TJPlacement(activity, str2, PLACEMENT_LISTENER);
        tJPlacement.setVideoListener(PLACEMENT_VIDEO_LISTENER);
        cSharpGuidMap.put(str, tJPlacement);
        javaToCSharpMap.put(tJPlacement.getGUID(), str);
    }

    public static void dismissPlacementContent() {
        TJPlacement.dismissContent();
    }

    public static void getCurrencyBalance() {
        Tapjoy.getCurrencyBalance(GET_CURRENCY_BALANCE_LISTENER);
    }

    public static float getCurrencyMultiplier() {
        return Tapjoy.getCurrencyMultiplier();
    }

    public static String getCustomParameter() {
        return Tapjoy.getCustomParameter();
    }

    public static void getPrivacyPolicy() {
        if (privacyPolicy == null) {
            privacyPolicy = Tapjoy.getPrivacyPolicy();
        }
    }

    public static Hashtable<String, Object> getReferenceDictionary(String str) {
        return getReferenceDictionary(str, true);
    }

    public static Hashtable<String, Object> getReferenceDictionary(String str, boolean z) {
        Hashtable<String, Object> hashtable = (Hashtable) cSharpDictionaryRefs.get(str);
        if (hashtable != null || !z) {
            return hashtable;
        }
        Hashtable<String, Object> hashtable2 = new Hashtable<>();
        cSharpDictionaryRefs.put(str, hashtable2);
        return hashtable2;
    }

    public static String getSupportURL() {
        return Tapjoy.getSupportURL();
    }

    public static String getSupportURL(String str) {
        return Tapjoy.getSupportURL(str);
    }

    public static boolean isPlacementContentAvailable(String str) {
        TJPlacement tJPlacement = cSharpGuidMap.get(str);
        if (tJPlacement != null) {
            return tJPlacement.isContentAvailable();
        }
        return false;
    }

    public static boolean isPlacementContentReady(String str) {
        TJPlacement tJPlacement = cSharpGuidMap.get(str);
        if (tJPlacement != null) {
            return tJPlacement.isContentReady();
        }
        return false;
    }

    public static void onActivityStart() {
    }

    public static void onActivityStop() {
    }

    public static void optOutAdvertisingID(boolean z) {
        Tapjoy.optOutAdvertisingID(applicationContext, z);
    }

    public static void removeActionRequest(String str) {
        actionRequestMap.remove(str);
    }

    public static void removePlacement(String str) {
        cSharpGuidMap.remove(str);
    }

    public static void removeRefDictionary(String str) {
        cSharpDictionaryRefs.remove(str);
    }

    public static void requestPlacementContent(String str) {
        TJPlacement tJPlacement = cSharpGuidMap.get(str);
        if (tJPlacement != null) {
            tJPlacement.requestContent();
        }
    }

    public static void setBelowConsentAge(boolean z) {
        TJPrivacyPolicy tJPrivacyPolicy = privacyPolicy;
        if (tJPrivacyPolicy != null) {
            tJPrivacyPolicy.setBelowConsentAge(z);
        }
    }

    public static void setCustomParameter(String str) {
        Tapjoy.setCustomParameter(str);
    }

    public static void setDictionaryInDictionary(String str, String str2, String str3) {
        Hashtable hashtable = (Hashtable) cSharpDictionaryRefs.get(str3);
        if (hashtable == null) {
            hashtable = new Hashtable();
            cSharpDictionaryRefs.put(str3, hashtable);
        }
        Hashtable hashtable2 = (Hashtable) cSharpDictionaryRefs.get(str2);
        if (hashtable2 == null) {
            TapjoyLog.i(UNITY_GAME_OBJECT_NAME, "no dictionary reference by the name of " + str2);
        } else {
            hashtable.put(str, hashtable2);
        }
    }

    public static void setInstallReferrer(String str) {
        Tapjoy.setInstallReferrer(applicationContext, str);
    }

    public static void setKeyValueInDictionary(String str, float f, String str2) {
        getReferenceDictionary(str2).put(str, Float.valueOf(f));
    }

    public static void setKeyValueInDictionary(String str, int i, String str2) {
        getReferenceDictionary(str2).put(str, Integer.valueOf(i));
    }

    public static void setKeyValueInDictionary(String str, String str2, String str3) {
        getReferenceDictionary(str3).put(str, str2);
    }

    public static void setKeyValueInDictionary(String str, boolean z, String str2) {
        getReferenceDictionary(str2).put(str, Boolean.valueOf(z));
    }

    public static void setReceiveRemoteNotification(String str) {
        Tapjoy.setReceiveRemoteNotification(applicationContext, new HashMap(getReferenceDictionary(str)));
        removeRefDictionary(str);
    }

    public static void setSubjectToGDPR(boolean z) {
        if (privacyPolicy != null) {
            TapjoyLog.i("Tapjoy", "Clara set gdpr");
            privacyPolicy.setSubjectToGDPR(z);
        }
    }

    public static void setUSPrivacy(String str) {
        TJPrivacyPolicy tJPrivacyPolicy = privacyPolicy;
        if (tJPrivacyPolicy != null) {
            tJPrivacyPolicy.setUSPrivacy(str);
        }
    }

    public static void setUserConsent(String str) {
        TJPrivacyPolicy tJPrivacyPolicy = privacyPolicy;
        if (tJPrivacyPolicy != null) {
            tJPrivacyPolicy.setUserConsent(str);
        }
    }

    public static void setUserID(String str) {
        Tapjoy.setUserID(str, SET_USER_ID_LISTENER);
    }

    public static void showDefaultEarnedCurrencyAlert() {
        Message message = new Message();
        message.arg1 = 1;
        Handler handler2 = handler;
        if (handler2 != null) {
            handler2.sendMessage(message);
        }
    }

    public static void showPlacementContent(String str) {
        TJPlacement tJPlacement = cSharpGuidMap.get(str);
        if (tJPlacement != null) {
            tJPlacement.showContent();
        }
    }

    public static void spendCurrency(int i) {
        Tapjoy.spendCurrency(i, SPEND_CURRENCY_LISTENER);
    }

    public static void trackEvent_CNPPV(String str, String str2, String str3, String str4, long j) {
        Tapjoy.trackEvent(str, str2, str3, str4, j);
    }

    public static void trackEvent_CNPPV1V2V3(String str, String str2, String str3, String str4, String str5, long j, String str6, long j2, String str7, long j3) {
        Tapjoy.trackEvent(str, str2, str3, str4, str5, j, str6, j2, str7, j3);
    }
}
