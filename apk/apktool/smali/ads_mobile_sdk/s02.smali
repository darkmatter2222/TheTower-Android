.class public final Lads_mobile_sdk/s02;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Lads_mobile_sdk/q02;

.field public c:Ljava/lang/String;

.field public final d:Ljava/util/Map;

.field public e:Ljava/lang/Double;

.field public f:Lads_mobile_sdk/km1;

.field public g:Lads_mobile_sdk/km1;

.field public h:Lads_mobile_sdk/ak1;

.field public final i:Ljava/util/Map;

.field public j:Lads_mobile_sdk/r31;

.field public k:Landroid/view/View;

.field public l:Lads_mobile_sdk/q41;

.field public m:Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController;

.field public n:Lads_mobile_sdk/dg2;

.field public o:Lkotlinx/coroutines/Deferred;

.field public final p:Ljava/util/List;

.field public q:Lads_mobile_sdk/hm1;

.field public r:Landroid/os/Bundle;

.field public s:F

.field public t:Landroid/view/View;

.field public u:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

.field public v:Ljava/lang/String;

.field public w:Lcom/google/gson/JsonObject;


# direct methods
.method public synthetic constructor <init>()V
    .locals 24

    .line 2
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 21
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 23
    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    const/16 v19, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    .line 24
    invoke-direct/range {v0 .. v23}, Lads_mobile_sdk/s02;-><init>(ILads_mobile_sdk/q02;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Double;Lads_mobile_sdk/km1;Lads_mobile_sdk/km1;Lads_mobile_sdk/ak1;Ljava/util/Map;Lads_mobile_sdk/r31;Landroid/view/View;Lads_mobile_sdk/q41;Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController;Lads_mobile_sdk/dg2;Lkotlinx/coroutines/Deferred;Ljava/util/List;Lads_mobile_sdk/hm1;Landroid/os/Bundle;FLandroid/view/View;Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    return-void
.end method

.method public constructor <init>(ILads_mobile_sdk/q02;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Double;Lads_mobile_sdk/km1;Lads_mobile_sdk/km1;Lads_mobile_sdk/ak1;Ljava/util/Map;Lads_mobile_sdk/r31;Landroid/view/View;Lads_mobile_sdk/q41;Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController;Lads_mobile_sdk/dg2;Lkotlinx/coroutines/Deferred;Ljava/util/List;Lads_mobile_sdk/hm1;Landroid/os/Bundle;FLandroid/view/View;Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 3

    move-object/from16 v0, p16

    move-object/from16 v1, p18

    .line 25
    const-string v2, "stringAssets"

    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "customImageAssets"

    invoke-static {p9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "muteThisAdReasons"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "extras"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lads_mobile_sdk/s02;->a:I

    .line 44
    iput-object p2, p0, Lads_mobile_sdk/s02;->b:Lads_mobile_sdk/q02;

    .line 45
    iput-object p3, p0, Lads_mobile_sdk/s02;->c:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lads_mobile_sdk/s02;->d:Ljava/util/Map;

    .line 47
    iput-object p5, p0, Lads_mobile_sdk/s02;->e:Ljava/lang/Double;

    .line 48
    iput-object p6, p0, Lads_mobile_sdk/s02;->f:Lads_mobile_sdk/km1;

    .line 49
    iput-object p7, p0, Lads_mobile_sdk/s02;->g:Lads_mobile_sdk/km1;

    .line 50
    iput-object p8, p0, Lads_mobile_sdk/s02;->h:Lads_mobile_sdk/ak1;

    .line 51
    iput-object p9, p0, Lads_mobile_sdk/s02;->i:Ljava/util/Map;

    .line 52
    iput-object p10, p0, Lads_mobile_sdk/s02;->j:Lads_mobile_sdk/r31;

    .line 55
    iput-object p11, p0, Lads_mobile_sdk/s02;->k:Landroid/view/View;

    .line 57
    iput-object p12, p0, Lads_mobile_sdk/s02;->l:Lads_mobile_sdk/q41;

    move-object/from16 p1, p13

    .line 60
    iput-object p1, p0, Lads_mobile_sdk/s02;->m:Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController;

    move-object/from16 p1, p14

    .line 63
    iput-object p1, p0, Lads_mobile_sdk/s02;->n:Lads_mobile_sdk/dg2;

    move-object/from16 p1, p15

    .line 64
    iput-object p1, p0, Lads_mobile_sdk/s02;->o:Lkotlinx/coroutines/Deferred;

    .line 65
    iput-object v0, p0, Lads_mobile_sdk/s02;->p:Ljava/util/List;

    move-object/from16 p1, p17

    .line 66
    iput-object p1, p0, Lads_mobile_sdk/s02;->q:Lads_mobile_sdk/hm1;

    .line 67
    iput-object v1, p0, Lads_mobile_sdk/s02;->r:Landroid/os/Bundle;

    move/from16 p1, p19

    .line 68
    iput p1, p0, Lads_mobile_sdk/s02;->s:F

    move-object/from16 p1, p20

    .line 69
    iput-object p1, p0, Lads_mobile_sdk/s02;->t:Landroid/view/View;

    move-object/from16 p1, p21

    .line 70
    iput-object p1, p0, Lads_mobile_sdk/s02;->u:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    move-object/from16 p1, p22

    .line 71
    iput-object p1, p0, Lads_mobile_sdk/s02;->v:Ljava/lang/String;

    move-object/from16 p1, p23

    .line 72
    iput-object p1, p0, Lads_mobile_sdk/s02;->w:Lcom/google/gson/JsonObject;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lads_mobile_sdk/s02;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lads_mobile_sdk/s02;

    iget v1, p0, Lads_mobile_sdk/s02;->a:I

    iget v3, p1, Lads_mobile_sdk/s02;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lads_mobile_sdk/s02;->b:Lads_mobile_sdk/q02;

    iget-object v3, p1, Lads_mobile_sdk/s02;->b:Lads_mobile_sdk/q02;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lads_mobile_sdk/s02;->c:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/s02;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lads_mobile_sdk/s02;->d:Ljava/util/Map;

    iget-object v3, p1, Lads_mobile_sdk/s02;->d:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lads_mobile_sdk/s02;->e:Ljava/lang/Double;

    iget-object v3, p1, Lads_mobile_sdk/s02;->e:Ljava/lang/Double;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lads_mobile_sdk/s02;->f:Lads_mobile_sdk/km1;

    iget-object v3, p1, Lads_mobile_sdk/s02;->f:Lads_mobile_sdk/km1;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lads_mobile_sdk/s02;->g:Lads_mobile_sdk/km1;

    iget-object v3, p1, Lads_mobile_sdk/s02;->g:Lads_mobile_sdk/km1;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lads_mobile_sdk/s02;->h:Lads_mobile_sdk/ak1;

    iget-object v3, p1, Lads_mobile_sdk/s02;->h:Lads_mobile_sdk/ak1;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lads_mobile_sdk/s02;->i:Ljava/util/Map;

    iget-object v3, p1, Lads_mobile_sdk/s02;->i:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lads_mobile_sdk/s02;->j:Lads_mobile_sdk/r31;

    iget-object v3, p1, Lads_mobile_sdk/s02;->j:Lads_mobile_sdk/r31;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lads_mobile_sdk/s02;->k:Landroid/view/View;

    iget-object v3, p1, Lads_mobile_sdk/s02;->k:Landroid/view/View;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lads_mobile_sdk/s02;->l:Lads_mobile_sdk/q41;

    iget-object v3, p1, Lads_mobile_sdk/s02;->l:Lads_mobile_sdk/q41;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lads_mobile_sdk/s02;->m:Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController;

    iget-object v3, p1, Lads_mobile_sdk/s02;->m:Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lads_mobile_sdk/s02;->n:Lads_mobile_sdk/dg2;

    iget-object v3, p1, Lads_mobile_sdk/s02;->n:Lads_mobile_sdk/dg2;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lads_mobile_sdk/s02;->o:Lkotlinx/coroutines/Deferred;

    iget-object v3, p1, Lads_mobile_sdk/s02;->o:Lkotlinx/coroutines/Deferred;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lads_mobile_sdk/s02;->p:Ljava/util/List;

    iget-object v3, p1, Lads_mobile_sdk/s02;->p:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lads_mobile_sdk/s02;->q:Lads_mobile_sdk/hm1;

    iget-object v3, p1, Lads_mobile_sdk/s02;->q:Lads_mobile_sdk/hm1;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lads_mobile_sdk/s02;->r:Landroid/os/Bundle;

    iget-object v3, p1, Lads_mobile_sdk/s02;->r:Landroid/os/Bundle;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lads_mobile_sdk/s02;->s:F

    iget v3, p1, Lads_mobile_sdk/s02;->s:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lads_mobile_sdk/s02;->t:Landroid/view/View;

    iget-object v3, p1, Lads_mobile_sdk/s02;->t:Landroid/view/View;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lads_mobile_sdk/s02;->u:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    iget-object v3, p1, Lads_mobile_sdk/s02;->u:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    if-eq v1, v3, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lads_mobile_sdk/s02;->v:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/s02;->v:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lads_mobile_sdk/s02;->w:Lcom/google/gson/JsonObject;

    iget-object p1, p1, Lads_mobile_sdk/s02;->w:Lcom/google/gson/JsonObject;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    return v2

    :cond_18
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lads_mobile_sdk/s02;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lads_mobile_sdk/s02;->b:Lads_mobile_sdk/q02;

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

    iget-object v2, p0, Lads_mobile_sdk/s02;->c:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lads_mobile_sdk/s02;->d:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lads_mobile_sdk/s02;->e:Ljava/lang/Double;

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lads_mobile_sdk/s02;->f:Lads_mobile_sdk/km1;

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Lads_mobile_sdk/km1;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lads_mobile_sdk/s02;->g:Lads_mobile_sdk/km1;

    if-nez v0, :cond_4

    move v0, v3

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Lads_mobile_sdk/km1;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lads_mobile_sdk/s02;->h:Lads_mobile_sdk/ak1;

    if-nez v0, :cond_5

    move v0, v3

    goto :goto_5

    :cond_5
    invoke-virtual {v0}, Lads_mobile_sdk/ak1;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lads_mobile_sdk/s02;->i:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lads_mobile_sdk/s02;->j:Lads_mobile_sdk/r31;

    if-nez v2, :cond_6

    move v2, v3

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lads_mobile_sdk/s02;->k:Landroid/view/View;

    if-nez v2, :cond_7

    move v2, v3

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lads_mobile_sdk/s02;->l:Lads_mobile_sdk/q41;

    if-nez v2, :cond_8

    move v2, v3

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lads_mobile_sdk/s02;->m:Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController;

    if-nez v2, :cond_9

    move v2, v3

    goto :goto_9

    :cond_9
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_9
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lads_mobile_sdk/s02;->n:Lads_mobile_sdk/dg2;

    if-nez v2, :cond_a

    move v2, v3

    goto :goto_a

    :cond_a
    invoke-virtual {v2}, Lads_mobile_sdk/dg2;->hashCode()I

    move-result v2

    :goto_a
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lads_mobile_sdk/s02;->o:Lkotlinx/coroutines/Deferred;

    if-nez v2, :cond_b

    move v2, v3

    goto :goto_b

    :cond_b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_b
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lads_mobile_sdk/s02;->p:Ljava/util/List;

    .line 2
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/h93;->a(Ljava/util/List;II)I

    move-result v0

    .line 3
    iget-object v2, p0, Lads_mobile_sdk/s02;->q:Lads_mobile_sdk/hm1;

    if-nez v2, :cond_c

    move v2, v3

    goto :goto_c

    :cond_c
    invoke-virtual {v2}, Lads_mobile_sdk/hm1;->hashCode()I

    move-result v2

    :goto_c
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lads_mobile_sdk/s02;->r:Landroid/os/Bundle;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lads_mobile_sdk/s02;->s:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lads_mobile_sdk/s02;->t:Landroid/view/View;

    if-nez v2, :cond_d

    move v2, v3

    goto :goto_d

    :cond_d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_d
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lads_mobile_sdk/s02;->u:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    if-nez v2, :cond_e

    move v2, v3

    goto :goto_e

    :cond_e
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_e
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lads_mobile_sdk/s02;->v:Ljava/lang/String;

    if-nez v2, :cond_f

    move v2, v3

    goto :goto_f

    :cond_f
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_f
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v1, p0, Lads_mobile_sdk/s02;->w:Lcom/google/gson/JsonObject;

    if-nez v1, :cond_10

    goto :goto_10

    :cond_10
    invoke-virtual {v1}, Lcom/google/gson/JsonObject;->hashCode()I

    move-result v3

    :goto_10
    add-int/2addr v0, v3

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 25

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lads_mobile_sdk/s02;->a:I

    iget-object v2, v0, Lads_mobile_sdk/s02;->b:Lads_mobile_sdk/q02;

    iget-object v3, v0, Lads_mobile_sdk/s02;->c:Ljava/lang/String;

    iget-object v4, v0, Lads_mobile_sdk/s02;->d:Ljava/util/Map;

    iget-object v5, v0, Lads_mobile_sdk/s02;->e:Ljava/lang/Double;

    iget-object v6, v0, Lads_mobile_sdk/s02;->f:Lads_mobile_sdk/km1;

    iget-object v7, v0, Lads_mobile_sdk/s02;->g:Lads_mobile_sdk/km1;

    iget-object v8, v0, Lads_mobile_sdk/s02;->h:Lads_mobile_sdk/ak1;

    iget-object v9, v0, Lads_mobile_sdk/s02;->i:Ljava/util/Map;

    iget-object v10, v0, Lads_mobile_sdk/s02;->j:Lads_mobile_sdk/r31;

    iget-object v11, v0, Lads_mobile_sdk/s02;->k:Landroid/view/View;

    iget-object v12, v0, Lads_mobile_sdk/s02;->l:Lads_mobile_sdk/q41;

    iget-object v13, v0, Lads_mobile_sdk/s02;->m:Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController;

    iget-object v14, v0, Lads_mobile_sdk/s02;->n:Lads_mobile_sdk/dg2;

    iget-object v15, v0, Lads_mobile_sdk/s02;->o:Lkotlinx/coroutines/Deferred;

    move-object/from16 v16, v15

    iget-object v15, v0, Lads_mobile_sdk/s02;->p:Ljava/util/List;

    move-object/from16 v17, v15

    iget-object v15, v0, Lads_mobile_sdk/s02;->q:Lads_mobile_sdk/hm1;

    move-object/from16 v18, v15

    iget-object v15, v0, Lads_mobile_sdk/s02;->r:Landroid/os/Bundle;

    move-object/from16 v19, v15

    iget v15, v0, Lads_mobile_sdk/s02;->s:F

    move/from16 v20, v15

    iget-object v15, v0, Lads_mobile_sdk/s02;->t:Landroid/view/View;

    move-object/from16 v21, v15

    iget-object v15, v0, Lads_mobile_sdk/s02;->u:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    move-object/from16 v22, v15

    iget-object v15, v0, Lads_mobile_sdk/s02;->v:Ljava/lang/String;

    move-object/from16 v23, v15

    iget-object v15, v0, Lads_mobile_sdk/s02;->w:Lcom/google/gson/JsonObject;

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v24, v15

    const-string v15, "NativeAdAssets(templateId="

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nativeAdType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", customTemplateId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stringAssets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", starRating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", image="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attributionInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", customImageAssets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mediaWebView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mediaView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gmaWebViewVideoController="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoController="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", omidSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", omidDisplayWebView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", muteThisAdReasons="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", defaultMuteThisAdReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mediaContentAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adChoicesContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pubProvidedAttributionInfoPlacement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", watermark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adSpecificResponseInfoExtras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
