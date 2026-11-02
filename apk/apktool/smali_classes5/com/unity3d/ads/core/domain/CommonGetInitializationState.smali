.class public final Lcom/unity3d/ads/core/domain/CommonGetInitializationState;
.super Ljava/lang/Object;
.source "CommonGetInitializationState.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/GetInitializationState;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0011\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0096\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/CommonGetInitializationState;",
        "Lcom/unity3d/ads/core/domain/GetInitializationState;",
        "sessionRepository",
        "Lcom/unity3d/ads/core/data/repository/SessionRepository;",
        "sdkPropertiesManager",
        "Lcom/unity3d/ads/core/data/manager/SDKPropertiesManager;",
        "<init>",
        "(Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/manager/SDKPropertiesManager;)V",
        "invoke",
        "Lcom/unity3d/ads/core/data/model/InitializationState;",
        "legacy",
        "",
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


# instance fields
.field private final sdkPropertiesManager:Lcom/unity3d/ads/core/data/manager/SDKPropertiesManager;

.field private final sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/manager/SDKPropertiesManager;)V
    .locals 1

    const-string v0, "sessionRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkPropertiesManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/CommonGetInitializationState;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 11
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/CommonGetInitializationState;->sdkPropertiesManager:Lcom/unity3d/ads/core/data/manager/SDKPropertiesManager;

    return-void
.end method


# virtual methods
.method public invoke(Z)Lcom/unity3d/ads/core/data/model/InitializationState;
    .locals 0

    if-eqz p1, :cond_0

    .line 15
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/CommonGetInitializationState;->sdkPropertiesManager:Lcom/unity3d/ads/core/data/manager/SDKPropertiesManager;

    invoke-interface {p1}, Lcom/unity3d/ads/core/data/manager/SDKPropertiesManager;->getCurrentInitializationState()Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/ads/core/data/model/InitializationStateKt;->toBold(Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;)Lcom/unity3d/ads/core/data/model/InitializationState;

    move-result-object p1

    return-object p1

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/CommonGetInitializationState;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-interface {p1}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getInitializationState()Lcom/unity3d/ads/core/data/model/InitializationState;

    move-result-object p1

    return-object p1
.end method
