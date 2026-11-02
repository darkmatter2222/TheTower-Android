.class public final Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAd$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001J!\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J%\u0010\u0006\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0008H\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u000b\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAd$Companion;",
        "",
        "Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdRequest;",
        "adRequest",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult;",
        "Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAd;",
        "load",
        "(Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;",
        "adLoadCallback",
        "",
        "(Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdRequest;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)V",
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
.field static final synthetic a:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAd$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAd$Companion;

    invoke-direct {v0}, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAd$Companion;-><init>()V

    sput-object v0, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAd$Companion;->a:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAd$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final load(Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult<",
            "+",
            "Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAd;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 92
    sget-object v0, Lads_mobile_sdk/a01;->a:Lads_mobile_sdk/zz0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lads_mobile_sdk/zz0;->a()Lads_mobile_sdk/a01;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/vf0;

    .line 93
    iget-object v0, v0, Lads_mobile_sdk/vf0;->b:Landroid/content/Context;

    .line 94
    invoke-static {}, Lads_mobile_sdk/zz0;->a()Lads_mobile_sdk/a01;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/vf0;

    .line 95
    iget-object v1, v1, Lads_mobile_sdk/vf0;->t3:Lads_mobile_sdk/dw2;

    .line 96
    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/a03;

    .line 97
    invoke-virtual {v1, v0, p1}, Lads_mobile_sdk/a03;->a(Landroid/content/Context;Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdRequest;)Lads_mobile_sdk/zz2;

    move-result-object v0

    .line 98
    sget-object v1, Lads_mobile_sdk/jq;->a:Lads_mobile_sdk/jq;

    new-instance v2, Lads_mobile_sdk/jn2;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v0, v3}, Lads_mobile_sdk/jn2;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdRequest;Lads_mobile_sdk/zz2;Lkotlin/coroutines/Continuation;)V

    .line 99
    new-instance p1, Lads_mobile_sdk/fq;

    invoke-direct {p1, v2, v3}, Lads_mobile_sdk/fq;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v1, v0, p1, p2}, Lads_mobile_sdk/jq;->b(Lads_mobile_sdk/px2;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final load(Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdRequest;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdRequest;",
            "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback<",
            "Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAd;",
            ">;)V"
        }
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

    .line 82
    sget-object v0, Lads_mobile_sdk/a01;->a:Lads_mobile_sdk/zz0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lads_mobile_sdk/zz0;->a()Lads_mobile_sdk/a01;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/vf0;

    .line 83
    iget-object v0, v0, Lads_mobile_sdk/vf0;->b:Landroid/content/Context;

    .line 84
    invoke-static {}, Lads_mobile_sdk/zz0;->a()Lads_mobile_sdk/a01;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/vf0;

    .line 85
    iget-object v1, v1, Lads_mobile_sdk/vf0;->t3:Lads_mobile_sdk/dw2;

    .line 86
    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/a03;

    .line 87
    invoke-virtual {v1, v0, p1}, Lads_mobile_sdk/a03;->a(Landroid/content/Context;Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdRequest;)Lads_mobile_sdk/zz2;

    move-result-object v0

    .line 88
    invoke-static {}, Lads_mobile_sdk/zz0;->a()Lads_mobile_sdk/a01;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/vf0;

    .line 89
    iget-object v1, v1, Lads_mobile_sdk/vf0;->q3:Lads_mobile_sdk/dw2;

    .line 90
    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/cm1;

    .line 91
    new-instance v2, Lads_mobile_sdk/ln2;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p2, p1, v3}, Lads_mobile_sdk/ln2;-><init>(Lads_mobile_sdk/zz2;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdRequest;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v1, v2}, Lads_mobile_sdk/cm1;->a(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
