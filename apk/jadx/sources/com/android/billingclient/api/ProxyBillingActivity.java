package com.android.billingclient.api;

import android.app.Activity;
import android.app.ActivityOptions;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentSender;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.ResultReceiver;
import androidx.core.content.ContextCompat;
import com.android.billingclient.BuildConfig;
import com.google.android.gms.internal.play_billing.zzjn;
import com.google.android.gms.internal.play_billing.zzju;
import com.google.android.gms.internal.play_billing.zzjz;
import com.google.android.gms.internal.play_billing.zzkb;
import com.google.android.gms.internal.play_billing.zzkv;
import com.google.android.gms.internal.play_billing.zzky;

/* JADX INFO: compiled from: com.android.billingclient:billing@@9.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public class ProxyBillingActivity extends Activity {
    static final String EXTERNAL_BROADCAST_PERMISSION = "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST";
    private static final String KEY_ACTIVITY_CODE = "activity_code";
    static final String KEY_IN_APP_MESSAGE_RESULT_RECEIVER = "in_app_message_result_receiver";
    private static final String KEY_SEND_CANCELLED_BROADCAST_IF_FINISHED = "send_cancelled_broadcast_if_finished";
    private static final int REQUEST_CODE_FIRST_PARTY_PURCHASE_FLOW = 110;
    private static final int REQUEST_CODE_IN_APP_MESSAGE_FLOW = 101;
    private static final int REQUEST_CODE_LAUNCH_ACTIVITY = 100;
    static final int RESULT_CODE_PLAY_CANCELED_WITH_ON_CREATE_RUNTIME_EXCEPTION = 5;
    static final int RESULT_CODE_PLAY_CANCELLED = 3;
    static final int RESULT_CODE_PLAY_CANCELLED_WITHOUT_COMPLETE_ACTION = 4;
    private static final String TAG = "ProxyBillingActivity";
    private int activityCode;
    private long billingClientTransactionId;
    zzcz billingLogger;
    private ResultReceiver inAppMessageResultReceiver;
    private boolean isFlowFromFirstPartyClient;
    zzec proxyBillingBroadcastReceiver;
    private boolean sendCancelledBroadcastIfFinished;
    private boolean wasServiceAutoReconnected;

    private zzjn getLoggingErrorReason(int i, Intent intent) {
        if (intent != null) {
            if (intent.getExtras() == null) {
                return zzjn.NULL_BUNDLE_IN_ACTIVITY_RESULT;
            }
            return i == 5 ? zzjn.PLAY_STORE_ON_CREATE_RUNTIME_EXCEPTION : zzjn.REASON_UNSPECIFIED;
        }
        if (i == -1) {
            return zzjn.NULL_DATA_WITH_OK_RESULT_CODE_IN_PROXY_BILLING_ACTIVITY_RESULT;
        }
        if (i == 0) {
            return zzjn.NULL_DATA_WITH_CANCELLED_RESULT_CODE_IN_PROXY_BILLING_ACTIVITY_RESULT;
        }
        if (i != 3) {
            return i != 4 ? zzjn.NULL_DATA_WITH_OTHER_RESULT_CODE_IN_PROXY_BILLING_ACTIVITY_RESULT : zzjn.NULL_DATA_WITH_PLAY_CANCELED_WITHOUT_COMPLETE_ACTION_RESULT_CODE;
        }
        return zzjn.NULL_DATA_WITH_PLAY_CANCELED_RESULT_CODE;
    }

    private boolean isInAppMessageFlow(Bundle bundle) {
        if (bundle != null) {
            return bundle.containsKey(KEY_IN_APP_MESSAGE_RESULT_RECEIVER);
        }
        if (getIntent() == null) {
            return false;
        }
        return getIntent().hasExtra("IN_APP_MESSAGE_INTENT");
    }

    private boolean isKnownError(int i, Intent intent) {
        return !getLoggingErrorReason(i, intent).equals(zzjn.REASON_UNSPECIFIED);
    }

    private boolean isProxyBillingBroadcastReceiverRegistered() {
        return this.proxyBillingBroadcastReceiver != null;
    }

    private Intent makeAlternativeBillingIntent(String str) {
        Intent intent = new Intent("com.android.vending.billing.ALTERNATIVE_BILLING");
        intent.setPackage(getApplicationContext().getPackageName());
        intent.putExtra("ALTERNATIVE_BILLING_USER_CHOICE_DATA", str);
        return intent;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0068  */
    private Intent makePurchaseUpdatedIntentWithResponseCodeAndReason(zzjn zzjnVar, long j, boolean z) {
        Intent intentMakePurchasesUpdatedIntent = makePurchasesUpdatedIntent();
        if (!z) {
            intentMakePurchasesUpdatedIntent.putExtra("RESPONSE_CODE", 6);
            intentMakePurchasesUpdatedIntent.putExtra("DEBUG_MESSAGE", "An internal error occurred.");
            BillingResult.Builder builderNewBuilder = BillingResult.newBuilder();
            builderNewBuilder.setResponseCode(6);
            builderNewBuilder.setDebugMessage("An internal error occurred.");
            BillingResult billingResultBuild = builderNewBuilder.build();
            int i = zzcy.zza;
            intentMakePurchasesUpdatedIntent.putExtra("FAILURE_LOGGING_PAYLOAD", zzcy.zzb(zzjnVar, 2, billingResultBuild, null, zzju.BROADCAST_ACTION_UNSPECIFIED).zzQ());
        } else if (isProxyBillingBroadcastReceiverRegistered() && this.proxyBillingBroadcastReceiver.zza() != null) {
            BillingResult billingResultZza = this.proxyBillingBroadcastReceiver.zza();
            intentMakePurchasesUpdatedIntent.putExtra("RESPONSE_CODE", billingResultZza.getResponseCode());
            intentMakePurchasesUpdatedIntent.putExtra("DEBUG_MESSAGE", billingResultZza.getDebugMessage());
        } else if (!isProxyBillingBroadcastReceiverRegistered() || this.proxyBillingBroadcastReceiver.zzc()) {
            intentMakePurchasesUpdatedIntent.putExtra("RESPONSE_CODE", 6);
            intentMakePurchasesUpdatedIntent.putExtra("DEBUG_MESSAGE", "An internal error occurred.");
            BillingResult.Builder builderNewBuilder2 = BillingResult.newBuilder();
            builderNewBuilder2.setResponseCode(6);
            builderNewBuilder2.setDebugMessage("An internal error occurred.");
            BillingResult billingResultBuild2 = builderNewBuilder2.build();
            int i2 = zzcy.zza;
            intentMakePurchasesUpdatedIntent.putExtra("FAILURE_LOGGING_PAYLOAD", zzcy.zzb(zzjnVar, 2, billingResultBuild2, null, zzju.BROADCAST_ACTION_UNSPECIFIED).zzQ());
        } else {
            intentMakePurchasesUpdatedIntent.putExtra("RESPONSE_CODE", 3);
            intentMakePurchasesUpdatedIntent.putExtra("DEBUG_MESSAGE", "Play Store is blocked.");
            BillingResult.Builder builderNewBuilder3 = BillingResult.newBuilder();
            builderNewBuilder3.setResponseCode(3);
            builderNewBuilder3.setDebugMessage("Play Store is blocked.");
            BillingResult billingResultBuild3 = builderNewBuilder3.build();
            zzjn zzjnVar2 = zzjn.PLAY_STORE_APP_BLOCKED;
            int i3 = zzcy.zza;
            intentMakePurchasesUpdatedIntent.putExtra("FAILURE_LOGGING_PAYLOAD", zzcy.zzb(zzjnVar2, 2, billingResultBuild3, null, zzju.BROADCAST_ACTION_UNSPECIFIED).zzQ());
        }
        intentMakePurchasesUpdatedIntent.putExtra("INTENT_SOURCE", "LAUNCH_BILLING_FLOW");
        intentMakePurchasesUpdatedIntent.putExtra("billingClientTransactionId", j);
        intentMakePurchasesUpdatedIntent.putExtra("wasServiceAutoReconnected", this.wasServiceAutoReconnected);
        return intentMakePurchasesUpdatedIntent;
    }

    private Intent makePurchasesUpdatedIntent() {
        Intent intent = new Intent("com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED");
        intent.setPackage(getApplicationContext().getPackageName());
        return intent;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0034 A[Catch: all -> 0x0064, TryCatch #1 {all -> 0x0064, blocks: (B:5:0x001d, B:19:0x002e, B:21:0x0034, B:23:0x005b, B:22:0x0048, B:27:0x0065), top: B:29:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:22:0x0048 A[Catch: all -> 0x0064, TryCatch #1 {all -> 0x0064, blocks: (B:5:0x001d, B:19:0x002e, B:21:0x0034, B:23:0x005b, B:22:0x0048, B:27:0x0065), top: B:29:0x0001 }] */
    private synchronized void registerProxyBillingBroadcastReceiver() throws Throwable {
        ProxyBillingActivity proxyBillingActivity;
        try {
            try {
                this.proxyBillingBroadcastReceiver = new zzec(this.billingLogger);
                IntentFilter intentFilter = new IntentFilter("com.android.vending.billing.IN_APP_BILLING_RESULT_UPDATE_ACTION");
                intentFilter.addAction("com.android.vending.billing.PLAY_BILLING_ACTIVITY_CREATED_ACTION");
                proxyBillingActivity = this;
                try {
                    ContextCompat.registerReceiver(proxyBillingActivity, this.proxyBillingBroadcastReceiver, intentFilter, EXTERNAL_BROADCAST_PERMISSION, null, 2);
                } catch (NoSuchMethodError e) {
                    e = e;
                    proxyBillingActivity.proxyBillingBroadcastReceiver = null;
                    if (e instanceof NoSuchMethodError) {
                        zzcz zzczVar = proxyBillingActivity.billingLogger;
                        zzkv zzkvVarZza = zzky.zza();
                        zzkvVarZza.zza(2);
                        zzczVar.zzl((zzky) zzkvVarZza.zzi());
                    } else {
                        zzcz zzczVar2 = proxyBillingActivity.billingLogger;
                        zzkv zzkvVarZza2 = zzky.zza();
                        zzkvVarZza2.zza(1);
                        zzczVar2.zzl((zzky) zzkvVarZza2.zzi());
                    }
                    com.google.android.gms.internal.play_billing.zzc.zzp(TAG, "Failed to register receiver.", e);
                } catch (RuntimeException e2) {
                    e = e2;
                    proxyBillingActivity.proxyBillingBroadcastReceiver = null;
                    if (e instanceof NoSuchMethodError) {
                        zzcz zzczVar3 = proxyBillingActivity.billingLogger;
                        zzkv zzkvVarZza3 = zzky.zza();
                        zzkvVarZza3.zza(2);
                        zzczVar3.zzl((zzky) zzkvVarZza3.zzi());
                    } else {
                        zzcz zzczVar4 = proxyBillingActivity.billingLogger;
                        zzkv zzkvVarZza4 = zzky.zza();
                        zzkvVarZza4.zza(1);
                        zzczVar4.zzl((zzky) zzkvVarZza4.zzi());
                    }
                    com.google.android.gms.internal.play_billing.zzc.zzp(TAG, "Failed to register receiver.", e);
                }
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (NoSuchMethodError e3) {
            e = e3;
            proxyBillingActivity = this;
            proxyBillingActivity.proxyBillingBroadcastReceiver = null;
            if (e instanceof NoSuchMethodError) {
                zzcz zzczVar5 = proxyBillingActivity.billingLogger;
                zzkv zzkvVarZza5 = zzky.zza();
                zzkvVarZza5.zza(2);
                zzczVar5.zzl((zzky) zzkvVarZza5.zzi());
            } else {
                zzcz zzczVar6 = proxyBillingActivity.billingLogger;
                zzkv zzkvVarZza6 = zzky.zza();
                zzkvVarZza6.zza(1);
                zzczVar6.zzl((zzky) zzkvVarZza6.zzi());
            }
            com.google.android.gms.internal.play_billing.zzc.zzp(TAG, "Failed to register receiver.", e);
        } catch (RuntimeException e4) {
            e = e4;
            proxyBillingActivity = this;
            proxyBillingActivity.proxyBillingBroadcastReceiver = null;
            if (e instanceof NoSuchMethodError) {
                zzcz zzczVar7 = proxyBillingActivity.billingLogger;
                zzkv zzkvVarZza7 = zzky.zza();
                zzkvVarZza7.zza(2);
                zzczVar7.zzl((zzky) zzkvVarZza7.zzi());
            } else {
                zzcz zzczVar8 = proxyBillingActivity.billingLogger;
                zzkv zzkvVarZza8 = zzky.zza();
                zzkvVarZza8.zza(1);
                zzczVar8.zzl((zzky) zzkvVarZza8.zzi());
            }
            com.google.android.gms.internal.play_billing.zzc.zzp(TAG, "Failed to register receiver.", e);
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0045  */
    /* JADX WARN: Code duplicated, block: B:18:0x0047  */
    /* JADX WARN: Code duplicated, block: B:21:0x0053 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:22:0x0055  */
    /* JADX WARN: Code duplicated, block: B:23:0x0056 A[PHI: r10
  0x0056: PHI (r10v1 int) = (r10v0 int), (r10v15 int) binds: [B:20:0x0051, B:22:0x0055] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:25:0x0072  */
    /* JADX WARN: Code duplicated, block: B:26:0x0089  */
    /* JADX WARN: Code duplicated, block: B:28:0x008f  */
    /* JADX WARN: Code duplicated, block: B:31:0x009a  */
    /* JADX WARN: Code duplicated, block: B:33:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:34:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:36:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:38:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:39:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:42:0x00e0  */
    /* JADX WARN: Instruction removed from duplicated block: B:23:0x0056, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:25:0x0072, please report this as an issue */
    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        boolean z;
        int responseCode;
        int i3;
        String string;
        Intent intentMakePurchasesUpdatedIntent;
        boolean z2;
        super.onActivityResult(i, i2, intent);
        if (i == 100) {
            if (intent == null) {
                z = false;
            } else {
                z = true;
            }
            responseCode = com.google.android.gms.internal.play_billing.zzc.zzi(intent, TAG).getResponseCode();
            i3 = -1;
            if (i2 != -1) {
                com.google.android.gms.internal.play_billing.zzc.zzo(TAG, "Activity finished with resultCode " + i2 + " and billing's responseCode: " + responseCode);
                i3 = i2;
            } else if (responseCode != 0) {
                i2 = -1;
                com.google.android.gms.internal.play_billing.zzc.zzo(TAG, "Activity finished with resultCode " + i2 + " and billing's responseCode: " + responseCode);
                i3 = i2;
            }
            if (true != z) {
                com.google.android.gms.internal.play_billing.zzc.zzo(TAG, "Got null data with resultCode " + i3 + "!");
            } else if (intent.getExtras() == null) {
                com.google.android.gms.internal.play_billing.zzc.zzo(TAG, "Got null bundle!");
            }
            if (isKnownError(i3, intent)) {
                zzjn loggingErrorReason = getLoggingErrorReason(i3, intent);
                long j = this.billingClientTransactionId;
                if (intent == null) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                intentMakePurchasesUpdatedIntent = makePurchaseUpdatedIntentWithResponseCodeAndReason(loggingErrorReason, j, z2);
            } else {
                string = intent.getExtras().getString("ALTERNATIVE_BILLING_USER_CHOICE_DATA");
                if (string != null) {
                    intentMakePurchasesUpdatedIntent = makeAlternativeBillingIntent(string);
                    intentMakePurchasesUpdatedIntent.putExtra("INTENT_SOURCE", "LAUNCH_BILLING_FLOW");
                } else {
                    intentMakePurchasesUpdatedIntent = makePurchasesUpdatedIntent();
                    intentMakePurchasesUpdatedIntent.putExtras(intent.getExtras());
                    intentMakePurchasesUpdatedIntent.putExtra("INTENT_SOURCE", "LAUNCH_BILLING_FLOW");
                }
                intentMakePurchasesUpdatedIntent.putExtra("billingClientTransactionId", this.billingClientTransactionId);
                intentMakePurchasesUpdatedIntent.putExtra("wasServiceAutoReconnected", this.wasServiceAutoReconnected);
            }
            if (i == 110) {
                intentMakePurchasesUpdatedIntent.putExtra("IS_FIRST_PARTY_PURCHASE", true);
            }
            sendBroadcast(intentMakePurchasesUpdatedIntent);
        } else if (i == 110) {
            if (intent == null) {
                z = false;
            } else {
                z = true;
            }
            responseCode = com.google.android.gms.internal.play_billing.zzc.zzi(intent, TAG).getResponseCode();
            i3 = -1;
            if (i2 != -1) {
                com.google.android.gms.internal.play_billing.zzc.zzo(TAG, "Activity finished with resultCode " + i2 + " and billing's responseCode: " + responseCode);
                i3 = i2;
            } else if (responseCode != 0) {
                i2 = -1;
                com.google.android.gms.internal.play_billing.zzc.zzo(TAG, "Activity finished with resultCode " + i2 + " and billing's responseCode: " + responseCode);
                i3 = i2;
            }
            if (true != z) {
                com.google.android.gms.internal.play_billing.zzc.zzo(TAG, "Got null data with resultCode " + i3 + "!");
            } else if (intent.getExtras() == null) {
                com.google.android.gms.internal.play_billing.zzc.zzo(TAG, "Got null bundle!");
            }
            if (isKnownError(i3, intent)) {
                zzjn loggingErrorReason2 = getLoggingErrorReason(i3, intent);
                long j2 = this.billingClientTransactionId;
                if (intent == null) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                intentMakePurchasesUpdatedIntent = makePurchaseUpdatedIntentWithResponseCodeAndReason(loggingErrorReason2, j2, z2);
            } else {
                string = intent.getExtras().getString("ALTERNATIVE_BILLING_USER_CHOICE_DATA");
                if (string != null) {
                    intentMakePurchasesUpdatedIntent = makeAlternativeBillingIntent(string);
                    intentMakePurchasesUpdatedIntent.putExtra("INTENT_SOURCE", "LAUNCH_BILLING_FLOW");
                } else {
                    intentMakePurchasesUpdatedIntent = makePurchasesUpdatedIntent();
                    intentMakePurchasesUpdatedIntent.putExtras(intent.getExtras());
                    intentMakePurchasesUpdatedIntent.putExtra("INTENT_SOURCE", "LAUNCH_BILLING_FLOW");
                }
                intentMakePurchasesUpdatedIntent.putExtra("billingClientTransactionId", this.billingClientTransactionId);
                intentMakePurchasesUpdatedIntent.putExtra("wasServiceAutoReconnected", this.wasServiceAutoReconnected);
            }
            if (i == 110) {
                intentMakePurchasesUpdatedIntent.putExtra("IS_FIRST_PARTY_PURCHASE", true);
            }
            sendBroadcast(intentMakePurchasesUpdatedIntent);
        } else if (i == 101) {
            int iZza = com.google.android.gms.internal.play_billing.zzc.zza(intent, TAG);
            ResultReceiver resultReceiver = this.inAppMessageResultReceiver;
            if (resultReceiver != null) {
                resultReceiver.send(iZza, intent == null ? null : intent.getExtras());
            }
        } else {
            com.google.android.gms.internal.play_billing.zzc.zzo(TAG, "Got onActivityResult with wrong requestCode: " + i + "; skipping...");
        }
        this.sendCancelledBroadcastIfFinished = false;
        if (isProxyBillingBroadcastReceiverRegistered()) {
            this.proxyBillingBroadcastReceiver.zzb();
        }
        finish();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) throws Throwable {
        int i;
        PendingIntent pendingIntent;
        Bundle bundle2;
        Bundle bundle3;
        super.onCreate(bundle);
        if (!isInAppMessageFlow(bundle)) {
            try {
                i = getPackageManager().getPackageInfo(getPackageName(), 0).versionCode;
            } catch (PackageManager.NameNotFoundException e) {
                com.google.android.gms.internal.play_billing.zzc.zzp(TAG, "Failed to get package info for current package.", e);
                i = -1;
            }
            if (this.billingLogger == null) {
                Context applicationContext = getApplicationContext();
                zzjz zzjzVarZza = zzkb.zza();
                zzjzVarZza.zzq(getPackageName());
                zzjzVarZza.zzx(BuildConfig.VERSION_NAME);
                zzjzVarZza.zzb(i);
                zzjzVarZza.zza(Build.VERSION.SDK_INT);
                zzjzVarZza.zzp(912213584L);
                this.billingLogger = new zzdm(applicationContext, (zzkb) zzjzVarZza.zzi());
            }
            registerProxyBillingBroadcastReceiver();
        }
        if (bundle != null) {
            com.google.android.gms.internal.play_billing.zzc.zzn(TAG, "Launching Play Store billing flow from savedInstanceState");
            this.sendCancelledBroadcastIfFinished = bundle.getBoolean(KEY_SEND_CANCELLED_BROADCAST_IF_FINISHED, false);
            if (bundle.containsKey(KEY_IN_APP_MESSAGE_RESULT_RECEIVER)) {
                this.inAppMessageResultReceiver = (ResultReceiver) bundle.getParcelable(KEY_IN_APP_MESSAGE_RESULT_RECEIVER);
            }
            this.isFlowFromFirstPartyClient = bundle.getBoolean("IS_FLOW_FROM_FIRST_PARTY_CLIENT", false);
            this.activityCode = bundle.getInt(KEY_ACTIVITY_CODE, 100);
            if (bundle.containsKey("billingClientTransactionId")) {
                this.billingClientTransactionId = bundle.getLong("billingClientTransactionId");
            }
            if (bundle.containsKey("wasServiceAutoReconnected")) {
                this.wasServiceAutoReconnected = bundle.getBoolean("wasServiceAutoReconnected");
                return;
            }
            return;
        }
        com.google.android.gms.internal.play_billing.zzc.zzn(TAG, "Launching Play Store billing flow");
        this.activityCode = 100;
        if (getIntent().hasExtra("BUY_INTENT")) {
            pendingIntent = (PendingIntent) getIntent().getParcelableExtra("BUY_INTENT");
            if (getIntent().hasExtra("IS_FLOW_FROM_FIRST_PARTY_CLIENT") && getIntent().getBooleanExtra("IS_FLOW_FROM_FIRST_PARTY_CLIENT", false)) {
                this.isFlowFromFirstPartyClient = true;
                this.activityCode = 110;
            }
        } else if (getIntent().hasExtra("IN_APP_MESSAGE_INTENT")) {
            pendingIntent = (PendingIntent) getIntent().getParcelableExtra("IN_APP_MESSAGE_INTENT");
            this.inAppMessageResultReceiver = (ResultReceiver) getIntent().getParcelableExtra(KEY_IN_APP_MESSAGE_RESULT_RECEIVER);
            this.activityCode = 101;
        } else {
            pendingIntent = null;
        }
        if (getIntent().hasExtra("billingClientTransactionId")) {
            this.billingClientTransactionId = getIntent().getLongExtra("billingClientTransactionId", 0L);
        }
        if (getIntent().hasExtra("wasServiceAutoReconnected")) {
            this.wasServiceAutoReconnected = getIntent().getBooleanExtra("wasServiceAutoReconnected", false);
        }
        try {
            this.sendCancelledBroadcastIfFinished = true;
            if (Build.VERSION.SDK_INT < 36) {
                if (Build.VERSION.SDK_INT >= 34) {
                    bundle3 = ActivityOptions.makeBasic().setPendingIntentBackgroundActivityStartMode(1).toBundle();
                } else {
                    bundle2 = null;
                }
                startIntentSenderForResult(pendingIntent.getIntentSender(), this.activityCode, new Intent(), 0, 0, 0, bundle2);
            }
            bundle3 = ActivityOptions.makeBasic().setPendingIntentBackgroundActivityStartMode(3).toBundle();
            bundle2 = bundle3;
            startIntentSenderForResult(pendingIntent.getIntentSender(), this.activityCode, new Intent(), 0, 0, 0, bundle2);
        } catch (IntentSender.SendIntentException e2) {
            com.google.android.gms.internal.play_billing.zzc.zzp(TAG, "Got exception while trying to start a purchase flow.", e2);
            ResultReceiver resultReceiver = this.inAppMessageResultReceiver;
            if (resultReceiver != null) {
                resultReceiver.send(0, null);
            } else {
                Intent intentMakePurchaseUpdatedIntentWithResponseCodeAndReason = makePurchaseUpdatedIntentWithResponseCodeAndReason(zzjn.INTENT_SENDER_EXCEPTION, this.billingClientTransactionId, false);
                if (this.isFlowFromFirstPartyClient) {
                    intentMakePurchaseUpdatedIntentWithResponseCodeAndReason.putExtra("IS_FIRST_PARTY_PURCHASE", true);
                }
                sendBroadcast(intentMakePurchaseUpdatedIntentWithResponseCodeAndReason);
            }
            this.sendCancelledBroadcastIfFinished = false;
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        BillingResult billingResultZza;
        super.onDestroy();
        if (isProxyBillingBroadcastReceiverRegistered()) {
            billingResultZza = this.proxyBillingBroadcastReceiver.zza();
            try {
                unregisterReceiver(this.proxyBillingBroadcastReceiver);
            } catch (RuntimeException e) {
                com.google.android.gms.internal.play_billing.zzc.zzp(TAG, "Failed to unregister receiver.", e);
            }
        } else {
            billingResultZza = null;
        }
        if (isFinishing() && this.sendCancelledBroadcastIfFinished) {
            Intent intentMakePurchasesUpdatedIntent = makePurchasesUpdatedIntent();
            if (billingResultZza != null) {
                intentMakePurchasesUpdatedIntent.putExtra("RESPONSE_CODE", billingResultZza.getResponseCode());
                intentMakePurchasesUpdatedIntent.putExtra("DEBUG_MESSAGE", billingResultZza.getDebugMessage());
            } else {
                intentMakePurchasesUpdatedIntent.putExtra("RESPONSE_CODE", 1);
                intentMakePurchasesUpdatedIntent.putExtra("DEBUG_MESSAGE", "Billing dialog closed.");
            }
            if (this.isFlowFromFirstPartyClient) {
                intentMakePurchasesUpdatedIntent.putExtra("IS_FIRST_PARTY_PURCHASE", true);
            }
            int i = this.activityCode;
            if (i == 110 || i == 100) {
                intentMakePurchasesUpdatedIntent.putExtra("INTENT_SOURCE", "LAUNCH_BILLING_FLOW");
                intentMakePurchasesUpdatedIntent.putExtra("billingClientTransactionId", this.billingClientTransactionId);
            }
            sendBroadcast(intentMakePurchasesUpdatedIntent);
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        ResultReceiver resultReceiver = this.inAppMessageResultReceiver;
        if (resultReceiver != null) {
            bundle.putParcelable(KEY_IN_APP_MESSAGE_RESULT_RECEIVER, resultReceiver);
        }
        bundle.putBoolean(KEY_SEND_CANCELLED_BROADCAST_IF_FINISHED, this.sendCancelledBroadcastIfFinished);
        bundle.putBoolean("IS_FLOW_FROM_FIRST_PARTY_CLIENT", this.isFlowFromFirstPartyClient);
        bundle.putInt(KEY_ACTIVITY_CODE, this.activityCode);
        bundle.putLong("billingClientTransactionId", this.billingClientTransactionId);
        bundle.putBoolean("wasServiceAutoReconnected", this.wasServiceAutoReconnected);
    }
}
