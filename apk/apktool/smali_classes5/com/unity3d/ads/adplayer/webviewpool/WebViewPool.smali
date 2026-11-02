.class public interface abstract Lcom/unity3d/ads/adplayer/webviewpool/WebViewPool;
.super Ljava/lang/Object;
.source "WebViewPool.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008`\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u00a6@\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u00a6@\u00a2\u0006\u0002\u0010\tJ\u000e\u0010\n\u001a\u00020\u0008H\u00a6@\u00a2\u0006\u0002\u0010\tJ\u0016\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u0008H\u00a6@\u00a2\u0006\u0002\u0010\rJ\u0016\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0008H\u00a6@\u00a2\u0006\u0002\u0010\rJ\u0016\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0008H\u00a6@\u00a2\u0006\u0002\u0010\r\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/unity3d/ads/adplayer/webviewpool/WebViewPool;",
        "",
        "initialize",
        "",
        "size",
        "",
        "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "acquireFreshEntry",
        "Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "acquireForShow",
        "resetEntry",
        "entry",
        "(Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "enqueueRecycled",
        "release",
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
.method public abstract acquireForShow(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract acquireFreshEntry(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract enqueueRecycled(Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract initialize(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract release(Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract resetEntry(Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
