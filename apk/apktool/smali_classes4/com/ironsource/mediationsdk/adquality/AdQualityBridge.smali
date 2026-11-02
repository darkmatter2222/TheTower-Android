.class public final Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;

.field private static isGetVersionMethodExist:Ljava/lang/Boolean;


# instance fields
.field private final tools:Lcom/ironsource/yb;


# direct methods
.method public static synthetic $r8$lambda$HZ6sl0EQqCTvnbi_q8KnI2SiXlM(Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;)V
    .locals 0

    invoke-static {p0}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;->enableRevenueDataReporting$lambda$1(Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;->Companion:Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/j0;I)V
    .locals 10

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adQualityDataProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v9}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/j0;ILcom/ironsource/yb;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/j0;ILcom/ironsource/yb;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adQualityDataProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tools"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p6, p0, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;->tools:Lcom/ironsource/yb;

    .line 14
    new-instance p6, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;

    invoke-direct {p6}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;-><init>()V

    .line 15
    const-string v0, "LevelPlay"

    invoke-virtual {p6, v0}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->setInitializationSource(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;

    move-result-object p6

    .line 16
    invoke-direct {p0, p5}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;->convertToAdQualityLogLevel(I)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;

    move-result-object p5

    invoke-virtual {p6, p5}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->setLogLevel(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;

    move-result-object p5

    .line 18
    new-instance p6, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$configBuilder$1;

    invoke-direct {p6, p0}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$configBuilder$1;-><init>(Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;)V

    .line 19
    invoke-virtual {p5, p6}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->setAdQualityInitListener(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitListener;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;

    move-result-object p5

    .line 48
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;->getCoppaValue()Z

    move-result p6

    invoke-virtual {p5, p6}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->setCoppa(Z)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;

    move-result-object p5

    .line 49
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;->getDeviceIdType()Lcom/ironsource/adqualitysdk/sdk/ISAdQualityDeviceIdType;

    move-result-object p6

    invoke-virtual {p5, p6}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->setDeviceIdType(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityDeviceIdType;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;

    move-result-object p5

    .line 51
    sget-object p6, Lcom/ironsource/mediationsdk/adquality/a;->a:Lcom/ironsource/mediationsdk/adquality/a$b;

    invoke-virtual {p6}, Lcom/ironsource/mediationsdk/adquality/a$b;->b()Z

    move-result p6

    if-eqz p6, :cond_0

    const/4 p6, 0x1

    .line 52
    invoke-virtual {p5, p6}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->setTestMode(Z)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;

    .line 55
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-nez p6, :cond_1

    .line 56
    invoke-virtual {p5, p3}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->setUserId(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;

    .line 59
    :cond_1
    sget-object v0, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;->Companion:Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;->getAdQualitySdkVersion()Ljava/lang/String;

    move-result-object p3

    const-string p6, "7.14.1"

    invoke-static {v0, p3, p6}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;->access$versionCompare(Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    if-ltz p3, :cond_2

    .line 60
    invoke-virtual {p4}, Lcom/ironsource/j0;->a()Lorg/json/JSONObject;

    move-result-object p3

    .line 61
    invoke-virtual {p3}, Lorg/json/JSONObject;->length()I

    move-result p4

    if-lez p4, :cond_2

    .line 62
    invoke-virtual {p5, p3}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->setMetaData(Lorg/json/JSONObject;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;

    .line 67
    :cond_2
    sget-object v1, Lcom/ironsource/D5;->A:Lcom/ironsource/D5;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;->logEvent$default(Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;Lcom/ironsource/D5;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)V

    .line 69
    invoke-virtual {p5}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->build()Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig;

    move-result-object p3

    .line 71
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;->getInstance()Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;

    move-result-object p4

    invoke-virtual {p4, p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;->initialize(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/j0;ILcom/ironsource/yb;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    .line 72
    new-instance p6, Lcom/ironsource/yb;

    invoke-direct {p6}, Lcom/ironsource/yb;-><init>()V

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 73
    invoke-direct/range {v0 .. v6}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/j0;ILcom/ironsource/yb;)V

    return-void
.end method

.method public static final synthetic access$enableRevenueDataReporting(Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;->enableRevenueDataReporting()V

    return-void
.end method

.method public static final synthetic access$isGetVersionMethodExist$cp()Ljava/lang/Boolean;
    .locals 1

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;->isGetVersionMethodExist:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static final synthetic access$setGetVersionMethodExist$cp(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;->isGetVersionMethodExist:Ljava/lang/Boolean;

    return-void
.end method

.method public static final adQualityAvailable()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;->Companion:Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;->adQualityAvailable()Z

    move-result v0

    return v0
.end method

.method private final convertToAdQualityLogLevel(I)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 1
    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;->INFO:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;

    return-object p1

    .line 2
    :cond_0
    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;->ERROR:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;

    return-object p1

    .line 3
    :cond_1
    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;->WARNING:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;

    return-object p1

    .line 4
    :cond_2
    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;->INFO:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;

    return-object p1

    .line 5
    :cond_3
    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;->VERBOSE:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;

    return-object p1
.end method

.method private final enableRevenueDataReporting()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;->revenueDataReportingAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;->tools:Lcom/ironsource/yb;

    new-instance v1, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/yb;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final enableRevenueDataReporting$lambda$1(Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/ironsource/ta;->b()Lcom/ironsource/ta;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/ironsource/h0;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;->tools:Lcom/ironsource/yb;

    invoke-direct {v1, p0, v2}, Lcom/ironsource/h0;-><init>(Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;Lcom/ironsource/yb;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/ta;->a(Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;)V

    .line 3
    sget-object v3, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;->Companion:Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;

    sget-object v4, Lcom/ironsource/D5;->F:Lcom/ironsource/D5;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;->logEvent$default(Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;Lcom/ironsource/D5;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static final getAdQualitySdkVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;->Companion:Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;->getAdQualitySdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getCoppaValue()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/ironsource/ta;->b()Lcom/ironsource/ta;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/ironsource/ta;->c()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 3
    const-string v1, "is_child_directed"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final getDeviceIdType()Lcom/ironsource/adqualitysdk/sdk/ISAdQualityDeviceIdType;
    .locals 3

    .line 1
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityDeviceIdType;->GAID:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityDeviceIdType;

    .line 3
    invoke-static {}, Lcom/ironsource/O6;->a()Lcom/ironsource/O6;

    move-result-object v1

    const-string v2, "AdvIdOptOutReason"

    invoke-virtual {v1, v2}, Lcom/ironsource/O6;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityDeviceIdType;->NONE:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityDeviceIdType;

    :cond_0
    return-object v0
.end method

.method private static final isGetVersionMethodExist()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;->Companion:Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;->access$isGetVersionMethodExist(Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;)Z

    move-result v0

    return v0
.end method

.method private static final logEvent(Lcom/ironsource/D5;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;->Companion:Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;

    invoke-static {v0, p0, p1, p2}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;->access$logEvent(Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;Lcom/ironsource/D5;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method private final revenueDataReportingAvailable()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;->Companion:Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;->getAdQualitySdkVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "9.8.0"

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;->access$versionCompare(Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static final versionCompare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;->Companion:Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;

    invoke-static {v0, p0, p1}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;->access$versionCompare(Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final changeUserId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;->getInstance()Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;->changeUserId(Ljava/lang/String;)V

    return-void
.end method

.method public final sendCustomMediationRevenue$mediationsdk_release(Lcom/ironsource/c9;)V
    .locals 2

    const-string v0, "impressionData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue$Builder;

    invoke-direct {v0}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue$Builder;-><init>()V

    .line 2
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;->LEVEL_PLAY:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue$Builder;->setMediationNetwork(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/ironsource/c9;->d()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue$Builder;->setCustomData(Lorg/json/JSONObject;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue$Builder;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue$Builder;->build()Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;

    move-result-object p1

    .line 5
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;->getInstance()Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;->sendCustomMediationRevenue(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;)V

    return-void
.end method

.method public final setSegment(Lcom/ironsource/ia;)V
    .locals 7

    const-string v0, "segment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualitySegment$Builder;

    invoke-direct {v0}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualitySegment$Builder;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/ironsource/ia;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/ironsource/ia;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualitySegment$Builder;->setSegmentName(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualitySegment$Builder;

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/ironsource/ia;->a()I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/ironsource/ia;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualitySegment$Builder;->setAge(I)Lcom/ironsource/adqualitysdk/sdk/ISAdQualitySegment$Builder;

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/ironsource/ia;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/ironsource/ia;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualitySegment$Builder;->setGender(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualitySegment$Builder;

    .line 11
    :cond_2
    invoke-virtual {p1}, Lcom/ironsource/ia;->e()I

    move-result v1

    if-le v1, v2, :cond_3

    .line 12
    invoke-virtual {p1}, Lcom/ironsource/ia;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualitySegment$Builder;->setLevel(I)Lcom/ironsource/adqualitysdk/sdk/ISAdQualitySegment$Builder;

    .line 14
    :cond_3
    invoke-virtual {p1}, Lcom/ironsource/ia;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 15
    invoke-virtual {p1}, Lcom/ironsource/ia;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualitySegment$Builder;->setIsPaying(Z)Lcom/ironsource/adqualitysdk/sdk/ISAdQualitySegment$Builder;

    .line 17
    :cond_4
    invoke-virtual {p1}, Lcom/ironsource/ia;->c()D

    move-result-wide v1

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_5

    .line 18
    invoke-virtual {p1}, Lcom/ironsource/ia;->c()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualitySegment$Builder;->setInAppPurchasesTotal(D)Lcom/ironsource/adqualitysdk/sdk/ISAdQualitySegment$Builder;

    .line 20
    :cond_5
    invoke-virtual {p1}, Lcom/ironsource/ia;->h()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_6

    .line 21
    invoke-virtual {p1}, Lcom/ironsource/ia;->h()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualitySegment$Builder;->setUserCreationDate(J)Lcom/ironsource/adqualitysdk/sdk/ISAdQualitySegment$Builder;

    .line 23
    :cond_6
    invoke-virtual {p1}, Lcom/ironsource/ia;->f()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v1, "iterator(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_7
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 24
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 25
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 26
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "custom_"

    const/4 v6, 0x0

    invoke-static {v2, v5, v6, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 27
    invoke-static {v2, v5}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualitySegment$Builder;->setCustomData(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualitySegment$Builder;

    goto :goto_0

    .line 30
    :cond_8
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;->getInstance()Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;

    move-result-object p1

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualitySegment$Builder;->build()Lcom/ironsource/adqualitysdk/sdk/ISAdQualitySegment;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;->setSegment(Lcom/ironsource/adqualitysdk/sdk/ISAdQualitySegment;)V

    return-void
.end method
