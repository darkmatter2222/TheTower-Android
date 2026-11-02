package com.ironsource.adapters.applovin;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.applovin.sdk.AppLovinErrorCodes;
import com.applovin.sdk.AppLovinMediationProvider;
import com.applovin.sdk.AppLovinPrivacySettings;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkConfiguration;
import com.applovin.sdk.AppLovinSdkInitializationConfiguration;
import com.ironsource.C3510b4;
import com.ironsource.mediationsdk.adunit.adapter.listener.NetworkInitializationListener;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdData;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdapterErrorType;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.metadata.MetaDataUtils;
import com.tapjoy.TJAdUnitConstants;
import com.unity3d.mediation.LevelPlay;
import com.unity3d.mediation.adapters.levelplay.LevelPlayBaseAdapter;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import p005kotlin.Metadata;
import p005kotlin.enums.EnumEntries;
import p005kotlin.enums.EnumEntriesKt;
import p005kotlin.jvm.JvmStatic;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AppLovinAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010!\n\u0002\b\u0004\u0018\u0000  2\u00020\u0001:\u0001 B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\b\u0010\b\u001a\u00020\u0007H\u0016J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\"\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u000eH\u0002J\u0010\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u0007H\u0002J\u0010\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\nH\u0016J$\u0010\u001a\u001a\u00020\u000e2\b\u0010\u001b\u001a\u0004\u0018\u00010\u00072\u0010\u0010\u001c\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u001dH\u0016J\u0010\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020\nH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcom/ironsource/adapters/applovin/AppLovinAdapter;", "Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseAdapter;", "<init>", "()V", "mainHandler", "Landroid/os/Handler;", "getAdapterVersion", "", "getNetworkSDKVersion", "isUsingActivityBeforeImpression", "", "adFormat", "Lcom/unity3d/mediation/LevelPlay$AdFormat;", "init", "", "adData", "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;", "context", "Landroid/content/Context;", "networkInitializationListener", "Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;", "initializationSuccess", "initializationFailure", TJAdUnitConstants.String.MESSAGE, "setConsent", C3510b4.j.b0, "setMetaData", C3510b4.i.W, TJAdUnitConstants.String.USAGE_TRACKER_VALUES, "", "setCCPAValue", "value", "Companion", "applovinadapter_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AppLovinAdapter extends LevelPlayBaseAdapter {
    private static final String GitHash = "692dd46";
    private static AppLovinSdk appLovinSdk;
    private final Handler mainHandler = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final AtomicBoolean wasInitCalled = new AtomicBoolean(false);
    private static Companion.InitState initState = Companion.InitState.INIT_STATE_NONE;
    private static final CopyOnWriteArrayList<NetworkInitializationListener> initListeners = new CopyOnWriteArrayList<>();

    /* JADX INFO: compiled from: AppLovinAdapter.kt */
    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001:\u0001\u0018B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\u0010\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\b\u0010\u0017\u001a\u00020\u0005H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\"\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u000e@BX\u0080\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0019"}, d2 = {"Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion;", "", "<init>", "()V", "GitHash", "", "wasInitCalled", "Ljava/util/concurrent/atomic/AtomicBoolean;", "initState", "Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion$InitState;", "initListeners", "Ljava/util/concurrent/CopyOnWriteArrayList;", "Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;", "value", "Lcom/applovin/sdk/AppLovinSdk;", "appLovinSdk", "getAppLovinSdk$applovinadapter_release", "()Lcom/applovin/sdk/AppLovinSdk;", "getLoadErrorType", "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;", "errorCode", "", "getErrorString", "networkAdapterVersion", "InitState", "applovinadapter_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {

        /* JADX INFO: compiled from: AppLovinAdapter.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion$InitState;", "", "<init>", "(Ljava/lang/String;I)V", "INIT_STATE_NONE", "INIT_STATE_IN_PROGRESS", "INIT_STATE_SUCCESS", "INIT_STATE_FAILED", "applovinadapter_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public enum InitState {
            INIT_STATE_NONE,
            INIT_STATE_IN_PROGRESS,
            INIT_STATE_SUCCESS,
            INIT_STATE_FAILED;

            private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

            public static EnumEntries<InitState> getEntries() {
                return $ENTRIES;
            }
        }

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final AppLovinSdk getAppLovinSdk$applovinadapter_release() {
            return AppLovinAdapter.appLovinSdk;
        }

        @JvmStatic
        public final String getErrorString(int errorCode) {
            if (errorCode == -1009) {
                return AppLovinConstants.Logs.ERROR_NO_NETWORK;
            }
            if (errorCode == -900) {
                return AppLovinConstants.Logs.ERROR_INVALID_URL;
            }
            if (errorCode == -800) {
                return AppLovinConstants.Logs.ERROR_INVALID_RESPONSE;
            }
            if (errorCode == -600) {
                return AppLovinConstants.Logs.ERROR_INCENTIVIZED_USER_CLOSED_VIDEO;
            }
            if (errorCode == -500) {
                return AppLovinConstants.Logs.ERROR_INCENTIVIZED_SERVER_TIMEOUT;
            }
            if (errorCode == -400) {
                return AppLovinConstants.Logs.ERROR_INCENTIVIZED_UNKNOWN_SERVER_ERROR;
            }
            if (errorCode == -300) {
                return AppLovinConstants.Logs.ERROR_INCENTIVIZED_NO_AD_PRELOADED;
            }
            if (errorCode == -22) {
                return AppLovinConstants.Logs.ERROR_SDK_DISABLED;
            }
            if (errorCode == -1) {
                return AppLovinConstants.Logs.ERROR_UNSPECIFIED;
            }
            if (errorCode == 204) {
                return AppLovinConstants.Logs.ERROR_NO_FILL;
            }
            if (errorCode == -1001) {
                return AppLovinConstants.Logs.ERROR_FETCH_AD_TIMEOUT;
            }
            if (errorCode == -1000) {
                return AppLovinConstants.Logs.ERROR_INVALID_BODY;
            }
            if (errorCode == -8) {
                return AppLovinConstants.Logs.ERROR_INVALID_AD_TOKEN;
            }
            if (errorCode == -7) {
                return AppLovinConstants.Logs.ERROR_INVALID_ZONE;
            }
            if (errorCode == -6) {
                return AppLovinConstants.Logs.ERROR_UNABLE_TO_RENDER_AD;
            }
            switch (errorCode) {
                case AppLovinErrorCodes.UNABLE_TO_PRECACHE_HTML_RESOURCES /* -203 */:
                    return AppLovinConstants.Logs.ERROR_UNABLE_TO_PRECACHE_HTML_RESOURCES;
                case AppLovinErrorCodes.UNABLE_TO_PRECACHE_VIDEO_RESOURCES /* -202 */:
                    return AppLovinConstants.Logs.ERROR_UNABLE_TO_PRECACHE_VIDEO_RESOURCES;
                case AppLovinErrorCodes.UNABLE_TO_PRECACHE_IMAGE_RESOURCES /* -201 */:
                    return AppLovinConstants.Logs.ERROR_UNABLE_TO_PRECACHE_IMAGE_RESOURCES;
                case AppLovinErrorCodes.UNABLE_TO_PRECACHE_RESOURCES /* -200 */:
                    return AppLovinConstants.Logs.ERROR_UNABLE_TO_PRECACHE_RESOURCES;
                default:
                    return AppLovinConstants.Logs.ERROR_UNKNOWN;
            }
        }

        @JvmStatic
        public final AdapterErrorType getLoadErrorType(int errorCode) {
            return errorCode == 204 ? AdapterErrorType.ADAPTER_ERROR_TYPE_NO_FILL : AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL;
        }

        @JvmStatic
        public final String networkAdapterVersion() {
            return "5.9.0";
        }
    }

    @JvmStatic
    public static final String getErrorString(int i) {
        return INSTANCE.getErrorString(i);
    }

    @JvmStatic
    public static final AdapterErrorType getLoadErrorType(int i) {
        return INSTANCE.getLoadErrorType(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void init$lambda$3(String str, final AppLovinAdapter appLovinAdapter, Context context) {
        try {
            AppLovinSdkInitializationConfiguration appLovinSdkInitializationConfigurationBuild = AppLovinSdkInitializationConfiguration.builder(str).setMediationProvider(AppLovinMediationProvider.IRONSOURCE).build();
            AppLovinSdk appLovinSdk2 = AppLovinSdk.getInstance(context.getApplicationContext());
            appLovinSdk2.getSettings().setVerboseLogging(appLovinAdapter.isAdaptersDebugEnabled());
            appLovinSdk = appLovinSdk2;
            if (appLovinSdk2 != null) {
                appLovinSdk2.initialize(appLovinSdkInitializationConfigurationBuild, new AppLovinSdk.SdkInitializationListener() { // from class: com.ironsource.adapters.applovin.AppLovinAdapter$$ExternalSyntheticLambda1
                    @Override // com.applovin.sdk.AppLovinSdk.SdkInitializationListener
                    public final void onSdkInitialized(AppLovinSdkConfiguration appLovinSdkConfiguration) {
                        this.f$0.initializationSuccess();
                    }
                });
            }
        } catch (Throwable th) {
            String message = th.getMessage();
            if (message == null) {
                message = "";
            }
            appLovinAdapter.initializationFailure(message);
        }
    }

    private final void initializationFailure(String message) {
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        String str = String.format("Failed to initialize SDK - %s", Arrays.copyOf(new Object[]{message}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.error(str);
        initState = Companion.InitState.INIT_STATE_FAILED;
        Iterator<NetworkInitializationListener> it = initListeners.iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        while (it.hasNext()) {
            NetworkInitializationListener next = it.next();
            Intrinsics.checkNotNullExpressionValue(next, "next(...)");
            next.onInitFailed(1000, AppLovinConstants.Logs.SDK_INIT_FAILED);
        }
        initListeners.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void initializationSuccess() {
        IronLog.ADAPTER_CALLBACK.verbose();
        initState = Companion.InitState.INIT_STATE_SUCCESS;
        Iterator<NetworkInitializationListener> it = initListeners.iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        while (it.hasNext()) {
            NetworkInitializationListener next = it.next();
            Intrinsics.checkNotNullExpressionValue(next, "next(...)");
            next.onInitSuccess();
        }
        initListeners.clear();
    }

    @JvmStatic
    public static final String networkAdapterVersion() {
        return INSTANCE.networkAdapterVersion();
    }

    private final void setCCPAValue(boolean value) {
        IronLog ironLog = IronLog.ADAPTER_API;
        String str = String.format("value = %s", Arrays.copyOf(new Object[]{Boolean.valueOf(value)}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.verbose(str);
        AppLovinPrivacySettings.setDoNotSell(value);
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBaseInterface
    public String getAdapterVersion() {
        return "5.9.0";
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBaseInterface
    public String getNetworkSDKVersion() {
        String VERSION = AppLovinSdk.VERSION;
        Intrinsics.checkNotNullExpressionValue(VERSION, "VERSION");
        return VERSION;
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBaseInterface
    public void init(AdData adData, final Context context, NetworkInitializationListener networkInitializationListener) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        Intrinsics.checkNotNullParameter(context, "context");
        final String string = adData.getString(AppLovinConstants.SDK_KEY);
        String str = string;
        if (str == null || str.length() == 0) {
            String str2 = String.format("Missing params - %s", Arrays.copyOf(new Object[]{AppLovinConstants.SDK_KEY}, 1));
            Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
            IronLog.INTERNAL.error(str2);
            if (networkInitializationListener != null) {
                networkInitializationListener.onInitFailed(1002, str2);
                return;
            }
            return;
        }
        String string2 = adData.getString("zoneId");
        if (string2 == null || string2.length() == 0) {
            String str3 = String.format("Missing params - %s", Arrays.copyOf(new Object[]{"zoneId"}, 1));
            Intrinsics.checkNotNullExpressionValue(str3, "format(...)");
            IronLog.INTERNAL.error(str3);
            if (networkInitializationListener != null) {
                networkInitializationListener.onInitFailed(1002, str3);
                return;
            }
            return;
        }
        if (initState == Companion.InitState.INIT_STATE_SUCCESS) {
            if (networkInitializationListener != null) {
                networkInitializationListener.onInitSuccess();
                return;
            }
            return;
        }
        if (initState == Companion.InitState.INIT_STATE_FAILED) {
            IronLog.INTERNAL.error(AppLovinConstants.Logs.SDK_INIT_FAILED);
            if (networkInitializationListener != null) {
                networkInitializationListener.onInitFailed(1000, AppLovinConstants.Logs.SDK_INIT_FAILED);
                return;
            }
            return;
        }
        if ((initState == Companion.InitState.INIT_STATE_NONE || initState == Companion.InitState.INIT_STATE_IN_PROGRESS) && networkInitializationListener != null) {
            initListeners.add(networkInitializationListener);
        }
        if (wasInitCalled.compareAndSet(false, true)) {
            initState = Companion.InitState.INIT_STATE_IN_PROGRESS;
            IronLog ironLog = IronLog.ADAPTER_API;
            String str4 = String.format(AppLovinConstants.Logs.SDK_KEY, Arrays.copyOf(new Object[]{string}, 1));
            Intrinsics.checkNotNullExpressionValue(str4, "format(...)");
            ironLog.verbose(str4);
            this.mainHandler.post(new Runnable() { // from class: com.ironsource.adapters.applovin.AppLovinAdapter$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    AppLovinAdapter.init$lambda$3(string, this, context);
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.BaseAdapter, com.ironsource.mediationsdk.adunit.adapter.internal.AdapterSettingsInterface
    public boolean isUsingActivityBeforeImpression(LevelPlay.AdFormat adFormat) {
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        return false;
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.BaseAdapter, com.ironsource.mediationsdk.adunit.adapter.internal.AdapterConsentInterface
    public void setConsent(boolean consent) {
        IronLog ironLog = IronLog.ADAPTER_API;
        String str = String.format("consent = %s", Arrays.copyOf(new Object[]{Boolean.valueOf(consent)}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.verbose(str);
        AppLovinPrivacySettings.setHasUserConsent(consent);
    }

    @Override // com.unity3d.mediation.adapters.levelplay.LevelPlayBaseAdapter, com.ironsource.mediationsdk.adunit.adapter.internal.AdapterMetaDataInterface
    public void setMetaData(String key, List<String> values) {
        String str;
        List<String> list = values;
        if (list == null || list.isEmpty() || (str = values.get(0)) == null) {
            return;
        }
        IronLog ironLog = IronLog.ADAPTER_API;
        String str2 = String.format("key = %s, value = %s", Arrays.copyOf(new Object[]{key == null ? "" : key, str}, 2));
        Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
        ironLog.verbose(str2);
        if (MetaDataUtils.isValidCCPAMetaData(key, str)) {
            setCCPAValue(MetaDataUtils.getMetaDataBooleanValue(str));
        }
    }
}
