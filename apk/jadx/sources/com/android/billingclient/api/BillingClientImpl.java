package com.android.billingclient.api;

import android.R;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.text.TextUtils;
import android.view.View;
import androidx.core.app.BundleCompat;
import com.android.billingclient.BuildConfig;
import com.google.android.gms.internal.play_billing.zzie;
import com.google.android.gms.internal.play_billing.zzih;
import com.google.android.gms.internal.play_billing.zziy;
import com.google.android.gms.internal.play_billing.zzja;
import com.google.android.gms.internal.play_billing.zzje;
import com.google.android.gms.internal.play_billing.zzjg;
import com.google.android.gms.internal.play_billing.zzji;
import com.google.android.gms.internal.play_billing.zzjk;
import com.google.android.gms.internal.play_billing.zzjl;
import com.google.android.gms.internal.play_billing.zzjn;
import com.google.android.gms.internal.play_billing.zzjp;
import com.google.android.gms.internal.play_billing.zzju;
import com.google.android.gms.internal.play_billing.zzjz;
import com.google.android.gms.internal.play_billing.zzkb;
import com.google.android.gms.internal.play_billing.zzkf;
import com.google.android.gms.internal.play_billing.zzki;
import com.google.android.gms.internal.play_billing.zzlg;
import com.google.android.gms.internal.play_billing.zzli;
import com.google.common.base.Ascii;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Random;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.android.billingclient:billing@@9.0.0 */
/* JADX INFO: loaded from: classes2.dex */
class BillingClientImpl extends BillingClient {
    private boolean zzA;
    private boolean zzB;
    private boolean zzC;
    private boolean zzD;
    private boolean zzE;
    private PendingPurchasesParams zzF;
    private boolean zzG;
    private boolean zzH;
    private com.google.android.gms.internal.play_billing.zzcf zzI;
    private volatile BillingClientStateListener zzJ;
    private ExecutorService zzK;
    private final Long zzL;
    private final com.google.android.gms.internal.play_billing.zzbq zzM;
    private final Object zza;
    private volatile int zzb;
    private final String zzc;
    private final String zzd;
    private final Handler zze;
    private volatile zzab zzf;
    private Context zzg;
    private zzcz zzh;
    private volatile com.google.android.gms.internal.play_billing.zzar zzi;
    private volatile zzbw zzj;
    private boolean zzk;
    private boolean zzl;
    private int zzm;
    private boolean zzn;
    private boolean zzo;
    private boolean zzp;
    private boolean zzq;
    private boolean zzr;
    private boolean zzs;
    private boolean zzt;
    private boolean zzu;
    private boolean zzv;
    private boolean zzw;
    private boolean zzx;
    private boolean zzy;
    private boolean zzz;

    BillingClientImpl(String str, Context context, zzcz zzczVar, ExecutorService executorService, BillingClient.Builder builder) {
        this.zza = new Object();
        this.zzb = 0;
        this.zze = new Handler(Looper.getMainLooper());
        this.zzm = 0;
        this.zzI = com.google.android.gms.internal.play_billing.zzcf.zzk();
        Long lValueOf = Long.valueOf(new Random().nextLong());
        this.zzL = lValueOf;
        this.zzM = com.google.android.gms.internal.play_billing.zzbf.zza();
        this.zzc = BuildConfig.VERSION_NAME;
        String strZzaI = zzaI();
        this.zzd = strZzaI;
        this.zzg = context.getApplicationContext();
        zzjz zzjzVarZza = zzkb.zza();
        zzjzVarZza.zzx(BuildConfig.VERSION_NAME);
        if (strZzaI != null) {
            zzjzVarZza.zzy(strZzaI);
        }
        zzjzVarZza.zzq(this.zzg.getPackageName());
        zzjzVarZza.zzd(lValueOf.longValue());
        zzjzVarZza.zzw(builder.zza);
        zzjzVarZza.zza(Build.VERSION.SDK_INT);
        zzjzVarZza.zzp(912213584L);
        zzbr(zzjzVarZza, context);
        try {
            zzjzVarZza.zzb(this.zzg.getPackageManager().getPackageInfo(this.zzg.getPackageName(), 0).versionCode);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "Error getting app version code.", th);
        }
        this.zzh = new zzdm(this.zzg, (zzkb) zzjzVarZza.zzi());
        this.zzg.getPackageName();
        com.google.android.gms.internal.play_billing.zzbq zzbqVar = builder.zzb;
        this.zzG = builder.zza;
    }

    BillingClientImpl(String str, PendingPurchasesParams pendingPurchasesParams, Context context, PurchasesUpdatedListener purchasesUpdatedListener, UserChoiceBillingListener userChoiceBillingListener, DeveloperProvidedBillingListener developerProvidedBillingListener, zzcz zzczVar, ExecutorService executorService, BillingClient.Builder builder) {
        this.zza = new Object();
        this.zzb = 0;
        this.zze = new Handler(Looper.getMainLooper());
        this.zzm = 0;
        this.zzI = com.google.android.gms.internal.play_billing.zzcf.zzk();
        this.zzL = Long.valueOf(new Random().nextLong());
        this.zzM = com.google.android.gms.internal.play_billing.zzbf.zza();
        this.zzc = BuildConfig.VERSION_NAME;
        this.zzd = zzaI();
        initialize(context, purchasesUpdatedListener, pendingPurchasesParams, userChoiceBillingListener, developerProvidedBillingListener, BuildConfig.VERSION_NAME, null, builder);
    }

    BillingClientImpl(String str, PendingPurchasesParams pendingPurchasesParams, Context context, PurchasesUpdatedListener purchasesUpdatedListener, zzb zzbVar, zzcz zzczVar, ExecutorService executorService, BillingClient.Builder builder) {
        this.zza = new Object();
        this.zzb = 0;
        this.zze = new Handler(Looper.getMainLooper());
        this.zzm = 0;
        this.zzI = com.google.android.gms.internal.play_billing.zzcf.zzk();
        this.zzL = Long.valueOf(new Random().nextLong());
        this.zzM = com.google.android.gms.internal.play_billing.zzbf.zza();
        this.zzc = BuildConfig.VERSION_NAME;
        this.zzd = zzaI();
        initialize(context, purchasesUpdatedListener, pendingPurchasesParams, null, BuildConfig.VERSION_NAME, null, builder);
    }

    BillingClientImpl(String str, PendingPurchasesParams pendingPurchasesParams, Context context, zzdp zzdpVar, zzcz zzczVar, ExecutorService executorService, BillingClient.Builder builder) {
        this.zza = new Object();
        this.zzb = 0;
        this.zze = new Handler(Looper.getMainLooper());
        this.zzm = 0;
        this.zzI = com.google.android.gms.internal.play_billing.zzcf.zzk();
        Long lValueOf = Long.valueOf(new Random().nextLong());
        this.zzL = lValueOf;
        this.zzM = com.google.android.gms.internal.play_billing.zzbf.zza();
        this.zzc = BuildConfig.VERSION_NAME;
        String strZzaI = zzaI();
        this.zzd = strZzaI;
        this.zzg = context.getApplicationContext();
        zzjz zzjzVarZza = zzkb.zza();
        zzjzVarZza.zzx(BuildConfig.VERSION_NAME);
        if (strZzaI != null) {
            zzjzVarZza.zzy(strZzaI);
        }
        zzjzVarZza.zzq(this.zzg.getPackageName());
        zzjzVarZza.zzd(lValueOf.longValue());
        zzjzVarZza.zzw(builder.zza);
        zzjzVarZza.zza(Build.VERSION.SDK_INT);
        zzjzVarZza.zzp(912213584L);
        zzbr(zzjzVarZza, context);
        try {
            zzjzVarZza.zzb(this.zzg.getPackageManager().getPackageInfo(this.zzg.getPackageName(), 0).versionCode);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "Error getting app version code.", th);
        }
        this.zzh = new zzdm(this.zzg, (zzkb) zzjzVarZza.zzi());
        com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Billing client should have a valid listener but the provided is null.");
        this.zzf = new zzab(this.zzg, null, null, null, null, null, this.zzh);
        this.zzF = pendingPurchasesParams;
        this.zzg.getPackageName();
        com.google.android.gms.internal.play_billing.zzbq zzbqVar = builder.zzb;
        this.zzG = builder.zza;
    }

    private void initialize(Context context, PurchasesUpdatedListener purchasesUpdatedListener, PendingPurchasesParams pendingPurchasesParams, UserChoiceBillingListener userChoiceBillingListener, DeveloperProvidedBillingListener developerProvidedBillingListener, String str, zzcz zzczVar, BillingClient.Builder builder) {
        this.zzg = context.getApplicationContext();
        zzjz zzjzVarZza = zzkb.zza();
        zzjzVarZza.zzx(str);
        String str2 = this.zzd;
        if (str2 != null) {
            zzjzVarZza.zzy(str2);
        }
        zzjzVarZza.zzq(this.zzg.getPackageName());
        zzjzVarZza.zzd(this.zzL.longValue());
        zzjzVarZza.zzw(builder.zza);
        zzjzVarZza.zza(Build.VERSION.SDK_INT);
        zzjzVarZza.zzp(912213584L);
        zzbr(zzjzVarZza, context);
        try {
            zzjzVarZza.zzb(this.zzg.getPackageManager().getPackageInfo(this.zzg.getPackageName(), 0).versionCode);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "Error getting app version code.", th);
        }
        if (zzczVar != null) {
            this.zzh = zzczVar;
        } else {
            this.zzh = new zzdm(this.zzg, (zzkb) zzjzVarZza.zzi());
        }
        if (purchasesUpdatedListener == null) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Billing client should have a valid listener but the provided is null.");
        }
        this.zzf = new zzab(this.zzg, purchasesUpdatedListener, null, null, userChoiceBillingListener, developerProvidedBillingListener, this.zzh);
        this.zzF = pendingPurchasesParams;
        this.zzH = userChoiceBillingListener != null;
        com.google.android.gms.internal.play_billing.zzbq zzbqVar = builder.zzb;
        this.zzG = builder.zza;
    }

    private void initialize(Context context, PurchasesUpdatedListener purchasesUpdatedListener, PendingPurchasesParams pendingPurchasesParams, zzb zzbVar, String str, zzcz zzczVar, BillingClient.Builder builder) {
        this.zzg = context.getApplicationContext();
        zzjz zzjzVarZza = zzkb.zza();
        zzjzVarZza.zzx(str);
        String str2 = this.zzd;
        if (str2 != null) {
            zzjzVarZza.zzy(str2);
        }
        zzjzVarZza.zzq(this.zzg.getPackageName());
        zzjzVarZza.zzd(this.zzL.longValue());
        zzjzVarZza.zzw(builder.zza);
        zzjzVarZza.zza(Build.VERSION.SDK_INT);
        zzjzVarZza.zzp(912213584L);
        zzbr(zzjzVarZza, context);
        try {
            zzjzVarZza.zzb(this.zzg.getPackageManager().getPackageInfo(this.zzg.getPackageName(), 0).versionCode);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "Error getting app version code.", th);
        }
        if (zzczVar != null) {
            this.zzh = zzczVar;
        } else {
            this.zzh = new zzdm(this.zzg, (zzkb) zzjzVarZza.zzi());
        }
        if (purchasesUpdatedListener == null) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Billing client should have a valid listener but the provided is null.");
        }
        this.zzf = new zzab(this.zzg, purchasesUpdatedListener, null, zzbVar, null, null, this.zzh);
        this.zzF = pendingPurchasesParams;
        this.zzH = zzbVar != null;
        this.zzg.getPackageName();
        com.google.android.gms.internal.play_billing.zzbq zzbqVar = builder.zzb;
        this.zzG = builder.zza;
    }

    public static /* synthetic */ Void zzD(BillingClientImpl billingClientImpl, AlternativeBillingOnlyInformationDialogListener alternativeBillingOnlyInformationDialogListener, Activity activity, ResultReceiver resultReceiver) throws Exception {
        billingClientImpl.zzaO(alternativeBillingOnlyInformationDialogListener, activity, resultReceiver);
        return null;
    }

    public static /* synthetic */ Void zzE(BillingClientImpl billingClientImpl, ExternalOfferAvailabilityListener externalOfferAvailabilityListener) throws Exception {
        billingClientImpl.zzaN(externalOfferAvailabilityListener);
        return null;
    }

    public static /* synthetic */ Void zzF(BillingClientImpl billingClientImpl, BillingProgramAvailabilityListener billingProgramAvailabilityListener, int i) throws Exception {
        billingClientImpl.zzaM(billingProgramAvailabilityListener, i);
        return null;
    }

    public static /* synthetic */ Void zzG(BillingClientImpl billingClientImpl, LaunchExternalLinkResponseListener launchExternalLinkResponseListener, LaunchExternalLinkParams launchExternalLinkParams, Activity activity) throws RemoteException {
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        zzci zzciVar = null;
        try {
            if (!billingClientImpl.zzbo(zzdl.zzb())) {
                billingClientImpl.zzbc(launchExternalLinkResponseListener, zzdc.zzj, zzjn.SERVICE_CONNECTION_NOT_READY, null);
            } else if (billingClientImpl.zzD) {
                synchronized (billingClientImpl.zza) {
                    zzarVar = billingClientImpl.zzi;
                }
                if (zzarVar == null) {
                    billingClientImpl.zzbc(launchExternalLinkResponseListener, zzdc.zzj, zzjn.SERVICE_RESET_TO_NULL, null);
                } else {
                    String packageName = billingClientImpl.zzg.getPackageName();
                    String str = billingClientImpl.zzd;
                    long jLongValue = billingClientImpl.zzL.longValue();
                    int i = com.google.android.gms.internal.play_billing.zzc.zza;
                    Bundle bundle = new Bundle();
                    com.google.android.gms.internal.play_billing.zzc.zzc(bundle, BuildConfig.VERSION_NAME, str, jLongValue);
                    zzie zzieVarZza = zzih.zza();
                    zziy zziyVarZza = zzja.zza();
                    zziyVarZza.zza(launchExternalLinkParams.getLinkUri().toString());
                    zzieVarZza.zza("externalOfferUri", (zzja) zziyVarZza.zzi());
                    zziy zziyVarZza2 = zzja.zza();
                    zziyVarZza2.zza(String.valueOf(launchExternalLinkParams.getLaunchMode()));
                    zzieVarZza.zza("externalOfferLaunchMode", (zzja) zziyVarZza2.zzi());
                    zziy zziyVarZza3 = zzja.zza();
                    zziyVarZza3.zza(String.valueOf(launchExternalLinkParams.getLinkType()));
                    zzieVarZza.zza("externalOfferLinkType", (zzja) zziyVarZza3.zzi());
                    zziy zziyVarZza4 = zzja.zza();
                    zziyVarZza4.zza(String.valueOf(launchExternalLinkParams.getBillingProgram()));
                    zzieVarZza.zza("externalOfferBillingProgram", (zzja) zziyVarZza4.zzi());
                    if (!TextUtils.isEmpty(null)) {
                        zziy zziyVarZza5 = zzja.zza();
                        zziyVarZza5.zza(null);
                        zzieVarZza.zza("externalTransactionToken", (zzja) zziyVarZza5.zzi());
                    }
                    bundle.putByteArray("REQUEST_PARAMS", ((zzih) zzieVarZza.zzi()).zzQ());
                    zzarVar.zzp(27, packageName, bundle, new zzcc(billingClientImpl, new WeakReference(activity), launchExternalLinkResponseListener, zzciVar));
                }
            } else {
                com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Current client doesn't support launch external link.");
                billingClientImpl.zzbc(launchExternalLinkResponseListener, zzdc.zzH, zzjn.LAUNCH_EXTERNAL_LINK_NOT_SUPPORTED, null);
            }
        } catch (RuntimeException e) {
            billingClientImpl.zzbc(launchExternalLinkResponseListener, zzdc.zzh, zzjn.SERVICE_CALL_EXCEPTION, e);
        }
        return null;
    }

    public static /* synthetic */ Void zzH(BillingClientImpl billingClientImpl, ExternalOfferReportingDetailsListener externalOfferReportingDetailsListener) throws Exception {
        billingClientImpl.zzaL(externalOfferReportingDetailsListener);
        return null;
    }

    public static /* synthetic */ Void zzI(BillingClientImpl billingClientImpl, ExternalOfferInformationDialogListener externalOfferInformationDialogListener, Activity activity, ResultReceiver resultReceiver) throws Exception {
        billingClientImpl.zzaP(externalOfferInformationDialogListener, activity, resultReceiver);
        return null;
    }

    public static /* synthetic */ Void zzJ(BillingClientImpl billingClientImpl, AlternativeBillingOnlyReportingDetailsListener alternativeBillingOnlyReportingDetailsListener) throws Exception {
        billingClientImpl.zzaJ(alternativeBillingOnlyReportingDetailsListener);
        return null;
    }

    public static /* synthetic */ Void zzK(BillingClientImpl billingClientImpl, BillingProgramReportingDetailsListener billingProgramReportingDetailsListener, BillingProgramReportingDetailsParams billingProgramReportingDetailsParams) throws Exception {
        billingClientImpl.zzaK(billingProgramReportingDetailsListener, billingProgramReportingDetailsParams);
        return null;
    }

    public static /* synthetic */ Void zzL(BillingClientImpl billingClientImpl, AlternativeBillingOnlyAvailabilityListener alternativeBillingOnlyAvailabilityListener) {
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        zzci zzciVar = null;
        try {
            if (!billingClientImpl.zzbo(zzdl.zzb())) {
                billingClientImpl.zzaT(alternativeBillingOnlyAvailabilityListener, zzdc.zzj, zzjn.SERVICE_CONNECTION_NOT_READY, null);
            } else if (billingClientImpl.zzy) {
                synchronized (billingClientImpl.zza) {
                    zzarVar = billingClientImpl.zzi;
                }
                if (zzarVar == null) {
                    billingClientImpl.zzaT(alternativeBillingOnlyAvailabilityListener, zzdc.zzj, zzjn.SERVICE_RESET_TO_NULL, null);
                } else {
                    zzarVar.zzr(21, billingClientImpl.zzg.getPackageName(), com.google.android.gms.internal.play_billing.zzc.zzh(billingClientImpl.zzc, billingClientImpl.zzd, billingClientImpl.zzL.longValue()), new zzce(alternativeBillingOnlyAvailabilityListener, billingClientImpl.zzh, billingClientImpl.zzm, zzciVar));
                }
            } else {
                com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Current client doesn't support alternative billing only.");
                billingClientImpl.zzaT(alternativeBillingOnlyAvailabilityListener, zzdc.zzD, zzjn.ALTERNATIVE_BILLING_ONLY_NOT_SUPPORTED, null);
            }
        } catch (Exception e) {
            billingClientImpl.zzaT(alternativeBillingOnlyAvailabilityListener, e instanceof DeadObjectException ? zzdc.zzj : zzdc.zzh, zzjn.IS_ALTERNATIVE_BILLING_ONLY_AVAILABLE_SERVICE_CALL_EXCEPTION, e);
        }
        return null;
    }

    static Future zzN(Callable callable, long j, final Runnable runnable, Handler handler, ExecutorService executorService) {
        try {
            final Future futureSubmit = executorService.submit(callable);
            handler.postDelayed(new Runnable() { // from class: com.android.billingclient.api.zzbb
                @Override // java.lang.Runnable
                public final void run() {
                    Future future = futureSubmit;
                    if (future.isDone() || future.isCancelled()) {
                        return;
                    }
                    Runnable runnable2 = runnable;
                    future.cancel(true);
                    com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Async task is taking too long, cancel it!");
                    if (runnable2 != null) {
                        runnable2.run();
                    }
                }
            }, (long) (j * 0.95d));
            return futureSubmit;
        } catch (Exception e) {
            com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "Async task throws exception!", e);
            return null;
        }
    }

    public static /* synthetic */ void zzO(BillingClientImpl billingClientImpl, ConsumeResponseListener consumeResponseListener, ConsumeParams consumeParams) {
        zzjn zzjnVar = zzjn.EXECUTE_ASYNC_TIMEOUT;
        BillingResult billingResult = zzdc.zzk;
        billingClientImpl.zzbv(zzjnVar, 4, billingResult);
        consumeResponseListener.onConsumeResponse(billingResult, consumeParams.getPurchaseToken());
    }

    public static /* synthetic */ void zzP(BillingClientImpl billingClientImpl, PurchasesResponseListener purchasesResponseListener) {
        zzjn zzjnVar = zzjn.EXECUTE_ASYNC_TIMEOUT;
        BillingResult billingResult = zzdc.zzk;
        billingClientImpl.zzbv(zzjnVar, 9, billingResult);
        purchasesResponseListener.onQueryPurchasesResponse(billingResult, com.google.android.gms.internal.play_billing.zzca.zzk());
    }

    public static /* synthetic */ void zzQ(BillingClientImpl billingClientImpl, BillingConfigResponseListener billingConfigResponseListener) {
        zzjn zzjnVar = zzjn.EXECUTE_ASYNC_TIMEOUT;
        BillingResult billingResult = zzdc.zzk;
        billingClientImpl.zzbv(zzjnVar, 13, billingResult);
        billingConfigResponseListener.onBillingConfigResponse(billingResult, null);
    }

    public static /* synthetic */ void zzU(BillingClientImpl billingClientImpl, AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener) {
        zzjn zzjnVar = zzjn.EXECUTE_ASYNC_TIMEOUT;
        BillingResult billingResult = zzdc.zzk;
        billingClientImpl.zzbv(zzjnVar, 3, billingResult);
        acknowledgePurchaseResponseListener.onAcknowledgePurchaseResponse(billingResult);
    }

    public static /* synthetic */ void zzW(BillingClientImpl billingClientImpl, ProductDetailsResponseListener productDetailsResponseListener) {
        zzjn zzjnVar = zzjn.EXECUTE_ASYNC_TIMEOUT;
        BillingResult billingResult = zzdc.zzk;
        billingClientImpl.zzbv(zzjnVar, 7, billingResult);
        productDetailsResponseListener.onProductDetailsResponse(billingResult, new QueryProductDetailsResult(com.google.android.gms.internal.play_billing.zzca.zzk(), com.google.android.gms.internal.play_billing.zzca.zzk()));
    }

    public static /* synthetic */ void zzY(BillingClientImpl billingClientImpl, BillingResult billingResult) {
        if (billingClientImpl.zzf.zzf() != null) {
            billingClientImpl.zzf.zzf().onPurchasesUpdated(billingResult, null);
        } else {
            zzab zzabVar = billingClientImpl.zzf;
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "No valid listener is set in BroadcastManager");
        }
    }

    private final zzch zzaA(BillingResult billingResult, zzjn zzjnVar, String str, Exception exc) {
        com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", str, exc);
        zzbx(zzjnVar, 7, billingResult, zzcy.zza(exc));
        return new zzch(billingResult.getResponseCode(), billingResult.getDebugMessage(), new ArrayList(), new ArrayList());
    }

    private final BillingResult zzaB(int i) {
        com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Service connection is valid. No need to re-initialize.");
        zzji zzjiVarZza = zzjk.zza();
        zzjiVarZza.zze(6);
        zzlg zzlgVarZza = zzli.zza();
        zzlgVarZza.zze(true);
        zzlgVarZza.zza(i > 0);
        zzlgVarZza.zzb(i);
        zzjiVarZza.zzd(zzlgVarZza);
        zzbh((zzjk) zzjiVarZza.zzi());
        return zzdc.zzi;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BillingResult zzaC() {
        int[] iArr = {0, 3};
        synchronized (this.zza) {
            for (int i = 0; i < 2; i++) {
                if (this.zzb == iArr[i]) {
                    return zzdc.zzj;
                }
            }
            return zzdc.zzh;
        }
    }

    private final com.google.android.gms.internal.play_billing.zzdk zzaD(final int i) {
        if (this.zzG && !zzbp()) {
            return com.google.android.gms.internal.play_billing.zzu.zza(new com.google.android.gms.internal.play_billing.zzr() { // from class: com.android.billingclient.api.zzad
                @Override // com.google.android.gms.internal.play_billing.zzr
                public final Object zza(com.google.android.gms.internal.play_billing.zzp zzpVar) {
                    return BillingClientImpl.zzu(this.zza, i, zzpVar);
                }
            });
        }
        com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Already connected or not opted into auto reconnection.");
        return com.google.android.gms.internal.play_billing.zzdf.zza(zzdc.zzi);
    }

    private final /* synthetic */ Object zzaE(AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener, AcknowledgePurchaseParams acknowledgePurchaseParams) throws Exception {
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        try {
            if (!zzbo(zzdl.zzb())) {
                zzjn zzjnVar = zzjn.SERVICE_CONNECTION_NOT_READY;
                BillingResult billingResult = zzdc.zzj;
                zzbv(zzjnVar, 3, billingResult);
                acknowledgePurchaseResponseListener.onAcknowledgePurchaseResponse(billingResult);
            } else if (TextUtils.isEmpty(acknowledgePurchaseParams.getPurchaseToken())) {
                com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Please provide a valid purchase token.");
                zzjn zzjnVar2 = zzjn.EMPTY_PURCHASE_TOKEN;
                BillingResult billingResult2 = zzdc.zzg;
                zzbv(zzjnVar2, 3, billingResult2);
                acknowledgePurchaseResponseListener.onAcknowledgePurchaseResponse(billingResult2);
            } else if (this.zzp) {
                synchronized (this.zza) {
                    zzarVar = this.zzi;
                }
                if (zzarVar != null) {
                    String packageName = this.zzg.getPackageName();
                    String purchaseToken = acknowledgePurchaseParams.getPurchaseToken();
                    String str = this.zzd;
                    long jLongValue = this.zzL.longValue();
                    int i = com.google.android.gms.internal.play_billing.zzc.zza;
                    Bundle bundle = new Bundle();
                    com.google.android.gms.internal.play_billing.zzc.zzc(bundle, BuildConfig.VERSION_NAME, str, jLongValue);
                    Bundle bundleZzd = zzarVar.zzd(9, packageName, purchaseToken, bundle);
                    acknowledgePurchaseResponseListener.onAcknowledgePurchaseResponse(zzdc.zza(com.google.android.gms.internal.play_billing.zzc.zzb(bundleZzd, "BillingClient"), com.google.android.gms.internal.play_billing.zzc.zzk(bundleZzd, "BillingClient")));
                    return null;
                }
                zzaS(acknowledgePurchaseResponseListener, zzdc.zzj, zzjn.SERVICE_RESET_TO_NULL, null);
            } else {
                zzjn zzjnVar3 = zzjn.API_VERSION_NOT_V9;
                BillingResult billingResult3 = zzdc.zza;
                zzbv(zzjnVar3, 3, billingResult3);
                acknowledgePurchaseResponseListener.onAcknowledgePurchaseResponse(billingResult3);
            }
            return null;
        } catch (DeadObjectException e) {
            zzaS(acknowledgePurchaseResponseListener, zzdc.zzj, zzjn.ACKNOWLEDGE_PURCHASE_SERVICE_CALL_EXCEPTION, e);
            return null;
        } catch (Exception e2) {
            zzaS(acknowledgePurchaseResponseListener, zzdc.zzh, zzjn.ACKNOWLEDGE_PURCHASE_SERVICE_CALL_EXCEPTION, e2);
            return null;
        }
    }

    private final /* synthetic */ Object zzaF(BillingConfigResponseListener billingConfigResponseListener) throws Exception {
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        zzci zzciVar = null;
        try {
            if (!zzbo(zzdl.zzb())) {
                com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Service disconnected.");
                zzjn zzjnVar = zzjn.SERVICE_CONNECTION_NOT_READY;
                BillingResult billingResult = zzdc.zzj;
                zzbv(zzjnVar, 13, billingResult);
                billingConfigResponseListener.onBillingConfigResponse(billingResult, null);
            } else if (this.zzv) {
                synchronized (this.zza) {
                    zzarVar = this.zzi;
                }
                if (zzarVar == null) {
                    zzbb(billingConfigResponseListener, zzdc.zzj, zzjn.SERVICE_RESET_TO_NULL, null);
                } else if (zzdl.zzh() && this.zzB) {
                    String str = this.zzc;
                    com.google.android.gms.internal.play_billing.zzej zzejVarZzb = zzdg.zzb(str, 24, this.zzg, zzdf.GET_BILLING_CONFIG.zza());
                    zzie zzieVarZza = zzih.zza();
                    zziy zziyVarZza = zzja.zza();
                    zziyVarZza.zza(str);
                    zzieVarZza.zza("PLAY_BILLING_LIBRARY_VERSION", (zzja) zziyVarZza.zzi());
                    zziy zziyVarZza2 = zzja.zza();
                    zziyVarZza2.zza(this.zzg.getPackageName());
                    zzieVarZza.zza("CALLING_PACKAGE", (zzja) zziyVarZza2.zzi());
                    Bundle bundleZza = zzdg.zza(zzejVarZzb, (zzih) zzieVarZza.zzi());
                    if (!TextUtils.isEmpty(null)) {
                        bundleZza.putString("accountName", null);
                    }
                    zzarVar.zzm(bundleZza, new zzdq(billingConfigResponseListener, this.zzh, this.zzm));
                } else {
                    String packageName = this.zzg.getPackageName();
                    String str2 = this.zzd;
                    long jLongValue = this.zzL.longValue();
                    int i = com.google.android.gms.internal.play_billing.zzc.zza;
                    Bundle bundle = new Bundle();
                    com.google.android.gms.internal.play_billing.zzc.zzc(bundle, BuildConfig.VERSION_NAME, str2, jLongValue);
                    if (!TextUtils.isEmpty(null)) {
                        bundle.putString("accountName", null);
                    }
                    zzarVar.zzo(18, packageName, bundle, new zzca(billingConfigResponseListener, this.zzh, this.zzm, zzciVar));
                }
            } else {
                com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Current client doesn't support get billing config.");
                zzjn zzjnVar2 = zzjn.GET_BILLING_CONFIG_NOT_SUPPORTED;
                BillingResult billingResult2 = zzdc.zzz;
                zzbv(zzjnVar2, 13, billingResult2);
                billingConfigResponseListener.onBillingConfigResponse(billingResult2, null);
            }
        } catch (DeadObjectException e) {
            zzbb(billingConfigResponseListener, zzdc.zzj, zzjn.GET_BILLING_CONFIG_SERVICE_CALL_EXCEPTION, e);
        } catch (Exception e2) {
            zzbb(billingConfigResponseListener, zzdc.zzh, zzjn.GET_BILLING_CONFIG_SERVICE_CALL_EXCEPTION, e2);
        }
        return null;
    }

    private final /* synthetic */ Object zzaG(Bundle bundle, Activity activity, ResultReceiver resultReceiver) throws Exception {
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        try {
            synchronized (this.zza) {
                zzarVar = this.zzi;
            }
            if (zzarVar == null) {
                zzbe(-1, zzjn.SERVICE_RESET_TO_NULL, null);
            } else {
                zzarVar.zzt(12, this.zzg.getPackageName(), bundle, new zzcg(new WeakReference(activity), resultReceiver, null));
            }
        } catch (DeadObjectException e) {
            zzbe(-1, zzjn.SERVICE_CALL_EXCEPTION, e);
        } catch (Exception e2) {
            zzbe(6, zzjn.SERVICE_CALL_EXCEPTION, e2);
        }
        return null;
    }

    private final String zzaH(QueryProductDetailsParams queryProductDetailsParams) {
        if (TextUtils.isEmpty(null)) {
            return this.zzg.getPackageName();
        }
        return null;
    }

    private static String zzaI() {
        try {
            return (String) Class.forName("com.android.billingclient.ktx.BuildConfig").getField("VERSION_NAME").get(null);
        } catch (Exception unused) {
            return null;
        }
    }

    private final /* synthetic */ Void zzaJ(AlternativeBillingOnlyReportingDetailsListener alternativeBillingOnlyReportingDetailsListener) throws Exception {
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        zzci zzciVar = null;
        try {
            if (!zzbo(zzdl.zzb())) {
                zzaW(alternativeBillingOnlyReportingDetailsListener, zzdc.zzj, zzjn.SERVICE_CONNECTION_NOT_READY, null);
            } else if (this.zzy) {
                synchronized (this.zza) {
                    zzarVar = this.zzi;
                }
                if (zzarVar == null) {
                    zzaW(alternativeBillingOnlyReportingDetailsListener, zzdc.zzj, zzjn.SERVICE_RESET_TO_NULL, null);
                } else {
                    zzarVar.zzk(21, this.zzg.getPackageName(), com.google.android.gms.internal.play_billing.zzc.zzh(this.zzc, this.zzd, this.zzL.longValue()), new zzbx(alternativeBillingOnlyReportingDetailsListener, this.zzh, this.zzm, zzciVar));
                }
            } else {
                com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Current client doesn't support alternative billing only.");
                zzaW(alternativeBillingOnlyReportingDetailsListener, zzdc.zzD, zzjn.ALTERNATIVE_BILLING_ONLY_NOT_SUPPORTED, null);
            }
        } catch (DeadObjectException e) {
            zzaW(alternativeBillingOnlyReportingDetailsListener, zzdc.zzj, zzjn.CREATE_ALTERNATIVE_BILLING_ONLY_TOKEN_SERVICE_CALL_EXCEPTION, e);
        } catch (Exception e2) {
            zzaW(alternativeBillingOnlyReportingDetailsListener, zzdc.zzh, zzjn.CREATE_ALTERNATIVE_BILLING_ONLY_TOKEN_SERVICE_CALL_EXCEPTION, e2);
        }
        return null;
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0128 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final /* synthetic */ java.lang.Void zzaK(com.android.billingclient.api.BillingProgramReportingDetailsListener r12, com.android.billingclient.api.BillingProgramReportingDetailsParams r13) throws java.lang.Exception {
        /*
            Method dump skipped, instruction units count: 320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.billingclient.api.BillingClientImpl.zzaK(com.android.billingclient.api.BillingProgramReportingDetailsListener, com.android.billingclient.api.BillingProgramReportingDetailsParams):java.lang.Void");
    }

    private final /* synthetic */ Void zzaL(ExternalOfferReportingDetailsListener externalOfferReportingDetailsListener) throws Exception {
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        zzci zzciVar = null;
        try {
            if (!zzbo(zzdl.zzb())) {
                zzaY(externalOfferReportingDetailsListener, zzdc.zzj, zzjn.SERVICE_CONNECTION_NOT_READY, null);
            } else if (this.zzz) {
                synchronized (this.zza) {
                    zzarVar = this.zzi;
                }
                if (zzarVar == null) {
                    zzaY(externalOfferReportingDetailsListener, zzdc.zzj, zzjn.SERVICE_RESET_TO_NULL, null);
                } else {
                    String packageName = this.zzg.getPackageName();
                    long j = this.zzg.getPackageManager().getPackageInfo(this.zzg.getPackageName(), 0).firstInstallTime;
                    String str = this.zzd;
                    long jLongValue = this.zzL.longValue();
                    int i = com.google.android.gms.internal.play_billing.zzc.zza;
                    Bundle bundle = new Bundle();
                    com.google.android.gms.internal.play_billing.zzc.zzc(bundle, BuildConfig.VERSION_NAME, str, jLongValue);
                    bundle.putLong("appInstallTimeMillis", j);
                    zzarVar.zzl(22, packageName, bundle, new zzby(externalOfferReportingDetailsListener, this.zzh, this.zzm, zzciVar));
                }
            } else {
                com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Current client doesn't support external offer.");
                zzaY(externalOfferReportingDetailsListener, zzdc.zzu, zzjn.EXTERNAL_OFFER_NOT_SUPPORTED, null);
            }
        } catch (DeadObjectException e) {
            zzaY(externalOfferReportingDetailsListener, zzdc.zzj, zzjn.CREATE_EXTERNAL_PAYMENT_REPORTING_DETAILS_SERVICE_CALL_EXCEPTION, e);
        } catch (Exception e2) {
            zzaY(externalOfferReportingDetailsListener, zzdc.zzh, zzjn.CREATE_EXTERNAL_PAYMENT_REPORTING_DETAILS_SERVICE_CALL_EXCEPTION, e2);
        }
        return null;
    }

    private final /* synthetic */ Void zzaM(BillingProgramAvailabilityListener billingProgramAvailabilityListener, int i) throws Exception {
        BillingClientImpl billingClientImpl;
        BillingProgramAvailabilityListener billingProgramAvailabilityListener2;
        int i2;
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        try {
            try {
                try {
                    if (zzbo(zzdl.zzb())) {
                        billingClientImpl = this;
                        billingProgramAvailabilityListener2 = billingProgramAvailabilityListener;
                        i2 = i;
                        try {
                            if (!billingClientImpl.zzD) {
                                com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Current client doesn't support the provided billing program.");
                                billingClientImpl.zzaU(billingProgramAvailabilityListener2, i2, zzdc.zzG, zzjn.BILLING_PROGRAM_NOT_SUPPORTED, null);
                                return null;
                            }
                            synchronized (billingClientImpl.zza) {
                                zzarVar = billingClientImpl.zzi;
                            }
                            if (zzarVar == null) {
                                billingClientImpl.zzaU(billingProgramAvailabilityListener2, i2, zzdc.zzj, zzjn.SERVICE_RESET_TO_NULL, null);
                                return null;
                            }
                            String str = billingClientImpl.zzc;
                            com.google.android.gms.internal.play_billing.zzej zzejVarZzb = zzdg.zzb(str, 24, billingClientImpl.zzg, zzdf.IS_BILLING_PROGRAM_AVAILABLE_ASYNC.zza());
                            zzie zzieVarZza = zzih.zza();
                            zziy zziyVarZza = zzja.zza();
                            zziyVarZza.zza(str);
                            zzieVarZza.zza("PLAY_BILLING_LIBRARY_VERSION", (zzja) zziyVarZza.zzi());
                            zziy zziyVarZza2 = zzja.zza();
                            zziyVarZza2.zza(billingClientImpl.zzg.getPackageName());
                            zzieVarZza.zza("CALLING_PACKAGE", (zzja) zziyVarZza2.zzi());
                            zziy zziyVarZza3 = zzja.zza();
                            zziyVarZza3.zza(String.valueOf(i2));
                            zzieVarZza.zza("BILLING_PROGRAM", (zzja) zziyVarZza3.zzi());
                            try {
                                zzarVar.zzm(zzdg.zza(zzejVarZzb, (zzih) zzieVarZza.zzi()), new IsBillingProgramAvailableDelegateToBackendCallback(billingProgramAvailabilityListener2, i2, billingClientImpl.zzh, billingClientImpl.zzm, zzaz(), zzM()));
                                return null;
                            } catch (DeadObjectException e) {
                                e = e;
                                billingProgramAvailabilityListener2 = billingProgramAvailabilityListener2;
                                i2 = i2;
                            } catch (Exception e2) {
                                e = e2;
                                billingProgramAvailabilityListener2 = billingProgramAvailabilityListener2;
                                i2 = i2;
                                billingClientImpl.zzaU(billingProgramAvailabilityListener2, i2, zzdc.zzh, zzjn.SERVICE_CALL_EXCEPTION, e);
                                return null;
                            }
                        } catch (DeadObjectException e3) {
                            e = e3;
                        } catch (Exception e4) {
                            e = e4;
                        }
                    } else {
                        try {
                            zzaU(billingProgramAvailabilityListener, i, zzdc.zzj, zzjn.SERVICE_CONNECTION_NOT_READY, null);
                            return null;
                        } catch (DeadObjectException e5) {
                            e = e5;
                            billingProgramAvailabilityListener2 = billingProgramAvailabilityListener;
                            i2 = i;
                        } catch (Exception e6) {
                            e = e6;
                            billingClientImpl = this;
                            billingProgramAvailabilityListener2 = billingProgramAvailabilityListener;
                            i2 = i;
                            billingClientImpl.zzaU(billingProgramAvailabilityListener2, i2, zzdc.zzh, zzjn.SERVICE_CALL_EXCEPTION, e);
                            return null;
                        }
                    }
                } catch (DeadObjectException e7) {
                    e = e7;
                    billingProgramAvailabilityListener2 = billingProgramAvailabilityListener;
                    i2 = i;
                }
            } catch (DeadObjectException e8) {
                e = e8;
            }
        } catch (Exception e9) {
            e = e9;
            billingClientImpl = this;
            billingProgramAvailabilityListener2 = billingProgramAvailabilityListener;
            i2 = i;
        }
        zzaU(billingProgramAvailabilityListener2, i2, zzdc.zzj, zzjn.GET_BILLING_CONFIG_SERVICE_CALL_EXCEPTION, e);
        return null;
    }

    private final /* synthetic */ Void zzaN(ExternalOfferAvailabilityListener externalOfferAvailabilityListener) throws Exception {
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        zzci zzciVar = null;
        try {
            if (!zzbo(zzdl.zzb())) {
                zzaZ(externalOfferAvailabilityListener, zzdc.zzj, zzjn.SERVICE_CONNECTION_NOT_READY, null);
            } else if (this.zzB) {
                synchronized (this.zza) {
                    zzarVar = this.zzi;
                }
                if (zzarVar == null) {
                    zzaZ(externalOfferAvailabilityListener, zzdc.zzj, zzjn.SERVICE_RESET_TO_NULL, null);
                } else {
                    zzarVar.zzs(24, this.zzg.getPackageName(), com.google.android.gms.internal.play_billing.zzc.zzh(this.zzc, this.zzd, this.zzL.longValue()), new zzcf(externalOfferAvailabilityListener, this.zzh, this.zzm, zzciVar));
                }
            } else {
                com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Current client doesn't support external offer.");
                zzaZ(externalOfferAvailabilityListener, zzdc.zzu, zzjn.EXTERNAL_OFFER_NOT_SUPPORTED, null);
            }
        } catch (DeadObjectException e) {
            zzaZ(externalOfferAvailabilityListener, zzdc.zzj, zzjn.IS_EXTERNAL_PAYMENT_AVAILABLE_SERVICE_CALL_EXCEPTION, e);
        } catch (Exception e2) {
            zzaZ(externalOfferAvailabilityListener, zzdc.zzh, zzjn.IS_EXTERNAL_PAYMENT_AVAILABLE_SERVICE_CALL_EXCEPTION, e2);
        }
        return null;
    }

    private final /* synthetic */ Void zzaO(AlternativeBillingOnlyInformationDialogListener alternativeBillingOnlyInformationDialogListener, Activity activity, ResultReceiver resultReceiver) throws Exception {
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        try {
            synchronized (this.zza) {
                zzarVar = this.zzi;
            }
            if (zzarVar == null) {
                zzbd(alternativeBillingOnlyInformationDialogListener, zzdc.zzj, zzjn.SERVICE_RESET_TO_NULL, null);
            } else {
                zzarVar.zzn(21, this.zzg.getPackageName(), com.google.android.gms.internal.play_billing.zzc.zzh(this.zzc, this.zzd, this.zzL.longValue()), new zzbz(new WeakReference(activity), resultReceiver, null));
            }
        } catch (DeadObjectException e) {
            zzbd(alternativeBillingOnlyInformationDialogListener, zzdc.zzj, zzjn.SHOW_ALTERNATIVE_BILLING_ONLY_DIALOG_SERVICE_CALL_EXCEPTION, e);
        } catch (Exception e2) {
            zzbd(alternativeBillingOnlyInformationDialogListener, zzdc.zzh, zzjn.SHOW_ALTERNATIVE_BILLING_ONLY_DIALOG_SERVICE_CALL_EXCEPTION, e2);
        }
        return null;
    }

    private final /* synthetic */ Void zzaP(ExternalOfferInformationDialogListener externalOfferInformationDialogListener, Activity activity, ResultReceiver resultReceiver) throws Exception {
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        try {
            synchronized (this.zza) {
                zzarVar = this.zzi;
            }
            if (zzarVar == null) {
                zzba(externalOfferInformationDialogListener, zzdc.zzj, zzjn.SERVICE_RESET_TO_NULL, null);
            } else {
                zzarVar.zzp(22, this.zzg.getPackageName(), com.google.android.gms.internal.play_billing.zzc.zzh(this.zzc, this.zzd, this.zzL.longValue()), new zzcb(new WeakReference(activity), resultReceiver, null));
            }
        } catch (DeadObjectException e) {
            zzba(externalOfferInformationDialogListener, zzdc.zzj, zzjn.SHOW_EXTERNAL_PAYMENT_DIALOG_SERVICE_CALL_EXCEPTION, e);
        } catch (Exception e2) {
            zzba(externalOfferInformationDialogListener, zzdc.zzh, zzjn.SHOW_EXTERNAL_PAYMENT_DIALOG_SERVICE_CALL_EXCEPTION, e2);
        }
        return null;
    }

    private final Future zzaQ(Callable callable, long j, final Runnable runnable, Handler handler) throws Exception {
        try {
            final Future futureSubmit = zzM().submit(callable);
            handler.postDelayed(new Runnable() { // from class: com.android.billingclient.api.zzbk
                @Override // java.lang.Runnable
                public final void run() {
                    Future future = futureSubmit;
                    if (future.isDone() || future.isCancelled()) {
                        return;
                    }
                    Runnable runnable2 = runnable;
                    future.cancel(true);
                    com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Async task is taking too long, cancel it!");
                    runnable2.run();
                }
            }, 28500L);
            return futureSubmit;
        } catch (Exception e) {
            com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "Async task throws exception!", e);
            throw e;
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x00a5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzaR(com.android.billingclient.api.ConsumeParams r11, com.android.billingclient.api.ConsumeResponseListener r12) throws java.lang.Throwable {
        /*
            r10 = this;
            java.lang.String r0 = "Error consuming purchase with token. Response code: "
            java.lang.String r1 = "Consuming purchase with token: "
            java.lang.String r4 = r11.getPurchaseToken()
            java.lang.String r11 = "BillingClient"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> La7 android.os.DeadObjectException -> Lb6
            r2.<init>(r1)     // Catch: java.lang.Exception -> La7 android.os.DeadObjectException -> Lb6
            r2.append(r4)     // Catch: java.lang.Exception -> La7 android.os.DeadObjectException -> Lb6
            java.lang.String r1 = r2.toString()     // Catch: java.lang.Exception -> La7 android.os.DeadObjectException -> Lb6
            com.google.android.gms.internal.play_billing.zzc.zzn(r11, r1)     // Catch: java.lang.Exception -> La7 android.os.DeadObjectException -> Lb6
            java.lang.Object r11 = r10.zza     // Catch: java.lang.Exception -> La7 android.os.DeadObjectException -> Lb6
            monitor-enter(r11)     // Catch: java.lang.Exception -> La7 android.os.DeadObjectException -> Lb6
            com.google.android.gms.internal.play_billing.zzar r1 = r10.zzi     // Catch: java.lang.Throwable -> La0
            monitor-exit(r11)     // Catch: java.lang.Throwable -> La0
            if (r1 != 0) goto L36
            com.android.billingclient.api.BillingResult r5 = com.android.billingclient.api.zzdc.zzj     // Catch: java.lang.Exception -> L2e android.os.DeadObjectException -> L32
            com.google.android.gms.internal.play_billing.zzjn r6 = com.google.android.gms.internal.play_billing.zzjn.SERVICE_RESET_TO_NULL     // Catch: java.lang.Exception -> L2e android.os.DeadObjectException -> L32
            java.lang.String r7 = "Service has been reset to null."
            r8 = 0
            r2 = r10
            r3 = r12
            r2.zzaV(r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Exception -> L9c android.os.DeadObjectException -> L9e
            return
        L2e:
            r0 = move-exception
            r2 = r10
            goto La8
        L32:
            r0 = move-exception
            r2 = r10
            goto Lb7
        L36:
            r2 = r10
            r3 = r12
            boolean r11 = r2.zzp     // Catch: java.lang.Exception -> L9c android.os.DeadObjectException -> L9e
            if (r11 == 0) goto L6b
            android.content.Context r11 = r2.zzg     // Catch: java.lang.Exception -> L9c android.os.DeadObjectException -> L9e
            java.lang.String r11 = r11.getPackageName()     // Catch: java.lang.Exception -> L9c android.os.DeadObjectException -> L9e
            boolean r12 = r2.zzp     // Catch: java.lang.Exception -> L9c android.os.DeadObjectException -> L9e
            java.lang.String r5 = r2.zzd     // Catch: java.lang.Exception -> L9c android.os.DeadObjectException -> L9e
            java.lang.Long r6 = r2.zzL     // Catch: java.lang.Exception -> L9c android.os.DeadObjectException -> L9e
            long r6 = r6.longValue()     // Catch: java.lang.Exception -> L9c android.os.DeadObjectException -> L9e
            java.lang.String r8 = "9.0.0"
            android.os.Bundle r9 = new android.os.Bundle     // Catch: java.lang.Exception -> L9c android.os.DeadObjectException -> L9e
            r9.<init>()     // Catch: java.lang.Exception -> L9c android.os.DeadObjectException -> L9e
            if (r12 == 0) goto L58
            com.google.android.gms.internal.play_billing.zzc.zzc(r9, r8, r5, r6)     // Catch: java.lang.Exception -> L9c android.os.DeadObjectException -> L9e
        L58:
            r12 = 9
            android.os.Bundle r11 = r1.zze(r12, r11, r4, r9)     // Catch: java.lang.Exception -> L9c android.os.DeadObjectException -> L9e
            java.lang.String r12 = "RESPONSE_CODE"
            int r12 = r11.getInt(r12)     // Catch: java.lang.Exception -> L9c android.os.DeadObjectException -> L9e
            java.lang.String r1 = "BillingClient"
            java.lang.String r11 = com.google.android.gms.internal.play_billing.zzc.zzk(r11, r1)     // Catch: java.lang.Exception -> L9c android.os.DeadObjectException -> L9e
            goto L78
        L6b:
            android.content.Context r11 = r2.zzg     // Catch: java.lang.Exception -> L9c android.os.DeadObjectException -> L9e
            java.lang.String r11 = r11.getPackageName()     // Catch: java.lang.Exception -> L9c android.os.DeadObjectException -> L9e
            r12 = 3
            int r12 = r1.zza(r12, r11, r4)     // Catch: java.lang.Exception -> L9c android.os.DeadObjectException -> L9e
            java.lang.String r11 = ""
        L78:
            com.android.billingclient.api.BillingResult r5 = com.android.billingclient.api.zzdc.zza(r12, r11)     // Catch: java.lang.Exception -> L9c android.os.DeadObjectException -> L9e
            if (r12 != 0) goto L89
            java.lang.String r11 = "BillingClient"
            java.lang.String r12 = "Successfully consumed purchase."
            com.google.android.gms.internal.play_billing.zzc.zzn(r11, r12)     // Catch: java.lang.Exception -> L9c android.os.DeadObjectException -> L9e
            r3.onConsumeResponse(r5, r4)     // Catch: java.lang.Exception -> L9c android.os.DeadObjectException -> L9e
            return
        L89:
            com.google.android.gms.internal.play_billing.zzjn r6 = com.google.android.gms.internal.play_billing.zzjn.BILLING_RESULT_RECEIVED_FROM_PHONESKY     // Catch: java.lang.Exception -> L9c android.os.DeadObjectException -> L9e
            java.lang.StringBuilder r11 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L9c android.os.DeadObjectException -> L9e
            r11.<init>(r0)     // Catch: java.lang.Exception -> L9c android.os.DeadObjectException -> L9e
            r11.append(r12)     // Catch: java.lang.Exception -> L9c android.os.DeadObjectException -> L9e
            java.lang.String r7 = r11.toString()     // Catch: java.lang.Exception -> L9c android.os.DeadObjectException -> L9e
            r8 = 0
            r2.zzaV(r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Exception -> L9c android.os.DeadObjectException -> L9e
            return
        L9c:
            r0 = move-exception
            goto La9
        L9e:
            r0 = move-exception
            goto Lb8
        La0:
            r0 = move-exception
            r3 = r12
        La2:
            r12 = r0
            monitor-exit(r11)     // Catch: java.lang.Throwable -> La5
            throw r12     // Catch: java.lang.Exception -> L9c android.os.DeadObjectException -> L9e
        La5:
            r0 = move-exception
            goto La2
        La7:
            r0 = move-exception
        La8:
            r3 = r12
        La9:
            r11 = r0
            r8 = r11
            com.android.billingclient.api.BillingResult r5 = com.android.billingclient.api.zzdc.zzh
            com.google.android.gms.internal.play_billing.zzjn r6 = com.google.android.gms.internal.play_billing.zzjn.CONSUME_PURCHASE_SERVICE_CALL_EXCEPTION
            java.lang.String r7 = "Error consuming purchase!"
            r2 = r10
            r2.zzaV(r3, r4, r5, r6, r7, r8)
            return
        Lb6:
            r0 = move-exception
        Lb7:
            r3 = r12
        Lb8:
            r11 = r0
            r8 = r11
            com.android.billingclient.api.BillingResult r5 = com.android.billingclient.api.zzdc.zzj
            com.google.android.gms.internal.play_billing.zzjn r6 = com.google.android.gms.internal.play_billing.zzjn.CONSUME_PURCHASE_SERVICE_CALL_EXCEPTION
            java.lang.String r7 = "Error consuming purchase!"
            r2 = r10
            r2.zzaV(r3, r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.billingclient.api.BillingClientImpl.zzaR(com.android.billingclient.api.ConsumeParams, com.android.billingclient.api.ConsumeResponseListener):void");
    }

    private final void zzaS(AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener, BillingResult billingResult, zzjn zzjnVar, Exception exc) {
        com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "Error in acknowledge purchase!", exc);
        zzbx(zzjnVar, 3, billingResult, zzcy.zza(exc));
        acknowledgePurchaseResponseListener.onAcknowledgePurchaseResponse(billingResult);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzaT(AlternativeBillingOnlyAvailabilityListener alternativeBillingOnlyAvailabilityListener, BillingResult billingResult, zzjn zzjnVar, Exception exc) {
        zzbx(zzjnVar, 14, billingResult, zzcy.zza(exc));
        alternativeBillingOnlyAvailabilityListener.onAlternativeBillingOnlyAvailabilityResponse(billingResult);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzaU(BillingProgramAvailabilityListener billingProgramAvailabilityListener, int i, BillingResult billingResult, zzjn zzjnVar, Exception exc) {
        zzbx(zzjnVar, 33, billingResult, zzcy.zza(exc));
        billingProgramAvailabilityListener.onBillingProgramAvailabilityResponse(billingResult, new BillingProgramAvailabilityDetails(i));
    }

    private final void zzaV(ConsumeResponseListener consumeResponseListener, String str, BillingResult billingResult, zzjn zzjnVar, String str2, Exception exc) {
        com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", str2, exc);
        zzbx(zzjnVar, 4, billingResult, zzcy.zza(exc));
        consumeResponseListener.onConsumeResponse(billingResult, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzaW(AlternativeBillingOnlyReportingDetailsListener alternativeBillingOnlyReportingDetailsListener, BillingResult billingResult, zzjn zzjnVar, Exception exc) {
        zzbx(zzjnVar, 15, billingResult, zzcy.zza(exc));
        alternativeBillingOnlyReportingDetailsListener.onAlternativeBillingOnlyTokenResponse(billingResult, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzaX(BillingProgramReportingDetailsListener billingProgramReportingDetailsListener, BillingResult billingResult, zzjn zzjnVar, Exception exc) {
        zzbx(zzjnVar, 35, billingResult, zzcy.zza(exc));
        billingProgramReportingDetailsListener.onCreateBillingProgramReportingDetailsResponse(billingResult, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzaY(ExternalOfferReportingDetailsListener externalOfferReportingDetailsListener, BillingResult billingResult, zzjn zzjnVar, Exception exc) {
        zzbx(zzjnVar, 24, billingResult, zzcy.zza(exc));
        externalOfferReportingDetailsListener.onExternalOfferReportingDetailsResponse(billingResult, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzaZ(ExternalOfferAvailabilityListener externalOfferAvailabilityListener, BillingResult billingResult, zzjn zzjnVar, Exception exc) {
        zzbx(zzjnVar, 23, billingResult, zzcy.zza(exc));
        externalOfferAvailabilityListener.onExternalOfferAvailabilityResponse(billingResult);
    }

    static /* bridge */ /* synthetic */ void zzao(BillingClientImpl billingClientImpl, int i) {
        billingClientImpl.zzm = i;
        billingClientImpl.zzE = i >= 28;
        billingClientImpl.zzD = i >= 27;
        billingClientImpl.zzC = i >= 26;
        billingClientImpl.zzB = i >= 24;
        billingClientImpl.zzA = i >= 23;
        billingClientImpl.zzz = i >= 22;
        billingClientImpl.zzy = i >= 21;
        billingClientImpl.zzx = i >= 20;
        billingClientImpl.zzw = i >= 19;
        billingClientImpl.zzv = i >= 18;
        billingClientImpl.zzu = i >= 17;
        billingClientImpl.zzt = i >= 16;
        billingClientImpl.zzs = i >= 15;
        billingClientImpl.zzr = i >= 14;
        billingClientImpl.zzq = i >= 12;
        billingClientImpl.zzp = i >= 9;
        billingClientImpl.zzo = i >= 8;
        billingClientImpl.zzn = i >= 6;
    }

    static /* bridge */ /* synthetic */ void zzaq(BillingClientImpl billingClientImpl, int i) {
        if (i != 0) {
            billingClientImpl.zzbj(0);
            return;
        }
        synchronized (billingClientImpl.zza) {
            if (billingClientImpl.zzb == 3) {
                return;
            }
            billingClientImpl.zzbj(2);
            zzab zzabVar = billingClientImpl.zzf != null ? billingClientImpl.zzf : null;
            if (zzabVar != null) {
                zzabVar.zzj(billingClientImpl.zzy);
            }
        }
    }

    static /* bridge */ /* synthetic */ boolean zzau(BillingClientImpl billingClientImpl) {
        boolean z;
        synchronized (billingClientImpl.zza) {
            z = true;
            if (billingClientImpl.zzb != 1) {
                z = false;
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final /* synthetic */ Bundle zzax(int i, String str, String str2, BillingFlowParams billingFlowParams, Bundle bundle) throws Exception {
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        try {
            synchronized (this.zza) {
                zzarVar = this.zzi;
            }
            return zzarVar == null ? com.google.android.gms.internal.play_billing.zzc.zzd(zzdc.zzj, zzjn.SERVICE_RESET_TO_NULL) : zzarVar.zzg(i, this.zzg.getPackageName(), str, str2, null, bundle);
        } catch (DeadObjectException e) {
            return com.google.android.gms.internal.play_billing.zzc.zze(zzdc.zzj, zzjn.LAUNCH_BILLING_FLOW_EXCEPTION, zzcy.zza(e));
        } catch (Exception e2) {
            return com.google.android.gms.internal.play_billing.zzc.zze(zzdc.zzh, zzjn.LAUNCH_BILLING_FLOW_EXCEPTION, zzcy.zza(e2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final /* synthetic */ Bundle zzay(String str, String str2) throws Exception {
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        try {
            synchronized (this.zza) {
                zzarVar = this.zzi;
            }
            return zzarVar == null ? com.google.android.gms.internal.play_billing.zzc.zzd(zzdc.zzj, zzjn.SERVICE_RESET_TO_NULL) : zzarVar.zzf(3, this.zzg.getPackageName(), str, str2, null);
        } catch (DeadObjectException e) {
            return com.google.android.gms.internal.play_billing.zzc.zze(zzdc.zzj, zzjn.LAUNCH_BILLING_FLOW_EXCEPTION, zzcy.zza(e));
        } catch (Exception e2) {
            return com.google.android.gms.internal.play_billing.zzc.zze(zzdc.zzh, zzjn.LAUNCH_BILLING_FLOW_EXCEPTION, zzcy.zza(e2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Handler zzaz() {
        return Looper.myLooper() == null ? this.zze : new Handler(Looper.myLooper());
    }

    private void zzbA(int i) {
        try {
            int i2 = zzcy.zza;
            zzbh(zzcy.zzc(i, zzju.BROADCAST_ACTION_UNSPECIFIED));
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "Unable to log.", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzba(ExternalOfferInformationDialogListener externalOfferInformationDialogListener, BillingResult billingResult, zzjn zzjnVar, Exception exc) {
        zzbx(zzjnVar, 25, billingResult, zzcy.zza(exc));
        externalOfferInformationDialogListener.onExternalOfferInformationDialogResponse(billingResult);
    }

    private final void zzbb(BillingConfigResponseListener billingConfigResponseListener, BillingResult billingResult, zzjn zzjnVar, Exception exc) {
        com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "getBillingConfig got an exception.", exc);
        zzbx(zzjnVar, 13, billingResult, zzcy.zza(exc));
        billingConfigResponseListener.onBillingConfigResponse(billingResult, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzbc(LaunchExternalLinkResponseListener launchExternalLinkResponseListener, BillingResult billingResult, zzjn zzjnVar, Exception exc) {
        zzbx(zzjnVar, 37, billingResult, zzcy.zza(exc));
        launchExternalLinkResponseListener.onLaunchExternalLinkResponse(billingResult);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzbd(AlternativeBillingOnlyInformationDialogListener alternativeBillingOnlyInformationDialogListener, BillingResult billingResult, zzjn zzjnVar, Exception exc) {
        zzbx(zzjnVar, 16, billingResult, zzcy.zza(exc));
        alternativeBillingOnlyInformationDialogListener.onAlternativeBillingOnlyInformationDialogResponse(billingResult);
    }

    private final void zzbe(int i, zzjn zzjnVar, Exception exc) {
        zzjg zzjgVar;
        com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "showInAppMessages error.", exc);
        zzcz zzczVar = this.zzh;
        String strZza = zzcy.zza(exc);
        try {
            zzjl zzjlVarZza = zzjp.zza();
            zzjlVarZza.zzp(i);
            if (zzjnVar != null) {
                zzjlVarZza.zze(zzjnVar);
            }
            if (strZza != null) {
                zzjlVarZza.zza(strZza);
            }
            zzje zzjeVarZza = zzjg.zza();
            zzjeVarZza.zzb(zzjlVarZza);
            zzjeVarZza.zzp(30);
            zzjgVar = (zzjg) zzjeVarZza.zzi();
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzp("BillingLogger", "Unable to create logging payload", th);
            zzjgVar = null;
        }
        zzczVar.zza(zzjgVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzbf(zzjg zzjgVar) {
        try {
            this.zzh.zzb(zzjgVar, this.zzm);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "Unable to log.", th);
        }
    }

    private final void zzbg(zzjg zzjgVar, long j, boolean z) {
        try {
            this.zzh.zze(zzjgVar, this.zzm, j, z);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "Unable to log.", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzbh(zzjk zzjkVar) {
        try {
            this.zzh.zzg(zzjkVar, this.zzm);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "Unable to log.", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzbi(zzjn zzjnVar, BillingResult billingResult, int i) {
        try {
            int i2 = zzcy.zza;
            zzje zzjeVar = (zzje) zzcy.zzb(zzjnVar, 6, billingResult, null, zzju.BROADCAST_ACTION_UNSPECIFIED).zzq();
            zzlg zzlgVarZza = zzli.zza();
            zzlgVarZza.zza(i > 0);
            zzlgVarZza.zzb(i);
            zzjeVar.zze(zzlgVarZza);
            zzbf((zzjg) zzjeVar.zzi());
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "Unable to log.", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzbj(int i) {
        synchronized (this.zza) {
            if (this.zzb == 3) {
                return;
            }
            com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Setting clientState from " + zzbq(this.zzb) + " to " + zzbq(i));
            this.zzb = i;
        }
    }

    private final synchronized void zzbk() {
        ExecutorService executorService = this.zzK;
        if (executorService != null) {
            executorService.shutdownNow();
            this.zzK = null;
        }
    }

    private final void zzbl(BillingClientStateListener billingClientStateListener, int i) {
        zzjn zzjnVar;
        BillingResult billingResultZzaB;
        BillingResult billingResult;
        synchronized (this.zza) {
            if (zzbp()) {
                billingResultZzaB = zzaB(i);
            } else {
                if (this.zzb == 1) {
                    com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Client is already in the process of connecting to billing service.");
                    zzjn zzjnVar2 = zzjn.BILLING_CLIENT_CONNECTING;
                    billingResult = zzdc.zzd;
                    zzbi(zzjnVar2, billingResult, i);
                } else if (this.zzb == 3) {
                    com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Client was already closed and can't be reused. Please create another instance.");
                    zzjn zzjnVar3 = zzjn.BILLING_CLIENT_CLOSED;
                    billingResult = zzdc.zzj;
                    zzbi(zzjnVar3, billingResult, i);
                } else {
                    zzbj(1);
                    if (i == 0) {
                        this.zzJ = billingClientStateListener;
                        i = 0;
                    }
                    zzbm();
                    com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Starting in-app billing setup.");
                    this.zzj = new zzbw(this, billingClientStateListener, i, null);
                    this.zzj.zzf();
                    Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
                    intent.setPackage("com.android.vending");
                    List<ResolveInfo> listQueryIntentServices = this.zzg.getPackageManager().queryIntentServices(intent, 0);
                    if (listQueryIntentServices == null || listQueryIntentServices.isEmpty()) {
                        zzjnVar = zzjn.INTENT_SERVICE_NOT_FOUND;
                    } else {
                        ResolveInfo resolveInfo = listQueryIntentServices.get(0);
                        if (resolveInfo.serviceInfo != null) {
                            String str = resolveInfo.serviceInfo.packageName;
                            String str2 = resolveInfo.serviceInfo.name;
                            if (!Objects.equals(str, "com.android.vending") || str2 == null) {
                                zzjnVar = zzjn.INVALID_PHONESKY_PACKAGE;
                                com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "The device doesn't have valid Play Store.");
                            } else {
                                ComponentName componentName = new ComponentName(str, str2);
                                Intent intent2 = new Intent(intent);
                                intent2.setComponent(componentName);
                                intent2.putExtra("playBillingLibraryVersion", this.zzc);
                                synchronized (this.zza) {
                                    if (this.zzb == 2) {
                                        billingResultZzaB = zzaB(i);
                                    } else if (this.zzb != 1) {
                                        com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Client state no longer CONNECTING, returning service disconnected.");
                                        zzjn zzjnVar4 = zzjn.BILLING_CLIENT_TRANSITIONED_OUT_OF_CONNECTING;
                                        billingResult = zzdc.zzj;
                                        zzbi(zzjnVar4, billingResult, i);
                                    } else {
                                        zzbw zzbwVar = this.zzj;
                                        if ((i <= 0 || Build.VERSION.SDK_INT < 29) ? this.zzg.bindService(intent2, zzbwVar, 1) : this.zzg.bindService(intent2, 1, zzM(), zzbwVar)) {
                                            com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Service was bonded successfully.");
                                            billingResultZzaB = null;
                                        } else {
                                            zzjnVar = zzjn.BILLING_SERVICE_BLOCKED;
                                            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Connection to Billing service is blocked.");
                                        }
                                    }
                                }
                            }
                        } else {
                            zzjnVar = zzjn.INVALID_PHONESKY_PACKAGE;
                            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "The device doesn't have valid Play Store.");
                        }
                    }
                    zzbj(0);
                    com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Billing service unavailable on device.");
                    BillingResult billingResult2 = zzdc.zzb;
                    zzbi(zzjnVar, billingResult2, i);
                    billingResultZzaB = billingResult2;
                }
                billingResultZzaB = billingResult;
            }
        }
        if (billingResultZzaB != null) {
            billingClientStateListener.onBillingSetupFinished(billingResultZzaB);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzbm() {
        synchronized (this.zza) {
            if (this.zzj != null) {
                try {
                    this.zzg.unbindService(this.zzj);
                    this.zzi = null;
                    this.zzj = null;
                } catch (Throwable th) {
                    try {
                        com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "There was an exception while unbinding service!", th);
                        this.zzi = null;
                        this.zzj = null;
                    } catch (Throwable th2) {
                        this.zzi = null;
                        this.zzj = null;
                        throw th2;
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final boolean zzbn(long j) {
        try {
            if (Build.VERSION.SDK_INT < 29) {
                j = 0;
            }
            BillingResult billingResult = (BillingResult) zzaD(1).get(j, TimeUnit.MILLISECONDS);
            if (billingResult.getResponseCode() == 0) {
                com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Reconnection succeeded with result: " + billingResult.getResponseCode());
            } else {
                com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Reconnection failed with result: " + billingResult.getResponseCode());
            }
        } catch (Exception e) {
            if (e instanceof InterruptedException) {
                Thread.currentThread().interrupt();
            }
            com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "Error during reconnection attempt: ", e);
        }
        return zzbp();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final boolean zzbo(long j) {
        com.google.android.gms.internal.play_billing.zzbn zzbnVarZzb = com.google.android.gms.internal.play_billing.zzbn.zzb(this.zzM);
        int iZza = zzdl.zza();
        long jZza = j;
        for (int i = 1; i <= iZza; i++) {
            try {
                long jMax = Math.max(0L, jZza);
                if (jMax <= 0) {
                    com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "No time remaining for reconnection attempt.");
                    return zzbp();
                }
                BillingResult billingResult = (BillingResult) zzaD(i).get(jMax, TimeUnit.MILLISECONDS);
                if (billingResult.getResponseCode() == 0) {
                    com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Reconnection succeeded with result: " + billingResult.getResponseCode());
                    return zzbp();
                }
                com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Reconnection failed with result: " + billingResult.getResponseCode());
                jZza = j - zzbnVarZzb.zza(TimeUnit.MILLISECONDS);
                long jPow = ((long) Math.pow(2.0d, i - 1)) * 1000;
                if (jZza < jPow) {
                    com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Reconnection failed due to timeout limit reached.");
                    return zzbp();
                }
                if (i < iZza && jPow > 0) {
                    try {
                        Thread.sleep(jPow);
                        jZza = j - zzbnVarZzb.zza(TimeUnit.MILLISECONDS);
                    } catch (InterruptedException e) {
                        Thread.currentThread().interrupt();
                        com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "Error sleeping during reconnection attempt: ", e);
                    }
                }
            } catch (Exception e2) {
                if (e2 instanceof InterruptedException) {
                    Thread.currentThread().interrupt();
                }
                com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "Error during reconnection attempt: ", e2);
            }
        }
        com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Max retries reached.");
        return zzbp();
    }

    private final boolean zzbp() {
        boolean z;
        synchronized (this.zza) {
            z = false;
            if (this.zzb == 2 && this.zzi != null && this.zzj != null) {
                z = true;
            }
        }
        return z;
    }

    private static final String zzbq(int i) {
        if (i == 0) {
            return "DISCONNECTED";
        }
        if (i != 1) {
            return i != 2 ? "CLOSED" : "CONNECTED";
        }
        return "CONNECTING";
    }

    private static final void zzbr(zzjz zzjzVar, Context context) {
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            if (activityManager != null) {
                ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
                activityManager.getMemoryInfo(memoryInfo);
                zzjzVar.zzv((int) (memoryInfo.totalMem / 1048576));
                zzjzVar.zzr(Build.BRAND);
                zzjzVar.zzu(Build.MODEL);
                zzjzVar.zzt(Build.MANUFACTURER);
                zzjzVar.zzs(Build.FINGERPRINT);
            }
        } catch (RuntimeException e) {
            com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "Runtime error while populating device info.", e);
        }
    }

    private final zzed zzbs(int i, BillingResult billingResult, zzjn zzjnVar, String str, Exception exc) {
        zzbx(zzjnVar, 9, billingResult, zzcy.zza(exc));
        com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", str, exc);
        return new zzed(billingResult, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:102:0x0178 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:106:0x01dc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:67:0x0184  */
    /* JADX WARN: Code duplicated, block: B:70:0x019f  */
    /* JADX WARN: Code duplicated, block: B:74:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:80:0x01f4  */
    public final zzed zzbt(String str, boolean z, int i) {
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        int i2;
        int i3;
        Bundle bundleZzi;
        BillingResult billingResultBuild;
        zzjn zzjnVar;
        ArrayList<String> stringArrayList;
        ArrayList<String> stringArrayList2;
        ArrayList<String> stringArrayList3;
        int i4;
        boolean z2;
        Purchase purchase;
        com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Querying owned items, item type: ".concat(String.valueOf(str)));
        ArrayList arrayList = new ArrayList();
        boolean z3 = this.zzp;
        boolean z4 = this.zzw;
        boolean zIsEnabledForOneTimeProducts = this.zzF.isEnabledForOneTimeProducts();
        boolean zIsEnabledForPrepaidPlans = this.zzF.isEnabledForPrepaidPlans();
        long jLongValue = this.zzL.longValue();
        Bundle bundle = new Bundle();
        com.google.android.gms.internal.play_billing.zzc.zzc(bundle, BuildConfig.VERSION_NAME, this.zzd, jLongValue);
        if (z3 && zIsEnabledForOneTimeProducts) {
            bundle.putBoolean("enablePendingPurchases", true);
        }
        if (z4 && zIsEnabledForPrepaidPlans) {
            bundle.putBoolean("enablePendingPurchaseForSubscriptions", true);
        }
        if (z) {
            bundle.putBoolean("includeSuspendedSubscriptions", true);
        }
        String string = null;
        do {
            try {
                synchronized (this.zza) {
                    zzarVar = this.zzi;
                }
                if (zzarVar == null) {
                    return zzbs(9, zzdc.zzj, zzjn.SERVICE_RESET_TO_NULL, "Service has been reset to null", null);
                }
                if (z && !this.zzC) {
                    return zzbs(9, zzdc.zzx, zzjn.INCLUDE_SUSPENDED_SUBSCRIPTIONS_NOT_SUPPORTED, "Include suspended subscriptions is not supported", null);
                }
                if (this.zzp) {
                    if (this.zzC) {
                        i3 = 26;
                    } else if (this.zzB) {
                        i3 = 24;
                    } else {
                        if (this.zzw) {
                            i3 = 19;
                        } else {
                            i2 = 9;
                        }
                        bundleZzi = zzarVar.zzi(i2, this.zzg.getPackageName(), str, string, bundle);
                    }
                    i2 = i3;
                    bundleZzi = zzarVar.zzi(i2, this.zzg.getPackageName(), str, string, bundle);
                } else {
                    bundleZzi = zzarVar.zzh(3, this.zzg.getPackageName(), str, string);
                }
                BillingResult billingResult = zzdc.zzh;
                if (bundleZzi == null) {
                    com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", String.format("%s got null owned items list", "getPurchase()"));
                    zzjnVar = zzjn.NULL_OWNED_ITEMS_LIST;
                } else {
                    int iZzb = com.google.android.gms.internal.play_billing.zzc.zzb(bundleZzi, "BillingClient");
                    String strZzk = com.google.android.gms.internal.play_billing.zzc.zzk(bundleZzi, "BillingClient");
                    BillingResult.Builder builderNewBuilder = BillingResult.newBuilder();
                    builderNewBuilder.setResponseCode(iZzb);
                    builderNewBuilder.setDebugMessage(strZzk);
                    billingResultBuild = builderNewBuilder.build();
                    if (iZzb != 0) {
                        com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", String.format("%s failed. Response code: %s", "getPurchase()", Integer.valueOf(iZzb)));
                        zzjnVar = zzjn.BILLING_RESULT_RECEIVED_FROM_PHONESKY;
                    } else if (bundleZzi.containsKey("INAPP_PURCHASE_ITEM_LIST") && bundleZzi.containsKey("INAPP_PURCHASE_DATA_LIST") && bundleZzi.containsKey("INAPP_DATA_SIGNATURE_LIST")) {
                        ArrayList<String> stringArrayList4 = bundleZzi.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                        ArrayList<String> stringArrayList5 = bundleZzi.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                        ArrayList<String> stringArrayList6 = bundleZzi.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                        if (stringArrayList4 == null) {
                            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", String.format("Bundle returned from %s contains null SKUs list.", "getPurchase()"));
                            zzjnVar = zzjn.NULL_SKUS_LIST;
                        } else if (stringArrayList5 == null) {
                            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", String.format("Bundle returned from %s contains null purchases list.", "getPurchase()"));
                            zzjnVar = zzjn.NULL_PURCHASES_LIST;
                        } else if (stringArrayList6 == null) {
                            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", String.format("Bundle returned from %s contains null signatures list.", "getPurchase()"));
                            zzjnVar = zzjn.NULL_SIGNATURES_LIST;
                        } else {
                            billingResultBuild = zzdc.zzi;
                            zzjnVar = zzjn.REASON_UNSPECIFIED;
                        }
                    } else {
                        com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", String.format("Bundle returned from %s doesn't contain required fields.", "getPurchase()"));
                        zzjnVar = zzjn.MISSING_REQUIRED_PURCHASE_KEY;
                    }
                    if (billingResultBuild != zzdc.zzi) {
                        return zzbs(9, billingResultBuild, zzjnVar, "Purchase bundle invalid", null);
                    }
                    stringArrayList = bundleZzi.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                    stringArrayList2 = bundleZzi.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                    stringArrayList3 = bundleZzi.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                    z2 = false;
                    for (i4 = 0; i4 < stringArrayList2.size(); i4++) {
                        String str2 = stringArrayList2.get(i4);
                        String str3 = stringArrayList3.get(i4);
                        com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Sku is owned: ".concat(String.valueOf(stringArrayList.get(i4))));
                        try {
                            purchase = new Purchase(str2, str3);
                            this.zzI.isEmpty();
                            if (TextUtils.isEmpty(purchase.getPurchaseToken())) {
                                com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "BUG: empty/null token!");
                                z2 = true;
                            }
                            arrayList.add(purchase);
                        } catch (JSONException e) {
                            return zzbs(9, zzdc.zzh, zzjn.ERROR_DECODING_PURCHASE_DATA, "Got an exception trying to decode the purchase!", e);
                        }
                    }
                    if (z2) {
                        zzbv(zzjn.EMPTY_PURCHASE_TOKEN, 9, billingResult);
                    }
                    string = bundleZzi.getString("INAPP_CONTINUATION_TOKEN");
                    com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Continuation token: ".concat(String.valueOf(string)));
                }
                billingResultBuild = billingResult;
                if (billingResultBuild != zzdc.zzi) {
                    return zzbs(9, billingResultBuild, zzjnVar, "Purchase bundle invalid", null);
                }
                stringArrayList = bundleZzi.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                stringArrayList2 = bundleZzi.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                stringArrayList3 = bundleZzi.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                z2 = false;
                while (i4 < stringArrayList2.size()) {
                    String str4 = stringArrayList2.get(i4);
                    String str5 = stringArrayList3.get(i4);
                    com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Sku is owned: ".concat(String.valueOf(stringArrayList.get(i4))));
                    purchase = new Purchase(str4, str5);
                    this.zzI.isEmpty();
                    if (TextUtils.isEmpty(purchase.getPurchaseToken())) {
                        com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "BUG: empty/null token!");
                        z2 = true;
                    }
                    arrayList.add(purchase);
                }
                if (z2) {
                    zzbv(zzjn.EMPTY_PURCHASE_TOKEN, 9, billingResult);
                }
                string = bundleZzi.getString("INAPP_CONTINUATION_TOKEN");
                com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Continuation token: ".concat(String.valueOf(string)));
            } catch (DeadObjectException e2) {
                return zzbs(9, zzdc.zzj, zzjn.GET_PURCHASE_SERVICE_CALL_EXCEPTION, "Got exception trying to get purchases try to reconnect", e2);
            } catch (Exception e3) {
                return zzbs(9, zzdc.zzh, zzjn.GET_PURCHASE_SERVICE_CALL_EXCEPTION, "Got exception trying to get purchases try to reconnect", e3);
            }
        } while (!TextUtils.isEmpty(string));
        return new zzed(zzdc.zzi, arrayList);
    }

    private final void zzbu(BillingResult billingResult, zzjn zzjnVar, int i) {
        zzjk zzjkVar = null;
        zzjg zzjgVar = null;
        if (billingResult.getResponseCode() == 0) {
            int i2 = zzcy.zza;
            try {
                zzji zzjiVarZza = zzjk.zza();
                zzjiVarZza.zze(5);
                zzkf zzkfVarZza = zzki.zza();
                zzkfVarZza.zza(i);
                zzjiVarZza.zzb((zzki) zzkfVarZza.zzi());
                zzjkVar = (zzjk) zzjiVarZza.zzi();
            } catch (Exception e) {
                com.google.android.gms.internal.play_billing.zzc.zzp("BillingLogger", "Unable to create logging payload", e);
            }
            zzbh(zzjkVar);
            return;
        }
        int i3 = zzcy.zza;
        try {
            zzje zzjeVarZza = zzjg.zza();
            zzjl zzjlVarZza = zzjp.zza();
            zzjlVarZza.zzp(billingResult.getResponseCode());
            zzjlVarZza.zzb(billingResult.getDebugMessage());
            zzjlVarZza.zze(zzjnVar);
            zzjeVarZza.zzb(zzjlVarZza);
            zzjeVarZza.zzp(5);
            zzkf zzkfVarZza2 = zzki.zza();
            zzkfVarZza2.zza(i);
            zzjeVarZza.zzc((zzki) zzkfVarZza2.zzi());
            zzjgVar = (zzjg) zzjeVarZza.zzi();
        } catch (Exception e2) {
            com.google.android.gms.internal.play_billing.zzc.zzp("BillingLogger", "Unable to create logging payload", e2);
        }
        zzbf(zzjgVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzbv(zzjn zzjnVar, int i, BillingResult billingResult) {
        try {
            int i2 = zzcy.zza;
            zzbf(zzcy.zzb(zzjnVar, i, billingResult, null, zzju.BROADCAST_ACTION_UNSPECIFIED));
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "Unable to log.", th);
        }
    }

    private final void zzbw(zzjn zzjnVar, int i, BillingResult billingResult, long j) {
        try {
            int i2 = zzcy.zza;
            try {
                this.zzh.zzc(zzcy.zzb(zzjnVar, 2, billingResult, null, zzju.BROADCAST_ACTION_UNSPECIFIED), this.zzm, j);
            } catch (Throwable th) {
                com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "Unable to log.", th);
            }
        } catch (Throwable th2) {
            com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "Unable to log.", th2);
        }
    }

    private final void zzbx(zzjn zzjnVar, int i, BillingResult billingResult, String str) {
        try {
            int i2 = zzcy.zza;
            zzbf(zzcy.zzb(zzjnVar, i, billingResult, str, zzju.BROADCAST_ACTION_UNSPECIFIED));
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "Unable to log.", th);
        }
    }

    private final void zzby(zzjn zzjnVar, int i, BillingResult billingResult, long j, boolean z) {
        try {
            int i2 = zzcy.zza;
            zzbg(zzcy.zzb(zzjnVar, 2, billingResult, null, zzju.BROADCAST_ACTION_UNSPECIFIED), j, z);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "Unable to log.", th);
        }
    }

    private final void zzbz(zzjn zzjnVar, int i, BillingResult billingResult, String str, long j, boolean z) {
        try {
            int i2 = zzcy.zza;
            zzbg(zzcy.zzb(zzjnVar, 2, billingResult, str, zzju.BROADCAST_ACTION_UNSPECIFIED), j, z);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "Unable to log.", th);
        }
    }

    static /* bridge */ /* synthetic */ ResultReceiver zzg(BillingClientImpl billingClientImpl, LaunchExternalLinkResponseListener launchExternalLinkResponseListener) {
        return new zzbt(billingClientImpl, billingClientImpl.zze, launchExternalLinkResponseListener);
    }

    static /* bridge */ /* synthetic */ BillingResult zzn(Exception exc) {
        return exc instanceof DeadObjectException ? zzdc.zzj : zzdc.zzh;
    }

    public static /* synthetic */ Object zzu(BillingClientImpl billingClientImpl, int i, com.google.android.gms.internal.play_billing.zzp zzpVar) {
        billingClientImpl.zzbl(new zzbs(billingClientImpl, zzpVar), i);
        return "reconnectIfNeeded";
    }

    public static /* synthetic */ Object zzv(BillingClientImpl billingClientImpl, ConsumeResponseListener consumeResponseListener, ConsumeParams consumeParams) throws Throwable {
        if (billingClientImpl.zzbo(zzdl.zzb())) {
            billingClientImpl.zzaR(consumeParams, consumeResponseListener);
            return null;
        }
        zzjn zzjnVar = zzjn.SERVICE_CONNECTION_NOT_READY;
        BillingResult billingResult = zzdc.zzj;
        billingClientImpl.zzbv(zzjnVar, 4, billingResult);
        consumeResponseListener.onConsumeResponse(billingResult, consumeParams.getPurchaseToken());
        return null;
    }

    public static /* synthetic */ Object zzw(BillingClientImpl billingClientImpl, ProductDetailsResponseListener productDetailsResponseListener, QueryProductDetailsParams queryProductDetailsParams) throws JSONException {
        if (!billingClientImpl.zzbo(zzdl.zzb())) {
            zzjn zzjnVar = zzjn.SERVICE_CONNECTION_NOT_READY;
            BillingResult billingResult = zzdc.zzj;
            billingClientImpl.zzbv(zzjnVar, 7, billingResult);
            productDetailsResponseListener.onProductDetailsResponse(billingResult, new QueryProductDetailsResult(com.google.android.gms.internal.play_billing.zzca.zzk(), com.google.android.gms.internal.play_billing.zzca.zzk()));
            return null;
        }
        if (billingClientImpl.zzu) {
            zzch zzchVarZzi = billingClientImpl.zzi(queryProductDetailsParams);
            productDetailsResponseListener.onProductDetailsResponse(zzdc.zza(zzchVarZzi.zza(), zzchVarZzi.zzb()), new QueryProductDetailsResult(zzchVarZzi.zzc(), zzchVarZzi.zzd()));
            return null;
        }
        com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Querying product details is not supported.");
        zzjn zzjnVar2 = zzjn.PRODUCT_DETAILS_NOT_SUPPORTED;
        BillingResult billingResult2 = zzdc.zzs;
        billingClientImpl.zzbv(zzjnVar2, 7, billingResult2);
        productDetailsResponseListener.onProductDetailsResponse(billingResult2, new QueryProductDetailsResult(com.google.android.gms.internal.play_billing.zzca.zzk(), com.google.android.gms.internal.play_billing.zzca.zzk()));
        return null;
    }

    public static /* synthetic */ Object zzx(BillingClientImpl billingClientImpl, AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener, AcknowledgePurchaseParams acknowledgePurchaseParams) throws Exception {
        billingClientImpl.zzaE(acknowledgePurchaseResponseListener, acknowledgePurchaseParams);
        return null;
    }

    public static /* synthetic */ Object zzy(BillingClientImpl billingClientImpl, Bundle bundle, Activity activity, ResultReceiver resultReceiver) throws Exception {
        billingClientImpl.zzaG(bundle, activity, resultReceiver);
        return null;
    }

    public static /* synthetic */ Object zzz(BillingClientImpl billingClientImpl, BillingConfigResponseListener billingConfigResponseListener) throws Exception {
        billingClientImpl.zzaF(billingConfigResponseListener);
        return null;
    }

    @Override // com.android.billingclient.api.BillingClient
    public void acknowledgePurchase(final AcknowledgePurchaseParams acknowledgePurchaseParams, final AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener) {
        if (zzN(new Callable() { // from class: com.android.billingclient.api.zzal
            @Override // java.util.concurrent.Callable
            public final Object call() throws Exception {
                BillingClientImpl.zzx(this.zza, acknowledgePurchaseResponseListener, acknowledgePurchaseParams);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzan
            @Override // java.lang.Runnable
            public final void run() {
                BillingClientImpl.zzU(this.zza, acknowledgePurchaseResponseListener);
            }
        }, zzaz(), zzM()) == null) {
            BillingResult billingResultZzaC = zzaC();
            zzbv(zzjn.MISSING_RESULT_FROM_EXECUTE_ASYNC, 3, billingResultZzaC);
            acknowledgePurchaseResponseListener.onAcknowledgePurchaseResponse(billingResultZzaC);
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public void consumeAsync(final ConsumeParams consumeParams, final ConsumeResponseListener consumeResponseListener) {
        if (zzN(new Callable() { // from class: com.android.billingclient.api.zzbc
            @Override // java.util.concurrent.Callable
            public final Object call() throws Throwable {
                BillingClientImpl.zzv(this.zza, consumeResponseListener, consumeParams);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzbd
            @Override // java.lang.Runnable
            public final void run() {
                BillingClientImpl.zzO(this.zza, consumeResponseListener, consumeParams);
            }
        }, zzaz(), zzM()) == null) {
            BillingResult billingResultZzaC = zzaC();
            zzbv(zzjn.MISSING_RESULT_FROM_EXECUTE_ASYNC, 4, billingResultZzaC);
            consumeResponseListener.onConsumeResponse(billingResultZzaC, consumeParams.getPurchaseToken());
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public void createAlternativeBillingOnlyReportingDetailsAsync(final AlternativeBillingOnlyReportingDetailsListener alternativeBillingOnlyReportingDetailsListener) {
        if (zzN(new Callable() { // from class: com.android.billingclient.api.zzax
            @Override // java.util.concurrent.Callable
            public final Object call() throws Exception {
                BillingClientImpl.zzJ(this.zza, alternativeBillingOnlyReportingDetailsListener);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzay
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzaW(alternativeBillingOnlyReportingDetailsListener, zzdc.zzk, zzjn.EXECUTE_ASYNC_TIMEOUT, null);
            }
        }, zzaz(), zzM()) == null) {
            zzaW(alternativeBillingOnlyReportingDetailsListener, zzaC(), zzjn.MISSING_RESULT_FROM_EXECUTE_ASYNC, null);
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public void createBillingProgramReportingDetailsAsync(final BillingProgramReportingDetailsParams billingProgramReportingDetailsParams, final BillingProgramReportingDetailsListener billingProgramReportingDetailsListener) {
        try {
            try {
                zzaQ(new Callable() { // from class: com.android.billingclient.api.zzaq
                    @Override // java.util.concurrent.Callable
                    public final Object call() throws Exception {
                        BillingClientImpl.zzK(this.zza, billingProgramReportingDetailsListener, billingProgramReportingDetailsParams);
                        return null;
                    }
                }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzar
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zza.zzaX(billingProgramReportingDetailsListener, zzdc.zzk, zzjn.EXECUTE_ASYNC_TIMEOUT, null);
                    }
                }, zzaz());
            } catch (Exception e) {
                e = e;
                zzaX(billingProgramReportingDetailsListener, zzaC(), zzjn.MISSING_RESULT_FROM_EXECUTE_ASYNC, e);
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public void createExternalOfferReportingDetailsAsync(final ExternalOfferReportingDetailsListener externalOfferReportingDetailsListener) {
        if (zzN(new Callable() { // from class: com.android.billingclient.api.zzav
            @Override // java.util.concurrent.Callable
            public final Object call() throws Exception {
                BillingClientImpl.zzH(this.zza, externalOfferReportingDetailsListener);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzbe
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzaY(externalOfferReportingDetailsListener, zzdc.zzk, zzjn.EXECUTE_ASYNC_TIMEOUT, null);
            }
        }, zzaz(), zzM()) == null) {
            zzaY(externalOfferReportingDetailsListener, zzaC(), zzjn.MISSING_RESULT_FROM_EXECUTE_ASYNC, null);
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public void endConnection() {
        zzbA(12);
        synchronized (this.zza) {
            try {
                if (this.zzf != null) {
                    this.zzf.zzi();
                    try {
                        com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Unbinding from service.");
                        zzbm();
                    } catch (Throwable th) {
                        com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "There was an exception while unbinding from the service while ending connection!", th);
                    }
                    try {
                        zzbk();
                        zzbj(3);
                    } catch (Throwable th2) {
                        try {
                            com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "There was an exception while shutting down the executor service while ending connection!", th2);
                            zzbj(3);
                        } catch (Throwable th3) {
                            zzbj(3);
                            this.zzJ = null;
                            throw th3;
                        }
                    }
                    this.zzJ = null;
                } else {
                    com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Unbinding from service.");
                    zzbm();
                    zzbk();
                    zzbj(3);
                    this.zzJ = null;
                }
            } catch (Throwable th4) {
                com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "There was an exception while shutting down broadcast manager while ending connection!", th4);
            }
            throw th;
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public void getBillingConfigAsync(GetBillingConfigParams getBillingConfigParams, final BillingConfigResponseListener billingConfigResponseListener) {
        if (zzN(new Callable() { // from class: com.android.billingclient.api.zzas
            @Override // java.util.concurrent.Callable
            public final Object call() throws Exception {
                BillingClientImpl.zzz(this.zza, billingConfigResponseListener);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzat
            @Override // java.lang.Runnable
            public final void run() {
                BillingClientImpl.zzQ(this.zza, billingConfigResponseListener);
            }
        }, zzaz(), zzM()) == null) {
            BillingResult billingResultZzaC = zzaC();
            zzbv(zzjn.MISSING_RESULT_FROM_EXECUTE_ASYNC, 13, billingResultZzaC);
            billingConfigResponseListener.onBillingConfigResponse(billingResultZzaC, null);
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public final int getConnectionState() {
        int i;
        synchronized (this.zza) {
            i = this.zzb;
        }
        return i;
    }

    @Override // com.android.billingclient.api.BillingClient
    public void isAlternativeBillingOnlyAvailableAsync(final AlternativeBillingOnlyAvailabilityListener alternativeBillingOnlyAvailabilityListener) {
        if (zzN(new Callable() { // from class: com.android.billingclient.api.zzaz
            @Override // java.util.concurrent.Callable
            public final Object call() {
                BillingClientImpl.zzL(this.zza, alternativeBillingOnlyAvailabilityListener);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzba
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzaT(alternativeBillingOnlyAvailabilityListener, zzdc.zzk, zzjn.EXECUTE_ASYNC_TIMEOUT, null);
            }
        }, zzaz(), zzM()) == null) {
            zzaT(alternativeBillingOnlyAvailabilityListener, zzaC(), zzjn.MISSING_RESULT_FROM_EXECUTE_ASYNC, null);
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public void isBillingProgramAvailableAsync(final int i, final BillingProgramAvailabilityListener billingProgramAvailabilityListener) {
        if (zzN(new Callable() { // from class: com.android.billingclient.api.zzao
            @Override // java.util.concurrent.Callable
            public final Object call() throws Exception {
                BillingClientImpl.zzF(this.zza, billingProgramAvailabilityListener, i);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzap
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzaU(billingProgramAvailabilityListener, i, zzdc.zzk, zzjn.EXECUTE_ASYNC_TIMEOUT, null);
            }
        }, zzaz(), zzM()) == null) {
            zzaU(billingProgramAvailabilityListener, i, zzaC(), zzjn.MISSING_RESULT_FROM_EXECUTE_ASYNC, null);
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public void isExternalOfferAvailableAsync(final ExternalOfferAvailabilityListener externalOfferAvailabilityListener) {
        if (zzN(new Callable() { // from class: com.android.billingclient.api.zzaf
            @Override // java.util.concurrent.Callable
            public final Object call() throws Exception {
                BillingClientImpl.zzE(this.zza, externalOfferAvailabilityListener);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzag
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzaZ(externalOfferAvailabilityListener, zzdc.zzk, zzjn.EXECUTE_ASYNC_TIMEOUT, null);
            }
        }, zzaz(), zzM()) == null) {
            zzaZ(externalOfferAvailabilityListener, zzaC(), zzjn.MISSING_RESULT_FROM_EXECUTE_ASYNC, null);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:67:0x00ff  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // com.android.billingclient.api.BillingClient
    public final BillingResult isFeatureSupported(String str) {
        byte b;
        if (!zzbn(zzdl.zzc())) {
            BillingResult billingResult = zzdc.zzj;
            zzjn zzjnVar = zzjn.SERVICE_CONNECTION_NOT_READY;
            if (billingResult.getResponseCode() != 0) {
                zzbv(zzjnVar, 5, billingResult);
                return billingResult;
            }
            zzbA(5);
            return billingResult;
        }
        int i = zzdc.zzJ;
        switch (str.hashCode()) {
            case -422092961:
                if (!str.equals(BillingClient.FeatureType.SUBSCRIPTIONS_UPDATE)) {
                    b = -1;
                } else {
                    b = 1;
                }
                break;
            case 96321:
                if (!str.equals("aaa")) {
                    b = -1;
                } else {
                    b = 4;
                }
                break;
            case 97314:
                if (!str.equals(BillingClient.FeatureType.IN_APP_MESSAGING)) {
                    b = -1;
                } else {
                    b = 3;
                }
                break;
            case 98307:
                if (!str.equals("ccc")) {
                    b = -1;
                } else {
                    b = 6;
                }
                break;
            case 99300:
                if (!str.equals("ddd")) {
                    b = -1;
                } else {
                    b = 5;
                }
                break;
            case 100293:
                if (!str.equals("eee")) {
                    b = -1;
                } else {
                    b = 7;
                }
                break;
            case 101286:
                if (!str.equals(BillingClient.FeatureType.PRODUCT_DETAILS)) {
                    b = -1;
                } else {
                    b = 8;
                }
                break;
            case 102279:
                if (!str.equals(BillingClient.FeatureType.BILLING_CONFIG)) {
                    b = -1;
                } else {
                    b = 9;
                }
                break;
            case 103272:
                if (!str.equals("hhh")) {
                    b = -1;
                } else {
                    b = 10;
                }
                break;
            case 104265:
                if (!str.equals("iii")) {
                    b = -1;
                } else {
                    b = 11;
                }
                break;
            case 105258:
                if (!str.equals(BillingClient.FeatureType.ALTERNATIVE_BILLING_ONLY)) {
                    b = -1;
                } else {
                    b = 12;
                }
                break;
            case 106251:
                if (!str.equals(BillingClient.FeatureType.EXTERNAL_OFFER)) {
                    b = -1;
                } else {
                    b = 13;
                }
                break;
            case 107244:
                if (!str.equals("lll")) {
                    b = -1;
                } else {
                    b = 14;
                }
                break;
            case 108237:
                if (!str.equals("mmm")) {
                    b = -1;
                } else {
                    b = Ascii.SI;
                }
                break;
            case 109230:
                if (!str.equals(BillingClient.FeatureType.INCLUDE_SUSPENDED_SUBSCRIPTIONS)) {
                    b = -1;
                } else {
                    b = Ascii.DLE;
                }
                break;
            case 110223:
                if (!str.equals("ooo")) {
                    b = -1;
                } else {
                    b = 17;
                }
                break;
            case 207616302:
                if (!str.equals(BillingClient.FeatureType.PRICE_CHANGE_CONFIRMATION)) {
                    b = -1;
                } else {
                    b = 2;
                }
                break;
            case 1987365622:
                if (!str.equals(BillingClient.FeatureType.SUBSCRIPTIONS)) {
                    b = -1;
                } else {
                    b = 0;
                }
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
                BillingResult billingResult2 = this.zzk ? zzdc.zzi : zzdc.zzl;
                zzbu(billingResult2, zzjn.SUBSCRIPTIONS_NOT_SUPPORTED, 2);
                return billingResult2;
            case 1:
                BillingResult billingResult3 = this.zzl ? zzdc.zzi : zzdc.zzm;
                zzbu(billingResult3, zzjn.SUBSCRIPTIONS_UPDATE_NOT_SUPPORTED, 3);
                return billingResult3;
            case 2:
                BillingResult billingResult4 = this.zzo ? zzdc.zzi : zzdc.zzn;
                zzbu(billingResult4, zzjn.PRICE_CHANGE_CONFIRMATION_NOT_SUPPORTED, 4);
                return billingResult4;
            case 3:
                BillingResult billingResult5 = this.zzq ? zzdc.zzi : zzdc.zzt;
                zzbu(billingResult5, zzjn.IN_APP_MESSAGE_NOT_SUPPORTED, 5);
                return billingResult5;
            case 4:
                BillingResult billingResult6 = this.zzs ? zzdc.zzi : zzdc.zzo;
                zzbu(billingResult6, zzjn.CROSS_APP_NOT_SUPPORTED, 6);
                return billingResult6;
            case 5:
                BillingResult billingResult7 = this.zzr ? zzdc.zzi : zzdc.zzq;
                zzbu(billingResult7, zzjn.OFFER_ID_TOKEN_NOT_SUPPORTED, 7);
                return billingResult7;
            case 6:
                BillingResult billingResult8 = this.zzt ? zzdc.zzi : zzdc.zzp;
                zzbu(billingResult8, zzjn.MULTI_ITEM_NOT_SUPPORTED, 8);
                return billingResult8;
            case 7:
                BillingResult billingResult9 = this.zzt ? zzdc.zzi : zzdc.zzp;
                zzbu(billingResult9, zzjn.PBL_FOR_PAYMENTS_GATEWAY_BUYFLOW_NOT_SUPPORTED, 9);
                return billingResult9;
            case 8:
                BillingResult billingResult10 = this.zzu ? zzdc.zzi : zzdc.zzs;
                zzbu(billingResult10, zzjn.PRODUCT_DETAILS_NOT_SUPPORTED, 10);
                return billingResult10;
            case 9:
                BillingResult billingResult11 = this.zzv ? zzdc.zzi : zzdc.zzz;
                zzbu(billingResult11, zzjn.GET_BILLING_CONFIG_NOT_SUPPORTED, 11);
                return billingResult11;
            case 10:
                BillingResult billingResult12 = this.zzv ? zzdc.zzi : zzdc.zzA;
                zzbu(billingResult12, zzjn.QUERY_PRODUCT_DETAILS_WITH_SERIALIZED_DOCID_NOT_SUPPORTED, 12);
                return billingResult12;
            case 11:
                BillingResult billingResult13 = this.zzx ? zzdc.zzi : zzdc.zzC;
                zzbu(billingResult13, zzjn.QUERY_PRODUCT_DETAILS_WITH_DEVELOPER_SPECIFIED_ACCOUNT_NOT_SUPPORTED, 13);
                return billingResult13;
            case 12:
                BillingResult billingResult14 = this.zzy ? zzdc.zzi : zzdc.zzD;
                zzbu(billingResult14, zzjn.ALTERNATIVE_BILLING_ONLY_NOT_SUPPORTED, 14);
                return billingResult14;
            case 13:
                BillingResult billingResult15 = this.zzB ? zzdc.zzi : zzdc.zzu;
                zzbu(billingResult15, zzjn.EXTERNAL_OFFER_NOT_SUPPORTED, 18);
                return billingResult15;
            case 14:
                BillingResult billingResult16 = this.zzA ? zzdc.zzi : zzdc.zzv;
                zzbu(billingResult16, zzjn.MULTI_ITEM_WITH_SEASON_PASS_NOT_SUPPORTED, 19);
                return billingResult16;
            case 15:
                BillingResult billingResult17 = this.zzB ? zzdc.zzi : zzdc.zzw;
                zzbu(billingResult17, zzjn.AUTO_PAY_NOT_SUPPORTED, 20);
                return billingResult17;
            case 16:
                BillingResult billingResult18 = this.zzC ? zzdc.zzi : zzdc.zzx;
                zzbu(billingResult18, zzjn.INCLUDE_SUSPENDED_SUBSCRIPTIONS_NOT_SUPPORTED, 21);
                return billingResult18;
            case 17:
                BillingResult billingResult19 = this.zzE ? zzdc.zzi : zzdc.zzr;
                zzbu(billingResult19, zzjn.GIFT_CODE_PURCHASE_NOT_SUPPORTED, 22);
                return billingResult19;
            default:
                com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Unsupported feature: ".concat(String.valueOf(str)));
                BillingResult billingResult20 = zzdc.zzy;
                zzbu(billingResult20, zzjn.UNKNOWN_FEATURE, 1);
                return billingResult20;
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public final boolean isReady() {
        if (this.zzG) {
            return true;
        }
        return zzbp();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.android.billingclient.api.BillingClient
    public BillingResult launchBillingFlow(Activity activity, BillingFlowParams billingFlowParams) {
        boolean zZzg;
        long j;
        Future futureZzN;
        long j2;
        zzjn zzjnVarZzb;
        String string;
        Object obj;
        boolean z;
        int i;
        long jNextLong = new Random().nextLong();
        if (this.zzf == null || this.zzf.zzf() == null) {
            zzjn zzjnVar = zzjn.MISSING_LISTENER;
            BillingResult billingResult = zzdc.zzE;
            zzbw(zzjnVar, 2, billingResult, jNextLong);
            return billingResult;
        }
        if (billingFlowParams.getDeveloperBillingOptionParams() != null && this.zzf.zzd() == null) {
            zzjn zzjnVar2 = zzjn.MISSING_DEVELOPER_PROVIDED_BILLING_LISTENER;
            BillingResult billingResult2 = zzdc.zzI;
            zzbw(zzjnVar2, 2, billingResult2, jNextLong);
            return billingResult2;
        }
        if (!zzbn(zzdl.zzc())) {
            zzjn zzjnVar3 = zzjn.SERVICE_CONNECTION_NOT_READY;
            BillingResult billingResult3 = zzdc.zzj;
            zzbw(zzjnVar3, 2, billingResult3, jNextLong);
            zzo(billingResult3);
            return billingResult3;
        }
        synchronized (this.zza) {
            zZzg = this.zzj != null ? this.zzj.zzg() : false;
        }
        ArrayList arrayListZzj = billingFlowParams.zzj();
        List listZzk = billingFlowParams.zzk();
        zzen zzenVar = (zzen) com.google.android.gms.internal.play_billing.zzcg.zza(arrayListZzj, null);
        BillingFlowParams.ProductDetailsParams productDetailsParams = (BillingFlowParams.ProductDetailsParams) com.google.android.gms.internal.play_billing.zzcg.zza(listZzk, null);
        if (zzenVar != null) {
            throw null;
        }
        final String productId = productDetailsParams.zza().getProductId();
        final String productType = productDetailsParams.zza().getProductType();
        if (productType.equals(BillingClient.ProductType.SUBS) && !this.zzk) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Current client doesn't support subscriptions.");
            zzjn zzjnVar4 = zzjn.SUBSCRIPTIONS_NOT_SUPPORTED;
            BillingResult billingResult4 = zzdc.zzl;
            zzby(zzjnVar4, 2, billingResult4, jNextLong, zZzg);
            zzo(billingResult4);
            return billingResult4;
        }
        if (billingFlowParams.zzu() && !this.zzn) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Current client doesn't support extra params for buy intent.");
            zzjn zzjnVar5 = zzjn.EXTRA_PARAMS_NOT_SUPPORTED;
            BillingResult billingResult5 = zzdc.zzf;
            zzby(zzjnVar5, 2, billingResult5, jNextLong, zZzg);
            zzo(billingResult5);
            return billingResult5;
        }
        if (arrayListZzj.size() > 1 && !this.zzt) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Current client doesn't support multi-item purchases.");
            zzjn zzjnVar6 = zzjn.MULTI_ITEM_NOT_SUPPORTED;
            BillingResult billingResult6 = zzdc.zzp;
            zzby(zzjnVar6, 2, billingResult6, jNextLong, zZzg);
            zzo(billingResult6);
            return billingResult6;
        }
        if (!listZzk.isEmpty() && !this.zzu) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Current client doesn't support purchases with ProductDetails.");
            zzjn zzjnVar7 = zzjn.PRODUCT_DETAILS_NOT_SUPPORTED;
            BillingResult billingResult7 = zzdc.zzs;
            zzby(zzjnVar7, 2, billingResult7, jNextLong, zZzg);
            zzo(billingResult7);
            return billingResult7;
        }
        Iterator it = listZzk.iterator();
        while (it.hasNext()) {
            String strZzb = ((BillingFlowParams.ProductDetailsParams) it.next()).zzb();
            if (strZzb != null && strZzb.contains(":") && !this.zzE) {
                com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Current Play Store version doesn't support gift code purchase.");
                zzjn zzjnVar8 = zzjn.GIFT_CODE_PURCHASE_NOT_SUPPORTED;
                BillingResult billingResult8 = zzdc.zzr;
                zzby(zzjnVar8, 2, billingResult8, jNextLong, zZzg);
                zzo(billingResult8);
                return billingResult8;
            }
        }
        BillingResult billingResultZzd = billingFlowParams.zzd();
        if (billingResultZzd != zzdc.zzi) {
            zzby(zzjn.INVALID_BILLING_FLOW_PARAMS, 2, billingResultZzd, jNextLong, zZzg);
            zzo(billingResultZzd);
            return billingResultZzd;
        }
        boolean z2 = zZzg;
        if (this.zzn) {
            long j3 = jNextLong;
            final Bundle bundleZzf = com.google.android.gms.internal.play_billing.zzc.zzf(billingFlowParams, this.zzp, this.zzw, this.zzF.isEnabledForOneTimeProducts(), this.zzF.isEnabledForPrepaidPlans(), this.zzH, this.zzc, this.zzd, this.zzL.longValue(), this.zzg.getPackageName(), j3);
            if (arrayListZzj.isEmpty()) {
                ArrayList<String> arrayList = new ArrayList<>(listZzk.size() - 1);
                ArrayList<String> arrayList2 = new ArrayList<>(listZzk.size() - 1);
                ArrayList<String> arrayList3 = new ArrayList<>();
                ArrayList<String> arrayList4 = new ArrayList<>();
                ArrayList<String> arrayList5 = new ArrayList<>();
                ArrayList<Integer> arrayList6 = new ArrayList<>();
                for (int i2 = 0; i2 < listZzk.size(); i2++) {
                    BillingFlowParams.ProductDetailsParams productDetailsParams2 = (BillingFlowParams.ProductDetailsParams) listZzk.get(i2);
                    ProductDetails productDetailsZza = productDetailsParams2.zza();
                    if (!productDetailsZza.zzb().isEmpty()) {
                        arrayList3.add(productDetailsZza.zzb());
                    }
                    String strZzb2 = productDetailsParams2.zzb();
                    arrayList4.add(strZzb2);
                    String strZzc = productDetailsZza.zzc(strZzb2);
                    if (!TextUtils.isEmpty(strZzc)) {
                        arrayList5.add(strZzc);
                    }
                    if (i2 > 0) {
                        arrayList.add(((BillingFlowParams.ProductDetailsParams) listZzk.get(i2)).zza().getProductId());
                        arrayList2.add(((BillingFlowParams.ProductDetailsParams) listZzk.get(i2)).zza().getProductType());
                    }
                }
                bundleZzf.putStringArrayList("SKU_OFFER_ID_TOKEN_LIST", arrayList4);
                if (!arrayList6.isEmpty()) {
                    bundleZzf.putIntegerArrayList("autoPayBalanceThresholdList", arrayList6);
                }
                if (!arrayList3.isEmpty()) {
                    bundleZzf.putStringArrayList("skuDetailsTokens", arrayList3);
                }
                if (!arrayList5.isEmpty()) {
                    bundleZzf.putStringArrayList("SKU_SERIALIZED_DOCID_LIST", arrayList5);
                }
                if (!arrayList.isEmpty()) {
                    bundleZzf.putStringArrayList("additionalSkus", arrayList);
                    bundleZzf.putStringArrayList("additionalSkuTypes", arrayList2);
                }
            } else {
                ArrayList<String> arrayList7 = new ArrayList<>();
                new ArrayList();
                new ArrayList();
                new ArrayList();
                new ArrayList();
                Iterator it2 = arrayListZzj.iterator();
                if (it2.hasNext()) {
                    throw null;
                }
                if (!arrayList7.isEmpty()) {
                    bundleZzf.putStringArrayList("skuDetailsTokens", arrayList7);
                }
                if (arrayListZzj.size() > 1) {
                    ArrayList<String> arrayList8 = new ArrayList<>(arrayListZzj.size() - 1);
                    ArrayList<String> arrayList9 = new ArrayList<>(arrayListZzj.size() - 1);
                    if (arrayListZzj.size() > 1) {
                        throw null;
                    }
                    bundleZzf.putStringArrayList("additionalSkus", arrayList8);
                    bundleZzf.putStringArrayList("additionalSkuTypes", arrayList9);
                }
            }
            if (bundleZzf.containsKey("SKU_OFFER_ID_TOKEN_LIST") && !this.zzr) {
                zzjn zzjnVar9 = zzjn.OFFER_ID_TOKEN_NOT_SUPPORTED;
                BillingResult billingResult9 = zzdc.zzq;
                zzby(zzjnVar9, 2, billingResult9, j3, z2);
                zzo(billingResult9);
                return billingResult9;
            }
            if (productDetailsParams == null || TextUtils.isEmpty(productDetailsParams.zza().zza())) {
                z = false;
            } else {
                bundleZzf.putString("skuPackageName", productDetailsParams.zza().zza());
                z = true;
            }
            if (!TextUtils.isEmpty(null)) {
                bundleZzf.putString("accountName", null);
            }
            Intent intent = activity.getIntent();
            if (intent == null) {
                com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Activity's intent is null.");
            } else if (!TextUtils.isEmpty(intent.getStringExtra("PROXY_PACKAGE"))) {
                String stringExtra = intent.getStringExtra("PROXY_PACKAGE");
                bundleZzf.putString("proxyPackage", stringExtra);
                try {
                    bundleZzf.putString("proxyPackageVersion", this.zzg.getPackageManager().getPackageInfo(stringExtra, 0).versionName);
                } catch (PackageManager.NameNotFoundException unused) {
                    bundleZzf.putString("proxyPackageVersion", "package not found");
                }
            }
            if (this.zzE) {
                i = 28;
            } else if (this.zzu && !listZzk.isEmpty()) {
                i = 17;
            } else if (this.zzs && z) {
                i = 15;
            } else {
                i = this.zzp ? 9 : 6;
            }
            final int i3 = i;
            final BillingFlowParams billingFlowParams2 = billingFlowParams;
            futureZzN = zzN(new Callable() { // from class: com.android.billingclient.api.zzah
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.zza.zzax(i3, productId, productType, billingFlowParams2, bundleZzf);
                }
            }, 5000L, null, this.zze, zzM());
            j2 = billingFlowParams2;
            j = j3;
        } else {
            j = jNextLong;
            futureZzN = zzN(new Callable() { // from class: com.android.billingclient.api.zzai
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.zza.zzay(productId, productType);
                }
            }, 5000L, null, this.zze, zzM());
            j2 = jNextLong;
        }
        try {
            if (futureZzN == null) {
                try {
                    zzjn zzjnVar10 = zzjn.MISSING_RESULT_FROM_EXECUTE_ASYNC;
                    BillingResult billingResult10 = zzdc.zzc;
                    zzby(zzjnVar10, 2, billingResult10, j, z2);
                    zzo(billingResult10);
                    return billingResult10;
                } catch (CancellationException e) {
                    e = e;
                    j2 = j;
                    com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "Time out while launching billing flow. Try to reconnect", e);
                    zzjn zzjnVar11 = zzjn.LAUNCH_BILLING_FLOW_TIMEOUT;
                    BillingResult billingResult11 = zzdc.zzk;
                    zzbz(zzjnVar11, 2, billingResult11, zzcy.zza(e), j2, z2);
                    zzo(billingResult11);
                    return billingResult11;
                } catch (TimeoutException e2) {
                    e = e2;
                    j2 = j;
                    com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "Time out while launching billing flow. Try to reconnect", e);
                    zzjn zzjnVar12 = zzjn.LAUNCH_BILLING_FLOW_TIMEOUT;
                    BillingResult billingResult12 = zzdc.zzk;
                    zzbz(zzjnVar12, 2, billingResult12, zzcy.zza(e), j2, z2);
                    zzo(billingResult12);
                    return billingResult12;
                } catch (Exception e3) {
                    e = e3;
                    j2 = j;
                    com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "Exception while launching billing flow. Try to reconnect", e);
                    zzjn zzjnVar13 = zzjn.LAUNCH_BILLING_FLOW_EXCEPTION;
                    BillingResult billingResult13 = zzdc.zzj;
                    zzbz(zzjnVar13, 2, billingResult13, zzcy.zza(e), j2, z2);
                    zzo(billingResult13);
                    return billingResult13;
                }
            }
            j2 = j;
            Bundle bundle = (Bundle) futureZzN.get(5000L, TimeUnit.MILLISECONDS);
            int iZzb = com.google.android.gms.internal.play_billing.zzc.zzb(bundle, "BillingClient");
            String strZzk = com.google.android.gms.internal.play_billing.zzc.zzk(bundle, "BillingClient");
            if (iZzb == 0) {
                Intent intent2 = new Intent(activity, (Class<?>) ProxyBillingActivity.class);
                intent2.putExtra("BUY_INTENT", (PendingIntent) bundle.getParcelable("BUY_INTENT"));
                intent2.putExtra("billingClientTransactionId", j2);
                intent2.putExtra("wasServiceAutoReconnected", z2);
                activity.startActivity(intent2);
                return zzdc.zzi;
            }
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Unable to buy item, Error response code: " + iZzb);
            BillingResult billingResultZza = zzdc.zza(iZzb, strZzk);
            try {
                if (bundle == null || (obj = bundle.get("LOG_REASON")) == null) {
                    zzjnVarZzb = zzjn.REASON_UNSPECIFIED;
                } else if (obj instanceof Integer) {
                    zzjnVarZzb = zzjn.zzb(((Integer) obj).intValue());
                } else {
                    com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Unexpected type for bundle log reason: " + obj.getClass().getName());
                    zzjnVarZzb = zzjn.REASON_UNSPECIFIED;
                }
            } catch (Throwable th) {
                com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Failed to get log reason from bundle: ".concat(String.valueOf(th.getMessage())));
                zzjnVarZzb = zzjn.REASON_UNSPECIFIED;
            }
            if (zzjnVarZzb == zzjn.REASON_UNSPECIFIED) {
                zzjnVarZzb = zzjn.BILLING_RESULT_RECEIVED_FROM_PHONESKY;
            }
            zzjn zzjnVar14 = zzjnVarZzb;
            if (bundle == null) {
                string = null;
            } else {
                try {
                    string = bundle.getString("ADDITIONAL_LOG_DETAILS");
                } catch (Throwable th2) {
                    com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Failed to get additional log details from bundle: ".concat(String.valueOf(th2.getMessage())));
                    string = null;
                }
            }
            try {
                zzbz(zzjnVar14, 2, billingResultZza, string, j2, z2);
                zzo(billingResultZza);
                return billingResultZza;
            } catch (CancellationException e4) {
                e = e4;
                j2 = j2;
                z2 = z2;
                com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "Time out while launching billing flow. Try to reconnect", e);
                zzjn zzjnVar15 = zzjn.LAUNCH_BILLING_FLOW_TIMEOUT;
                BillingResult billingResult14 = zzdc.zzk;
                zzbz(zzjnVar15, 2, billingResult14, zzcy.zza(e), j2, z2);
                zzo(billingResult14);
                return billingResult14;
            } catch (TimeoutException e5) {
                e = e5;
                j2 = j2;
                z2 = z2;
                com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "Time out while launching billing flow. Try to reconnect", e);
                zzjn zzjnVar16 = zzjn.LAUNCH_BILLING_FLOW_TIMEOUT;
                BillingResult billingResult15 = zzdc.zzk;
                zzbz(zzjnVar16, 2, billingResult15, zzcy.zza(e), j2, z2);
                zzo(billingResult15);
                return billingResult15;
            } catch (Exception e6) {
                e = e6;
                j2 = j2;
                z2 = z2;
                com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "Exception while launching billing flow. Try to reconnect", e);
                zzjn zzjnVar17 = zzjn.LAUNCH_BILLING_FLOW_EXCEPTION;
                BillingResult billingResult16 = zzdc.zzj;
                zzbz(zzjnVar17, 2, billingResult16, zzcy.zza(e), j2, z2);
                zzo(billingResult16);
                return billingResult16;
            }
        } catch (CancellationException e7) {
            e = e7;
        } catch (TimeoutException e8) {
            e = e8;
        } catch (Exception e9) {
            e = e9;
            com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "Exception while launching billing flow. Try to reconnect", e);
            zzjn zzjnVar18 = zzjn.LAUNCH_BILLING_FLOW_EXCEPTION;
            BillingResult billingResult17 = zzdc.zzj;
            zzbz(zzjnVar18, 2, billingResult17, zzcy.zza(e), j2, z2);
            zzo(billingResult17);
            return billingResult17;
        }
        com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "Time out while launching billing flow. Try to reconnect", e);
        zzjn zzjnVar19 = zzjn.LAUNCH_BILLING_FLOW_TIMEOUT;
        BillingResult billingResult18 = zzdc.zzk;
        zzbz(zzjnVar19, 2, billingResult18, zzcy.zza(e), j2, z2);
        zzo(billingResult18);
        return billingResult18;
    }

    @Override // com.android.billingclient.api.BillingClient
    public void launchExternalLink(final Activity activity, final LaunchExternalLinkParams launchExternalLinkParams, final LaunchExternalLinkResponseListener launchExternalLinkResponseListener) {
        if (activity == null) {
            throw new IllegalArgumentException("Please provide a valid activity.");
        }
        try {
            try {
                zzaQ(new Callable() { // from class: com.android.billingclient.api.zzau
                    @Override // java.util.concurrent.Callable
                    public final Object call() throws RemoteException {
                        BillingClientImpl.zzG(this.zza, launchExternalLinkResponseListener, launchExternalLinkParams, activity);
                        return null;
                    }
                }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzaw
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zza.zzbc(launchExternalLinkResponseListener, zzdc.zzk, zzjn.EXECUTE_ASYNC_TIMEOUT, null);
                    }
                }, zzaz());
            } catch (Exception e) {
                e = e;
                zzbc(launchExternalLinkResponseListener, zzaC(), zzjn.SERVICE_CALL_EXCEPTION, e);
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public void queryProductDetailsAsync(final QueryProductDetailsParams queryProductDetailsParams, final ProductDetailsResponseListener productDetailsResponseListener) {
        if (zzN(new Callable() { // from class: com.android.billingclient.api.zzbh
            @Override // java.util.concurrent.Callable
            public final Object call() throws JSONException {
                BillingClientImpl.zzw(this.zza, productDetailsResponseListener, queryProductDetailsParams);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzbi
            @Override // java.lang.Runnable
            public final void run() {
                BillingClientImpl.zzW(this.zza, productDetailsResponseListener);
            }
        }, zzaz(), zzM()) == null) {
            BillingResult billingResultZzaC = zzaC();
            zzbv(zzjn.MISSING_RESULT_FROM_EXECUTE_ASYNC, 7, billingResultZzaC);
            productDetailsResponseListener.onProductDetailsResponse(billingResultZzaC, new QueryProductDetailsResult(com.google.android.gms.internal.play_billing.zzca.zzk(), com.google.android.gms.internal.play_billing.zzca.zzk()));
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public final void queryPurchasesAsync(QueryPurchasesParams queryPurchasesParams, final PurchasesResponseListener purchasesResponseListener) {
        if (zzN(new zzbm(this, purchasesResponseListener, queryPurchasesParams.zza(), queryPurchasesParams.getIncludeSuspendedSubscriptions()), 30000L, new Runnable() { // from class: com.android.billingclient.api.zzae
            @Override // java.lang.Runnable
            public final void run() {
                BillingClientImpl.zzP(this.zza, purchasesResponseListener);
            }
        }, zzaz(), zzM()) == null) {
            BillingResult billingResultZzaC = zzaC();
            zzbv(zzjn.MISSING_RESULT_FROM_EXECUTE_ASYNC, 9, billingResultZzaC);
            purchasesResponseListener.onQueryPurchasesResponse(billingResultZzaC, com.google.android.gms.internal.play_billing.zzca.zzk());
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public BillingResult showAlternativeBillingOnlyInformationDialog(final Activity activity, final AlternativeBillingOnlyInformationDialogListener alternativeBillingOnlyInformationDialogListener) {
        if (activity == null) {
            throw new IllegalArgumentException("Please provide a valid activity.");
        }
        if (!zzbn(zzdl.zzc())) {
            zzjn zzjnVar = zzjn.SERVICE_CONNECTION_NOT_READY;
            BillingResult billingResult = zzdc.zzj;
            zzbv(zzjnVar, 16, billingResult);
            return billingResult;
        }
        if (!this.zzy) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Current Play Store version doesn't support alternative billing only.");
            zzjn zzjnVar2 = zzjn.ALTERNATIVE_BILLING_ONLY_NOT_SUPPORTED;
            BillingResult billingResult2 = zzdc.zzD;
            zzbv(zzjnVar2, 16, billingResult2);
            return billingResult2;
        }
        Handler handler = this.zze;
        final zzbo zzboVar = new zzbo(this, handler, alternativeBillingOnlyInformationDialogListener);
        if (zzN(new Callable() { // from class: com.android.billingclient.api.zzaj
            @Override // java.util.concurrent.Callable
            public final Object call() throws Exception {
                BillingClientImpl.zzD(this.zza, alternativeBillingOnlyInformationDialogListener, activity, zzboVar);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzak
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzbd(alternativeBillingOnlyInformationDialogListener, zzdc.zzk, zzjn.EXECUTE_ASYNC_TIMEOUT, null);
            }
        }, handler, zzM()) != null) {
            return zzdc.zzi;
        }
        BillingResult billingResultZzaC = zzaC();
        zzbv(zzjn.MISSING_RESULT_FROM_EXECUTE_ASYNC, 16, billingResultZzaC);
        return billingResultZzaC;
    }

    @Override // com.android.billingclient.api.BillingClient
    public BillingResult showExternalOfferInformationDialog(final Activity activity, final ExternalOfferInformationDialogListener externalOfferInformationDialogListener) {
        if (activity == null) {
            throw new IllegalArgumentException("Please provide a valid activity.");
        }
        if (!zzbn(zzdl.zzc())) {
            zzjn zzjnVar = zzjn.SERVICE_CONNECTION_NOT_READY;
            BillingResult billingResult = zzdc.zzj;
            zzbv(zzjnVar, 25, billingResult);
            return billingResult;
        }
        if (!this.zzz) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Current Play Store version doesn't support external offer.");
            zzjn zzjnVar2 = zzjn.EXTERNAL_OFFER_NOT_SUPPORTED;
            BillingResult billingResult2 = zzdc.zzu;
            zzbv(zzjnVar2, 25, billingResult2);
            return billingResult2;
        }
        Handler handler = this.zze;
        final zzbp zzbpVar = new zzbp(this, handler, externalOfferInformationDialogListener);
        if (zzN(new Callable() { // from class: com.android.billingclient.api.zzbf
            @Override // java.util.concurrent.Callable
            public final Object call() throws Exception {
                BillingClientImpl.zzI(this.zza, externalOfferInformationDialogListener, activity, zzbpVar);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzbg
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzba(externalOfferInformationDialogListener, zzdc.zzk, zzjn.EXECUTE_ASYNC_TIMEOUT, null);
            }
        }, handler, zzM()) != null) {
            return zzdc.zzi;
        }
        BillingResult billingResultZzaC = zzaC();
        zzbv(zzjn.MISSING_RESULT_FROM_EXECUTE_ASYNC, 25, billingResultZzaC);
        return billingResultZzaC;
    }

    @Override // com.android.billingclient.api.BillingClient
    public final BillingResult showInAppMessages(final Activity activity, InAppMessageParams inAppMessageParams, InAppMessageResponseListener inAppMessageResponseListener) {
        if (!zzbn(zzdl.zzc())) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Service disconnected.");
            return zzdc.zzj;
        }
        if (!this.zzq) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Current client doesn't support showing in-app messages.");
            return zzdc.zzt;
        }
        View viewFindViewById = activity.findViewById(R.id.content);
        IBinder windowToken = viewFindViewById.getWindowToken();
        if (windowToken == null) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Could not retrieve the window token from the activity instance.");
        }
        Rect rect = new Rect();
        viewFindViewById.getGlobalVisibleRect(rect);
        final Bundle bundle = new Bundle();
        BundleCompat.putBinder(bundle, "KEY_WINDOW_TOKEN", windowToken);
        bundle.putInt("KEY_DIMEN_LEFT", rect.left);
        bundle.putInt("KEY_DIMEN_TOP", rect.top);
        bundle.putInt("KEY_DIMEN_RIGHT", rect.right);
        bundle.putInt("KEY_DIMEN_BOTTOM", rect.bottom);
        bundle.putString("playBillingLibraryVersion", this.zzc);
        String str = this.zzd;
        if (str != null) {
            bundle.putString("playBillingLibraryWrapperVersion", str);
        }
        bundle.putIntegerArrayList("KEY_CATEGORY_IDS", inAppMessageParams.zza());
        Handler handler = this.zze;
        final zzbn zzbnVar = new zzbn(this, handler, inAppMessageResponseListener);
        zzN(new Callable() { // from class: com.android.billingclient.api.zzbj
            @Override // java.util.concurrent.Callable
            public final Object call() throws Exception {
                BillingClientImpl.zzy(this.zza, bundle, activity, zzbnVar);
                return null;
            }
        }, 5000L, null, handler, zzM());
        return zzdc.zzi;
    }

    @Override // com.android.billingclient.api.BillingClient
    public void startConnection(BillingClientStateListener billingClientStateListener) {
        zzbl(billingClientStateListener, 0);
    }

    final synchronized ExecutorService zzM() {
        if (this.zzK == null) {
            this.zzK = Executors.newFixedThreadPool(com.google.android.gms.internal.play_billing.zzc.zza, new zzbl(this));
        }
        return this.zzK;
    }

    public final void zzas(Runnable runnable) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            runnable.run();
        } else {
            this.zze.post(runnable);
        }
    }

    final zzch zzi(QueryProductDetailsParams queryProductDetailsParams) throws JSONException {
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        String strZzb = queryProductDetailsParams.zzb();
        com.google.android.gms.internal.play_billing.zzca zzcaVarZza = queryProductDetailsParams.zza();
        int size = zzcaVarZza.size();
        int i = 0;
        while (i < size) {
            int i2 = i + 20;
            ArrayList<QueryProductDetailsParams.Product> arrayList3 = new ArrayList(zzcaVarZza.subList(i, i2 > size ? size : i2));
            ArrayList<String> arrayList4 = new ArrayList<>();
            int size2 = arrayList3.size();
            for (int i3 = 0; i3 < size2; i3++) {
                arrayList4.add(((QueryProductDetailsParams.Product) arrayList3.get(i3)).zza());
            }
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("ITEM_ID_LIST", arrayList4);
            String str = this.zzc;
            bundle.putString("playBillingLibraryVersion", str);
            try {
                synchronized (this.zza) {
                    zzarVar = this.zzi;
                }
                if (zzarVar == null) {
                    return zzaA(zzdc.zzj, zzjn.SERVICE_RESET_TO_NULL, "Service has been reset to null.", null);
                }
                boolean z = this.zzw && this.zzF.isEnabledForPrepaidPlans();
                zzaH(queryProductDetailsParams);
                zzaH(queryProductDetailsParams);
                zzaH(queryProductDetailsParams);
                zzaH(queryProductDetailsParams);
                Bundle bundleZzj = zzarVar.zzj(true != this.zzx ? 17 : 20, this.zzg.getPackageName(), strZzb, bundle, com.google.android.gms.internal.play_billing.zzc.zzg(str, this.zzd, arrayList3, null, null, com.google.android.gms.internal.play_billing.zza.zza(z, true, true, true, false, true), this.zzL.longValue()));
                if (bundleZzj == null) {
                    return zzaA(zzdc.zzB, zzjn.NULL_BUNDLE_FROM_GET_SKU_DETAILS_SERVICE_CALL, "queryProductDetailsAsync got empty product details response.", null);
                }
                if (!bundleZzj.containsKey("DETAILS_LIST")) {
                    int iZzb = com.google.android.gms.internal.play_billing.zzc.zzb(bundleZzj, "BillingClient");
                    String strZzk = com.google.android.gms.internal.play_billing.zzc.zzk(bundleZzj, "BillingClient");
                    if (iZzb == 0) {
                        return zzaA(zzdc.zza(6, strZzk), zzjn.MISSING_DETAILS_LIST_IN_GET_SKU_DETAILS_RESPONSE, "getSkuDetails() returned a bundle with neither an error nor a product detail list for queryProductDetailsAsync.", null);
                    }
                    return zzaA(zzdc.zza(iZzb, strZzk), zzjn.BILLING_RESULT_RECEIVED_FROM_PHONESKY, "getSkuDetails() failed for queryProductDetailsAsync. Response code: " + iZzb, null);
                }
                ArrayList<String> stringArrayList = bundleZzj.getStringArrayList("DETAILS_LIST");
                if (stringArrayList == null) {
                    return zzaA(zzdc.zzB, zzjn.NULL_DETAILS_LIST_IN_GET_SKU_DETAILS_RESPONSE, "queryProductDetailsAsync got null response list", null);
                }
                ArrayList arrayList5 = new ArrayList();
                int size3 = stringArrayList.size();
                for (int i4 = 0; i4 < size3; i4++) {
                    try {
                        ProductDetails productDetails = new ProductDetails(stringArrayList.get(i4));
                        com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Got product details: ".concat(productDetails.toString()));
                        arrayList5.add(productDetails);
                    } catch (JSONException e) {
                        return zzaA(zzdc.zza(6, "Error trying to decode SkuDetails."), zzjn.ERROR_DECODING_SKU_DETAILS, "Got a JSON exception trying to decode ProductDetails. \n Exception: ", e);
                    }
                }
                ArrayList<String> stringArrayList2 = bundleZzj.getStringArrayList("UNFETCHED_PRODUCT_LIST");
                new ArrayList();
                try {
                    ArrayList arrayList6 = new ArrayList();
                    if (stringArrayList2 == null) {
                        for (QueryProductDetailsParams.Product product : arrayList3) {
                            Iterator it = arrayList5.iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    arrayList6.add(new UnfetchedProduct(new JSONObject().put(InAppPurchaseMetaData.KEY_PRODUCT_ID, product.zza()).put("type", product.zzb()).put("statusCode", 0).toString()));
                                    break;
                                }
                                ProductDetails productDetails2 = (ProductDetails) it.next();
                                if (product.zza().equals(productDetails2.getProductId()) && product.zzb().equals(productDetails2.getProductType())) {
                                    break;
                                }
                            }
                        }
                    } else {
                        Iterator<String> it2 = stringArrayList2.iterator();
                        while (it2.hasNext()) {
                            UnfetchedProduct unfetchedProduct = new UnfetchedProduct(it2.next());
                            com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Got unfetchedProduct: ".concat(unfetchedProduct.toString()));
                            arrayList6.add(unfetchedProduct);
                        }
                    }
                    arrayList.addAll(arrayList5);
                    arrayList2.addAll(arrayList6);
                    i = i2;
                } catch (JSONException e2) {
                    return zzaA(zzdc.zza(6, "Error trying to decode SkuDetails."), zzjn.ERROR_DECODING_SKU_DETAILS, "Got a JSON exception trying to decode UnfetchedProduct. \n Exception: ", e2);
                }
            } catch (DeadObjectException e3) {
                return zzaA(zzdc.zzj, zzjn.GET_SKU_DETAILS_SERVICE_CALL_EXCEPTION, "queryProductDetailsAsync got a remote exception (try to reconnect).", e3);
            } catch (Exception e4) {
                return zzaA(zzdc.zzh, zzjn.GET_SKU_DETAILS_SERVICE_CALL_EXCEPTION, "queryProductDetailsAsync got a remote exception (try to reconnect).", e4);
            }
        }
        return new zzch(0, "", arrayList, arrayList2);
    }

    final zzcz zzl() {
        return this.zzh;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final BillingResult zzo(final BillingResult billingResult) {
        if (Thread.interrupted()) {
            return billingResult;
        }
        this.zze.post(new Runnable() { // from class: com.android.billingclient.api.zzam
            @Override // java.lang.Runnable
            public final void run() {
                BillingClientImpl.zzY(this.zza, billingResult);
            }
        });
        return billingResult;
    }
}
