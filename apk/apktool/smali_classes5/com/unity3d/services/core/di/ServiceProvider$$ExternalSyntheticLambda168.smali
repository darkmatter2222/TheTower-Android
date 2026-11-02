.class public final synthetic Lcom/unity3d/services/core/di/ServiceProvider$$ExternalSyntheticLambda168;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/unity3d/ads/adplayer/webviewpool/PooledWebViewContainerFactory;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/services/core/di/ServicesRegistry;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/services/core/di/ServiceProvider$$ExternalSyntheticLambda168;->f$0:Lcom/unity3d/services/core/di/ServicesRegistry;

    return-void
.end method


# virtual methods
.method public final create(Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;Lkotlinx/coroutines/CoroutineScope;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/unity3d/services/core/di/ServiceProvider$$ExternalSyntheticLambda168;->f$0:Lcom/unity3d/services/core/di/ServicesRegistry;

    invoke-static {v0, p1, p2, p3}, Lcom/unity3d/services/core/di/ServiceProvider;->$r8$lambda$CQ32tQXPkEBnPf6wlF_2RaLE3Ag(Lcom/unity3d/services/core/di/ServicesRegistry;Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;Lkotlinx/coroutines/CoroutineScope;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    move-result-object p1

    return-object p1
.end method
