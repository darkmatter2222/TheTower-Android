package com.unity3d.ads.core.data.repository;

import com.google.protobuf.ByteString;
import com.ironsource.C3510b4;
import com.ironsource.R6;
import com.tapjoy.TapjoyConstants;
import com.unity3d.ads.core.data.datasource.VolumeSettingsChange;
import gatewayprotocol.v1.AllowedPiiOuterClass;
import gatewayprotocol.v1.DynamicDeviceInfoOuterClass;
import gatewayprotocol.v1.PiiOuterClass;
import gatewayprotocol.v1.StaticDeviceInfoOuterClass;
import java.util.List;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.MutableStateFlow;
import p005kotlin.Metadata;
import p005kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: DeviceInfoRepository.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0010 \n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\r\b`\u0018\u00002\u00020\u0001J\u000e\u0010\u0007\u001a\u00020\bH¦@¢\u0006\u0002\u0010\tJ\b\u0010\n\u001a\u00020\bH&J\b\u0010\u000f\u001a\u00020\fH&J\u000e\u0010\u0019\u001a\u00020\u001aH¦@¢\u0006\u0002\u0010\tJ\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001aH¦@¢\u0006\u0002\u0010\tJ\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001dH¦@¢\u0006\u0002\u0010\tJ\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001aH¦@¢\u0006\u0002\u0010\tR\u0018\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0012\u0010\u000b\u001a\u00020\fX¦\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0012\u0010\u0010\u001a\u00020\u0011X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u0018\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u0014\u0010\u001f\u001a\u0004\u0018\u00010\u001aX¦\u0004¢\u0006\u0006\u001a\u0004\b \u0010!R\u0012\u0010\"\u001a\u00020#X¦\u0004¢\u0006\u0006\u001a\u0004\b$\u0010%R\u0012\u0010&\u001a\u00020'X¦\u0004¢\u0006\u0006\u001a\u0004\b(\u0010)R\u0012\u0010*\u001a\u00020\u001aX¦\u0004¢\u0006\u0006\u001a\u0004\b+\u0010!R\u0012\u0010,\u001a\u00020\u001aX¦\u0004¢\u0006\u0006\u001a\u0004\b-\u0010!R\u0012\u0010.\u001a\u00020#X¦\u0004¢\u0006\u0006\u001a\u0004\b/\u0010%R\u0018\u00100\u001a\b\u0012\u0004\u0012\u00020\u001a01X¦\u0004¢\u0006\u0006\u001a\u0004\b2\u00103R\u0012\u00104\u001a\u00020\u001aX¦\u0004¢\u0006\u0006\u001a\u0004\b5\u0010!R\u0012\u00106\u001a\u00020\u001aX¦\u0004¢\u0006\u0006\u001a\u0004\b7\u0010!R\u0012\u00108\u001a\u00020\u001aX¦\u0004¢\u0006\u0006\u001a\u0004\b9\u0010!R\u0012\u0010:\u001a\u00020\u001aX¦\u0004¢\u0006\u0006\u001a\u0004\b;\u0010!R\u0012\u0010<\u001a\u00020=X¦\u0004¢\u0006\u0006\u001a\u0004\b>\u0010?R\u0012\u0010@\u001a\u00020\u001aX¦\u0004¢\u0006\u0006\u001a\u0004\bA\u0010!R\u0012\u0010B\u001a\u00020'X¦\u0004¢\u0006\u0006\u001a\u0004\bC\u0010)R\u0012\u0010D\u001a\u00020'X¦\u0004¢\u0006\u0006\u001a\u0004\bE\u0010)R\u0012\u0010F\u001a\u00020\u001aX¦\u0004¢\u0006\u0006\u001a\u0004\bG\u0010!R\u0012\u0010H\u001a\u00020\u001aX¦\u0004¢\u0006\u0006\u001a\u0004\bI\u0010!R\u0012\u0010J\u001a\u00020\u001aX¦\u0004¢\u0006\u0006\u001a\u0004\bK\u0010!R\u0012\u0010L\u001a\u00020MX¦\u0004¢\u0006\u0006\u001a\u0004\bN\u0010OR\u0012\u0010P\u001a\u00020#X¦\u0004¢\u0006\u0006\u001a\u0004\bQ\u0010%R\u0012\u0010R\u001a\u00020SX¦\u0004¢\u0006\u0006\u001a\u0004\bT\u0010UR\u0012\u0010V\u001a\u00020MX¦\u0004¢\u0006\u0006\u001a\u0004\bW\u0010OR\u0012\u0010X\u001a\u00020MX¦\u0004¢\u0006\u0006\u001a\u0004\bY\u0010OR\u0012\u0010Z\u001a\u00020#X¦\u0004¢\u0006\u0006\u001a\u0004\b[\u0010%R\u0012\u0010\\\u001a\u00020#X¦\u0004¢\u0006\u0006\u001a\u0004\b]\u0010%R\u0012\u0010^\u001a\u00020=X¦\u0004¢\u0006\u0006\u001a\u0004\b_\u0010?¨\u0006`"}, d2 = {"Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;", "", "allowedPii", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;", "getAllowedPii", "()Lkotlinx/coroutines/flow/MutableStateFlow;", "staticDeviceInfo", "Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "cachedStaticDeviceInfo", "dynamicDeviceInfo", "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;", "getDynamicDeviceInfo", "()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;", "dynamicDeviceInfoWithAccelerometer", "piiData", "Lgatewayprotocol/v1/PiiOuterClass$Pii;", "getPiiData", "()Lgatewayprotocol/v1/PiiOuterClass$Pii;", "volumeSettingsChange", "Lkotlinx/coroutines/flow/Flow;", "Lcom/unity3d/ads/core/data/datasource/VolumeSettingsChange;", "getVolumeSettingsChange", "()Lkotlinx/coroutines/flow/Flow;", "getIdfi", "", "getAuidString", "getAuidByteString", "Lcom/google/protobuf/ByteString;", "getUnityBuildGuid", "analyticsUserId", "getAnalyticsUserId", "()Ljava/lang/String;", "ringerMode", "", "getRingerMode", "()I", "systemBootTime", "", "getSystemBootTime", "()J", "orientation", "getOrientation", "connectionTypeStr", "getConnectionTypeStr", "currentUiTheme", "getCurrentUiTheme", "localeList", "", "getLocaleList", "()Ljava/util/List;", "appName", "getAppName", R6.B, "getModel", "manufacturer", "getManufacturer", "osVersion", "getOsVersion", "hasInternet", "", "getHasInternet", "()Z", "bundleVersion", "getBundleVersion", "totalDiskSpace", "getTotalDiskSpace", "totalRamMemory", "getTotalRamMemory", "installSource", "getInstallSource", "language", "getLanguage", "networkOperator", "getNetworkOperator", C3510b4.j.Y, "", "getBatteryLevel", "()D", "batteryStatus", "getBatteryStatus", "connectionType", "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$ConnectionType;", "getConnectionType", "()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$ConnectionType;", TapjoyConstants.TJC_VOLUME, "getVolume", "maxVolume", "getMaxVolume", "screenWidth", "getScreenWidth", "screenHeight", "getScreenHeight", "limitedTracking", "getLimitedTracking", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface DeviceInfoRepository {
    StaticDeviceInfoOuterClass.StaticDeviceInfo cachedStaticDeviceInfo();

    DynamicDeviceInfoOuterClass.DynamicDeviceInfo dynamicDeviceInfoWithAccelerometer();

    MutableStateFlow<AllowedPiiOuterClass.AllowedPii> getAllowedPii();

    String getAnalyticsUserId();

    String getAppName();

    Object getAuidByteString(Continuation<? super ByteString> continuation);

    Object getAuidString(Continuation<? super String> continuation);

    double getBatteryLevel();

    int getBatteryStatus();

    String getBundleVersion();

    DynamicDeviceInfoOuterClass.ConnectionType getConnectionType();

    String getConnectionTypeStr();

    int getCurrentUiTheme();

    DynamicDeviceInfoOuterClass.DynamicDeviceInfo getDynamicDeviceInfo();

    boolean getHasInternet();

    Object getIdfi(Continuation<? super String> continuation);

    String getInstallSource();

    String getLanguage();

    boolean getLimitedTracking();

    List<String> getLocaleList();

    String getManufacturer();

    double getMaxVolume();

    String getModel();

    String getNetworkOperator();

    String getOrientation();

    String getOsVersion();

    PiiOuterClass.Pii getPiiData();

    int getRingerMode();

    int getScreenHeight();

    int getScreenWidth();

    long getSystemBootTime();

    long getTotalDiskSpace();

    long getTotalRamMemory();

    Object getUnityBuildGuid(Continuation<? super String> continuation);

    double getVolume();

    Flow<VolumeSettingsChange> getVolumeSettingsChange();

    Object staticDeviceInfo(Continuation<? super StaticDeviceInfoOuterClass.StaticDeviceInfo> continuation);
}
