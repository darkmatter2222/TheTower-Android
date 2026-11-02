.class public final Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion;
.super Ljava/lang/Object;
.source "UnityAdsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adapters/unityads/UnityAdsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001:\u0001\u0016B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J\u0008\u0010\u0015\u001a\u00020\u0005H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u0007X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion;",
        "",
        "<init>",
        "()V",
        "GitHash",
        "",
        "mediationInfo",
        "Lcom/unity3d/ads/MediationInfo;",
        "getMediationInfo$unityadsadapter_release",
        "()Lcom/unity3d/ads/MediationInfo;",
        "wasInitCalled",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "initState",
        "Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;",
        "initCallbackListeners",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;",
        "getLoadErrorType",
        "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;",
        "error",
        "Lcom/unity3d/ads/UnityAdsError;",
        "networkAdapterVersion",
        "InitState",
        "unityadsadapter_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLoadErrorType(Lcom/unity3d/ads/UnityAdsError;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p1}, Lcom/unity3d/ads/UnityAdsError;->getCode()I

    move-result p1

    const v0, 0xcb84

    if-ne p1, v0, :cond_0

    .line 56
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_NO_FILL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    return-object p1

    .line 58
    :cond_0
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_INTERNAL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    return-object p1
.end method

.method public final getMediationInfo$unityadsadapter_release()Lcom/unity3d/ads/MediationInfo;
    .locals 1

    .line 42
    invoke-static {}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->access$getMediationInfo$cp()Lcom/unity3d/ads/MediationInfo;

    move-result-object v0

    return-object v0
.end method

.method public final networkAdapterVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 64
    const-string v0, "5.14.0"

    return-object v0
.end method
