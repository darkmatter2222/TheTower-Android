.class public final Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaView;
.super Lcom/google/android/gms/ads/nativead/MediaView;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0015\u0010\u0016B\u0019\u0008\u0016\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u0015\u0010\u0019B!\u0008\u0016\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u00a2\u0006\u0004\u0008\u0015\u0010\u001cB)\u0008\u0016\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010\u001d\u001a\u00020\u001a\u00a2\u0006\u0004\u0008\u0015\u0010\u001eR.\u0010\n\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR.\u0010\u0012\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u000b8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaView;",
        "Lcom/google/android/gms/ads/nativead/MediaView;",
        "Landroid/widget/ImageView$ScaleType;",
        "value",
        "a",
        "Landroid/widget/ImageView$ScaleType;",
        "getImageScaleType",
        "()Landroid/widget/ImageView$ScaleType;",
        "setImageScaleType",
        "(Landroid/widget/ImageView$ScaleType;)V",
        "imageScaleType",
        "Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaContent;",
        "b",
        "Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaContent;",
        "getMediaContent",
        "()Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaContent;",
        "setMediaContent",
        "(Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaContent;)V",
        "mediaContent",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "defStyleRes",
        "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
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
.field private a:Landroid/widget/ImageView$ScaleType;

.field private b:Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaContent;

.field private c:Lads_mobile_sdk/av1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/nativead/MediaView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/ads/nativead/MediaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/ads/nativead/MediaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/ads/nativead/MediaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/m32;)V
    .locals 1

    .line 2
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaView;->c:Lads_mobile_sdk/av1;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 3
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaView;->a:Landroid/widget/ImageView$ScaleType;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lads_mobile_sdk/m32;->a(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit p0

    throw p1
.end method

.method public final getImageScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaView;->a:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public final getMediaContent()Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaContent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaView;->b:Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaContent;

    return-object v0
.end method

.method public final setImageScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaView;->a:Landroid/widget/ImageView$ScaleType;

    if-eqz p1, :cond_0

    .line 2
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaView;->c:Lads_mobile_sdk/av1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Lads_mobile_sdk/m32;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/m32;->a(Landroid/widget/ImageView$ScaleType;)V

    return-void

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit p0

    throw p1

    :cond_0
    return-void
.end method

.method public final setMediaContent(Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaContent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaView;->b:Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaContent;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaContent;->a()Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->a(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method
