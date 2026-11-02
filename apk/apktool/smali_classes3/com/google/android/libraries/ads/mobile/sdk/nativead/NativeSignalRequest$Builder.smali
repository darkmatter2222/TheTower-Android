.class public final Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;
.super Lcom/google/android/libraries/ads/mobile/sdk/common/BaseSignalRequestBuilder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest$Builder;
.implements Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/ads/mobile/sdk/common/BaseSignalRequestBuilder<",
        "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;",
        ">;",
        "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest$Builder<",
        "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;",
        ">;",
        "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest$Builder<",
        "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u00022\u0008\u0012\u0004\u0012\u00020\u00000\u0003B\u0011\u0008\u0016\u0012\u0006\u0010-\u001a\u00020\u000b\u00a2\u0006\u0004\u0008.\u0010/J\u000f\u0010\u0004\u001a\u00020\u0000H\u0014\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001b\u0010\t\u001a\u00020\u00002\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001d\u0010\r\u001a\u00020\u00002\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0006H\u0016\u00a2\u0006\u0004\u0008\r\u0010\nJ\u000f\u0010\u000e\u001a\u00020\u0000H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u0005J\u0017\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0017\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u001bH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u001f\u0010\"\u001a\u00020\u00002\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u001bH\u0016\u00a2\u0006\u0004\u0008\"\u0010#J\u0017\u0010&\u001a\u00020\u00002\u0006\u0010%\u001a\u00020$H\u0016\u00a2\u0006\u0004\u0008&\u0010\'J\u001d\u0010)\u001a\u00020\u00002\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020$0\u0006H\u0016\u00a2\u0006\u0004\u0008)\u0010\nJ\r\u0010+\u001a\u00020*\u00a2\u0006\u0004\u0008+\u0010,\u00a8\u00060"
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/BaseSignalRequestBuilder;",
        "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest$Builder;",
        "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest$Builder;",
        "self",
        "()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;",
        "",
        "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeAdType;",
        "nativeAdTypes",
        "setNativeAdTypes",
        "(Ljava/util/List;)Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;",
        "",
        "customFormatIds",
        "setCustomFormatIds",
        "disableImageDownloading",
        "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;",
        "mediaAspectRatio",
        "setMediaAspectRatio",
        "(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;)Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;",
        "adChoicesPlacement",
        "setAdChoicesPlacement",
        "(Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;)Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;",
        "videoOptions",
        "setVideoOptions",
        "(Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;)Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;",
        "",
        "enabled",
        "setManualImpressionEnabled",
        "(Z)Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;",
        "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;",
        "customClickGestureDirection",
        "customClickGestureAllowTaps",
        "enableCustomClickGestureDirection",
        "(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;Z)Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;",
        "Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;",
        "adSize",
        "setAdSize",
        "(Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;)Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;",
        "adSizes",
        "setAdSizes",
        "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;",
        "build",
        "()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;",
        "signalType",
        "<init>",
        "(Ljava/lang/String;)V",
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
.field private n:Ljava/util/List;

.field private o:Ljava/util/List;

.field private p:Z

.field private q:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;

.field private r:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

.field private s:Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;

.field private t:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;

.field private u:Z

.field private v:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

.field private w:Ljava/util/List;

.field private x:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "signalType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseSignalRequestBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->n:Ljava/util/List;

    .line 6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->o:Ljava/util/List;

    .line 8
    sget-object p1, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;->UNKNOWN:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->q:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;

    .line 9
    sget-object p1, Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;->TOP_RIGHT:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->r:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    .line 15
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->w:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;
    .locals 26

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseSignalRequestBuilder;->m()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->b()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->c()Ljava/util/LinkedHashSet;

    move-result-object v4

    .line 5
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->d()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->e()Ljava/util/LinkedHashMap;

    move-result-object v6

    .line 7
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->f()Landroid/os/Bundle;

    move-result-object v7

    .line 8
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->g()Ljava/util/HashSet;

    move-result-object v8

    .line 9
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->h()Ljava/util/HashSet;

    move-result-object v9

    .line 10
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->a()Ljava/util/LinkedHashMap;

    move-result-object v10

    .line 11
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->j()Ljava/lang/String;

    move-result-object v11

    .line 12
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->k()Ljava/lang/String;

    move-result-object v12

    .line 13
    iget-object v13, v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->n:Ljava/util/List;

    .line 14
    iget-object v14, v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->o:Ljava/util/List;

    .line 15
    iget-boolean v15, v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->p:Z

    move-object/from16 v16, v1

    .line 16
    iget-object v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->q:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;

    move-object/from16 v17, v1

    .line 17
    iget-object v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->r:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    move-object/from16 v18, v1

    .line 18
    iget-object v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->s:Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;

    move-object/from16 v19, v1

    .line 19
    iget-object v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->t:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;

    move-object/from16 v20, v1

    .line 20
    iget-boolean v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->u:Z

    move/from16 v21, v1

    .line 22
    iget-object v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->v:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-object/from16 v22, v1

    .line 23
    iget-object v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->w:Ljava/util/List;

    move-object/from16 v23, v1

    .line 24
    iget-boolean v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->x:Z

    const/16 v24, 0x0

    move-object/from16 v25, v23

    move/from16 v23, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v25

    .line 25
    invoke-direct/range {v1 .. v24}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashSet;Ljava/lang/String;Ljava/util/LinkedHashMap;Landroid/os/Bundle;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZLcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;ZLcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;Ljava/util/List;ZI)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public disableImageDownloading()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->p:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->self()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public enableCustomClickGestureDirection(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;Z)Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;
    .locals 1

    const-string v0, "customClickGestureDirection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->t:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;

    .line 2
    iput-boolean p2, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->u:Z

    .line 3
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->self()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic self()Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->self()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected self()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;
    .locals 0

    return-object p0
.end method

.method public setAdChoicesPlacement(Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;)Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;
    .locals 1

    const-string v0, "adChoicesPlacement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->r:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->self()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAdSize(Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;)Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;
    .locals 1

    const-string v0, "adSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->v:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    .line 2
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->w:Ljava/util/List;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->self()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAdSizes(Ljava/util/List;)Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;",
            ">;)",
            "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;"
        }
    .end annotation

    const-string v0, "adSizes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    iput-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->v:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    .line 2
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->w:Ljava/util/List;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->self()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setCustomFormatIds(Ljava/util/List;)Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;"
        }
    .end annotation

    const-string v0, "customFormatIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->o:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->self()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setManualImpressionEnabled(Z)Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->x:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->self()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setMediaAspectRatio(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;)Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;
    .locals 1

    const-string v0, "mediaAspectRatio"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->q:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->self()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setNativeAdTypes(Ljava/util/List;)Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeAdType;",
            ">;)",
            "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;"
        }
    .end annotation

    const-string v0, "nativeAdTypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->n:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->self()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setVideoOptions(Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;)Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;
    .locals 1

    const-string v0, "videoOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->s:Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->self()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;

    move-result-object p1

    return-object p1
.end method
