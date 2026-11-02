.class public final Lcom/ironsource/adapters/facebook/FacebookAdapter$Companion;
.super Ljava/lang/Object;
.source "FacebookAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adapters/facebook/FacebookAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adapters/facebook/FacebookAdapter$Companion$InitState;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001:\u0001\u0019B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0005H\u0007J\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/ironsource/adapters/facebook/FacebookAdapter$Companion;",
        "",
        "<init>",
        "()V",
        "GitHash",
        "",
        "networkAdapterVersion",
        "wasInitCalled",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "initState",
        "Lcom/ironsource/adapters/facebook/FacebookAdapter$Companion$InitState;",
        "initListeners",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;",
        "interstitialFacebookCacheFlags",
        "Ljava/util/EnumSet;",
        "Lcom/facebook/ads/CacheFlag;",
        "getInterstitialFacebookCacheFlags$facebookadapter_release",
        "()Ljava/util/EnumSet;",
        "setInterstitialFacebookCacheFlags$facebookadapter_release",
        "(Ljava/util/EnumSet;)V",
        "getLoadErrorType",
        "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;",
        "adError",
        "Lcom/facebook/ads/AdError;",
        "InitState",
        "facebookadapter_release"
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

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/ironsource/adapters/facebook/FacebookAdapter$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInterstitialFacebookCacheFlags$facebookadapter_release()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;"
        }
    .end annotation

    .line 50
    invoke-static {}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$getInterstitialFacebookCacheFlags$cp()Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public final getLoadErrorType(Lcom/facebook/ads/AdError;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;
    .locals 1

    const-string v0, "adError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result p1

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 54
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_NO_FILL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    return-object p1

    .line 56
    :cond_0
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_INTERNAL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    return-object p1
.end method

.method public final networkAdapterVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 42
    const-string v0, "5.5.0"

    return-object v0
.end method

.method public final setInterstitialFacebookCacheFlags$facebookadapter_release(Ljava/util/EnumSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-static {p1}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$setInterstitialFacebookCacheFlags$cp(Ljava/util/EnumSet;)V

    return-void
.end method
