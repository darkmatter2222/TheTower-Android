.class public final Lads_mobile_sdk/uh2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lads_mobile_sdk/j53;

.field public final c:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

.field public final d:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

.field public final e:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

.field public final f:Z

.field public final g:Ljava/util/List;

.field public final h:Z

.field public final i:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;

.field public final j:Lcom/google/android/libraries/ads/mobile/sdk/rewarded/ServerSideVerificationOptions;

.field public final k:Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;

.field public final l:Ljava/lang/String;

.field public final m:Z

.field public final n:Landroid/widget/ImageView$ScaleType;

.field public final o:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lads_mobile_sdk/j53;Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;ZLjava/util/List;ZLcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;Lcom/google/android/libraries/ads/mobile/sdk/rewarded/ServerSideVerificationOptions;Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;Ljava/lang/String;ZLandroid/widget/ImageView$ScaleType;I)V
    .locals 2

    move-object/from16 v0, p14

    .line 1
    const-string v1, "adUnitId"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "format"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adChoicesPosition"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adSize"

    invoke-static {p5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "mediaAspectRatio"

    invoke-static {p9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "bannerPosition"

    invoke-static {p12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "imageScaleType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lads_mobile_sdk/uh2;->a:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lads_mobile_sdk/uh2;->b:Lads_mobile_sdk/j53;

    .line 19
    iput-object p3, p0, Lads_mobile_sdk/uh2;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    .line 20
    iput-object p4, p0, Lads_mobile_sdk/uh2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    .line 21
    iput-object p5, p0, Lads_mobile_sdk/uh2;->e:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    .line 22
    iput-boolean p6, p0, Lads_mobile_sdk/uh2;->f:Z

    .line 23
    iput-object p7, p0, Lads_mobile_sdk/uh2;->g:Ljava/util/List;

    .line 24
    iput-boolean p8, p0, Lads_mobile_sdk/uh2;->h:Z

    .line 25
    iput-object p9, p0, Lads_mobile_sdk/uh2;->i:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;

    .line 26
    iput-object p10, p0, Lads_mobile_sdk/uh2;->j:Lcom/google/android/libraries/ads/mobile/sdk/rewarded/ServerSideVerificationOptions;

    .line 27
    iput-object p11, p0, Lads_mobile_sdk/uh2;->k:Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;

    .line 30
    iput-object p12, p0, Lads_mobile_sdk/uh2;->l:Ljava/lang/String;

    move p1, p13

    .line 31
    iput-boolean p1, p0, Lads_mobile_sdk/uh2;->m:Z

    .line 32
    iput-object v0, p0, Lads_mobile_sdk/uh2;->n:Landroid/widget/ImageView$ScaleType;

    move/from16 p1, p15

    .line 33
    iput p1, p0, Lads_mobile_sdk/uh2;->o:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lads_mobile_sdk/uh2;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/google/android/libraries/ads/mobile/sdk/rewarded/ServerSideVerificationOptions;
    .locals 1

    .line 26
    iget-object v0, p0, Lads_mobile_sdk/uh2;->j:Lcom/google/android/libraries/ads/mobile/sdk/rewarded/ServerSideVerificationOptions;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lads_mobile_sdk/uh2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lads_mobile_sdk/uh2;

    iget-object v1, p0, Lads_mobile_sdk/uh2;->a:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/uh2;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lads_mobile_sdk/uh2;->b:Lads_mobile_sdk/j53;

    iget-object v3, p1, Lads_mobile_sdk/uh2;->b:Lads_mobile_sdk/j53;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lads_mobile_sdk/uh2;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    iget-object v3, p1, Lads_mobile_sdk/uh2;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lads_mobile_sdk/uh2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    iget-object v3, p1, Lads_mobile_sdk/uh2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lads_mobile_sdk/uh2;->e:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    iget-object v3, p1, Lads_mobile_sdk/uh2;->e:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lads_mobile_sdk/uh2;->f:Z

    iget-boolean v3, p1, Lads_mobile_sdk/uh2;->f:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lads_mobile_sdk/uh2;->g:Ljava/util/List;

    iget-object v3, p1, Lads_mobile_sdk/uh2;->g:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lads_mobile_sdk/uh2;->h:Z

    iget-boolean v3, p1, Lads_mobile_sdk/uh2;->h:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lads_mobile_sdk/uh2;->i:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;

    iget-object v3, p1, Lads_mobile_sdk/uh2;->i:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lads_mobile_sdk/uh2;->j:Lcom/google/android/libraries/ads/mobile/sdk/rewarded/ServerSideVerificationOptions;

    iget-object v3, p1, Lads_mobile_sdk/uh2;->j:Lcom/google/android/libraries/ads/mobile/sdk/rewarded/ServerSideVerificationOptions;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lads_mobile_sdk/uh2;->k:Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;

    iget-object v3, p1, Lads_mobile_sdk/uh2;->k:Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lads_mobile_sdk/uh2;->l:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/uh2;->l:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-boolean v1, p0, Lads_mobile_sdk/uh2;->m:Z

    iget-boolean v3, p1, Lads_mobile_sdk/uh2;->m:Z

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lads_mobile_sdk/uh2;->n:Landroid/widget/ImageView$ScaleType;

    iget-object v3, p1, Lads_mobile_sdk/uh2;->n:Landroid/widget/ImageView$ScaleType;

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    iget v1, p0, Lads_mobile_sdk/uh2;->o:I

    iget p1, p1, Lads_mobile_sdk/uh2;->o:I

    if-eq v1, p1, :cond_10

    return v2

    :cond_10
    return v0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/uh2;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lads_mobile_sdk/uh2;->b:Lads_mobile_sdk/j53;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lads_mobile_sdk/uh2;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lads_mobile_sdk/uh2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lads_mobile_sdk/uh2;->e:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Lads_mobile_sdk/uh2;->f:Z

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    move v0, v4

    :cond_1
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lads_mobile_sdk/uh2;->g:Ljava/util/List;

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Lads_mobile_sdk/uh2;->h:Z

    if-eqz v0, :cond_3

    move v0, v4

    :cond_3
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lads_mobile_sdk/uh2;->i:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lads_mobile_sdk/uh2;->j:Lcom/google/android/libraries/ads/mobile/sdk/rewarded/ServerSideVerificationOptions;

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lads_mobile_sdk/uh2;->k:Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v2, p0, Lads_mobile_sdk/uh2;->l:Ljava/lang/String;

    .line 2
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/ob;->a(Ljava/lang/String;II)I

    move-result v0

    .line 3
    iget-boolean v2, p0, Lads_mobile_sdk/uh2;->m:Z

    if-eqz v2, :cond_6

    goto :goto_4

    :cond_6
    move v4, v2

    :goto_4
    add-int/2addr v0, v4

    mul-int/2addr v0, v1

    iget-object v2, p0, Lads_mobile_sdk/uh2;->n:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lads_mobile_sdk/uh2;->o:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lads_mobile_sdk/uh2;->a:Ljava/lang/String;

    iget-object v2, v0, Lads_mobile_sdk/uh2;->b:Lads_mobile_sdk/j53;

    iget-object v3, v0, Lads_mobile_sdk/uh2;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    iget-object v4, v0, Lads_mobile_sdk/uh2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    iget-object v5, v0, Lads_mobile_sdk/uh2;->e:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    iget-boolean v6, v0, Lads_mobile_sdk/uh2;->f:Z

    iget-object v7, v0, Lads_mobile_sdk/uh2;->g:Ljava/util/List;

    iget-boolean v8, v0, Lads_mobile_sdk/uh2;->h:Z

    iget-object v9, v0, Lads_mobile_sdk/uh2;->i:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;

    iget-object v10, v0, Lads_mobile_sdk/uh2;->j:Lcom/google/android/libraries/ads/mobile/sdk/rewarded/ServerSideVerificationOptions;

    iget-object v11, v0, Lads_mobile_sdk/uh2;->k:Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;

    iget-object v12, v0, Lads_mobile_sdk/uh2;->l:Ljava/lang/String;

    iget-boolean v13, v0, Lads_mobile_sdk/uh2;->m:Z

    iget-object v14, v0, Lads_mobile_sdk/uh2;->n:Landroid/widget/ImageView$ScaleType;

    iget v15, v0, Lads_mobile_sdk/uh2;->o:I

    new-instance v0, Ljava/lang/StringBuilder;

    move/from16 v16, v15

    const-string v15, "OutOfContextTestingConfiguration(adUnitId="

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adChoicesPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", customMuteThisAd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", customNativeTemplates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isImageLoadingDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mediaAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serverSideVerificationOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bannerPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isImmersiveMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageScaleType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", widthConstraint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
