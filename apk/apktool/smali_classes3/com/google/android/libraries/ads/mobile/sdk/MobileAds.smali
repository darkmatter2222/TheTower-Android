.class public final Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;",
        "",
        "Companion",
        "ads-mobile-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;

.field private static final a:Ljava/lang/Object;

.field private static volatile b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;-><init>(I)V

    sput-object v0, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;->a:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public static final synthetic a(Z)V
    .locals 0

    .line 2
    sput-boolean p0, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;->b:Z

    return-void
.end method

.method public static final synthetic b()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;->b:Z

    return v0
.end method

.method public static final generateSignal(Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationCallback;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;->generateSignal(Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationCallback;)V

    return-void
.end method

.method public static final getInitializationStatus()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationStatus;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;->getInitializationStatus()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationStatus;

    move-result-object v0

    return-object v0
.end method

.method public static final getRequestConfiguration()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;->getRequestConfiguration()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public static final getVersion()Lcom/google/android/libraries/ads/mobile/sdk/common/VersionInfo;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;->getVersion()Lcom/google/android/libraries/ads/mobile/sdk/common/VersionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static final initialize(Landroid/content/Context;Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;->initialize(Landroid/content/Context;Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;)V

    return-void
.end method

.method public static final initialize(Landroid/content/Context;Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 2
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;->initialize(Landroid/content/Context;Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;)V

    return-void
.end method

.method public static final initializeAdapters(Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;->initializeAdapters(Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;)V

    return-void
.end method

.method public static final initializeAdapters(Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 2
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;->initializeAdapters(Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;)V

    return-void
.end method

.method public static final isInitialized()Z
    .locals 1

    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public static final openAdInspector(Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;->openAdInspector(Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;)V

    return-void
.end method

.method public static final openDebugMenu(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;->openDebugMenu(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public static final putPublisherFirstPartyIdEnabled(Z)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;->putPublisherFirstPartyIdEnabled(Z)Z

    move-result p0

    return p0
.end method

.method public static final registerCustomTabsSession(Landroidx/browser/customtabs/CustomTabsClient;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsCallback;)Landroidx/browser/customtabs/CustomTabsSession;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;->registerCustomTabsSession(Landroidx/browser/customtabs/CustomTabsClient;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsCallback;)Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object p0

    return-object p0
.end method

.method public static final registerWebView(Landroid/webkit/WebView;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;->registerWebView(Landroid/webkit/WebView;)V

    return-void
.end method

.method public static final setRequestConfiguration(Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;->setRequestConfiguration(Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;)V

    return-void
.end method

.method public static final setUserControlledAppVolume(F)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;->setUserControlledAppVolume(F)V

    return-void
.end method

.method public static final setUserMutedApp(Z)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;->setUserMutedApp(Z)V

    return-void
.end method

.method private static final stop()V
    .locals 1
    .annotation runtime Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;

    invoke-static {v0}, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;->a(Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;)V

    return-void
.end method
