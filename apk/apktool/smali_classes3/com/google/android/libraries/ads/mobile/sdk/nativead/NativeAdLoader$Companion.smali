.class public final Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoader$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001J\u001b\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J)\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\nJ\u001f\u0010\u0005\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000bH\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u000eJ\'\u0010\u0005\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u000bH\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u000fJ\u001f\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000c\u001a\u00020\u000bH\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoader$Companion;",
        "",
        "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;",
        "adRequest",
        "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult;",
        "load",
        "(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "numberOfAds",
        "Lkotlinx/coroutines/flow/Flow;",
        "(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;",
        "adLoadCallback",
        "",
        "(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;)V",
        "(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;ILcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;)V",
        "",
        "adResponse",
        "loadFromAdResponse",
        "(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;)V",
        "ads-mobile-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field static final synthetic a:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoader$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoader$Companion;

    invoke-direct {v0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoader$Companion;-><init>()V

    sput-object v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoader$Companion;->a:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoader$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;I)Lads_mobile_sdk/px2;
    .locals 2

    .line 1
    sget-object v0, Lads_mobile_sdk/a01;->a:Lads_mobile_sdk/zz0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lads_mobile_sdk/zz0;->a()Lads_mobile_sdk/a01;

    move-result-object v0

    .line 2
    check-cast v0, Lads_mobile_sdk/vf0;

    .line 3
    new-instance v1, Lads_mobile_sdk/gi0;

    .line 4
    iget-object v0, v0, Lads_mobile_sdk/vf0;->c:Lads_mobile_sdk/vf0;

    .line 5
    invoke-direct {v1, v0}, Lads_mobile_sdk/gi0;-><init>(Lads_mobile_sdk/vf0;)V

    .line 6
    invoke-virtual {v1, p0}, Lads_mobile_sdk/gi0;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/vz2;

    .line 7
    invoke-interface {v0, p0}, Lads_mobile_sdk/f03;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/vz2;

    .line 8
    invoke-interface {v0, p0}, Lads_mobile_sdk/vz2;->a(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;)Lads_mobile_sdk/vz2;

    move-result-object v0

    .line 9
    invoke-interface {v0, p0}, Lads_mobile_sdk/vz2;->a(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;)Lads_mobile_sdk/vz2;

    move-result-object p0

    .line 10
    sget-object v0, Lads_mobile_sdk/j53;->i:Lads_mobile_sdk/j53;

    invoke-interface {p0, v0}, Lads_mobile_sdk/f03;->a(Lads_mobile_sdk/j53;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lads_mobile_sdk/vz2;

    const/4 v0, 0x0

    .line 11
    invoke-interface {p0, v0}, Lads_mobile_sdk/f03;->b(Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lads_mobile_sdk/vz2;

    .line 12
    invoke-interface {p0, v0}, Lads_mobile_sdk/f03;->a(Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lads_mobile_sdk/vz2;

    .line 13
    invoke-interface {p0, p1}, Lads_mobile_sdk/vz2;->a(I)Lads_mobile_sdk/vz2;

    move-result-object p0

    .line 14
    invoke-interface {p0}, Lads_mobile_sdk/vz2;->a()Lads_mobile_sdk/wz2;

    move-result-object p0

    .line 15
    invoke-interface {p0}, Lads_mobile_sdk/g03;->a()Lads_mobile_sdk/px2;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final load(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/Flow<",
            "+",
            "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 20
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;->getNativeAdTypes()Ljava/util/List;

    move-result-object v0

    .line 21
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;->getCustomFormatIds()Ljava/util/List;

    move-result-object v1

    .line 22
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;->getAdSize()Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object v2

    .line 23
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v3

    .line 24
    invoke-static {v0, v1, v2, v3}, Lads_mobile_sdk/jl1;->a(Ljava/util/List;Ljava/util/List;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;Ljava/lang/Integer;)Lads_mobile_sdk/v01;

    move-result-object v0

    .line 30
    instance-of v1, v0, Lads_mobile_sdk/i01;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 32
    new-instance p1, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$Failure;

    .line 33
    new-instance p2, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;

    .line 34
    sget-object p3, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;->INVALID_REQUEST:Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    .line 35
    check-cast v0, Lads_mobile_sdk/i01;

    invoke-static {v0}, Lads_mobile_sdk/h01;->a(Lads_mobile_sdk/i01;)Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-direct {p2, p3, v0, v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;)V

    .line 37
    invoke-direct {p1, p2}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$Failure;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;)V

    .line 38
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->flowOf(Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1

    .line 48
    :cond_0
    sget-object v0, Lads_mobile_sdk/jq;->a:Lads_mobile_sdk/jq;

    invoke-static {p1, p2}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoader$Companion;->a(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;I)Lads_mobile_sdk/px2;

    move-result-object p1

    new-instance p2, Lcom/google/android/libraries/ads/mobile/sdk/nativead/b;

    invoke-direct {p2, v2}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/b;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v0, p1, p2, p3}, Lads_mobile_sdk/jq;->a(Lads_mobile_sdk/px2;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final load(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;->getNativeAdTypes()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;->getCustomFormatIds()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;->getAdSize()Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object v2

    const/4 v3, 0x0

    .line 4
    invoke-static {v0, v1, v2, v3}, Lads_mobile_sdk/jl1;->a(Ljava/util/List;Ljava/util/List;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;Ljava/lang/Integer;)Lads_mobile_sdk/v01;

    move-result-object v0

    .line 5
    instance-of v1, v0, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_0

    .line 6
    new-instance p1, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$Failure;

    .line 7
    new-instance p2, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;

    .line 8
    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;->INVALID_REQUEST:Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    .line 9
    check-cast v0, Lads_mobile_sdk/i01;

    invoke-static {v0}, Lads_mobile_sdk/h01;->a(Lads_mobile_sdk/i01;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-direct {p2, v1, v0, v3}, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;)V

    .line 11
    invoke-direct {p1, p2}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$Failure;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;)V

    return-object p1

    .line 19
    :cond_0
    sget-object v0, Lads_mobile_sdk/jq;->a:Lads_mobile_sdk/jq;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoader$Companion;->a(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;I)Lads_mobile_sdk/px2;

    move-result-object p1

    new-instance v1, Lcom/google/android/libraries/ads/mobile/sdk/nativead/a;

    invoke-direct {v1, v3}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/a;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v0, p1, v1, p2}, Lads_mobile_sdk/jq;->b(Lads_mobile_sdk/px2;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final load(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;ILcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "adRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adLoadCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;->getNativeAdTypes()Ljava/util/List;

    move-result-object v0

    .line 51
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;->getCustomFormatIds()Ljava/util/List;

    move-result-object v1

    .line 52
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;->getAdSize()Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object v2

    .line 53
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 54
    invoke-static {v0, v1, v2, v3}, Lads_mobile_sdk/jl1;->a(Ljava/util/List;Ljava/util/List;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;Ljava/lang/Integer;)Lads_mobile_sdk/v01;

    move-result-object v0

    .line 60
    instance-of v1, v0, Lads_mobile_sdk/i01;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 62
    new-instance p1, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;

    .line 63
    sget-object p2, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;->INVALID_REQUEST:Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    .line 64
    check-cast v0, Lads_mobile_sdk/i01;

    invoke-static {v0}, Lads_mobile_sdk/h01;->a(Lads_mobile_sdk/i01;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-direct {p1, p2, v0, v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;)V

    .line 66
    invoke-interface {p3, p1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;->onAdFailedToLoad(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;)V

    return-void

    .line 75
    :cond_0
    sget-object v0, Lads_mobile_sdk/a01;->a:Lads_mobile_sdk/zz0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lads_mobile_sdk/zz0;->a()Lads_mobile_sdk/a01;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/vf0;

    .line 76
    iget-object v0, v0, Lads_mobile_sdk/vf0;->q3:Lads_mobile_sdk/dw2;

    .line 77
    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/cm1;

    .line 78
    invoke-static {p1, p2}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoader$Companion;->a(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;I)Lads_mobile_sdk/px2;

    move-result-object p1

    .line 79
    new-instance p2, Lcom/google/android/libraries/ads/mobile/sdk/nativead/c;

    invoke-direct {p2, p1, p3, v2}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/c;-><init>(Lads_mobile_sdk/px2;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v0, p2}, Lads_mobile_sdk/cm1;->a(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final load(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "adRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adLoadCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 49
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoader$Companion;->load(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;ILcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;)V

    return-void
.end method

.method public final loadFromAdResponse(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;)V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "adResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adLoadCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lads_mobile_sdk/a01;->a:Lads_mobile_sdk/zz0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lads_mobile_sdk/zz0;->a()Lads_mobile_sdk/a01;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/vf0;

    .line 2
    iget-object v0, v0, Lads_mobile_sdk/vf0;->q3:Lads_mobile_sdk/dw2;

    .line 3
    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/cm1;

    .line 4
    invoke-static {}, Lads_mobile_sdk/zz0;->a()Lads_mobile_sdk/a01;

    move-result-object v1

    .line 5
    check-cast v1, Lads_mobile_sdk/vf0;

    .line 6
    iget-object v1, v1, Lads_mobile_sdk/vf0;->c:Lads_mobile_sdk/vf0;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    sget-object v2, Lads_mobile_sdk/j53;->i:Lads_mobile_sdk/j53;

    .line 9
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    new-instance v4, Lads_mobile_sdk/fi0;

    invoke-direct {v4, v1, v2, p1, v3}, Lads_mobile_sdk/fi0;-><init>(Lads_mobile_sdk/vf0;Lads_mobile_sdk/j53;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 11
    iget-object p1, v4, Lads_mobile_sdk/fi0;->h:Lads_mobile_sdk/dw2;

    invoke-interface {p1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/tz2;

    .line 12
    new-instance v1, Lcom/google/android/libraries/ads/mobile/sdk/nativead/d;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/d;-><init>(Lads_mobile_sdk/tz2;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v0, v1}, Lads_mobile_sdk/cm1;->a(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
