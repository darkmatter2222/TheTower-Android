.class public final Lcom/google/android/libraries/ads/mobile/sdk/h5/H5AdsRequestHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\r\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0015\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0015\u0010\n\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\n\u0010\t\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/h5/H5AdsRequestHandler;",
        "",
        "",
        "clearAdObjects",
        "()V",
        "",
        "url",
        "",
        "shouldInterceptRequest",
        "(Ljava/lang/String;)Z",
        "handleH5AdsRequest",
        "Lcom/google/android/libraries/ads/mobile/sdk/h5/OnH5AdsEventListener;",
        "onH5AdsEventListener",
        "<init>",
        "(Lcom/google/android/libraries/ads/mobile/sdk/h5/OnH5AdsEventListener;)V",
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
.field private final a:Lads_mobile_sdk/f51;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/h5/OnH5AdsEventListener;)V
    .locals 1

    const-string v0, "onH5AdsEventListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Lads_mobile_sdk/a01;->a:Lads_mobile_sdk/zz0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lads_mobile_sdk/zz0;->a()Lads_mobile_sdk/a01;

    move-result-object v0

    .line 5
    check-cast v0, Lads_mobile_sdk/vf0;

    invoke-virtual {v0}, Lads_mobile_sdk/vf0;->b()Lads_mobile_sdk/wf0;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1}, Lads_mobile_sdk/wf0;->a(Lcom/google/android/libraries/ads/mobile/sdk/h5/OnH5AdsEventListener;)Lads_mobile_sdk/wf0;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lads_mobile_sdk/wf0;->a()Lads_mobile_sdk/yf0;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lads_mobile_sdk/yf0;->a()Lads_mobile_sdk/f51;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/h5/H5AdsRequestHandler;->a:Lads_mobile_sdk/f51;

    return-void
.end method


# virtual methods
.method public final clearAdObjects()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/h5/H5AdsRequestHandler;->a:Lads_mobile_sdk/f51;

    invoke-virtual {v0}, Lads_mobile_sdk/f51;->a()V

    return-void
.end method

.method public final handleH5AdsRequest(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/h5/H5AdsRequestHandler;->a:Lads_mobile_sdk/f51;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v1, p1}, Lads_mobile_sdk/f51;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 130
    :cond_0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    iget-object v0, v1, Lads_mobile_sdk/f51;->g:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lads_mobile_sdk/d51;

    const/4 v2, 0x0

    invoke-direct {v3, v1, p1, v2}, Lads_mobile_sdk/d51;-><init>(Lads_mobile_sdk/f51;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    const/4 p1, 0x1

    return p1
.end method

.method public final shouldInterceptRequest(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/h5/H5AdsRequestHandler;->a:Lads_mobile_sdk/f51;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/f51;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
