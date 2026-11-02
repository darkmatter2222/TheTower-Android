.class public interface abstract Lcom/unity3d/ads/adplayer/webviewpool/PooledWebViewContainerFactory;
.super Ljava/lang/Object;
.source "PooledWebViewContainerFactory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00e0\u0080\u0001\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH&\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/unity3d/ads/adplayer/webviewpool/PooledWebViewContainerFactory;",
        "",
        "create",
        "Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;",
        "entry",
        "Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;",
        "adPlayerScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "adObject",
        "Lcom/unity3d/ads/core/data/model/AdObject;",
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


# virtual methods
.method public abstract create(Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;Lkotlinx/coroutines/CoroutineScope;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;
.end method
