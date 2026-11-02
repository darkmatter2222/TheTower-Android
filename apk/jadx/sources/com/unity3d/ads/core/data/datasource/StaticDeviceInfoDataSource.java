package com.unity3d.ads.core.data.datasource;

import com.google.firebase.remoteconfig.RemoteConfigComponent;
import gatewayprotocol.v1.StaticDeviceInfoOuterClass;
import java.util.List;
import p005kotlin.Metadata;
import p005kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: StaticDeviceInfoDataSource.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\t\n\u0002\b\t\bf\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H¦@¢\u0006\u0002\u0010\u0007J\b\u0010\b\u001a\u00020\u0003H&J\u000e\u0010\t\u001a\u00020\u0006H¦@¢\u0006\u0002\u0010\nJ\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0006H¦@¢\u0006\u0002\u0010\nJ\u0010\u0010\f\u001a\u0004\u0018\u00010\u0006H¦@¢\u0006\u0002\u0010\nJ\b\u0010\u0010\u001a\u00020\u0011H&J\b\u0010\u0012\u001a\u00020\u0006H&J\b\u0010\u0013\u001a\u00020\u0006H&J\b\u0010\u0014\u001a\u00020\u0006H&J\b\u0010\u0015\u001a\u00020\u0006H&J\b\u0010\u0016\u001a\u00020\u0006H&J\b\u0010\u0017\u001a\u00020\u0011H&J\b\u0010\u0018\u001a\u00020\u0011H&J\b\u0010\u0019\u001a\u00020\u0006H&R\u0014\u0010\r\u001a\u0004\u0018\u00010\u0006X¦\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001a"}, d2 = {"Lcom/unity3d/ads/core/data/datasource/StaticDeviceInfoDataSource;", "", RemoteConfigComponent.FETCH_FILE_NAME, "Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;", "additionalStores", "", "", "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "fetchCached", "getIdfi", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getAuid", "getUnityBuildGuid", "analyticsUserId", "getAnalyticsUserId", "()Ljava/lang/String;", "getSystemBootTime", "", "getAppName", "getModel", "getManufacturer", "getOsVersion", "getBundleVersion", "getTotalDiskSpace", "getTotalRamMemory", "getInstallSource", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface StaticDeviceInfoDataSource {
    Object fetch(List<String> list, Continuation<? super StaticDeviceInfoOuterClass.StaticDeviceInfo> continuation);

    StaticDeviceInfoOuterClass.StaticDeviceInfo fetchCached();

    String getAnalyticsUserId();

    String getAppName();

    Object getAuid(Continuation<? super String> continuation);

    String getBundleVersion();

    Object getIdfi(Continuation<? super String> continuation);

    String getInstallSource();

    String getManufacturer();

    String getModel();

    String getOsVersion();

    long getSystemBootTime();

    long getTotalDiskSpace();

    long getTotalRamMemory();

    Object getUnityBuildGuid(Continuation<? super String> continuation);
}
