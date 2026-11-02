.class public final Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;,
        Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000 &2\u00020\u0001:\u0002\'&R\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0010\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\n\u001a\u0004\u0008\u000f\u0010\u000cR\u0017\u0010\u0016\u001a\u00020\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u0017\u0010\u001c\u001a\u00020\u00178\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\u0019\u0010\"\u001a\u0004\u0018\u00010\u001d8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!R\u0017\u0010%\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008#\u0010\n\u001a\u0004\u0008$\u0010\u000c\u00a8\u0006("
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;",
        "",
        "",
        "a",
        "Ljava/lang/String;",
        "getApplicationId",
        "()Ljava/lang/String;",
        "applicationId",
        "",
        "b",
        "Z",
        "getNativeAdDebuggerDisabled",
        "()Z",
        "nativeAdDebuggerDisabled",
        "c",
        "getMediationAdapterInitializationDisabled",
        "mediationAdapterInitializationDisabled",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;",
        "d",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;",
        "getRequestConfiguration",
        "()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;",
        "requestConfiguration",
        "Landroid/os/Bundle;",
        "e",
        "Landroid/os/Bundle;",
        "getExtras",
        "()Landroid/os/Bundle;",
        "extras",
        "Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;",
        "f",
        "Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;",
        "getAdapterInitializationConfig",
        "()Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;",
        "adapterInitializationConfig",
        "h",
        "getSdkCrashReportingDisabled",
        "sdkCrashReportingDisabled",
        "Companion",
        "Builder",
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
.field public static final Companion:Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Companion;

.field public static final FORCE_CRONET_FALLBACK_KEY:Ljava/lang/String; = "force_cronet_java_fallback_provider"

.field public static final FORCE_CRONET_KEY:Ljava/lang/String; = "force_use_cronet"

.field public static final WEBVIEW_APIS_FOR_ADS_APPLICATION_ID:Ljava/lang/String; = "webview_api_for_ads_application_id"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Z

.field private final d:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

.field private final e:Landroid/os/Bundle;

.field private final f:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;

.field private final g:Ljava/lang/String;

.field private final h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Companion;-><init>(I)V

    sput-object v0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ZZLcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;Landroid/os/Bundle;Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;Ljava/lang/String;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->a:Ljava/lang/String;

    .line 6
    iput-boolean p2, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->b:Z

    .line 7
    iput-boolean p3, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->c:Z

    .line 8
    iput-object p4, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

    .line 9
    iput-object p5, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->e:Landroid/os/Bundle;

    .line 10
    iput-object p6, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->f:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;

    .line 12
    iput-object p7, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->g:Ljava/lang/String;

    .line 13
    iput-boolean p8, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->h:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZZLcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;Landroid/os/Bundle;Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;Ljava/lang/String;ZI)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;-><init>(Ljava/lang/String;ZZLcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;Landroid/os/Bundle;Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final getAdapterInitializationConfig()Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->f:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;

    return-object v0
.end method

.method public final getApplicationId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->e:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getMediationAdapterInitializationDisabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->c:Z

    return v0
.end method

.method public final getNativeAdDebuggerDisabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->b:Z

    return v0
.end method

.method public final getRequestConfiguration()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

    return-object v0
.end method

.method public final getSdkCrashReportingDisabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->h:Z

    return v0
.end method
