.class final Lcom/unity3d/ads/RewardedOffersAd$1$1$2;
.super Ljava/lang/Object;
.source "RewardedOffersAd.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/RewardedOffersAd$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/ads/RewardedOffersAd;


# direct methods
.method public static synthetic $r8$lambda$fH0oEvSZHB1opL_sUfpWVNpWIXs(Lcom/unity3d/ads/RewardedOffersAd;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/unity3d/ads/RewardedOffersAd$1$1$2;->emit$lambda$0(Lcom/unity3d/ads/RewardedOffersAd;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/unity3d/ads/RewardedOffersAd;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/ads/RewardedOffersAd$1$1$2;->this$0:Lcom/unity3d/ads/RewardedOffersAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final emit$lambda$0(Lcom/unity3d/ads/RewardedOffersAd;)Lkotlin/Unit;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/unity3d/ads/RewardedOffersAd;->getOnAdExpired()Lcom/unity3d/ads/AdExpiredListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/unity3d/ads/AdExpiredListener;->onAdExpired(Ljava/lang/Object;)V

    .line 74
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final emit(Lcom/unity3d/ads/core/data/model/AdObjectState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/data/model/AdObjectState;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 72
    iget-object p1, p0, Lcom/unity3d/ads/RewardedOffersAd$1$1$2;->this$0:Lcom/unity3d/ads/RewardedOffersAd;

    invoke-static {p1}, Lcom/unity3d/ads/RewardedOffersAd;->access$getSafeCallbackInvoke$p(Lcom/unity3d/ads/RewardedOffersAd;)Lcom/unity3d/ads/core/domain/SafeCallbackInvoke;

    move-result-object p1

    iget-object p2, p0, Lcom/unity3d/ads/RewardedOffersAd$1$1$2;->this$0:Lcom/unity3d/ads/RewardedOffersAd;

    new-instance v0, Lcom/unity3d/ads/RewardedOffersAd$1$1$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/unity3d/ads/RewardedOffersAd$1$1$2$$ExternalSyntheticLambda0;-><init>(Lcom/unity3d/ads/RewardedOffersAd;)V

    invoke-interface {p1, v0}, Lcom/unity3d/ads/core/domain/SafeCallbackInvoke;->invoke(Lkotlin/jvm/functions/Function0;)V

    .line 75
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 71
    check-cast p1, Lcom/unity3d/ads/core/data/model/AdObjectState;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/RewardedOffersAd$1$1$2;->emit(Lcom/unity3d/ads/core/data/model/AdObjectState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
