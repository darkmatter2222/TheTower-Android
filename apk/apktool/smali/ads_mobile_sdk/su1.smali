.class public final Lads_mobile_sdk/su1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaContent;


# instance fields
.field public final a:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;)V
    .locals 1

    .line 1
    const-string v0, "internalNativeAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lads_mobile_sdk/su1;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;
    .locals 1

    .line 10
    iget-object v0, p0, Lads_mobile_sdk/su1;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    return-object v0
.end method

.method public final getAspectRatio()F
    .locals 6

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/su1;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->p()Lads_mobile_sdk/hl1;

    move-result-object v0

    .line 4
    iget-object v1, v0, Lads_mobile_sdk/hl1;->a:Lads_mobile_sdk/s02;

    .line 5
    iget v2, v1, Lads_mobile_sdk/s02;->s:F

    const/4 v3, 0x0

    cmpg-float v4, v2, v3

    if-nez v4, :cond_7

    .line 8
    iget-object v2, v1, Lads_mobile_sdk/s02;->l:Lads_mobile_sdk/q41;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lads_mobile_sdk/q41;->a()F

    move-result v0

    return v0

    .line 9
    :cond_0
    iget-object v2, v0, Lads_mobile_sdk/hl1;->b:Landroid/graphics/drawable/Drawable;

    const-string v4, "<this>"

    const/4 v5, -0x1

    if-eqz v2, :cond_1

    .line 10
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-eq v0, v5, :cond_6

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-eq v0, v5, :cond_6

    .line 44
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    :goto_0
    div-float/2addr v0, v1

    return v0

    .line 45
    :cond_1
    iget-object v1, v1, Lads_mobile_sdk/s02;->j:Lads_mobile_sdk/r31;

    if-eqz v1, :cond_2

    .line 46
    invoke-virtual {v1}, Lads_mobile_sdk/r31;->e()Lads_mobile_sdk/v14;

    move-result-object v1

    .line 47
    iget v2, v1, Lads_mobile_sdk/v14;->c:I

    if-lez v2, :cond_2

    .line 48
    iget v0, v1, Lads_mobile_sdk/v14;->b:I

    int-to-float v0, v0

    int-to-float v1, v2

    goto :goto_0

    .line 52
    :cond_2
    iget-object v1, v0, Lads_mobile_sdk/hl1;->a:Lads_mobile_sdk/s02;

    iget-object v1, v1, Lads_mobile_sdk/s02;->f:Lads_mobile_sdk/km1;

    if-eqz v1, :cond_4

    .line 53
    iget v2, v1, Lads_mobile_sdk/km1;->d:I

    if-eq v2, v5, :cond_3

    iget v1, v1, Lads_mobile_sdk/km1;->e:I

    if-eq v1, v5, :cond_3

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    goto :goto_1

    :cond_3
    move v2, v3

    .line 54
    :goto_1
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    .line 56
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    .line 57
    :cond_5
    iget-object v0, v0, Lads_mobile_sdk/hl1;->a:Lads_mobile_sdk/s02;

    iget-object v0, v0, Lads_mobile_sdk/s02;->f:Lads_mobile_sdk/km1;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lads_mobile_sdk/km1;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    .line 58
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-eq v1, v5, :cond_6

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-eq v1, v5, :cond_6

    .line 92
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1

    :cond_6
    return v3

    :cond_7
    return v2
.end method

.method public final getCurrentTime()F
    .locals 2

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/su1;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->p()Lads_mobile_sdk/hl1;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lads_mobile_sdk/hl1;->a:Lads_mobile_sdk/s02;

    .line 5
    iget-object v0, v0, Lads_mobile_sdk/s02;->l:Lads_mobile_sdk/q41;

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, v0, Lads_mobile_sdk/q41;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, v0, Lads_mobile_sdk/q41;->g:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getDuration()F
    .locals 2

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/su1;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->p()Lads_mobile_sdk/hl1;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lads_mobile_sdk/hl1;->a:Lads_mobile_sdk/s02;

    .line 5
    iget-object v0, v0, Lads_mobile_sdk/s02;->l:Lads_mobile_sdk/q41;

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, v0, Lads_mobile_sdk/q41;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, v0, Lads_mobile_sdk/q41;->c:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getHasVideoContent()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/su1;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->p()Lads_mobile_sdk/hl1;

    move-result-object v0

    .line 4
    iget-boolean v0, v0, Lads_mobile_sdk/hl1;->e:Z

    return v0
.end method

.method public final getMainImage()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/su1;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->p()Lads_mobile_sdk/hl1;

    move-result-object v0

    .line 4
    iget-object v1, v0, Lads_mobile_sdk/hl1;->c:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 5
    iget-object v0, v0, Lads_mobile_sdk/hl1;->a:Lads_mobile_sdk/s02;

    iget-object v0, v0, Lads_mobile_sdk/s02;->f:Lads_mobile_sdk/km1;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lads_mobile_sdk/km1;->a:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public final getVideoController()Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController;
    .locals 1

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/su1;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->p()Lads_mobile_sdk/hl1;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lads_mobile_sdk/hl1;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController;

    return-object v0
.end method

.method public final setMainImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/su1;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->p()Lads_mobile_sdk/hl1;

    move-result-object v0

    .line 4
    iput-object p1, v0, Lads_mobile_sdk/hl1;->b:Landroid/graphics/drawable/Drawable;

    .line 5
    iput-object p1, v0, Lads_mobile_sdk/hl1;->c:Landroid/graphics/drawable/Drawable;

    return-void
.end method
