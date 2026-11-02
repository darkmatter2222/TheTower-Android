.class public final Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0019\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0017\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0015\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\r\u0010\n\u001a\u00020\u0000\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0015\u0010\u000e\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\u0000\u00a2\u0006\u0004\u0008\u0010\u0010\u000bJ\r\u0010\u0011\u001a\u00020\u0000\u00a2\u0006\u0004\u0008\u0011\u0010\u000bJ\u0017\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0012H\u0007\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\r\u0010\u0017\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;",
        "",
        "",
        "plugin",
        "setPlugin",
        "(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;",
        "Landroid/os/Bundle;",
        "extras",
        "setExtras",
        "(Landroid/os/Bundle;)Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;",
        "setNativeValidatorDisabled",
        "()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;",
        "requestConfiguration",
        "setRequestConfiguration",
        "(Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;)Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;",
        "disableMediationAdapterInitialization",
        "disableSdkCrashReporting",
        "Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;",
        "adapterInitializationConfig",
        "setAdapterInitializationConfig",
        "(Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;)Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;",
        "Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;",
        "build",
        "()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;",
        "applicationId",
        "<init>",
        "(Ljava/lang/String;)V",
        "ads-mobile-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/os/Bundle;

.field private c:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

.field private d:Z

.field private e:Z

.field private f:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;

.field private g:Ljava/lang/String;

.field private h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "applicationId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;->a:Ljava/lang/String;

    .line 4
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;->b:Landroid/os/Bundle;

    .line 5
    new-instance p1, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;

    invoke-direct {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;->build()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

    return-void
.end method

.method private final setPlugin(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;
    .locals 0
    .annotation runtime Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;->g:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final build()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;
    .locals 10

    .line 1
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;

    .line 2
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;->a:Ljava/lang/String;

    .line 3
    iget-boolean v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;->d:Z

    .line 4
    iget-boolean v3, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;->e:Z

    .line 5
    iget-object v4, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

    .line 6
    iget-object v5, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;->b:Landroid/os/Bundle;

    .line 7
    iget-object v6, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;->f:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;

    .line 8
    iget-object v7, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;->g:Ljava/lang/String;

    .line 9
    iget-boolean v8, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;->h:Z

    const/4 v9, 0x0

    .line 10
    invoke-direct/range {v0 .. v9}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;-><init>(Ljava/lang/String;ZZLcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;Landroid/os/Bundle;Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;Ljava/lang/String;ZI)V

    return-object v0
.end method

.method public final disableMediationAdapterInitialization()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;->e:Z

    return-object p0
.end method

.method public final disableSdkCrashReporting()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;->h:Z

    return-object p0
.end method

.method public final setAdapterInitializationConfig(Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;)Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;
    .locals 1

    const-string v0, "adapterInitializationConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;->f:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;

    return-object p0
.end method

.method public final setExtras(Landroid/os/Bundle;)Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;
    .locals 1

    const-string v0, "extras"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;->b:Landroid/os/Bundle;

    return-object p0
.end method

.method public final setNativeValidatorDisabled()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;->d:Z

    return-object p0
.end method

.method public final setRequestConfiguration(Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;)Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;
    .locals 1

    const-string v0, "requestConfiguration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

    return-object p0
.end method
