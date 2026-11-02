.class public final Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;
.super Ljava/lang/Object;
.source "DynamicDeviceInfoKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl$Companion;,
        Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl$LocaleListProxy;,
        Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl$NwPathInterfacesProxy;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u001c\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u0006\n\u0002\u0008\u000c\n\u0002\u0010\t\n\u0002\u0008+\u0008\u0007\u0018\u0000 v2\u00020\u0001:\u0003vwxB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0001J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0019\u001a\u00020\u0010J\u0006\u0010\u001a\u001a\u00020\u0012J%\u0010 \u001a\u00020\u0010*\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u0010\u0008\u001a\u00020\tH\u0007\u00a2\u0006\u0002\u0008!J&\u0010\"\u001a\u00020\u0010*\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u0010\u0008\u001a\u00020\tH\u0087\n\u00a2\u0006\u0002\u0008#J+\u0010$\u001a\u00020\u0010*\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u001d0\u001c2\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\t0&H\u0007\u00a2\u0006\u0002\u0008\'J,\u0010\"\u001a\u00020\u0010*\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u001d0\u001c2\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\t0&H\u0087\n\u00a2\u0006\u0002\u0008(J.\u0010)\u001a\u00020\u0010*\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u0010*\u001a\u00020\u00132\u0006\u0010\u0008\u001a\u00020\tH\u0087\u0002\u00a2\u0006\u0002\u0008+J\u001d\u0010,\u001a\u00020\u0010*\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u001d0\u001cH\u0007\u00a2\u0006\u0002\u0008-J%\u0010 \u001a\u00020\u0010*\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020/0\u001c2\u0006\u0010\u0008\u001a\u00020\tH\u0007\u00a2\u0006\u0002\u00081J&\u0010\"\u001a\u00020\u0010*\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020/0\u001c2\u0006\u0010\u0008\u001a\u00020\tH\u0087\n\u00a2\u0006\u0002\u00082J+\u0010$\u001a\u00020\u0010*\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020/0\u001c2\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\t0&H\u0007\u00a2\u0006\u0002\u00083J,\u0010\"\u001a\u00020\u0010*\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020/0\u001c2\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\t0&H\u0087\n\u00a2\u0006\u0002\u00084J.\u0010)\u001a\u00020\u0010*\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020/0\u001c2\u0006\u0010*\u001a\u00020\u00132\u0006\u0010\u0008\u001a\u00020\tH\u0087\u0002\u00a2\u0006\u0002\u00085J\u001d\u0010,\u001a\u00020\u0010*\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020/0\u001cH\u0007\u00a2\u0006\u0002\u00086J\u0006\u0010:\u001a\u00020\u0010J\u0006\u0010;\u001a\u00020\u0012J\u0006\u0010?\u001a\u00020\u0010J\u0006\u0010@\u001a\u00020\u0012J\u0006\u0010G\u001a\u00020\u0010J\u0006\u0010H\u001a\u00020\u0012J\u0006\u0010L\u001a\u00020\u0010J\u0006\u0010M\u001a\u00020\u0012J\u0006\u0010T\u001a\u00020\u0010J\u0006\u0010U\u001a\u00020\u0012J\u0006\u0010Y\u001a\u00020\u0010J\u0006\u0010Z\u001a\u00020\u0012J\u0006\u0010^\u001a\u00020\u0010J\u0006\u0010_\u001a\u00020\u0012J\u0006\u0010e\u001a\u00020\u0010J\u0006\u0010f\u001a\u00020\u0012J\u0006\u0010j\u001a\u00020\u0010J\u0006\u0010k\u001a\u00020\u0012J\u0006\u0010o\u001a\u00020\u0010J\u0006\u0010p\u001a\u00020\u0012J\u0006\u0010t\u001a\u00020\u0010J\u0006\u0010u\u001a\u00020\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR$\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0008\u001a\u00020\u00138G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001d\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u001d0\u001c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001fR\u001d\u0010.\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020/0\u001c8F\u00a2\u0006\u0006\u001a\u0004\u00080\u0010\u001fR$\u00107\u001a\u00020\u00132\u0006\u0010\u0008\u001a\u00020\u00138G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00088\u0010\u0016\"\u0004\u00089\u0010\u0018R$\u0010<\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008=\u0010\u000c\"\u0004\u0008>\u0010\u000eR$\u0010B\u001a\u00020A2\u0006\u0010\u0008\u001a\u00020A8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008C\u0010D\"\u0004\u0008E\u0010FR$\u0010I\u001a\u00020\u00132\u0006\u0010\u0008\u001a\u00020\u00138G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008J\u0010\u0016\"\u0004\u0008K\u0010\u0018R$\u0010O\u001a\u00020N2\u0006\u0010\u0008\u001a\u00020N8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008P\u0010Q\"\u0004\u0008R\u0010SR$\u0010V\u001a\u00020N2\u0006\u0010\u0008\u001a\u00020N8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008W\u0010Q\"\u0004\u0008X\u0010SR$\u0010[\u001a\u00020A2\u0006\u0010\u0008\u001a\u00020A8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\\\u0010D\"\u0004\u0008]\u0010FR$\u0010`\u001a\u00020\u00122\u0006\u0010\u0008\u001a\u00020\u00128G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008a\u0010b\"\u0004\u0008c\u0010dR$\u0010g\u001a\u00020\u00122\u0006\u0010\u0008\u001a\u00020\u00128G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008h\u0010b\"\u0004\u0008i\u0010dR$\u0010l\u001a\u00020\u00122\u0006\u0010\u0008\u001a\u00020\u00128G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008m\u0010b\"\u0004\u0008n\u0010dR$\u0010q\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008r\u0010\u000c\"\u0004\u0008s\u0010\u000e\u00a8\u0006y"
    }
    d2 = {
        "Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;",
        "",
        "_builder",
        "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;",
        "<init>",
        "(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;)V",
        "_build",
        "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios;",
        "value",
        "",
        "currentRadioAccessTechnology",
        "getCurrentRadioAccessTechnology",
        "()Ljava/lang/String;",
        "setCurrentRadioAccessTechnology",
        "(Ljava/lang/String;)V",
        "clearCurrentRadioAccessTechnology",
        "",
        "hasCurrentRadioAccessTechnology",
        "",
        "",
        "networkReachabilityFlags",
        "getNetworkReachabilityFlags",
        "()I",
        "setNetworkReachabilityFlags",
        "(I)V",
        "clearNetworkReachabilityFlags",
        "hasNetworkReachabilityFlags",
        "nwPathInterfaces",
        "Lcom/google/protobuf/kotlin/DslList;",
        "Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl$NwPathInterfacesProxy;",
        "getNwPathInterfaces",
        "()Lcom/google/protobuf/kotlin/DslList;",
        "add",
        "addNwPathInterfaces",
        "plusAssign",
        "plusAssignNwPathInterfaces",
        "addAll",
        "values",
        "",
        "addAllNwPathInterfaces",
        "plusAssignAllNwPathInterfaces",
        "set",
        "index",
        "setNwPathInterfaces",
        "clear",
        "clearNwPathInterfaces",
        "localeList",
        "Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl$LocaleListProxy;",
        "getLocaleList",
        "addLocaleList",
        "plusAssignLocaleList",
        "addAllLocaleList",
        "plusAssignAllLocaleList",
        "setLocaleList",
        "clearLocaleList",
        "currentUiTheme",
        "getCurrentUiTheme",
        "setCurrentUiTheme",
        "clearCurrentUiTheme",
        "hasCurrentUiTheme",
        "deviceName",
        "getDeviceName",
        "setDeviceName",
        "clearDeviceName",
        "hasDeviceName",
        "",
        "volume",
        "getVolume",
        "()D",
        "setVolume",
        "(D)V",
        "clearVolume",
        "hasVolume",
        "trackingAuthStatus",
        "getTrackingAuthStatus",
        "setTrackingAuthStatus",
        "clearTrackingAuthStatus",
        "hasTrackingAuthStatus",
        "",
        "deviceUpTimeWithSleep",
        "getDeviceUpTimeWithSleep",
        "()J",
        "setDeviceUpTimeWithSleep",
        "(J)V",
        "clearDeviceUpTimeWithSleep",
        "hasDeviceUpTimeWithSleep",
        "deviceUpTimeWithoutSleep",
        "getDeviceUpTimeWithoutSleep",
        "setDeviceUpTimeWithoutSleep",
        "clearDeviceUpTimeWithoutSleep",
        "hasDeviceUpTimeWithoutSleep",
        "screenBrightness",
        "getScreenBrightness",
        "setScreenBrightness",
        "clearScreenBrightness",
        "hasScreenBrightness",
        "reduceMotionEnabled",
        "getReduceMotionEnabled",
        "()Z",
        "setReduceMotionEnabled",
        "(Z)V",
        "clearReduceMotionEnabled",
        "hasReduceMotionEnabled",
        "grayscaleEnabled",
        "getGrayscaleEnabled",
        "setGrayscaleEnabled",
        "clearGrayscaleEnabled",
        "hasGrayscaleEnabled",
        "invertColorsEnabled",
        "getInvertColorsEnabled",
        "setInvertColorsEnabled",
        "clearInvertColorsEnabled",
        "hasInvertColorsEnabled",
        "preferredContentSizeCategory",
        "getPreferredContentSizeCategory",
        "setPreferredContentSizeCategory",
        "clearPreferredContentSizeCategory",
        "hasPreferredContentSizeCategory",
        "Companion",
        "NwPathInterfacesProxy",
        "LocaleListProxy",
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


# static fields
.field public static final Companion:Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->Companion:Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;)V
    .locals 0

    .line 1607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1608
    iput-object p1, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;-><init>(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios;
    .locals 2

    .line 1618
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios;

    return-object v0
.end method

.method public final synthetic addAllLocaleList(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "values"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1779
    iget-object p1, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {p1, p2}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->addAllLocaleList(Ljava/lang/Iterable;)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    return-void
.end method

.method public final synthetic addAllNwPathInterfaces(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "values"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1709
    iget-object p1, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {p1, p2}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->addAllNwPathInterfaces(Ljava/lang/Iterable;)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    return-void
.end method

.method public final synthetic addLocaleList(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/String;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1760
    iget-object p1, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {p1, p2}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->addLocaleList(Ljava/lang/String;)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    return-void
.end method

.method public final synthetic addNwPathInterfaces(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/String;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1690
    iget-object p1, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {p1, p2}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->addNwPathInterfaces(Ljava/lang/String;)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    return-void
.end method

.method public final clearCurrentRadioAccessTechnology()V
    .locals 1

    .line 1634
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->clearCurrentRadioAccessTechnology()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    return-void
.end method

.method public final clearCurrentUiTheme()V
    .locals 1

    .line 1822
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->clearCurrentUiTheme()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    return-void
.end method

.method public final clearDeviceName()V
    .locals 1

    .line 1846
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->clearDeviceName()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    return-void
.end method

.method public final clearDeviceUpTimeWithSleep()V
    .locals 1

    .line 1918
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->clearDeviceUpTimeWithSleep()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    return-void
.end method

.method public final clearDeviceUpTimeWithoutSleep()V
    .locals 1

    .line 1942
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->clearDeviceUpTimeWithoutSleep()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    return-void
.end method

.method public final clearGrayscaleEnabled()V
    .locals 1

    .line 2046
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->clearGrayscaleEnabled()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    return-void
.end method

.method public final clearInvertColorsEnabled()V
    .locals 1

    .line 2082
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->clearInvertColorsEnabled()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    return-void
.end method

.method public final synthetic clearLocaleList(Lcom/google/protobuf/kotlin/DslList;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1806
    iget-object p1, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->clearLocaleList()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    return-void
.end method

.method public final clearNetworkReachabilityFlags()V
    .locals 1

    .line 1658
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->clearNetworkReachabilityFlags()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    return-void
.end method

.method public final synthetic clearNwPathInterfaces(Lcom/google/protobuf/kotlin/DslList;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1736
    iget-object p1, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->clearNwPathInterfaces()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    return-void
.end method

.method public final clearPreferredContentSizeCategory()V
    .locals 1

    .line 2118
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->clearPreferredContentSizeCategory()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    return-void
.end method

.method public final clearReduceMotionEnabled()V
    .locals 1

    .line 2010
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->clearReduceMotionEnabled()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    return-void
.end method

.method public final clearScreenBrightness()V
    .locals 1

    .line 1974
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->clearScreenBrightness()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    return-void
.end method

.method public final clearTrackingAuthStatus()V
    .locals 1

    .line 1894
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->clearTrackingAuthStatus()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    return-void
.end method

.method public final clearVolume()V
    .locals 1

    .line 1870
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->clearVolume()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    return-void
.end method

.method public final getCurrentRadioAccessTechnology()Ljava/lang/String;
    .locals 2

    .line 1625
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->getCurrentRadioAccessTechnology()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getCurrentRadioAccessTechnology(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getCurrentUiTheme()I
    .locals 1

    .line 1813
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->getCurrentUiTheme()I

    move-result v0

    return v0
.end method

.method public final getDeviceName()Ljava/lang/String;
    .locals 2

    .line 1837
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getDeviceName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getDeviceUpTimeWithSleep()J
    .locals 2

    .line 1909
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->getDeviceUpTimeWithSleep()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getDeviceUpTimeWithoutSleep()J
    .locals 2

    .line 1933
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->getDeviceUpTimeWithoutSleep()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getGrayscaleEnabled()Z
    .locals 1

    .line 2033
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->getGrayscaleEnabled()Z

    move-result v0

    return v0
.end method

.method public final getInvertColorsEnabled()Z
    .locals 1

    .line 2069
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->getInvertColorsEnabled()Z

    move-result v0

    return v0
.end method

.method public final getLocaleList()Lcom/google/protobuf/kotlin/DslList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Ljava/lang/String;",
            "Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl$LocaleListProxy;",
            ">;"
        }
    .end annotation

    .line 1750
    new-instance v0, Lcom/google/protobuf/kotlin/DslList;

    .line 1751
    iget-object v1, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->getLocaleListList()Ljava/util/List;

    move-result-object v1

    const-string v2, "getLocaleListList(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1750
    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/DslList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final getNetworkReachabilityFlags()I
    .locals 1

    .line 1649
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->getNetworkReachabilityFlags()I

    move-result v0

    return v0
.end method

.method public final getNwPathInterfaces()Lcom/google/protobuf/kotlin/DslList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Ljava/lang/String;",
            "Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl$NwPathInterfacesProxy;",
            ">;"
        }
    .end annotation

    .line 1680
    new-instance v0, Lcom/google/protobuf/kotlin/DslList;

    .line 1681
    iget-object v1, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->getNwPathInterfacesList()Ljava/util/List;

    move-result-object v1

    const-string v2, "getNwPathInterfacesList(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1680
    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/DslList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final getPreferredContentSizeCategory()Ljava/lang/String;
    .locals 2

    .line 2105
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->getPreferredContentSizeCategory()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getPreferredContentSizeCategory(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getReduceMotionEnabled()Z
    .locals 1

    .line 1997
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->getReduceMotionEnabled()Z

    move-result v0

    return v0
.end method

.method public final getScreenBrightness()D
    .locals 2

    .line 1961
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->getScreenBrightness()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getTrackingAuthStatus()I
    .locals 1

    .line 1885
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->getTrackingAuthStatus()I

    move-result v0

    return v0
.end method

.method public final getVolume()D
    .locals 2

    .line 1861
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->getVolume()D

    move-result-wide v0

    return-wide v0
.end method

.method public final hasCurrentRadioAccessTechnology()Z
    .locals 1

    .line 1641
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->hasCurrentRadioAccessTechnology()Z

    move-result v0

    return v0
.end method

.method public final hasCurrentUiTheme()Z
    .locals 1

    .line 1829
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->hasCurrentUiTheme()Z

    move-result v0

    return v0
.end method

.method public final hasDeviceName()Z
    .locals 1

    .line 1853
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->hasDeviceName()Z

    move-result v0

    return v0
.end method

.method public final hasDeviceUpTimeWithSleep()Z
    .locals 1

    .line 1925
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->hasDeviceUpTimeWithSleep()Z

    move-result v0

    return v0
.end method

.method public final hasDeviceUpTimeWithoutSleep()Z
    .locals 1

    .line 1949
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->hasDeviceUpTimeWithoutSleep()Z

    move-result v0

    return v0
.end method

.method public final hasGrayscaleEnabled()Z
    .locals 1

    .line 2057
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->hasGrayscaleEnabled()Z

    move-result v0

    return v0
.end method

.method public final hasInvertColorsEnabled()Z
    .locals 1

    .line 2093
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->hasInvertColorsEnabled()Z

    move-result v0

    return v0
.end method

.method public final hasNetworkReachabilityFlags()Z
    .locals 1

    .line 1665
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->hasNetworkReachabilityFlags()Z

    move-result v0

    return v0
.end method

.method public final hasPreferredContentSizeCategory()Z
    .locals 1

    .line 2129
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->hasPreferredContentSizeCategory()Z

    move-result v0

    return v0
.end method

.method public final hasReduceMotionEnabled()Z
    .locals 1

    .line 2021
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->hasReduceMotionEnabled()Z

    move-result v0

    return v0
.end method

.method public final hasScreenBrightness()Z
    .locals 1

    .line 1985
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->hasScreenBrightness()Z

    move-result v0

    return v0
.end method

.method public final hasTrackingAuthStatus()Z
    .locals 1

    .line 1901
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->hasTrackingAuthStatus()Z

    move-result v0

    return v0
.end method

.method public final hasVolume()Z
    .locals 1

    .line 1877
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->hasVolume()Z

    move-result v0

    return v0
.end method

.method public final synthetic plusAssignAllLocaleList(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Ljava/lang/String;",
            "Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl$LocaleListProxy;",
            ">;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1789
    invoke-virtual {p0, p1, p2}, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->addAllLocaleList(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final synthetic plusAssignAllNwPathInterfaces(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Ljava/lang/String;",
            "Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl$NwPathInterfacesProxy;",
            ">;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1719
    invoke-virtual {p0, p1, p2}, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->addAllNwPathInterfaces(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final synthetic plusAssignLocaleList(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Ljava/lang/String;",
            "Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl$LocaleListProxy;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1770
    invoke-virtual {p0, p1, p2}, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->addLocaleList(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic plusAssignNwPathInterfaces(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Ljava/lang/String;",
            "Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl$NwPathInterfacesProxy;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1700
    invoke-virtual {p0, p1, p2}, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->addNwPathInterfaces(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/String;)V

    return-void
.end method

.method public final setCurrentRadioAccessTechnology(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1628
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->setCurrentRadioAccessTechnology(Ljava/lang/String;)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    return-void
.end method

.method public final setCurrentUiTheme(I)V
    .locals 1

    .line 1816
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->setCurrentUiTheme(I)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    return-void
.end method

.method public final setDeviceName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1840
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->setDeviceName(Ljava/lang/String;)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    return-void
.end method

.method public final setDeviceUpTimeWithSleep(J)V
    .locals 1

    .line 1912
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0, p1, p2}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->setDeviceUpTimeWithSleep(J)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    return-void
.end method

.method public final setDeviceUpTimeWithoutSleep(J)V
    .locals 1

    .line 1936
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0, p1, p2}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->setDeviceUpTimeWithoutSleep(J)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    return-void
.end method

.method public final setGrayscaleEnabled(Z)V
    .locals 1

    .line 2036
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->setGrayscaleEnabled(Z)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    return-void
.end method

.method public final setInvertColorsEnabled(Z)V
    .locals 1

    .line 2072
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->setInvertColorsEnabled(Z)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    return-void
.end method

.method public final synthetic setLocaleList(Lcom/google/protobuf/kotlin/DslList;ILjava/lang/String;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1799
    iget-object p1, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {p1, p2, p3}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->setLocaleList(ILjava/lang/String;)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    return-void
.end method

.method public final setNetworkReachabilityFlags(I)V
    .locals 1

    .line 1652
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->setNetworkReachabilityFlags(I)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    return-void
.end method

.method public final synthetic setNwPathInterfaces(Lcom/google/protobuf/kotlin/DslList;ILjava/lang/String;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1729
    iget-object p1, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {p1, p2, p3}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->setNwPathInterfaces(ILjava/lang/String;)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    return-void
.end method

.method public final setPreferredContentSizeCategory(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2108
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->setPreferredContentSizeCategory(Ljava/lang/String;)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    return-void
.end method

.method public final setReduceMotionEnabled(Z)V
    .locals 1

    .line 2000
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->setReduceMotionEnabled(Z)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    return-void
.end method

.method public final setScreenBrightness(D)V
    .locals 1

    .line 1964
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0, p1, p2}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->setScreenBrightness(D)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    return-void
.end method

.method public final setTrackingAuthStatus(I)V
    .locals 1

    .line 1888
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->setTrackingAuthStatus(I)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    return-void
.end method

.method public final setVolume(D)V
    .locals 1

    .line 1864
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    invoke-virtual {v0, p1, p2}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;->setVolume(D)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;

    return-void
.end method
