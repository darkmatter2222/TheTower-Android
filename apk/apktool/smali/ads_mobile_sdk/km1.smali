.class public final Lads_mobile_sdk/km1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/drawable/Drawable;

.field public final b:Landroid/net/Uri;

.field public final c:D

.field public final d:I

.field public final e:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DII)V
    .locals 1

    .line 1
    const-string v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lads_mobile_sdk/km1;->a:Landroid/graphics/drawable/Drawable;

    .line 12
    iput-object p2, p0, Lads_mobile_sdk/km1;->b:Landroid/net/Uri;

    .line 13
    iput-wide p3, p0, Lads_mobile_sdk/km1;->c:D

    .line 14
    iput p5, p0, Lads_mobile_sdk/km1;->d:I

    .line 15
    iput p6, p0, Lads_mobile_sdk/km1;->e:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/libraries/ads/mobile/sdk/common/Image;
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/common/Image;

    iget-object v1, p0, Lads_mobile_sdk/km1;->a:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lads_mobile_sdk/km1;->b:Landroid/net/Uri;

    iget-wide v3, p0, Lads_mobile_sdk/km1;->c:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/libraries/ads/mobile/sdk/common/Image;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lads_mobile_sdk/km1;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lads_mobile_sdk/km1;

    iget-object v1, p0, Lads_mobile_sdk/km1;->a:Landroid/graphics/drawable/Drawable;

    iget-object v3, p1, Lads_mobile_sdk/km1;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lads_mobile_sdk/km1;->b:Landroid/net/Uri;

    iget-object v3, p1, Lads_mobile_sdk/km1;->b:Landroid/net/Uri;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lads_mobile_sdk/km1;->c:D

    iget-wide v5, p1, Lads_mobile_sdk/km1;->c:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lads_mobile_sdk/km1;->d:I

    iget v3, p1, Lads_mobile_sdk/km1;->d:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lads_mobile_sdk/km1;->e:I

    iget p1, p1, Lads_mobile_sdk/km1;->e:I

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/km1;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lads_mobile_sdk/km1;->b:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-wide v3, p0, Lads_mobile_sdk/km1;->c:D

    invoke-static {v3, v4}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lads_mobile_sdk/km1;->d:I

    .line 2
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/y1;->a(III)I

    move-result v0

    .line 3
    iget v1, p0, Lads_mobile_sdk/km1;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/km1;->a:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lads_mobile_sdk/km1;->b:Landroid/net/Uri;

    iget-wide v2, p0, Lads_mobile_sdk/km1;->c:D

    iget v4, p0, Lads_mobile_sdk/km1;->d:I

    iget v5, p0, Lads_mobile_sdk/km1;->e:I

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "InternalNativeAdImage(drawable="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", uri="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
