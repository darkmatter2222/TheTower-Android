.class final Lcom/unity3d/ads/BannerAd$Companion$load$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BannerAd.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/BannerAd$Companion;->load(Lcom/unity3d/ads/BannerConfiguration;Lcom/unity3d/ads/LoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBannerAd.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BannerAd.kt\ncom/unity3d/ads/BannerAd$Companion$load$1\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,214:1\n216#2,2:215\n*S KotlinDebug\n*F\n+ 1 BannerAd.kt\ncom/unity3d/ads/BannerAd$Companion$load$1\n*L\n122#1:215,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.unity3d.ads.BannerAd$Companion$load$1"
    f = "BannerAd.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $configuration:Lcom/unity3d/ads/BannerConfiguration;

.field final synthetic $listener:Lcom/unity3d/ads/LoadListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unity3d/ads/LoadListener<",
            "Lcom/unity3d/ads/BannerAd;",
            ">;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method constructor <init>(Lcom/unity3d/ads/LoadListener;Lcom/unity3d/ads/BannerConfiguration;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/LoadListener<",
            "Lcom/unity3d/ads/BannerAd;",
            ">;",
            "Lcom/unity3d/ads/BannerConfiguration;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/BannerAd$Companion$load$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unity3d/ads/BannerAd$Companion$load$1;->$listener:Lcom/unity3d/ads/LoadListener;

    iput-object p2, p0, Lcom/unity3d/ads/BannerAd$Companion$load$1;->$configuration:Lcom/unity3d/ads/BannerConfiguration;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/unity3d/ads/BannerAd$Companion$load$1;

    iget-object v0, p0, Lcom/unity3d/ads/BannerAd$Companion$load$1;->$listener:Lcom/unity3d/ads/LoadListener;

    iget-object v1, p0, Lcom/unity3d/ads/BannerAd$Companion$load$1;->$configuration:Lcom/unity3d/ads/BannerConfiguration;

    invoke-direct {p1, v0, v1, p2}, Lcom/unity3d/ads/BannerAd$Companion$load$1;-><init>(Lcom/unity3d/ads/LoadListener;Lcom/unity3d/ads/BannerConfiguration;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/BannerAd$Companion$load$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/BannerAd$Companion$load$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/BannerAd$Companion$load$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/BannerAd$Companion$load$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 95
    iget v1, v0, Lcom/unity3d/ads/BannerAd$Companion$load$1;->label:I

    if-nez v1, :cond_3

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 96
    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 98
    iget-object v1, v0, Lcom/unity3d/ads/BannerAd$Companion$load$1;->$listener:Lcom/unity3d/ads/LoadListener;

    .line 100
    new-instance v3, Lcom/unity3d/ads/UnityAdsError;

    .line 102
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to load banner ad for placement: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/unity3d/ads/BannerAd$Companion$load$1;->$configuration:Lcom/unity3d/ads/BannerConfiguration;

    invoke-virtual {v5}, Lcom/unity3d/ads/BannerConfiguration;->getPlacementId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Verify that Unity Ads has been initialized."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 100
    invoke-direct {v3, v5, v4}, Lcom/unity3d/ads/UnityAdsError;-><init>(ILjava/lang/String;)V

    .line 98
    invoke-interface {v1, v2, v3}, Lcom/unity3d/ads/LoadListener;->onAdLoaded(Ljava/lang/Object;Lcom/unity3d/ads/UnityAdsError;)V

    .line 105
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 107
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    .line 108
    new-instance v8, Lcom/unity3d/ads/UnityAdsLoadOptions;

    invoke-direct {v8}, Lcom/unity3d/ads/UnityAdsLoadOptions;-><init>()V

    iget-object v4, v0, Lcom/unity3d/ads/BannerAd$Companion$load$1;->$configuration:Lcom/unity3d/ads/BannerConfiguration;

    .line 109
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/unity3d/ads/UnityAdsLoadOptions;->setObjectId(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v4}, Lcom/unity3d/ads/BannerConfiguration;->getAdMarkup()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/unity3d/ads/UnityAdsLoadOptions;->setAdMarkup(Ljava/lang/String;)V

    .line 111
    new-instance v9, Lcom/unity3d/ads/core/data/model/LoadConfigurationInternal;

    .line 112
    invoke-virtual {v4}, Lcom/unity3d/ads/BannerConfiguration;->getPlacementId()Ljava/lang/String;

    move-result-object v10

    .line 113
    invoke-virtual {v4}, Lcom/unity3d/ads/BannerConfiguration;->getAdMarkup()Ljava/lang/String;

    move-result-object v11

    .line 114
    invoke-virtual {v4}, Lcom/unity3d/ads/BannerConfiguration;->getMediationAdUnitId()Ljava/lang/String;

    move-result-object v12

    .line 115
    invoke-virtual {v4}, Lcom/unity3d/ads/BannerConfiguration;->getMediationInfo()Lcom/unity3d/ads/MediationInfo;

    move-result-object v13

    .line 116
    invoke-virtual {v4}, Lcom/unity3d/ads/BannerConfiguration;->getExtras()Ljava/util/Map;

    move-result-object v14

    const/16 v16, 0x20

    const/16 v17, 0x0

    const/4 v15, 0x0

    .line 111
    invoke-direct/range {v9 .. v17}, Lcom/unity3d/ads/core/data/model/LoadConfigurationInternal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/MediationInfo;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/LoadAdType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v9, v8, Lcom/unity3d/ads/UnityAdsLoadOptions;->loadConfiguration:Lcom/unity3d/ads/core/data/model/LoadConfigurationInternal;

    .line 120
    iget-object v4, v0, Lcom/unity3d/ads/BannerAd$Companion$load$1;->$configuration:Lcom/unity3d/ads/BannerConfiguration;

    invoke-virtual {v4}, Lcom/unity3d/ads/BannerConfiguration;->getExtras()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 121
    new-instance v4, Lcom/unity3d/ads/metadata/MetaData;

    invoke-direct {v4, v1}, Lcom/unity3d/ads/metadata/MetaData;-><init>(Landroid/content/Context;)V

    iget-object v5, v0, Lcom/unity3d/ads/BannerAd$Companion$load$1;->$configuration:Lcom/unity3d/ads/BannerConfiguration;

    .line 122
    invoke-virtual {v5}, Lcom/unity3d/ads/BannerConfiguration;->getExtras()Ljava/util/Map;

    move-result-object v5

    .line 215
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 123
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v7, v6}, Lcom/unity3d/ads/metadata/MetaData;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {v4}, Lcom/unity3d/ads/metadata/MetaData;->commit()V

    .line 130
    :cond_2
    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 131
    new-instance v2, Lcom/unity3d/services/banners/UnityBannerSize;

    .line 132
    iget-object v4, v0, Lcom/unity3d/ads/BannerAd$Companion$load$1;->$configuration:Lcom/unity3d/ads/BannerConfiguration;

    invoke-virtual {v4}, Lcom/unity3d/ads/BannerConfiguration;->getBannerSize()Lcom/unity3d/ads/BannerSize;

    move-result-object v4

    invoke-virtual {v4}, Lcom/unity3d/ads/BannerSize;->getWidth()I

    move-result v4

    .line 133
    iget-object v5, v0, Lcom/unity3d/ads/BannerAd$Companion$load$1;->$configuration:Lcom/unity3d/ads/BannerConfiguration;

    invoke-virtual {v5}, Lcom/unity3d/ads/BannerConfiguration;->getBannerSize()Lcom/unity3d/ads/BannerSize;

    move-result-object v5

    invoke-virtual {v5}, Lcom/unity3d/ads/BannerSize;->getHeight()I

    move-result v5

    .line 131
    invoke-direct {v2, v4, v5}, Lcom/unity3d/services/banners/UnityBannerSize;-><init>(II)V

    .line 137
    new-instance v6, Lcom/unity3d/services/banners/BannerView;

    iget-object v4, v0, Lcom/unity3d/ads/BannerAd$Companion$load$1;->$configuration:Lcom/unity3d/ads/BannerConfiguration;

    invoke-virtual {v4}, Lcom/unity3d/ads/BannerConfiguration;->getPlacementId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v1, v4, v2}, Lcom/unity3d/services/banners/BannerView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/unity3d/services/banners/UnityBannerSize;)V

    .line 139
    new-instance v2, Lcom/unity3d/ads/BannerAd$Companion$load$1$2;

    iget-object v4, v0, Lcom/unity3d/ads/BannerAd$Companion$load$1;->$listener:Lcom/unity3d/ads/LoadListener;

    iget-object v5, v0, Lcom/unity3d/ads/BannerAd$Companion$load$1;->$configuration:Lcom/unity3d/ads/BannerConfiguration;

    invoke-direct/range {v2 .. v7}, Lcom/unity3d/ads/BannerAd$Companion$load$1$2;-><init>(Ljava/util/UUID;Lcom/unity3d/ads/LoadListener;Lcom/unity3d/ads/BannerConfiguration;Lcom/unity3d/services/banners/BannerView;Ljava/util/concurrent/atomic/AtomicReference;)V

    check-cast v2, Lcom/unity3d/services/banners/BannerView$IListener;

    .line 138
    invoke-virtual {v6, v2}, Lcom/unity3d/services/banners/BannerView;->setListener(Lcom/unity3d/services/banners/BannerView$IListener;)V

    .line 209
    invoke-virtual {v6, v8}, Lcom/unity3d/services/banners/BannerView;->load(Lcom/unity3d/ads/UnityAdsLoadOptions;)V

    .line 210
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 95
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
