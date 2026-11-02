.class public final Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;
.super Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdRequestBuilder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdRequestBuilder<",
        "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;",
        ">;",
        "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest$Builder<",
        "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002B\u0019\u0008\u0016\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u0006\u0010\u0015\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u001e\u0010\u001fB\u001f\u0008\u0016\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0016\u00a2\u0006\u0004\u0008\u001e\u0010 J\u000f\u0010\u0003\u001a\u00020\u0000H\u0014\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\r\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0015\u001a\u00020\u00108\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014R\u001d\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u00168\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006!"
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdRequestBuilder;",
        "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest$Builder;",
        "self",
        "()Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;",
        "videoOptions",
        "setVideoOptions",
        "(Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;)Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;",
        "",
        "enabled",
        "setManualImpressionEnabled",
        "(Z)Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;",
        "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;",
        "build",
        "()Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;",
        "Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;",
        "m",
        "Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;",
        "getAdSize",
        "()Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;",
        "adSize",
        "",
        "n",
        "Ljava/util/List;",
        "getAdSizes",
        "()Ljava/util/List;",
        "adSizes",
        "",
        "adUnitId",
        "<init>",
        "(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;)V",
        "(Ljava/lang/String;Ljava/util/List;)V",
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
.field private final m:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

.field private final n:Ljava/util/List;

.field private o:Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;

.field private p:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;)V
    .locals 1

    const-string v0, "adUnitId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adSize"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;-><init>(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdRequestBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;->m:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    iput-object p3, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;->n:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;",
            ">;)V"
        }
    .end annotation

    const-string v0, "adUnitId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adSizes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;-><init>(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;
    .locals 20

    move-object/from16 v0, p0

    .line 1
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->c()Ljava/util/LinkedHashSet;

    move-result-object v3

    .line 3
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->d()Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->e()Ljava/util/LinkedHashMap;

    move-result-object v5

    .line 5
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->f()Landroid/os/Bundle;

    move-result-object v6

    .line 6
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->g()Ljava/util/HashSet;

    move-result-object v7

    .line 7
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->h()Ljava/util/HashSet;

    move-result-object v8

    .line 8
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->a()Ljava/util/LinkedHashMap;

    move-result-object v9

    .line 9
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->j()Ljava/lang/String;

    move-result-object v10

    .line 10
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->k()Ljava/lang/String;

    move-result-object v11

    .line 11
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->i()J

    move-result-wide v12

    .line 12
    iget-object v14, v0, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;->m:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    .line 13
    iget-object v15, v0, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;->n:Ljava/util/List;

    .line 14
    iget-object v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;->o:Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;

    move-object/from16 v16, v1

    .line 15
    iget-boolean v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;->p:Z

    .line 16
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->l()Z

    move-result v18

    move/from16 v17, v1

    .line 17
    new-instance v1, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;

    const/16 v19, 0x0

    invoke-direct/range {v1 .. v19}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/util/Map;Landroid/os/Bundle;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JLcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;Ljava/util/List;Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;ZZI)V

    return-object v1

    .line 18
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Ad unit ID cannot be null."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getAdSize()Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;->m:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    return-object v0
.end method

.method public final getAdSizes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;->n:Ljava/util/List;

    return-object v0
.end method

.method protected self()Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;
    .locals 0

    return-object p0
.end method

.method public final bridge synthetic self()Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;->self()Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setManualImpressionEnabled(Z)Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;->p:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;->self()Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setVideoOptions(Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;)Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;
    .locals 1

    const-string v0, "videoOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;->o:Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;->self()Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;

    move-result-object p1

    return-object p1
.end method
