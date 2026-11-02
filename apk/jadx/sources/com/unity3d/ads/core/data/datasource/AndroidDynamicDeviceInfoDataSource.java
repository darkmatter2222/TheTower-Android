package com.unity3d.ads.core.data.datasource;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Environment;
import android.os.LocaleList;
import android.os.SystemClock;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import com.google.firebase.remoteconfig.RemoteConfigComponent;
import com.ironsource.C3510b4;
import com.ironsource.X3;
import com.unity3d.ads.core.data.repository.AccelerometerRepository;
import com.unity3d.ads.core.log.Logger;
import com.unity3d.ads.core.utils.GetExternalStorageDirKt;
import com.unity3d.ads.core.utils.GetMemoryValueFromStringKt;
import com.unity3d.services.core.device.AdvertisingId;
import com.unity3d.services.core.device.Device;
import com.unity3d.services.core.device.MimeTypes;
import com.unity3d.services.core.device.OpenAdvertisingId;
import gatewayprotocol.v1.DynamicDeviceInfoKt;
import gatewayprotocol.v1.DynamicDeviceInfoOuterClass;
import gatewayprotocol.v1.NetworkCapabilityTransportsOuterClass;
import java.io.File;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import p005kotlin.Deprecated;
import p005kotlin.Metadata;
import p005kotlin.TuplesKt;
import p005kotlin.Unit;
import p005kotlin.collections.MapsKt;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.math.MathKt;

/* JADX INFO: compiled from: AndroidDynamicDeviceInfoDataSource.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000°\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u0006\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0005\u0018\u0000 k2\u00020\u0001:\u0001kB)\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0012H\u0016J\b\u0010\u001a\u001a\u00020\u001bH\u0002J\b\u0010\u001c\u001a\u00020\u0011H\u0016J\b\u0010\u001d\u001a\u00020\u0011H\u0002J\b\u0010\u001e\u001a\u00020\u001fH\u0002J\b\u0010 \u001a\u00020\u0012H\u0002J\b\u0010!\u001a\u00020\"H\u0016J\b\u0010#\u001a\u00020$H\u0003J\b\u0010%\u001a\u00020\u0012H\u0002J\b\u0010&\u001a\u00020\u0011H\u0016J\b\u0010'\u001a\u00020\u0011H\u0002J\u0006\u0010(\u001a\u00020\u0011J\b\u0010)\u001a\u00020$H\u0016J\b\u0010*\u001a\u00020$H\u0016J\b\u0010+\u001a\u00020\u0012H\u0002J\b\u0010,\u001a\u00020\u0012H\u0002J\b\u0010-\u001a\u00020$H\u0016J\b\u0010.\u001a\u00020/H\u0016J\b\u00100\u001a\u00020/H\u0016J\u0010\u00101\u001a\u00020/2\u0006\u00102\u001a\u00020$H\u0002J\u000e\u00103\u001a\u00020/2\u0006\u00102\u001a\u00020$J\u0006\u00104\u001a\u00020$J\u0012\u00105\u001a\u00020\u001f2\b\u00106\u001a\u0004\u0018\u00010\u0014H\u0003J\u0012\u00107\u001a\u00020\u001f2\b\u00106\u001a\u0004\u0018\u00010\u0014H\u0002J\u000f\u00108\u001a\u0004\u0018\u00010\u0014H\u0001¢\u0006\u0002\b9J\b\u0010:\u001a\u00020/H\u0016J\b\u0010;\u001a\u00020$H\u0016J\u0006\u0010<\u001a\u00020\u001fJ\u0006\u0010=\u001a\u00020\u001fJ\u0010\u0010>\u001a\u00020\u001f2\u0006\u0010?\u001a\u00020@H\u0002J\b\u0010A\u001a\u00020\u0012H\u0002J\b\u0010B\u001a\u00020\u0012H\u0002J\b\u0010C\u001a\u00020\u0012H\u0002J\b\u0010D\u001a\u00020\u001fH\u0002J\b\u0010E\u001a\u00020\u001fH\u0002J\u0012\u0010F\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u0010J\b\u0010G\u001a\u00020\u0012H\u0016J\b\u0010H\u001a\u00020\u0012H\u0002J\b\u0010I\u001a\u00020\u0012H\u0002J\b\u0010J\u001a\u00020\u001fH\u0002J\n\u0010K\u001a\u0004\u0018\u00010LH\u0002J\n\u0010M\u001a\u0004\u0018\u00010NH\u0002J\n\u0010O\u001a\u0004\u0018\u00010PH\u0002J\b\u0010Q\u001a\u00020\u0012H\u0016J\b\u0010R\u001a\u00020\u0012H\u0002J\b\u0010S\u001a\u00020\u0012H\u0003J\b\u0010Y\u001a\u00020\u0011H\u0016J\b\u0010Z\u001a\u00020\u0011H\u0016J\b\u0010[\u001a\u00020$H\u0016J\u000e\u0010\\\u001a\b\u0012\u0004\u0012\u00020\u00110]H\u0016J\b\u0010^\u001a\u00020\u0012H\u0002J\u0006\u0010_\u001a\u00020$J\u0006\u0010`\u001a\u00020\u0012J\u0006\u0010a\u001a\u00020\u0012J\u0006\u0010b\u001a\u00020cJ\u0006\u0010d\u001a\u00020\u001fJ\u0006\u0010e\u001a\u00020\u001fJ\b\u0010f\u001a\u00020gH\u0007J\b\u0010h\u001a\u00020gH\u0007J\b\u0010i\u001a\u00020$H\u0007J\b\u0010j\u001a\u00020\u0012H\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\u000e\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00120\u00100\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010T\u001a\b\u0012\u0004\u0012\u00020V0UX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\bW\u0010X¨\u0006l"}, d2 = {"Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource;", "Lcom/unity3d/ads/core/data/datasource/DynamicDeviceInfoDataSource;", "context", "Landroid/content/Context;", "lifecycleDataSource", "Lcom/unity3d/ads/core/data/datasource/LifecycleDataSource;", "logger", "Lcom/unity3d/ads/core/log/Logger;", "accelerometerRepository", "Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;", "<init>", "(Landroid/content/Context;Lcom/unity3d/ads/core/data/datasource/LifecycleDataSource;Lcom/unity3d/ads/core/log/Logger;Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;)V", "getContext", "()Landroid/content/Context;", "reportedWarning", "Lkotlinx/coroutines/flow/MutableStateFlow;", "", "", "", "cachedExternalStorageDir", "Ljava/io/File;", "externalStorageDirLock", "", RemoteConfigComponent.FETCH_FILE_NAME, "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;", "drainAccelerometerSamples", "fetchAndroidDynamicDeviceInfo", "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android;", "getLanguage", "getTimeZone", "getTimeZoneOffset", "", "isUsingWifi", "getConnectionType", "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$ConnectionType;", "getNetworkType", "", "getNetworkMetered", "getNetworkOperator", "getNetworkOperatorName", "getNetworkCountryISO", "getScreenWidth", "getScreenHeight", "isActiveNetworkConnected", "isWiredHeadsetOn", "getRingerMode", "getVolume", "", "getMaxVolume", "getStreamVolume", "streamType", "getStreamMaxVolume", "getScreenBrightness", "getFreeSpace", C3510b4.i.b, "getUsableSpace", "getCachedExternalStorageDir", "getCachedExternalStorageDir$unity_ads_defaultRelease", "getBatteryLevel", "getBatteryStatus", "getTotalMemory", "getFreeMemory", "getMemoryInfo", "infoType", "Lcom/unity3d/services/core/device/Device$MemoryInfoType;", "isAdbEnabled", "adbStatus", "isUSBConnected", "getUptime", "getElapsedRealtime", "getProcessInfo", C3510b4.j.M, "isLimitOpenAdTrackingEnabled", "isAppActive", "getEventTimeStamp", "getTelephonyManager", "Landroid/telephony/TelephonyManager;", "getConnectivityManager", "Landroid/net/ConnectivityManager;", "getAudioManager", "Landroid/media/AudioManager;", "hasInternet", "hasInternetConnection", "hasInternetConnectionM", "volumeSettingsChange", "Lkotlinx/coroutines/flow/Flow;", "Lcom/unity3d/ads/core/data/datasource/VolumeSettingsChange;", "getVolumeSettingsChange", "()Lkotlinx/coroutines/flow/Flow;", "getOrientation", "getConnectionTypeStr", "getCurrentUiTheme", "getLocaleList", "", "getAirplaneMode", "getChargingType", "getStayOnWhilePluggedIn", "getIsSdCardPresent", "getNetworkCapabilityTransports", "Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports;", "getJvmFreeMemory", "getJvmTotalMemory", "getFontScale", "", "getAnimatorScale", "getAccessibilityDisplayDaltonizer", "getDisplayInversionEnabled", "Companion", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidDynamicDeviceInfoDataSource implements DynamicDeviceInfoDataSource {
    public static final String DIRECTORY_MEM_INFO = "/proc/meminfo";
    public static final String DIRECTORY_MODE_READ = "r";
    public static final String DIRECTORY_PROCESS_INFO = "/proc/self/stat";
    public static final String INTENT_USB_STATE = "android.hardware.usb.action.USB_STATE";
    public static final String KEY_STAT_CONTENT = "stat";
    public static final String SETTING_ACCESSIBILITY_DISPLAY_DALTONIZER = "accessibility_display_daltonizer";
    public static final String SETTING_ACCESSIBILITY_DISPLAY_DALTONIZER_ENABLED = "accessibility_display_daltonizer_enabled";
    public static final String SETTING_ACCESSIBILITY_DISPLAY_INVERSION_ENABLED = "accessibility_display_inversion_enabled";
    public static final String USB_EXTRA_CONNECTED = "connected";
    private final AccelerometerRepository accelerometerRepository;
    private volatile File cachedExternalStorageDir;
    private final Context context;
    private final Object externalStorageDirLock;
    private final LifecycleDataSource lifecycleDataSource;
    private final Logger logger;
    private final MutableStateFlow<Map<String, Boolean>> reportedWarning;
    private final Flow<VolumeSettingsChange> volumeSettingsChange;

    /* JADX INFO: compiled from: AndroidDynamicDeviceInfoDataSource.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[Device.MemoryInfoType.values().length];
            try {
                iArr[Device.MemoryInfoType.TOTAL_MEMORY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Device.MemoryInfoType.FREE_MEMORY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[DynamicDeviceInfoOuterClass.ConnectionType.values().length];
            try {
                iArr2[DynamicDeviceInfoOuterClass.ConnectionType.CONNECTION_TYPE_WIFI.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[DynamicDeviceInfoOuterClass.ConnectionType.CONNECTION_TYPE_CELLULAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[DynamicDeviceInfoOuterClass.ConnectionType.CONNECTION_TYPE_UNSPECIFIED.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public AndroidDynamicDeviceInfoDataSource(Context context, LifecycleDataSource lifecycleDataSource, Logger logger, AccelerometerRepository accelerometerRepository) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(lifecycleDataSource, "lifecycleDataSource");
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(accelerometerRepository, "accelerometerRepository");
        this.context = context;
        this.lifecycleDataSource = lifecycleDataSource;
        this.logger = logger;
        this.accelerometerRepository = accelerometerRepository;
        this.reportedWarning = StateFlowKt.MutableStateFlow(MapsKt.emptyMap());
        this.externalStorageDirLock = new Object();
        this.volumeSettingsChange = FlowKt.callbackFlow(new AndroidDynamicDeviceInfoDataSource$volumeSettingsChange$1(this, null));
    }

    private final boolean adbStatus() {
        Boolean boolValueOf;
        try {
            boolean z = true;
            if (1 != Settings.Global.getInt(this.context.getContentResolver(), "adb_enabled", 0)) {
                z = false;
            }
            boolValueOf = Boolean.valueOf(z);
        } catch (Exception e) {
            this.logger.error("Problems fetching adb enabled status", e);
            boolValueOf = null;
        }
        if (boolValueOf != null) {
            return boolValueOf.booleanValue();
        }
        return false;
    }

    private final DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Android fetchAndroidDynamicDeviceInfo() {
        DynamicDeviceInfoKt dynamicDeviceInfoKt = DynamicDeviceInfoKt.INSTANCE;
        DynamicDeviceInfoKt.AndroidKt.Dsl.Companion companion = DynamicDeviceInfoKt.AndroidKt.Dsl.INSTANCE;
        DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Android.Builder builderNewBuilder = DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Android.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        DynamicDeviceInfoKt.AndroidKt.Dsl dsl_create = companion._create(builderNewBuilder);
        dsl_create.setNetworkConnected(isActiveNetworkConnected());
        dsl_create.setNetworkType(getNetworkType());
        dsl_create.setNetworkMetered(getNetworkMetered());
        dsl_create.setTelephonyManagerNetworkType(getNetworkType());
        dsl_create.setAdbEnabled(isAdbEnabled());
        dsl_create.setUsbConnected(isUSBConnected());
        dsl_create.setVolume(getVolume());
        dsl_create.setMaxVolume(getMaxVolume());
        dsl_create.setDeviceElapsedRealtime(getElapsedRealtime());
        dsl_create.setDeviceUpTime(getUptime());
        dsl_create.setAirplaneMode(getAirplaneMode());
        dsl_create.setChargingType(getChargingType());
        dsl_create.setStayOnWhilePluggedIn(getStayOnWhilePluggedIn());
        dsl_create.setSdCardPresent(getIsSdCardPresent());
        dsl_create.setNetworkCapabilityTransports(getNetworkCapabilityTransports());
        dsl_create.setJvmFreeMemory(getJvmFreeMemory());
        dsl_create.setJvmTotalMemory(getJvmTotalMemory());
        dsl_create.setFontScale(getFontScale());
        dsl_create.setAnimatorScale(getAnimatorScale());
        dsl_create.setAccessibilityDisplayDaltonizer(getAccessibilityDisplayDaltonizer());
        dsl_create.setDisplayInversionEnabled(getDisplayInversionEnabled());
        return dsl_create._build();
    }

    private final boolean getAirplaneMode() {
        try {
            return Settings.Global.getInt(this.context.getContentResolver(), "airplane_mode_on", 0) != 0;
        } catch (Throwable th) {
            this.logger.error("Problems fetching airplane mode status", th);
            return false;
        }
    }

    private final AudioManager getAudioManager() {
        Object systemService = this.context.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        if (systemService instanceof AudioManager) {
            return (AudioManager) systemService;
        }
        return null;
    }

    private final ConnectivityManager getConnectivityManager() {
        Object systemService = this.context.getSystemService("connectivity");
        if (systemService instanceof ConnectivityManager) {
            return (ConnectivityManager) systemService;
        }
        return null;
    }

    private final long getElapsedRealtime() {
        return SystemClock.elapsedRealtime();
    }

    private final long getEventTimeStamp() {
        return System.currentTimeMillis() / ((long) 1000);
    }

    @Deprecated(message = "Legacy method, migrated from to .getUsableSpace()")
    private final long getFreeSpace(File file) {
        if (file == null || !file.exists()) {
            return -1L;
        }
        return MathKt.roundToInt(file.getFreeSpace() / ((long) 1024));
    }

    private final long getMemoryInfo(Device.MemoryInfoType infoType) {
        int i = WhenMappings.$EnumSwitchMapping$0[infoType.ordinal()];
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2) {
                i2 = -1;
            }
        }
        RandomAccessFile randomAccessFile = new RandomAccessFile(DIRECTORY_MEM_INFO, DIRECTORY_MODE_READ);
        try {
            RandomAccessFile randomAccessFile2 = randomAccessFile;
            String line = null;
            for (int i3 = 0; i3 < i2; i3++) {
                line = randomAccessFile2.readLine();
            }
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(randomAccessFile, null);
            return GetMemoryValueFromStringKt.getMemoryValueFromString(line);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(randomAccessFile, th);
                throw th2;
            }
        }
    }

    private final boolean getNetworkMetered() {
        ConnectivityManager connectivityManager = getConnectivityManager();
        return connectivityManager != null && connectivityManager.isActiveNetworkMetered();
    }

    private final String getNetworkOperatorName() {
        String networkOperatorName;
        TelephonyManager telephonyManager = getTelephonyManager();
        return (telephonyManager == null || (networkOperatorName = telephonyManager.getNetworkOperatorName()) == null) ? "" : networkOperatorName;
    }

    @Deprecated(message = "This method was deprecated in API level 30. Use getDataNetworkType()")
    private final int getNetworkType() {
        Map<String, Boolean> value;
        TelephonyManager telephonyManager = getTelephonyManager();
        if (telephonyManager != null) {
            try {
                return telephonyManager.getNetworkType();
            } catch (SecurityException unused) {
                if (!Intrinsics.areEqual((Object) this.reportedWarning.getValue().get("getNetworkType"), (Object) true)) {
                    MutableStateFlow<Map<String, Boolean>> mutableStateFlow = this.reportedWarning;
                    do {
                        value = mutableStateFlow.getValue();
                    } while (!mutableStateFlow.compareAndSet(value, MapsKt.plus(value, TuplesKt.to("getNetworkType", true))));
                    this.logger.info("Unity Ads was not able to get current network type due to missing permission");
                }
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final double getStreamVolume(int streamType) {
        AudioManager audioManager = getAudioManager();
        return audioManager != null ? audioManager.getStreamVolume(streamType) : -2;
    }

    private final TelephonyManager getTelephonyManager() {
        Object systemService = this.context.getSystemService("phone");
        if (systemService instanceof TelephonyManager) {
            return (TelephonyManager) systemService;
        }
        return null;
    }

    private final String getTimeZone() {
        try {
            String displayName = TimeZone.getDefault().getDisplayName(false, 0, Locale.US);
            Intrinsics.checkNotNull(displayName);
            return displayName;
        } catch (AssertionError e) {
            Logger.DefaultImpls.error$default(this.logger, "Could not read timeZone information: " + e.getMessage(), null, 2, null);
            return "";
        }
    }

    private final long getTimeZoneOffset() {
        return ((long) TimeZone.getDefault().getOffset(System.currentTimeMillis())) / ((long) 1000);
    }

    private final long getUptime() {
        return SystemClock.uptimeMillis();
    }

    private final long getUsableSpace(File file) {
        if (file == null || !file.exists()) {
            return -1L;
        }
        return MathKt.roundToInt(file.getUsableSpace() / ((long) 1024));
    }

    private final boolean hasInternetConnection() {
        NetworkInfo activeNetworkInfo;
        ConnectivityManager connectivityManager = getConnectivityManager();
        return (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || !activeNetworkInfo.isConnected()) ? false : true;
    }

    private final boolean hasInternetConnectionM() {
        NetworkCapabilities networkCapabilities;
        ConnectivityManager connectivityManager = getConnectivityManager();
        return connectivityManager != null && (networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork())) != null && networkCapabilities.hasCapability(12) && networkCapabilities.hasCapability(16);
    }

    private final boolean isActiveNetworkConnected() {
        ConnectivityManager connectivityManager = getConnectivityManager();
        NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    private final boolean isAdbEnabled() {
        return adbStatus();
    }

    private final boolean isAppActive() {
        return this.lifecycleDataSource.appIsForeground();
    }

    private final boolean isLimitOpenAdTrackingEnabled() {
        return OpenAdvertisingId.getLimitedOpenAdTracking();
    }

    private final boolean isUSBConnected() {
        Intent intentRegisterReceiver = this.context.registerReceiver(null, new IntentFilter(INTENT_USB_STATE));
        if (intentRegisterReceiver != null) {
            return intentRegisterReceiver.getBooleanExtra(USB_EXTRA_CONNECTED, false);
        }
        return false;
    }

    private final boolean isUsingWifi() {
        ConnectivityManager connectivityManager = getConnectivityManager();
        if (connectivityManager == null) {
            return false;
        }
        TelephonyManager telephonyManager = getTelephonyManager();
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        return activeNetworkInfo != null && connectivityManager.getBackgroundDataSetting() && activeNetworkInfo.isConnected() && telephonyManager != null && activeNetworkInfo.getType() == 1 && activeNetworkInfo.isConnected();
    }

    private final boolean isWiredHeadsetOn() {
        AudioManager audioManager = getAudioManager();
        return audioManager != null && audioManager.isWiredHeadsetOn();
    }

    @Override // com.unity3d.ads.core.data.datasource.DynamicDeviceInfoDataSource
    public DynamicDeviceInfoOuterClass.DynamicDeviceInfo fetch(boolean drainAccelerometerSamples) {
        DynamicDeviceInfoKt.Dsl.Companion companion = DynamicDeviceInfoKt.Dsl.INSTANCE;
        DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Builder builderNewBuilder = DynamicDeviceInfoOuterClass.DynamicDeviceInfo.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        DynamicDeviceInfoKt.Dsl dsl_create = companion._create(builderNewBuilder);
        dsl_create.setLanguage(getLanguage());
        dsl_create.setNetworkOperator(getNetworkOperator());
        dsl_create.setNetworkOperatorName(getNetworkOperatorName());
        dsl_create.setFreeDiskSpace(getUsableSpace(getCachedExternalStorageDir$unity_ads_defaultRelease()));
        dsl_create.setFreeRamMemory(getFreeMemory());
        dsl_create.setWiredHeadset(isWiredHeadsetOn());
        dsl_create.setTimeZone(getTimeZone());
        dsl_create.setTimeZoneOffset(getTimeZoneOffset());
        dsl_create.setLimitedTracking(isLimitAdTrackingEnabled());
        dsl_create.setLimitedOpenAdTracking(isLimitOpenAdTrackingEnabled());
        dsl_create.setBatteryLevel(getBatteryLevel());
        dsl_create.setBatteryStatus(getBatteryStatus());
        dsl_create.setConnectionType(getConnectionType());
        dsl_create.setAndroid(fetchAndroidDynamicDeviceInfo());
        dsl_create.setAppActive(isAppActive());
        dsl_create.setScreenWidth(getScreenWidth());
        dsl_create.setScreenHeight(getScreenHeight());
        if (drainAccelerometerSamples) {
            dsl_create.addAllAccelerometerSamples(dsl_create.getAccelerometerSamples(), this.accelerometerRepository.drainSamples());
        }
        return dsl_create._build();
    }

    public final int getAccessibilityDisplayDaltonizer() {
        try {
            Integer numValueOf = Integer.valueOf(Settings.Secure.getInt(this.context.getContentResolver(), SETTING_ACCESSIBILITY_DISPLAY_DALTONIZER_ENABLED, 0));
            if (numValueOf.intValue() == 0) {
                numValueOf = null;
            }
            if (numValueOf == null) {
                return -1;
            }
            numValueOf.intValue();
            return Settings.Secure.getInt(this.context.getContentResolver(), SETTING_ACCESSIBILITY_DISPLAY_DALTONIZER, -1);
        } catch (Throwable th) {
            this.logger.error("Problems fetching accessibility display daltonizer", th);
            return -1;
        }
    }

    public final float getAnimatorScale() {
        try {
            return Settings.Global.getFloat(this.context.getContentResolver(), "animator_duration_scale", 1.0f);
        } catch (Throwable th) {
            this.logger.error("Problems fetching animator scale", th);
            return 1.0f;
        }
    }

    @Override // com.unity3d.ads.core.data.datasource.DynamicDeviceInfoDataSource
    public double getBatteryLevel() {
        Intent intentRegisterReceiver = this.context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (intentRegisterReceiver == null) {
            return -1.0d;
        }
        return ((double) intentRegisterReceiver.getIntExtra("level", 0)) / ((double) intentRegisterReceiver.getIntExtra("scale", 0));
    }

    @Override // com.unity3d.ads.core.data.datasource.DynamicDeviceInfoDataSource
    public int getBatteryStatus() {
        Intent intentRegisterReceiver = this.context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (intentRegisterReceiver != null) {
            return intentRegisterReceiver.getIntExtra("status", 0);
        }
        return -1;
    }

    public final File getCachedExternalStorageDir$unity_ads_defaultRelease() {
        File externalStorageDir;
        File file = this.cachedExternalStorageDir;
        if (file != null) {
            return file;
        }
        synchronized (this.externalStorageDirLock) {
            externalStorageDir = this.cachedExternalStorageDir;
            if (externalStorageDir == null) {
                externalStorageDir = GetExternalStorageDirKt.getExternalStorageDir(this.context);
                if (externalStorageDir != null) {
                    this.cachedExternalStorageDir = externalStorageDir;
                } else {
                    externalStorageDir = null;
                }
            }
        }
        return externalStorageDir;
    }

    public final int getChargingType() {
        Intent intentRegisterReceiver = this.context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (intentRegisterReceiver != null) {
            return intentRegisterReceiver.getIntExtra("plugged", -1);
        }
        return -1;
    }

    @Override // com.unity3d.ads.core.data.datasource.DynamicDeviceInfoDataSource
    public DynamicDeviceInfoOuterClass.ConnectionType getConnectionType() {
        if (isUsingWifi()) {
            return DynamicDeviceInfoOuterClass.ConnectionType.CONNECTION_TYPE_WIFI;
        }
        return isActiveNetworkConnected() ? DynamicDeviceInfoOuterClass.ConnectionType.CONNECTION_TYPE_CELLULAR : DynamicDeviceInfoOuterClass.ConnectionType.CONNECTION_TYPE_UNSPECIFIED;
    }

    @Override // com.unity3d.ads.core.data.datasource.DynamicDeviceInfoDataSource
    public String getConnectionTypeStr() {
        int i = WhenMappings.$EnumSwitchMapping$1[getConnectionType().ordinal()];
        if (i != 1) {
            return i != 2 ? "none" : X3.g;
        }
        return "wifi";
    }

    public final Context getContext() {
        return this.context;
    }

    @Override // com.unity3d.ads.core.data.datasource.DynamicDeviceInfoDataSource
    public int getCurrentUiTheme() {
        return this.context.getResources().getConfiguration().uiMode;
    }

    public final boolean getDisplayInversionEnabled() {
        try {
            return Settings.Secure.getInt(this.context.getContentResolver(), SETTING_ACCESSIBILITY_DISPLAY_INVERSION_ENABLED, 0) != 0;
        } catch (Throwable th) {
            this.logger.error("Problems fetching display inversion enabled status", th);
            return false;
        }
    }

    public final float getFontScale() {
        return this.context.getResources().getConfiguration().fontScale;
    }

    public final long getFreeMemory() {
        return getMemoryInfo(Device.MemoryInfoType.FREE_MEMORY);
    }

    public final boolean getIsSdCardPresent() {
        return Intrinsics.areEqual(Environment.getExternalStorageState(), "mounted");
    }

    public final long getJvmFreeMemory() {
        return Runtime.getRuntime().freeMemory();
    }

    public final long getJvmTotalMemory() {
        return Runtime.getRuntime().totalMemory();
    }

    @Override // com.unity3d.ads.core.data.datasource.DynamicDeviceInfoDataSource
    public String getLanguage() {
        String string = Locale.getDefault().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    @Override // com.unity3d.ads.core.data.datasource.DynamicDeviceInfoDataSource
    public List<String> getLocaleList() {
        LocaleList locales = this.context.getResources().getConfiguration().getLocales();
        Intrinsics.checkNotNullExpressionValue(locales, "getLocales(...)");
        int size = locales.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(locales.get(i).toString());
        }
        return arrayList;
    }

    @Override // com.unity3d.ads.core.data.datasource.DynamicDeviceInfoDataSource
    public double getMaxVolume() {
        return getStreamMaxVolume(3);
    }

    public final NetworkCapabilityTransportsOuterClass.NetworkCapabilityTransports getNetworkCapabilityTransports() {
        Network activeNetwork;
        NetworkCapabilityTransportsOuterClass.NetworkCapabilityTransports.Builder builderNewBuilder = NetworkCapabilityTransportsOuterClass.NetworkCapabilityTransports.newBuilder();
        if (Build.VERSION.SDK_INT < 31) {
            NetworkCapabilityTransportsOuterClass.NetworkCapabilityTransports networkCapabilityTransportsBuild = builderNewBuilder.build();
            Intrinsics.checkNotNullExpressionValue(networkCapabilityTransportsBuild, "build(...)");
            return networkCapabilityTransportsBuild;
        }
        Object systemService = this.context.getSystemService("connectivity");
        ConnectivityManager connectivityManager = systemService instanceof ConnectivityManager ? (ConnectivityManager) systemService : null;
        if (connectivityManager == null || (activeNetwork = connectivityManager.getActiveNetwork()) == null) {
            NetworkCapabilityTransportsOuterClass.NetworkCapabilityTransports networkCapabilityTransportsBuild2 = builderNewBuilder.build();
            Intrinsics.checkNotNullExpressionValue(networkCapabilityTransportsBuild2, "build(...)");
            return networkCapabilityTransportsBuild2;
        }
        NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork);
        if (networkCapabilities == null) {
            NetworkCapabilityTransportsOuterClass.NetworkCapabilityTransports networkCapabilityTransportsBuild3 = builderNewBuilder.build();
            Intrinsics.checkNotNullExpressionValue(networkCapabilityTransportsBuild3, "build(...)");
            return networkCapabilityTransportsBuild3;
        }
        builderNewBuilder.setWifi(networkCapabilities.hasTransport(1));
        builderNewBuilder.setCellular(networkCapabilities.hasTransport(0));
        builderNewBuilder.setVpn(networkCapabilities.hasTransport(4));
        builderNewBuilder.setEthernet(networkCapabilities.hasTransport(3));
        builderNewBuilder.setWifiAware(networkCapabilities.hasTransport(5));
        builderNewBuilder.setLowpan(networkCapabilities.hasTransport(6));
        builderNewBuilder.setBluetooth(networkCapabilities.hasTransport(2));
        NetworkCapabilityTransportsOuterClass.NetworkCapabilityTransports networkCapabilityTransportsBuild4 = builderNewBuilder.build();
        Intrinsics.checkNotNullExpressionValue(networkCapabilityTransportsBuild4, "build(...)");
        return networkCapabilityTransportsBuild4;
    }

    public final String getNetworkCountryISO() {
        String networkCountryIso;
        TelephonyManager telephonyManager = getTelephonyManager();
        return (telephonyManager == null || (networkCountryIso = telephonyManager.getNetworkCountryIso()) == null) ? "" : networkCountryIso;
    }

    @Override // com.unity3d.ads.core.data.datasource.DynamicDeviceInfoDataSource
    public String getNetworkOperator() {
        String networkOperator;
        TelephonyManager telephonyManager = getTelephonyManager();
        return (telephonyManager == null || (networkOperator = telephonyManager.getNetworkOperator()) == null) ? "" : networkOperator;
    }

    @Override // com.unity3d.ads.core.data.datasource.DynamicDeviceInfoDataSource
    public String getOrientation() {
        return getScreenHeight() > getScreenWidth() ? "portrait" : "landscape";
    }

    public final Map<String, String> getProcessInfo() {
        HashMap map = new HashMap();
        RandomAccessFile randomAccessFile = new RandomAccessFile(DIRECTORY_PROCESS_INFO, DIRECTORY_MODE_READ);
        try {
            map.put(KEY_STAT_CONTENT, randomAccessFile.readLine());
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(randomAccessFile, null);
            return map;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(randomAccessFile, th);
                throw th2;
            }
        }
    }

    @Override // com.unity3d.ads.core.data.datasource.DynamicDeviceInfoDataSource
    public int getRingerMode() {
        AudioManager audioManager = getAudioManager();
        if (audioManager != null) {
            return audioManager.getRingerMode();
        }
        return -2;
    }

    public final int getScreenBrightness() {
        return Settings.System.getInt(this.context.getContentResolver(), "screen_brightness", -1);
    }

    @Override // com.unity3d.ads.core.data.datasource.DynamicDeviceInfoDataSource
    public int getScreenHeight() {
        DisplayMetrics displayMetrics;
        Resources resources = this.context.getResources();
        if (resources == null || (displayMetrics = resources.getDisplayMetrics()) == null) {
            return -1;
        }
        return displayMetrics.heightPixels;
    }

    @Override // com.unity3d.ads.core.data.datasource.DynamicDeviceInfoDataSource
    public int getScreenWidth() {
        DisplayMetrics displayMetrics;
        Resources resources = this.context.getResources();
        if (resources == null || (displayMetrics = resources.getDisplayMetrics()) == null) {
            return -1;
        }
        return displayMetrics.widthPixels;
    }

    public final boolean getStayOnWhilePluggedIn() {
        try {
            return Settings.Global.getInt(this.context.getContentResolver(), "stay_on_while_plugged_in", 0) != 0;
        } catch (Throwable th) {
            this.logger.error("Problems fetching stay on while plugged in status", th);
            return false;
        }
    }

    public final double getStreamMaxVolume(int streamType) {
        AudioManager audioManager = getAudioManager();
        return audioManager != null ? audioManager.getStreamMaxVolume(streamType) : -2;
    }

    public final long getTotalMemory() {
        return getMemoryInfo(Device.MemoryInfoType.TOTAL_MEMORY);
    }

    @Override // com.unity3d.ads.core.data.datasource.DynamicDeviceInfoDataSource
    public double getVolume() {
        return getStreamVolume(3);
    }

    @Override // com.unity3d.ads.core.data.datasource.DynamicDeviceInfoDataSource
    public Flow<VolumeSettingsChange> getVolumeSettingsChange() {
        return this.volumeSettingsChange;
    }

    @Override // com.unity3d.ads.core.data.datasource.DynamicDeviceInfoDataSource
    public boolean hasInternet() {
        return hasInternetConnectionM();
    }

    @Override // com.unity3d.ads.core.data.datasource.DynamicDeviceInfoDataSource
    public boolean isLimitAdTrackingEnabled() {
        return AdvertisingId.getLimitedAdTracking();
    }
}
