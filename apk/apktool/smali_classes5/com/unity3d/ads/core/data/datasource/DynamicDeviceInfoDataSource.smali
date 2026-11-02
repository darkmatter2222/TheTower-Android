.class public interface abstract Lcom/unity3d/ads/core/data/datasource/DynamicDeviceInfoDataSource;
.super Ljava/lang/Object;
.source "DynamicDeviceInfoDataSource.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH&J\u0008\u0010\u000b\u001a\u00020\u000cH&J\u0008\u0010\r\u001a\u00020\u000eH&J\u0008\u0010\u000f\u001a\u00020\u000cH&J\u000e\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0011H&J\u0008\u0010\u0012\u001a\u00020\u000eH&J\u0008\u0010\u0013\u001a\u00020\nH&J\u0008\u0010\u0014\u001a\u00020\u000eH&J\u0008\u0010\u0015\u001a\u00020\u000eH&J\u0008\u0010\u0016\u001a\u00020\u0017H&J\u0008\u0010\u0018\u001a\u00020\u000cH&J\u0008\u0010\u0019\u001a\u00020\u001aH&J\u0008\u0010\u001b\u001a\u00020\u0017H&J\u0008\u0010\u001c\u001a\u00020\u0017H&J\u0008\u0010\u001d\u001a\u00020\u000cH&J\u0008\u0010\u001e\u001a\u00020\u000cH&J\u0008\u0010\u001f\u001a\u00020\nH&R\u0018\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006 "
    }
    d2 = {
        "Lcom/unity3d/ads/core/data/datasource/DynamicDeviceInfoDataSource;",
        "",
        "volumeSettingsChange",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/unity3d/ads/core/data/datasource/VolumeSettingsChange;",
        "getVolumeSettingsChange",
        "()Lkotlinx/coroutines/flow/Flow;",
        "fetch",
        "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;",
        "drainAccelerometerSamples",
        "",
        "getRingerMode",
        "",
        "getOrientation",
        "",
        "getCurrentUiTheme",
        "getLocaleList",
        "",
        "getConnectionTypeStr",
        "hasInternet",
        "getLanguage",
        "getNetworkOperator",
        "getBatteryLevel",
        "",
        "getBatteryStatus",
        "getConnectionType",
        "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$ConnectionType;",
        "getVolume",
        "getMaxVolume",
        "getScreenWidth",
        "getScreenHeight",
        "isLimitAdTrackingEnabled",
        "unity-ads_defaultRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract fetch(Z)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;
.end method

.method public abstract getBatteryLevel()D
.end method

.method public abstract getBatteryStatus()I
.end method

.method public abstract getConnectionType()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$ConnectionType;
.end method

.method public abstract getConnectionTypeStr()Ljava/lang/String;
.end method

.method public abstract getCurrentUiTheme()I
.end method

.method public abstract getLanguage()Ljava/lang/String;
.end method

.method public abstract getLocaleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMaxVolume()D
.end method

.method public abstract getNetworkOperator()Ljava/lang/String;
.end method

.method public abstract getOrientation()Ljava/lang/String;
.end method

.method public abstract getRingerMode()I
.end method

.method public abstract getScreenHeight()I
.end method

.method public abstract getScreenWidth()I
.end method

.method public abstract getVolume()D
.end method

.method public abstract getVolumeSettingsChange()Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/unity3d/ads/core/data/datasource/VolumeSettingsChange;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasInternet()Z
.end method

.method public abstract isLimitAdTrackingEnabled()Z
.end method
