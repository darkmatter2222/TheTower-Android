.class public interface abstract Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;
.super Ljava/lang/Object;
.source "DeviceInfoRepository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\t\n\u0002\u0010 \n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u000f\n\u0002\u0010\u0006\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008`\u0018\u00002\u00020\u0001J\u000e\u0010\u0007\u001a\u00020\u0008H\u00a6@\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\n\u001a\u00020\u0008H&J\u0008\u0010\u000f\u001a\u00020\u000cH&J\u000e\u0010\u0019\u001a\u00020\u001aH\u00a6@\u00a2\u0006\u0002\u0010\tJ\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u00a6@\u00a2\u0006\u0002\u0010\tJ\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u00a6@\u00a2\u0006\u0002\u0010\tJ\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001aH\u00a6@\u00a2\u0006\u0002\u0010\tR\u0018\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0012\u0010\u000b\u001a\u00020\u000cX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0012\u0010\u0010\u001a\u00020\u0011X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0018\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u001f\u001a\u0004\u0018\u00010\u001aX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!R\u0012\u0010\"\u001a\u00020#X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010%R\u0012\u0010&\u001a\u00020\'X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010)R\u0012\u0010*\u001a\u00020\u001aX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010!R\u0012\u0010,\u001a\u00020\u001aX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010!R\u0012\u0010.\u001a\u00020#X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008/\u0010%R\u0018\u00100\u001a\u0008\u0012\u0004\u0012\u00020\u001a01X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u00082\u00103R\u0012\u00104\u001a\u00020\u001aX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u00085\u0010!R\u0012\u00106\u001a\u00020\u001aX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u00087\u0010!R\u0012\u00108\u001a\u00020\u001aX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u00089\u0010!R\u0012\u0010:\u001a\u00020\u001aX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008;\u0010!R\u0012\u0010<\u001a\u00020=X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008>\u0010?R\u0012\u0010@\u001a\u00020\u001aX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008A\u0010!R\u0012\u0010B\u001a\u00020\'X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008C\u0010)R\u0012\u0010D\u001a\u00020\'X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008E\u0010)R\u0012\u0010F\u001a\u00020\u001aX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008G\u0010!R\u0012\u0010H\u001a\u00020\u001aX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008I\u0010!R\u0012\u0010J\u001a\u00020\u001aX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008K\u0010!R\u0012\u0010L\u001a\u00020MX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008N\u0010OR\u0012\u0010P\u001a\u00020#X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008Q\u0010%R\u0012\u0010R\u001a\u00020SX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008T\u0010UR\u0012\u0010V\u001a\u00020MX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008W\u0010OR\u0012\u0010X\u001a\u00020MX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008Y\u0010OR\u0012\u0010Z\u001a\u00020#X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008[\u0010%R\u0012\u0010\\\u001a\u00020#X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008]\u0010%R\u0012\u0010^\u001a\u00020=X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008_\u0010?\u00a8\u0006`"
    }
    d2 = {
        "Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;",
        "",
        "allowedPii",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;",
        "getAllowedPii",
        "()Lkotlinx/coroutines/flow/MutableStateFlow;",
        "staticDeviceInfo",
        "Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "cachedStaticDeviceInfo",
        "dynamicDeviceInfo",
        "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;",
        "getDynamicDeviceInfo",
        "()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;",
        "dynamicDeviceInfoWithAccelerometer",
        "piiData",
        "Lgatewayprotocol/v1/PiiOuterClass$Pii;",
        "getPiiData",
        "()Lgatewayprotocol/v1/PiiOuterClass$Pii;",
        "volumeSettingsChange",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/unity3d/ads/core/data/datasource/VolumeSettingsChange;",
        "getVolumeSettingsChange",
        "()Lkotlinx/coroutines/flow/Flow;",
        "getIdfi",
        "",
        "getAuidString",
        "getAuidByteString",
        "Lcom/google/protobuf/ByteString;",
        "getUnityBuildGuid",
        "analyticsUserId",
        "getAnalyticsUserId",
        "()Ljava/lang/String;",
        "ringerMode",
        "",
        "getRingerMode",
        "()I",
        "systemBootTime",
        "",
        "getSystemBootTime",
        "()J",
        "orientation",
        "getOrientation",
        "connectionTypeStr",
        "getConnectionTypeStr",
        "currentUiTheme",
        "getCurrentUiTheme",
        "localeList",
        "",
        "getLocaleList",
        "()Ljava/util/List;",
        "appName",
        "getAppName",
        "model",
        "getModel",
        "manufacturer",
        "getManufacturer",
        "osVersion",
        "getOsVersion",
        "hasInternet",
        "",
        "getHasInternet",
        "()Z",
        "bundleVersion",
        "getBundleVersion",
        "totalDiskSpace",
        "getTotalDiskSpace",
        "totalRamMemory",
        "getTotalRamMemory",
        "installSource",
        "getInstallSource",
        "language",
        "getLanguage",
        "networkOperator",
        "getNetworkOperator",
        "batteryLevel",
        "",
        "getBatteryLevel",
        "()D",
        "batteryStatus",
        "getBatteryStatus",
        "connectionType",
        "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$ConnectionType;",
        "getConnectionType",
        "()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$ConnectionType;",
        "volume",
        "getVolume",
        "maxVolume",
        "getMaxVolume",
        "screenWidth",
        "getScreenWidth",
        "screenHeight",
        "getScreenHeight",
        "limitedTracking",
        "getLimitedTracking",
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
.method public abstract cachedStaticDeviceInfo()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;
.end method

.method public abstract dynamicDeviceInfoWithAccelerometer()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;
.end method

.method public abstract getAllowedPii()Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAnalyticsUserId()Ljava/lang/String;
.end method

.method public abstract getAppName()Ljava/lang/String;
.end method

.method public abstract getAuidByteString(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/google/protobuf/ByteString;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract getAuidString(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract getBatteryLevel()D
.end method

.method public abstract getBatteryStatus()I
.end method

.method public abstract getBundleVersion()Ljava/lang/String;
.end method

.method public abstract getConnectionType()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$ConnectionType;
.end method

.method public abstract getConnectionTypeStr()Ljava/lang/String;
.end method

.method public abstract getCurrentUiTheme()I
.end method

.method public abstract getDynamicDeviceInfo()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;
.end method

.method public abstract getHasInternet()Z
.end method

.method public abstract getIdfi(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract getInstallSource()Ljava/lang/String;
.end method

.method public abstract getLanguage()Ljava/lang/String;
.end method

.method public abstract getLimitedTracking()Z
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

.method public abstract getManufacturer()Ljava/lang/String;
.end method

.method public abstract getMaxVolume()D
.end method

.method public abstract getModel()Ljava/lang/String;
.end method

.method public abstract getNetworkOperator()Ljava/lang/String;
.end method

.method public abstract getOrientation()Ljava/lang/String;
.end method

.method public abstract getOsVersion()Ljava/lang/String;
.end method

.method public abstract getPiiData()Lgatewayprotocol/v1/PiiOuterClass$Pii;
.end method

.method public abstract getRingerMode()I
.end method

.method public abstract getScreenHeight()I
.end method

.method public abstract getScreenWidth()I
.end method

.method public abstract getSystemBootTime()J
.end method

.method public abstract getTotalDiskSpace()J
.end method

.method public abstract getTotalRamMemory()J
.end method

.method public abstract getUnityBuildGuid(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
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

.method public abstract staticDeviceInfo(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
