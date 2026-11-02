package com.unity3d.ads.core.data.datasource;

import com.google.firebase.remoteconfig.RemoteConfigComponent;
import com.ironsource.C3510b4;
import gatewayprotocol.v1.DynamicDeviceInfoOuterClass;
import java.util.List;
import kotlinx.coroutines.flow.Flow;
import p005kotlin.Metadata;

/* JADX INFO: compiled from: DynamicDeviceInfoDataSource.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH&J\b\u0010\u000b\u001a\u00020\fH&J\b\u0010\r\u001a\u00020\u000eH&J\b\u0010\u000f\u001a\u00020\fH&J\u000e\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0011H&J\b\u0010\u0012\u001a\u00020\u000eH&J\b\u0010\u0013\u001a\u00020\nH&J\b\u0010\u0014\u001a\u00020\u000eH&J\b\u0010\u0015\u001a\u00020\u000eH&J\b\u0010\u0016\u001a\u00020\u0017H&J\b\u0010\u0018\u001a\u00020\fH&J\b\u0010\u0019\u001a\u00020\u001aH&J\b\u0010\u001b\u001a\u00020\u0017H&J\b\u0010\u001c\u001a\u00020\u0017H&J\b\u0010\u001d\u001a\u00020\fH&J\b\u0010\u001e\u001a\u00020\fH&J\b\u0010\u001f\u001a\u00020\nH&R\u0018\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006 "}, d2 = {"Lcom/unity3d/ads/core/data/datasource/DynamicDeviceInfoDataSource;", "", "volumeSettingsChange", "Lkotlinx/coroutines/flow/Flow;", "Lcom/unity3d/ads/core/data/datasource/VolumeSettingsChange;", "getVolumeSettingsChange", "()Lkotlinx/coroutines/flow/Flow;", RemoteConfigComponent.FETCH_FILE_NAME, "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;", "drainAccelerometerSamples", "", "getRingerMode", "", "getOrientation", "", "getCurrentUiTheme", "getLocaleList", "", "getConnectionTypeStr", "hasInternet", "getLanguage", "getNetworkOperator", "getBatteryLevel", "", "getBatteryStatus", "getConnectionType", "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$ConnectionType;", "getVolume", "getMaxVolume", "getScreenWidth", "getScreenHeight", C3510b4.j.M, "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface DynamicDeviceInfoDataSource {
    DynamicDeviceInfoOuterClass.DynamicDeviceInfo fetch(boolean drainAccelerometerSamples);

    double getBatteryLevel();

    int getBatteryStatus();

    DynamicDeviceInfoOuterClass.ConnectionType getConnectionType();

    String getConnectionTypeStr();

    int getCurrentUiTheme();

    String getLanguage();

    List<String> getLocaleList();

    double getMaxVolume();

    String getNetworkOperator();

    String getOrientation();

    int getRingerMode();

    int getScreenHeight();

    int getScreenWidth();

    double getVolume();

    Flow<VolumeSettingsChange> getVolumeSettingsChange();

    boolean hasInternet();

    boolean isLimitAdTrackingEnabled();
}
