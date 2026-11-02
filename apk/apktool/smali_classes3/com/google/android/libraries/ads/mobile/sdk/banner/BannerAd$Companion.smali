.class public final Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001J%\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ!\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0087@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0008\u0010\u000bJ%\u0010\u000e\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000c2\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd$Companion;",
        "",
        "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;",
        "adRequest",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;",
        "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;",
        "adLoadCallback",
        "",
        "load",
        "(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)V",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult;",
        "(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "adResponse",
        "loadFromAdResponse",
        "(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)V",
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
.field static final synthetic a:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd$Companion;

    invoke-direct {v0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd$Companion;-><init>()V

    sput-object v0, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd$Companion;->a:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final load(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult<",
            "+",
            "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Use AdView.loadAd() or BannerAdPreloader instead."
    .end annotation

    .line 108
    sget-object v0, Lads_mobile_sdk/a01;->a:Lads_mobile_sdk/zz0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lads_mobile_sdk/zz0;->a()Lads_mobile_sdk/a01;

    move-result-object v0

    .line 109
    check-cast v0, Lads_mobile_sdk/vf0;

    .line 110
    new-instance v1, Lads_mobile_sdk/xh0;

    .line 111
    iget-object v0, v0, Lads_mobile_sdk/vf0;->c:Lads_mobile_sdk/vf0;

    .line 112
    invoke-direct {v1, v0}, Lads_mobile_sdk/xh0;-><init>(Lads_mobile_sdk/vf0;)V

    .line 113
    sget-object v0, Lads_mobile_sdk/j53;->f:Lads_mobile_sdk/j53;

    .line 114
    iput-object v0, v1, Lads_mobile_sdk/xh0;->d:Lads_mobile_sdk/j53;

    .line 115
    invoke-virtual {v1, p1}, Lads_mobile_sdk/xh0;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/bz2;

    .line 116
    invoke-interface {v0, p1}, Lads_mobile_sdk/f03;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/bz2;

    .line 117
    invoke-interface {v0, p1}, Lads_mobile_sdk/bz2;->a(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;)Lads_mobile_sdk/bz2;

    move-result-object v0

    .line 118
    invoke-interface {v0, p1}, Lads_mobile_sdk/bz2;->a(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;)Lads_mobile_sdk/bz2;

    move-result-object p1

    const/4 v0, 0x0

    .line 119
    invoke-interface {p1, v0}, Lads_mobile_sdk/f03;->b(Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/bz2;

    .line 120
    invoke-interface {p1, v0}, Lads_mobile_sdk/f03;->a(Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/bz2;

    .line 121
    invoke-interface {p1}, Lads_mobile_sdk/bz2;->a()Lads_mobile_sdk/cz2;

    move-result-object p1

    .line 122
    invoke-interface {p1}, Lads_mobile_sdk/cz2;->a()Lads_mobile_sdk/wy2;

    move-result-object p1

    .line 123
    sget-object v0, Lads_mobile_sdk/jq;->a:Lads_mobile_sdk/jq;

    new-instance v1, Lads_mobile_sdk/ro;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lads_mobile_sdk/ro;-><init>(Lads_mobile_sdk/wy2;Lkotlin/coroutines/Continuation;)V

    .line 124
    new-instance v3, Lads_mobile_sdk/fq;

    invoke-direct {v3, v1, v2}, Lads_mobile_sdk/fq;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v0, p1, v3, p2}, Lads_mobile_sdk/jq;->b(Lads_mobile_sdk/px2;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final load(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;",
            "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback<",
            "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Use AdView.loadAd() or BannerAdPreloader instead."
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "adRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adLoadCallback"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    sget-object v0, Lads_mobile_sdk/a01;->a:Lads_mobile_sdk/zz0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lads_mobile_sdk/zz0;->a()Lads_mobile_sdk/a01;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/vf0;

    .line 75
    iget-object v1, v1, Lads_mobile_sdk/vf0;->q3:Lads_mobile_sdk/dw2;

    .line 76
    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/cm1;

    .line 77
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lads_mobile_sdk/zz0;->a()Lads_mobile_sdk/a01;

    move-result-object v0

    .line 78
    check-cast v0, Lads_mobile_sdk/vf0;

    .line 79
    new-instance v2, Lads_mobile_sdk/xh0;

    .line 80
    iget-object v0, v0, Lads_mobile_sdk/vf0;->c:Lads_mobile_sdk/vf0;

    .line 81
    invoke-direct {v2, v0}, Lads_mobile_sdk/xh0;-><init>(Lads_mobile_sdk/vf0;)V

    .line 82
    sget-object v0, Lads_mobile_sdk/j53;->f:Lads_mobile_sdk/j53;

    .line 83
    iput-object v0, v2, Lads_mobile_sdk/xh0;->d:Lads_mobile_sdk/j53;

    .line 84
    invoke-virtual {v2, p1}, Lads_mobile_sdk/xh0;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/bz2;

    .line 85
    invoke-interface {v0, p1}, Lads_mobile_sdk/f03;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/bz2;

    .line 86
    invoke-interface {v0, p1}, Lads_mobile_sdk/bz2;->a(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;)Lads_mobile_sdk/bz2;

    move-result-object v0

    .line 87
    invoke-interface {v0, p1}, Lads_mobile_sdk/bz2;->a(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;)Lads_mobile_sdk/bz2;

    move-result-object p1

    const/4 v0, 0x0

    .line 88
    invoke-interface {p1, v0}, Lads_mobile_sdk/f03;->b(Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/bz2;

    .line 89
    invoke-interface {p1, v0}, Lads_mobile_sdk/f03;->a(Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/bz2;

    .line 90
    invoke-interface {p1}, Lads_mobile_sdk/bz2;->a()Lads_mobile_sdk/cz2;

    move-result-object v3

    .line 91
    new-instance v2, Lads_mobile_sdk/qo;

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Lads_mobile_sdk/qo;-><init>(Lads_mobile_sdk/cz2;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;Landroid/view/ViewGroup;ZLkotlin/coroutines/Continuation;)V

    invoke-virtual {v1, v2}, Lads_mobile_sdk/cm1;->a(Lkotlin/jvm/functions/Function1;)V

    .line 107
    invoke-interface {v3}, Lads_mobile_sdk/g03;->c()Lkotlinx/coroutines/channels/Channel;

    return-void
.end method

.method public final loadFromAdResponse(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback<",
            "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Use AdView.loadAd() or BannerAdPreloader instead."
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "adResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adLoadCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p2}, Lads_mobile_sdk/vo;->a(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)Lkotlinx/coroutines/channels/Channel;

    return-void
.end method
