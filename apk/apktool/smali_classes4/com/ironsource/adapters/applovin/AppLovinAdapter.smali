.class public final Lcom/ironsource/adapters/applovin/AppLovinAdapter;
.super Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseAdapter;
.source "AppLovinAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppLovinAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppLovinAdapter.kt\ncom/ironsource/adapters/applovin/AppLovinAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,220:1\n1#2:221\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010!\n\u0002\u0008\u0004\u0018\u0000  2\u00020\u0001:\u0001 B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0008\u0010\u0008\u001a\u00020\u0007H\u0016J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\"\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u000eH\u0002J\u0010\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u0007H\u0002J\u0010\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\nH\u0016J$\u0010\u001a\u001a\u00020\u000e2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u00072\u0010\u0010\u001c\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u001dH\u0016J\u0010\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020\nH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/ironsource/adapters/applovin/AppLovinAdapter;",
        "Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseAdapter;",
        "<init>",
        "()V",
        "mainHandler",
        "Landroid/os/Handler;",
        "getAdapterVersion",
        "",
        "getNetworkSDKVersion",
        "isUsingActivityBeforeImpression",
        "",
        "adFormat",
        "Lcom/unity3d/mediation/LevelPlay$AdFormat;",
        "init",
        "",
        "adData",
        "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;",
        "context",
        "Landroid/content/Context;",
        "networkInitializationListener",
        "Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;",
        "initializationSuccess",
        "initializationFailure",
        "message",
        "setConsent",
        "consent",
        "setMetaData",
        "key",
        "values",
        "",
        "setCCPAValue",
        "value",
        "Companion",
        "applovinadapter_release"
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
.field public static final Companion:Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion;

.field private static final GitHash:Ljava/lang/String; = "692dd46"

.field private static appLovinSdk:Lcom/applovin/sdk/AppLovinSdk;

.field private static final initListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;",
            ">;"
        }
    .end annotation
.end field

.field private static initState:Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion$InitState;

.field private static final wasInitCalled:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$0THzCPsg4TqzR7IegCgpBUbEhIY(Ljava/lang/String;Lcom/ironsource/adapters/applovin/AppLovinAdapter;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->init$lambda$3(Ljava/lang/String;Lcom/ironsource/adapters/applovin/AppLovinAdapter;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eRYaESelkPj_tWLLGKeszi84MtE(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Lcom/applovin/sdk/AppLovinSdkConfiguration;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->init$lambda$3$lambda$2(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Lcom/applovin/sdk/AppLovinSdkConfiguration;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->Companion:Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion;

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->wasInitCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    sget-object v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion$InitState;->INIT_STATE_NONE:Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion$InitState;

    sput-object v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->initState:Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion$InitState;

    .line 39
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->initListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseAdapter;-><init>()V

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic access$getAppLovinSdk$cp()Lcom/applovin/sdk/AppLovinSdk;
    .locals 1

    .line 22
    sget-object v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->appLovinSdk:Lcom/applovin/sdk/AppLovinSdk;

    return-object v0
.end method

.method public static final getErrorString(I)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->Companion:Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion;

    invoke-virtual {v0, p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion;->getErrorString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getLoadErrorType(I)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->Companion:Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion;

    invoke-virtual {v0, p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion;->getLoadErrorType(I)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    move-result-object p0

    return-object p0
.end method

.method private static final init$lambda$3(Ljava/lang/String;Lcom/ironsource/adapters/applovin/AppLovinAdapter;Landroid/content/Context;)V
    .locals 2

    .line 143
    :try_start_0
    invoke-static {p0}, Lcom/applovin/sdk/AppLovinSdkInitializationConfiguration;->builder(Ljava/lang/String;)Lcom/applovin/sdk/AppLovinSdkInitializationConfiguration$Builder;

    move-result-object p0

    .line 144
    const-string v0, "ironsource"

    invoke-interface {p0, v0}, Lcom/applovin/sdk/AppLovinSdkInitializationConfiguration$Builder;->setMediationProvider(Ljava/lang/String;)Lcom/applovin/sdk/AppLovinSdkInitializationConfiguration$Builder;

    move-result-object p0

    .line 145
    invoke-interface {p0}, Lcom/applovin/sdk/AppLovinSdkInitializationConfiguration$Builder;->build()Lcom/applovin/sdk/AppLovinSdkInitializationConfiguration;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object p2

    .line 152
    invoke-virtual {p2}, Lcom/applovin/sdk/AppLovinSdk;->getSettings()Lcom/applovin/sdk/AppLovinSdkSettings;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->isAdaptersDebugEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/sdk/AppLovinSdkSettings;->setVerboseLogging(Z)V

    .line 151
    sput-object p2, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->appLovinSdk:Lcom/applovin/sdk/AppLovinSdk;

    if-eqz p2, :cond_0

    .line 158
    new-instance v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)V

    invoke-virtual {p2, p0, v0}, Lcom/applovin/sdk/AppLovinSdk;->initialize(Lcom/applovin/sdk/AppLovinSdkInitializationConfiguration;Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 147
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    invoke-direct {p1, p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->initializationFailure(Ljava/lang/String;)V

    return-void
.end method

.method private static final init$lambda$3$lambda$2(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Lcom/applovin/sdk/AppLovinSdkConfiguration;)V
    .locals 0

    .line 158
    invoke-direct {p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->initializationSuccess()V

    return-void
.end method

.method private final initializationFailure(Ljava/lang/String;)V
    .locals 3

    .line 177
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    const/4 v1, 0x1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Failed to initialize SDK - %s"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "format(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 179
    sget-object p1, Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion$InitState;->INIT_STATE_FAILED:Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion$InitState;

    sput-object p1, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->initState:Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion$InitState;

    .line 182
    sget-object p1, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->initListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v0, "iterator(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "next(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;

    const/16 v1, 0x3e8

    .line 183
    const-string v2, "AppLovin sdk init failed"

    invoke-interface {v0, v1, v2}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;->onInitFailed(ILjava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_0
    sget-object p1, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->initListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method private final initializationSuccess()V
    .locals 3

    .line 164
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 166
    sget-object v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion$InitState;->INIT_STATE_SUCCESS:Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion$InitState;

    sput-object v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->initState:Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion$InitState;

    .line 169
    sget-object v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->initListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "next(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;

    .line 170
    invoke-interface {v1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;->onInitSuccess()V

    goto :goto_0

    .line 173
    :cond_0
    sget-object v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->initListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public static final networkAdapterVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->Companion:Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion;

    invoke-virtual {v0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion;->networkAdapterVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final setCCPAValue(Z)V
    .locals 3

    .line 213
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "value = %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 214
    invoke-static {p1}, Lcom/applovin/sdk/AppLovinPrivacySettings;->setDoNotSell(Z)V

    return-void
.end method


# virtual methods
.method public getAdapterVersion()Ljava/lang/String;
    .locals 1

    .line 88
    const-string v0, "5.9.0"

    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .locals 2

    .line 90
    sget-object v0, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    const-string v1, "VERSION"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public init(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;)V
    .locals 7

    const-string v0, "adData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    const-string v0, "sdkKey"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    const/16 v3, 0x3ea

    const-string v4, "Missing params - %s"

    const-string v5, "format(...)"

    const/4 v6, 0x1

    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 108
    :cond_0
    const-string v0, "zoneId"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 109
    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 117
    :cond_1
    sget-object p1, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->initState:Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion$InitState;

    sget-object v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion$InitState;->INIT_STATE_SUCCESS:Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion$InitState;

    if-ne p1, v0, :cond_2

    if-eqz p3, :cond_8

    .line 118
    invoke-interface {p3}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;->onInitSuccess()V

    return-void

    .line 123
    :cond_2
    sget-object p1, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->initState:Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion$InitState;

    sget-object v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion$InitState;->INIT_STATE_FAILED:Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion$InitState;

    if-ne p1, v0, :cond_3

    .line 124
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "AppLovin sdk init failed"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    if-eqz p3, :cond_8

    const/16 p1, 0x3e8

    .line 125
    invoke-interface {p3, p1, p2}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;->onInitFailed(ILjava/lang/String;)V

    return-void

    .line 133
    :cond_3
    sget-object p1, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->initState:Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion$InitState;

    sget-object v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion$InitState;->INIT_STATE_NONE:Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion$InitState;

    if-eq p1, v0, :cond_4

    sget-object p1, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->initState:Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion$InitState;

    sget-object v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion$InitState;->INIT_STATE_IN_PROGRESS:Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion$InitState;

    if-ne p1, v0, :cond_5

    :cond_4
    if-eqz p3, :cond_5

    .line 134
    sget-object p1, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->initListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_5
    sget-object p1, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->wasInitCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-virtual {p1, p3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 138
    sget-object p1, Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion$InitState;->INIT_STATE_IN_PROGRESS:Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion$InitState;

    sput-object p1, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->initState:Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion$InitState;

    .line 139
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    const-string v0, "sdkKey = %s"

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 141
    iget-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mainHandler:Landroid/os/Handler;

    new-instance p3, Lcom/ironsource/adapters/applovin/AppLovinAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p3, v1, p0, p2}, Lcom/ironsource/adapters/applovin/AppLovinAdapter$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lcom/ironsource/adapters/applovin/AppLovinAdapter;Landroid/content/Context;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 110
    :cond_6
    :goto_0
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    if-eqz p3, :cond_8

    .line 112
    invoke-interface {p3, v3, p1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;->onInitFailed(ILjava/lang/String;)V

    return-void

    .line 102
    :cond_7
    :goto_1
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    if-eqz p3, :cond_8

    .line 104
    invoke-interface {p3, v3, p1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;->onInitFailed(ILjava/lang/String;)V

    :cond_8
    return-void
.end method

.method public isUsingActivityBeforeImpression(Lcom/unity3d/mediation/LevelPlay$AdFormat;)Z
    .locals 1

    const-string v0, "adFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setConsent(Z)V
    .locals 3

    .line 194
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "consent = %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 195
    invoke-static {p1}, Lcom/applovin/sdk/AppLovinPrivacySettings;->setHasUserConsent(Z)V

    return-void
.end method

.method public setMetaData(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 199
    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 204
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_1

    goto :goto_1

    .line 205
    :cond_1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    if-nez p1, :cond_2

    const-string v1, ""

    goto :goto_0

    :cond_2
    move-object v1, p1

    :goto_0
    filled-new-array {v1, p2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "key = %s, value = %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 207
    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->isValidCCPAMetaData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 208
    invoke-static {p2}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->getMetaDataBooleanValue(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->setCCPAValue(Z)V

    :cond_3
    :goto_1
    return-void
.end method
