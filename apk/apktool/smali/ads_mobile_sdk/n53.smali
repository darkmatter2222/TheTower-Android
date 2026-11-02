.class public final Lads_mobile_sdk/n53;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Z

.field public final f:Lads_mobile_sdk/gy;

.field public final g:Landroid/graphics/Rect;

.field public final h:Lkotlin/Pair;

.field public final i:Lkotlin/Pair;


# direct methods
.method public constructor <init>(IIIIZLads_mobile_sdk/gy;Landroid/graphics/Rect;Lkotlin/Pair;Lkotlin/Pair;)V
    .locals 1

    .line 1
    const-string v0, "closeButtonPosition"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "originalAdPosition"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityWindowDimensions"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityVerticalLimits"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    iput p1, p0, Lads_mobile_sdk/n53;->a:I

    .line 387
    iput p2, p0, Lads_mobile_sdk/n53;->b:I

    .line 389
    iput p3, p0, Lads_mobile_sdk/n53;->c:I

    .line 391
    iput p4, p0, Lads_mobile_sdk/n53;->d:I

    .line 393
    iput-boolean p5, p0, Lads_mobile_sdk/n53;->e:Z

    .line 395
    iput-object p6, p0, Lads_mobile_sdk/n53;->f:Lads_mobile_sdk/gy;

    .line 397
    iput-object p7, p0, Lads_mobile_sdk/n53;->g:Landroid/graphics/Rect;

    .line 399
    iput-object p8, p0, Lads_mobile_sdk/n53;->h:Lkotlin/Pair;

    .line 401
    iput-object p9, p0, Lads_mobile_sdk/n53;->i:Lkotlin/Pair;

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Point;
    .locals 7

    .line 459
    iget-object v0, p0, Lads_mobile_sdk/n53;->g:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lads_mobile_sdk/n53;->c:I

    add-int/2addr v1, v2

    .line 460
    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lads_mobile_sdk/n53;->d:I

    add-int/2addr v0, v2

    .line 461
    iget-boolean v2, p0, Lads_mobile_sdk/n53;->e:Z

    if-nez v2, :cond_3

    .line 463
    iget-object v2, p0, Lads_mobile_sdk/n53;->i:Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 464
    iget-object v4, p0, Lads_mobile_sdk/n53;->h:Lkotlin/Pair;

    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-gez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 467
    :cond_0
    iget v5, p0, Lads_mobile_sdk/n53;->a:I

    add-int v6, v1, v5

    if-le v6, v4, :cond_1

    sub-int v1, v4, v5

    :cond_1
    :goto_0
    if-ge v0, v3, :cond_2

    move v0, v3

    goto :goto_1

    .line 472
    :cond_2
    iget v3, p0, Lads_mobile_sdk/n53;->b:I

    add-int v4, v0, v3

    if-le v4, v2, :cond_3

    sub-int v0, v2, v3

    .line 476
    :cond_3
    :goto_1
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lads_mobile_sdk/n53;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lads_mobile_sdk/n53;

    iget v1, p0, Lads_mobile_sdk/n53;->a:I

    iget v3, p1, Lads_mobile_sdk/n53;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lads_mobile_sdk/n53;->b:I

    iget v3, p1, Lads_mobile_sdk/n53;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lads_mobile_sdk/n53;->c:I

    iget v3, p1, Lads_mobile_sdk/n53;->c:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lads_mobile_sdk/n53;->d:I

    iget v3, p1, Lads_mobile_sdk/n53;->d:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lads_mobile_sdk/n53;->e:Z

    iget-boolean v3, p1, Lads_mobile_sdk/n53;->e:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lads_mobile_sdk/n53;->f:Lads_mobile_sdk/gy;

    iget-object v3, p1, Lads_mobile_sdk/n53;->f:Lads_mobile_sdk/gy;

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lads_mobile_sdk/n53;->g:Landroid/graphics/Rect;

    iget-object v3, p1, Lads_mobile_sdk/n53;->g:Landroid/graphics/Rect;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lads_mobile_sdk/n53;->h:Lkotlin/Pair;

    iget-object v3, p1, Lads_mobile_sdk/n53;->h:Lkotlin/Pair;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lads_mobile_sdk/n53;->i:Lkotlin/Pair;

    iget-object p1, p1, Lads_mobile_sdk/n53;->i:Lkotlin/Pair;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lads_mobile_sdk/n53;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lads_mobile_sdk/n53;->b:I

    .line 2
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/y1;->a(III)I

    move-result v0

    .line 3
    iget v2, p0, Lads_mobile_sdk/n53;->c:I

    .line 4
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/y1;->a(III)I

    move-result v0

    .line 5
    iget v2, p0, Lads_mobile_sdk/n53;->d:I

    .line 6
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/y1;->a(III)I

    move-result v0

    .line 7
    iget-boolean v2, p0, Lads_mobile_sdk/n53;->e:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lads_mobile_sdk/n53;->f:Lads_mobile_sdk/gy;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lads_mobile_sdk/n53;->g:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lads_mobile_sdk/n53;->h:Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lads_mobile_sdk/n53;->i:Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    .line 1
    iget v0, p0, Lads_mobile_sdk/n53;->a:I

    iget v1, p0, Lads_mobile_sdk/n53;->b:I

    iget v2, p0, Lads_mobile_sdk/n53;->c:I

    iget v3, p0, Lads_mobile_sdk/n53;->d:I

    iget-boolean v4, p0, Lads_mobile_sdk/n53;->e:Z

    iget-object v5, p0, Lads_mobile_sdk/n53;->f:Lads_mobile_sdk/gy;

    iget-object v6, p0, Lads_mobile_sdk/n53;->g:Landroid/graphics/Rect;

    iget-object v7, p0, Lads_mobile_sdk/n53;->h:Lkotlin/Pair;

    iget-object v8, p0, Lads_mobile_sdk/n53;->i:Lkotlin/Pair;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "ResizeParams(widthDips="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ", heightDips="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offsetXDips="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offsetYDips="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowOffScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", closeButtonPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", originalAdPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activityWindowDimensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activityVerticalLimits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
