.class public final Lcom/unity3d/ads/core/domain/AndroidAdRefresh;
.super Ljava/lang/Object;
.source "AndroidAdRefresh.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/AdRefresh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/AndroidAdRefresh$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidAdRefresh.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidAdRefresh.kt\ncom/unity3d/ads/core/domain/AndroidAdRefresh\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 5 AdResponseKt.kt\ngatewayprotocol/v1/AdResponseKtKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,121:1\n17#2:122\n19#2:126\n46#3:123\n51#3:125\n105#4:124\n304#5:127\n1#6:128\n*S KotlinDebug\n*F\n+ 1 AndroidAdRefresh.kt\ncom/unity3d/ads/core/domain/AndroidAdRefresh\n*L\n36#1:122\n36#1:126\n36#1:123\n36#1:125\n36#1:124\n101#1:127\n101#1:128\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0096B\u00a2\u0006\u0002\u0010\u000eJ\u0016\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u0011H\u0082@\u00a2\u0006\u0002\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/AndroidAdRefresh;",
        "Lcom/unity3d/ads/core/domain/AdRefresh;",
        "adRepository",
        "Lcom/unity3d/ads/core/data/repository/AdRepository;",
        "cacheAssets",
        "Lcom/unity3d/ads/core/domain/CacheAssets;",
        "refresh",
        "Lcom/unity3d/ads/core/domain/Refresh;",
        "<init>",
        "(Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/domain/CacheAssets;Lcom/unity3d/ads/core/domain/Refresh;)V",
        "invoke",
        "",
        "adObject",
        "Lcom/unity3d/ads/core/data/model/AdObject;",
        "(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "performRefresh",
        "opportunityId",
        "Lcom/google/protobuf/ByteString;",
        "(Lcom/google/protobuf/ByteString;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "canUpdateRefreshData",
        "",
        "state",
        "Lcom/unity3d/ads/core/data/model/AdObjectState;",
        "Companion",
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
.field private static final Companion:Lcom/unity3d/ads/core/domain/AndroidAdRefresh$Companion;

.field private static final NON_UPDATABLE_STATES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/unity3d/ads/core/data/model/AdObjectState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final adRepository:Lcom/unity3d/ads/core/data/repository/AdRepository;

.field private final cacheAssets:Lcom/unity3d/ads/core/domain/CacheAssets;

.field private final refresh:Lcom/unity3d/ads/core/domain/Refresh;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/unity3d/ads/core/domain/AndroidAdRefresh$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/domain/AndroidAdRefresh$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/ads/core/domain/AndroidAdRefresh;->Companion:Lcom/unity3d/ads/core/domain/AndroidAdRefresh$Companion;

    const/4 v0, 0x3

    .line 117
    new-array v0, v0, [Lcom/unity3d/ads/core/data/model/AdObjectState;

    const/4 v1, 0x0

    sget-object v2, Lcom/unity3d/ads/core/data/model/AdObjectState;->SHOWING:Lcom/unity3d/ads/core/data/model/AdObjectState;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/unity3d/ads/core/data/model/AdObjectState;->COMPLETED:Lcom/unity3d/ads/core/data/model/AdObjectState;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/unity3d/ads/core/data/model/AdObjectState;->EXPIRED:Lcom/unity3d/ads/core/data/model/AdObjectState;

    aput-object v2, v0, v1

    .line 116
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/core/domain/AndroidAdRefresh;->NON_UPDATABLE_STATES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/domain/CacheAssets;Lcom/unity3d/ads/core/domain/Refresh;)V
    .locals 1

    const-string v0, "adRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheAssets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refresh"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidAdRefresh;->adRepository:Lcom/unity3d/ads/core/data/repository/AdRepository;

    .line 29
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidAdRefresh;->cacheAssets:Lcom/unity3d/ads/core/domain/CacheAssets;

    .line 30
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/AndroidAdRefresh;->refresh:Lcom/unity3d/ads/core/domain/Refresh;

    return-void
.end method

.method public static final synthetic access$canUpdateRefreshData(Lcom/unity3d/ads/core/domain/AndroidAdRefresh;Lcom/unity3d/ads/core/data/model/AdObjectState;)Z
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/unity3d/ads/core/domain/AndroidAdRefresh;->canUpdateRefreshData(Lcom/unity3d/ads/core/data/model/AdObjectState;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getNON_UPDATABLE_STATES$cp()Ljava/util/Set;
    .locals 1

    .line 27
    sget-object v0, Lcom/unity3d/ads/core/domain/AndroidAdRefresh;->NON_UPDATABLE_STATES:Ljava/util/Set;

    return-object v0
.end method

.method public static final synthetic access$performRefresh(Lcom/unity3d/ads/core/domain/AndroidAdRefresh;Lcom/google/protobuf/ByteString;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidAdRefresh;->performRefresh(Lcom/google/protobuf/ByteString;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final canUpdateRefreshData(Lcom/unity3d/ads/core/data/model/AdObjectState;)Z
    .locals 1

    .line 113
    sget-object v0, Lcom/unity3d/ads/core/domain/AndroidAdRefresh;->NON_UPDATABLE_STATES:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private final performRefresh(Lcom/google/protobuf/ByteString;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/unity3d/ads/core/domain/AndroidAdRefresh$performRefresh$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/unity3d/ads/core/domain/AndroidAdRefresh$performRefresh$1;

    iget v1, v0, Lcom/unity3d/ads/core/domain/AndroidAdRefresh$performRefresh$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/unity3d/ads/core/domain/AndroidAdRefresh$performRefresh$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/unity3d/ads/core/domain/AndroidAdRefresh$performRefresh$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/unity3d/ads/core/domain/AndroidAdRefresh$performRefresh$1;

    invoke-direct {v0, p0, p2}, Lcom/unity3d/ads/core/domain/AndroidAdRefresh$performRefresh$1;-><init>(Lcom/unity3d/ads/core/domain/AndroidAdRefresh;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/unity3d/ads/core/domain/AndroidAdRefresh$performRefresh$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 64
    iget v2, v0, Lcom/unity3d/ads/core/domain/AndroidAdRefresh$performRefresh$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/unity3d/ads/core/domain/AndroidAdRefresh$performRefresh$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;

    iget-object v1, v0, Lcom/unity3d/ads/core/domain/AndroidAdRefresh$performRefresh$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;

    iget-object v0, v0, Lcom/unity3d/ads/core/domain/AndroidAdRefresh$performRefresh$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/unity3d/ads/core/data/model/AdObject;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/unity3d/ads/core/domain/AndroidAdRefresh$performRefresh$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;

    iget-object v2, v0, Lcom/unity3d/ads/core/domain/AndroidAdRefresh$performRefresh$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/unity3d/ads/core/data/model/AdObject;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    iget-object p1, v0, Lcom/unity3d/ads/core/domain/AndroidAdRefresh$performRefresh$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lcom/google/protobuf/ByteString;

    iget-object v2, v0, Lcom/unity3d/ads/core/domain/AndroidAdRefresh$performRefresh$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;

    iget-object v5, v0, Lcom/unity3d/ads/core/domain/AndroidAdRefresh$performRefresh$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lcom/unity3d/ads/core/data/model/AdObject;

    iget-object v6, v0, Lcom/unity3d/ads/core/domain/AndroidAdRefresh$performRefresh$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/google/protobuf/ByteString;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, p1

    move-object p1, v6

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 65
    iget-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidAdRefresh;->adRepository:Lcom/unity3d/ads/core/data/repository/AdRepository;

    invoke-interface {p2, p1}, Lcom/unity3d/ads/core/data/repository/AdRepository;->getAd(Lcom/google/protobuf/ByteString;)Lcom/unity3d/ads/core/data/model/AdObject;

    move-result-object p2

    if-eqz p2, :cond_13

    .line 69
    invoke-virtual {p2}, Lcom/unity3d/ads/core/data/model/AdObject;->getWebViewLessLoadingRequiredData()Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 70
    invoke-virtual {v2}, Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;->getAdResponse()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    move-result-object v6

    if-nez v6, :cond_5

    goto/16 :goto_8

    .line 71
    :cond_5
    invoke-virtual {v6}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getAdDataRefreshToken()Lcom/google/protobuf/ByteString;

    move-result-object v7

    if-nez v7, :cond_6

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 73
    :cond_6
    invoke-virtual {v7}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 75
    :cond_7
    sget-object v8, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v6}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getCampaignMetadata()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    move-result-object v6

    invoke-virtual {v6}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->getAdDataRefreshDelayMs()I

    move-result v6

    sget-object v8, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v6, v8}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v8

    iput-object p1, v0, Lcom/unity3d/ads/core/domain/AndroidAdRefresh$performRefresh$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/unity3d/ads/core/domain/AndroidAdRefresh$performRefresh$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lcom/unity3d/ads/core/domain/AndroidAdRefresh$performRefresh$1;->L$2:Ljava/lang/Object;

    iput-object v7, v0, Lcom/unity3d/ads/core/domain/AndroidAdRefresh$performRefresh$1;->L$3:Ljava/lang/Object;

    iput v5, v0, Lcom/unity3d/ads/core/domain/AndroidAdRefresh$performRefresh$1;->label:I

    invoke-static {v8, v9, v0}, Lkotlinx/coroutines/DelayKt;->delay-VtjQ1oo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_8

    goto/16 :goto_4

    :cond_8
    move-object v5, p2

    .line 77
    :goto_1
    invoke-virtual {v5}, Lcom/unity3d/ads/core/data/model/AdObject;->getState()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p2

    invoke-interface {p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/unity3d/ads/core/data/model/AdObjectState;

    invoke-direct {p0, p2}, Lcom/unity3d/ads/core/domain/AndroidAdRefresh;->canUpdateRefreshData(Lcom/unity3d/ads/core/data/model/AdObjectState;)Z

    move-result p2

    if-nez p2, :cond_9

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 79
    :cond_9
    iget-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidAdRefresh;->refresh:Lcom/unity3d/ads/core/domain/Refresh;

    iput-object v5, v0, Lcom/unity3d/ads/core/domain/AndroidAdRefresh$performRefresh$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/unity3d/ads/core/domain/AndroidAdRefresh$performRefresh$1;->L$1:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, v0, Lcom/unity3d/ads/core/domain/AndroidAdRefresh$performRefresh$1;->L$2:Ljava/lang/Object;

    iput-object v6, v0, Lcom/unity3d/ads/core/domain/AndroidAdRefresh$performRefresh$1;->L$3:Ljava/lang/Object;

    iput v4, v0, Lcom/unity3d/ads/core/domain/AndroidAdRefresh$performRefresh$1;->label:I

    invoke-interface {p2, p1, v7, v0}, Lcom/unity3d/ads/core/domain/Refresh;->invoke(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_a

    goto :goto_4

    :cond_a
    move-object p1, v2

    move-object v2, v5

    .line 64
    :goto_2
    check-cast p2, Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;

    .line 80
    invoke-virtual {p2}, Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;->hasError()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 82
    invoke-virtual {p2}, Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;->getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    move-result-object p2

    invoke-virtual {p2}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->getErrorCode()Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    move-result-object p2

    sget-object v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_LOAD_NO_FILL:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    if-ne p2, v0, :cond_b

    .line 83
    sget-object p2, Lcom/unity3d/ads/core/data/model/AdRefreshState;->REUSE_NO_FILL:Lcom/unity3d/ads/core/data/model/AdRefreshState;

    goto :goto_3

    .line 85
    :cond_b
    sget-object p2, Lcom/unity3d/ads/core/data/model/AdRefreshState;->REUSE_ERROR:Lcom/unity3d/ads/core/data/model/AdRefreshState;

    .line 81
    :goto_3
    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;->setAdRefreshState(Lcom/unity3d/ads/core/data/model/AdRefreshState;)V

    .line 87
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 90
    :cond_c
    invoke-virtual {p2}, Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;->hasCampaignMetadata()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual {p2}, Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;->getCampaignMetadata()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->getAssetsToCacheList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    goto/16 :goto_7

    .line 95
    :cond_d
    iget-object v4, p0, Lcom/unity3d/ads/core/domain/AndroidAdRefresh;->cacheAssets:Lcom/unity3d/ads/core/domain/CacheAssets;

    invoke-virtual {p2}, Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;->getCampaignMetadata()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    move-result-object v5

    invoke-virtual {v5}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->getAssetsToCacheList()Ljava/util/List;

    move-result-object v5

    const-string v6, "getAssetsToCacheList(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/unity3d/ads/core/domain/AndroidAdRefresh$performRefresh$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/unity3d/ads/core/domain/AndroidAdRefresh$performRefresh$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/unity3d/ads/core/domain/AndroidAdRefresh$performRefresh$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/unity3d/ads/core/domain/AndroidAdRefresh$performRefresh$1;->label:I

    invoke-interface {v4, v2, v5, v0}, Lcom/unity3d/ads/core/domain/CacheAssets;->invoke(Lcom/unity3d/ads/core/data/model/AdObject;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_e

    :goto_4
    return-object v1

    :cond_e
    move-object v1, p1

    move-object p1, p2

    move-object p2, v0

    move-object v0, v2

    .line 64
    :goto_5
    check-cast p2, Lcom/unity3d/ads/core/domain/CacheAssetsEvent;

    .line 97
    instance-of p2, p2, Lcom/unity3d/ads/core/domain/CacheAssetsEvent$Success;

    if-eqz p2, :cond_f

    .line 98
    invoke-virtual {v0}, Lcom/unity3d/ads/core/data/model/AdObject;->getState()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p2

    invoke-interface {p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/unity3d/ads/core/data/model/AdObjectState;

    invoke-direct {p0, p2}, Lcom/unity3d/ads/core/domain/AndroidAdRefresh;->canUpdateRefreshData(Lcom/unity3d/ads/core/data/model/AdObjectState;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 99
    sget-object p2, Lcom/unity3d/ads/core/data/model/AdRefreshState;->REUSE_RELOADED:Lcom/unity3d/ads/core/data/model/AdRefreshState;

    invoke-virtual {v1, p2}, Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;->setAdRefreshState(Lcom/unity3d/ads/core/data/model/AdRefreshState;)V

    .line 100
    invoke-virtual {p1}, Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;->getTrackingToken()Lcom/google/protobuf/ByteString;

    move-result-object p2

    const-string v2, "getTrackingToken(...)"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/unity3d/ads/core/data/model/AdObject;->setTrackingToken(Lcom/google/protobuf/ByteString;)V

    .line 101
    invoke-virtual {v1}, Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;->getAdResponse()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    move-result-object p2

    .line 127
    sget-object v0, Lgatewayprotocol/v1/AdResponseKt$Dsl;->Companion:Lgatewayprotocol/v1/AdResponseKt$Dsl$Companion;

    invoke-virtual {p2}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p2

    const-string v3, "toBuilder(...)"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    invoke-virtual {v0, p2}, Lgatewayprotocol/v1/AdResponseKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;)Lgatewayprotocol/v1/AdResponseKt$Dsl;

    move-result-object p2

    .line 102
    invoke-virtual {p1}, Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;->getAdData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v3, "getAdData(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lgatewayprotocol/v1/AdResponseKt$Dsl;->setAdData(Lcom/google/protobuf/ByteString;)V

    .line 103
    invoke-virtual {p1}, Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;->getAdDataRefreshToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v3, "getAdDataRefreshToken(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lgatewayprotocol/v1/AdResponseKt$Dsl;->setAdDataRefreshToken(Lcom/google/protobuf/ByteString;)V

    .line 104
    invoke-virtual {p1}, Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;->getTrackingToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lgatewayprotocol/v1/AdResponseKt$Dsl;->setTrackingToken(Lcom/google/protobuf/ByteString;)V

    .line 105
    invoke-virtual {p1}, Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;->getCampaignMetadata()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    move-result-object p1

    const-string v0, "getCampaignMetadata(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lgatewayprotocol/v1/AdResponseKt$Dsl;->setCampaignMetadata(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;)V

    .line 127
    invoke-virtual {p2}, Lgatewayprotocol/v1/AdResponseKt$Dsl;->_build()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    move-result-object p1

    .line 101
    invoke-virtual {v1, p1}, Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;->setAdResponse(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;)V

    goto :goto_6

    .line 109
    :cond_f
    invoke-virtual {v0}, Lcom/unity3d/ads/core/data/model/AdObject;->getWebViewLessLoadingRequiredData()Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;

    move-result-object p1

    if-eqz p1, :cond_10

    sget-object p2, Lcom/unity3d/ads/core/data/model/AdRefreshState;->REUSE_ERROR:Lcom/unity3d/ads/core/data/model/AdRefreshState;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;->setAdRefreshState(Lcom/unity3d/ads/core/data/model/AdRefreshState;)V

    .line 111
    :cond_10
    :goto_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 91
    :cond_11
    :goto_7
    sget-object p2, Lcom/unity3d/ads/core/data/model/AdRefreshState;->REUSE_NO_FILL:Lcom/unity3d/ads/core/data/model/AdRefreshState;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;->setAdRefreshState(Lcom/unity3d/ads/core/data/model/AdRefreshState;)V

    .line 92
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 70
    :cond_12
    :goto_8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 66
    :cond_13
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "No adObject for opportunityId: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 65
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public invoke(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/data/model/AdObject;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 33
    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/AdObject;->getAdScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p2

    .line 34
    invoke-interface {p2}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    new-instance v0, Lkotlinx/coroutines/CoroutineName;

    const-string v1, "Ad_Refresh"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {p2, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p2

    .line 36
    sget-object v0, Lcom/unity3d/ads/adplayer/AdPlayer;->Companion:Lcom/unity3d/ads/adplayer/AdPlayer$Companion;

    invoke-virtual {v0}, Lcom/unity3d/ads/adplayer/AdPlayer$Companion;->getBroadcastEventChannel()Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    .line 124
    new-instance v1, Lcom/unity3d/ads/core/domain/AndroidAdRefresh$invoke$$inlined$filter$1;

    const-string v2, "AD_REFRESH"

    invoke-direct {v1, v0, v2}, Lcom/unity3d/ads/core/domain/AndroidAdRefresh$invoke$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;)V

    check-cast v1, Lkotlinx/coroutines/flow/Flow;

    .line 36
    new-instance v0, Lcom/unity3d/ads/core/domain/AndroidAdRefresh$invoke$3;

    const/4 v2, 0x0

    invoke-direct {v0, p2, p1, p0, v2}, Lcom/unity3d/ads/core/domain/AndroidAdRefresh$invoke$3;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/unity3d/ads/core/data/model/AdObject;Lcom/unity3d/ads/core/domain/AndroidAdRefresh;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v0}, Lkotlinx/coroutines/flow/FlowKt;->onEach(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 61
    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    .line 62
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
