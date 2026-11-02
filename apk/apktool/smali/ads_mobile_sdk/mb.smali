.class public final Lads_mobile_sdk/mb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/rh3;


# instance fields
.field public final a:Ljava/util/Optional;

.field public final b:Ljava/util/Optional;

.field public final c:Lads_mobile_sdk/j53;

.field public final d:Landroid/content/Context;

.field public final e:Lads_mobile_sdk/ex0;

.field public final f:Lads_mobile_sdk/ao0;


# direct methods
.method public constructor <init>(Ljava/util/Optional;Ljava/util/Optional;Lads_mobile_sdk/j53;Landroid/content/Context;Lads_mobile_sdk/ex0;Lads_mobile_sdk/ao0;)V
    .locals 1

    .line 1
    const-string v0, "bannerRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "swipeableInterstitialRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayUtil"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lads_mobile_sdk/mb;->a:Ljava/util/Optional;

    .line 49
    iput-object p2, p0, Lads_mobile_sdk/mb;->b:Ljava/util/Optional;

    .line 50
    iput-object p3, p0, Lads_mobile_sdk/mb;->c:Lads_mobile_sdk/j53;

    .line 51
    iput-object p4, p0, Lads_mobile_sdk/mb;->d:Landroid/content/Context;

    .line 52
    iput-object p5, p0, Lads_mobile_sdk/mb;->e:Lads_mobile_sdk/ex0;

    .line 53
    iput-object p6, p0, Lads_mobile_sdk/mb;->f:Lads_mobile_sdk/ao0;

    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/lang/String;
    .locals 6

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "|"

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    .line 5
    invoke-virtual {v3}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->isFluid()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_1
    invoke-virtual {v3}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->getWidth()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string v4, "x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v3}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->getHeight()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_4

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_3

    .line 19
    invoke-virtual {v0, v1, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    :cond_3
    const-string p0, "320x50"

    invoke-virtual {v0, v1, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final a(I)I
    .locals 2

    int-to-float p1, p1

    .line 195
    iget-object v0, p0, Lads_mobile_sdk/mb;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/core/util/TypedValueCompat;->pxToDp(FLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public final f()Lads_mobile_sdk/y11;
    .locals 1

    .line 1
    sget-object v0, Lads_mobile_sdk/y11;->i:Lads_mobile_sdk/y11;

    return-object v0
.end method

.method public final s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 30

    move-object/from16 v0, p0

    .line 56
    iget-object v1, v0, Lads_mobile_sdk/mb;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 57
    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    .line 58
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 59
    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v5

    div-float/2addr v1, v4

    float-to-double v1, v1

    .line 60
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-int v7, v1

    int-to-float v1, v6

    div-float/2addr v1, v4

    float-to-double v1, v1

    .line 61
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-int v8, v1

    .line 63
    iget-object v1, v0, Lads_mobile_sdk/mb;->a:Ljava/util/Optional;

    invoke-static {v1}, Lkotlin/jvm/optionals/OptionalsKt;->getOrNull(Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;

    .line 64
    iget-object v2, v0, Lads_mobile_sdk/mb;->b:Ljava/util/Optional;

    invoke-static {v2}, Lkotlin/jvm/optionals/OptionalsKt;->getOrNull(Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialRequest;

    if-eqz v1, :cond_0

    .line 65
    invoke-interface {v1}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;->getAdSize()Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object v9

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 66
    invoke-interface {v2}, Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialRequest;->getAdSize()Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v1, :cond_2

    .line 68
    invoke-interface {v1}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;->getAdSizes()Ljava/util/List;

    move-result-object v10

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :goto_2
    if-eqz v10, :cond_4

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;->getAdSizes()Ljava/util/List;

    move-result-object v1

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v1, 0x0

    :goto_4
    const-string v10, "320x50_mb"

    const-string v11, "key"

    const/4 v12, 0x1

    if-eqz v9, :cond_6

    .line 70
    invoke-virtual {v9}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->isFluid()Z

    move-result v13

    if-ne v13, v12, :cond_6

    :cond_5
    :goto_5
    :pswitch_0
    move-object v3, v10

    goto :goto_8

    :cond_6
    if-eqz v9, :cond_8

    .line 73
    invoke-virtual {v9}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->getFormatString()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_7

    goto :goto_6

    :cond_7
    move-object v3, v13

    goto :goto_8

    .line 74
    :cond_8
    :goto_6
    iget-object v13, v0, Lads_mobile_sdk/mb;->c:Lads_mobile_sdk/j53;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    const-string v14, ""

    packed-switch v13, :pswitch_data_0

    .line 89
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 92
    :pswitch_1
    iget-object v13, v0, Lads_mobile_sdk/mb;->e:Lads_mobile_sdk/ex0;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    const-string v15, "gads:drop_format_string_if_not_set:enabled"

    invoke-static {v15, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v12, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v13, v15, v3, v12}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_7

    .line 114
    :pswitch_2
    const-string v10, "interstitial_mb"

    goto :goto_5

    :goto_7
    :pswitch_3
    move-object v3, v14

    .line 124
    :goto_8
    const-string v10, "<this>"

    if-eqz v9, :cond_b

    .line 125
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    invoke-virtual {v9}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->isLargeAnchoredAdaptiveBanner()Z

    move-result v12

    if-eqz v12, :cond_9

    const-string v12, "108"

    goto :goto_9

    .line 457
    :cond_9
    invoke-virtual {v9}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->isAnchoredAdaptiveBanner()Z

    move-result v12

    if-eqz v12, :cond_a

    const-string v12, "102"

    goto :goto_9

    .line 458
    :cond_a
    invoke-virtual {v9}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->isInlineAdaptiveBanner()Z

    move-result v12

    if-eqz v12, :cond_b

    const-string v12, "103"

    goto :goto_9

    :cond_b
    const/4 v12, 0x0

    :goto_9
    if-eqz v9, :cond_c

    .line 459
    invoke-virtual {v9}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->isInlineAdaptiveBanner()Z

    move-result v13

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v13

    goto :goto_a

    :cond_c
    const/4 v13, 0x0

    :goto_a
    if-eqz v9, :cond_d

    .line 461
    invoke-virtual {v9}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->isFluid()Z

    move-result v9

    const/4 v14, 0x1

    if-ne v9, v14, :cond_d

    goto :goto_b

    :cond_d
    if-eqz v1, :cond_10

    .line 779
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_e

    goto :goto_c

    .line 780
    :cond_e
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    .line 781
    invoke-virtual {v14}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->isFluid()Z

    move-result v14

    if-eqz v14, :cond_f

    .line 782
    :goto_b
    const-string v9, "height"

    goto :goto_d

    :cond_10
    :goto_c
    const/4 v9, 0x0

    .line 787
    :goto_d
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_14

    .line 1102
    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v17, v2

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1103
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v1

    .line 1104
    move-object/from16 v1, v18

    check-cast v1, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-object/from16 v18, v2

    .line 1105
    new-instance v2, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdSizeBundle;

    .line 1106
    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1444
    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->isFluid()Z

    move-result v20

    if-eqz v20, :cond_11

    const/16 v20, 0x140

    goto :goto_f

    .line 1447
    :cond_11
    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->getWidth()I

    move-result v20

    :goto_f
    move-object/from16 v21, v3

    move/from16 v3, v20

    .line 1448
    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1793
    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->isFluid()Z

    move-result v20

    if-eqz v20, :cond_12

    const/16 v20, 0x32

    goto :goto_10

    .line 1796
    :cond_12
    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->getHeight()I

    move-result v20

    :goto_10
    move-object/from16 v22, v1

    move/from16 v1, v20

    move/from16 v20, v4

    .line 1797
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->isFluid()Z

    move-result v4

    invoke-direct {v2, v3, v1, v4}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdSizeBundle;-><init>(IIZ)V

    .line 2110
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v18

    move-object/from16 v1, v19

    move/from16 v4, v20

    move-object/from16 v3, v21

    goto :goto_e

    :cond_13
    move-object/from16 v19, v1

    move-object/from16 v21, v3

    move/from16 v20, v4

    .line 2111
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    goto :goto_11

    :cond_14
    move-object/from16 v19, v1

    move-object/from16 v17, v2

    move-object/from16 v21, v3

    move/from16 v20, v4

    .line 2118
    :goto_11
    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdSizeBundle;

    if-nez v1, :cond_15

    goto :goto_12

    .line 2126
    :cond_15
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v16, 0x1

    add-int/lit8 v3, v3, 0x1

    .line 2127
    iget v4, v1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdSizeBundle;->width:I

    if-gt v4, v3, :cond_17

    iget v1, v1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdSizeBundle;->height:I

    if-le v1, v3, :cond_16

    goto :goto_13

    :cond_16
    :goto_12
    const/4 v1, 0x0

    goto :goto_14

    :cond_17
    :goto_13
    const/4 v1, 0x1

    :goto_14
    if-eqz v19, :cond_18

    .line 2131
    invoke-static/range {v19 .. v19}, Lads_mobile_sdk/mb;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1a

    :cond_18
    if-eqz v17, :cond_19

    .line 2132
    invoke-static/range {v17 .. v17}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lads_mobile_sdk/mb;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    goto :goto_15

    :cond_19
    const/4 v3, 0x0

    .line 2134
    :cond_1a
    :goto_15
    new-instance v4, Lads_mobile_sdk/q01;

    .line 2135
    new-instance v10, Lads_mobile_sdk/lb;

    .line 2136
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x23

    move/from16 v19, v1

    if-ge v15, v2, :cond_1c

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    :cond_1b
    move/from16 v27, v5

    move/from16 v28, v6

    move/from16 v29, v7

    goto/16 :goto_21

    .line 2138
    :cond_1c
    iget-object v2, v0, Lads_mobile_sdk/mb;->f:Lads_mobile_sdk/ao0;

    iget-object v1, v0, Lads_mobile_sdk/mb;->d:Landroid/content/Context;

    invoke-virtual {v2, v1}, Lads_mobile_sdk/ao0;->b(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v1

    .line 2140
    iget-object v2, v0, Lads_mobile_sdk/mb;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v23, v1

    iget-object v1, v0, Lads_mobile_sdk/mb;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-lt v2, v1, :cond_1d

    const/4 v1, 0x1

    goto :goto_16

    :cond_1d
    const/4 v1, 0x0

    .line 2143
    :goto_16
    iget-object v2, v0, Lads_mobile_sdk/mb;->e:Lads_mobile_sdk/ex0;

    .line 2144
    iget-object v2, v2, Lads_mobile_sdk/ex0;->t:Lads_mobile_sdk/l93;

    .line 2145
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v24, v1

    .line 2147
    const-string v1, "gads:safe_area_margin_signals:enabled"

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v25, v3

    .line 2163
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v26, v4

    sget-object v4, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v2, v1, v3, v4}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 2164
    invoke-interface/range {v23 .. v23}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v2

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    move/from16 v27, v5

    :cond_1e
    move/from16 v28, v6

    move/from16 v29, v7

    goto/16 :goto_1f

    .line 2165
    :cond_1f
    iget-object v1, v0, Lads_mobile_sdk/mb;->e:Lads_mobile_sdk/ex0;

    .line 2166
    iget-object v1, v1, Lads_mobile_sdk/ex0;->t:Lads_mobile_sdk/l93;

    .line 2167
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2169
    const-string v2, "gads:notch_safe_area_signals:enabled"

    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2185
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3, v4}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2186
    invoke-interface/range {v23 .. v23}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    const-string v2, "getInsets(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2192
    iget-object v2, v0, Lads_mobile_sdk/mb;->e:Lads_mobile_sdk/ex0;

    .line 2193
    iget-object v2, v2, Lads_mobile_sdk/ex0;->t:Lads_mobile_sdk/l93;

    .line 2194
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v27, v5

    .line 2196
    const-string v5, "gads:include_corner_in_safe_area_margin:enabled"

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2212
    invoke-virtual {v2, v5, v3, v4}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1e

    const-string v2, "of(...)"

    if-eqz v24, :cond_24

    .line 2213
    invoke-interface/range {v23 .. v23}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v3

    const/4 v5, 0x0

    .line 2214
    invoke-virtual {v3, v5}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 2215
    invoke-virtual {v3}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v3

    goto :goto_17

    :cond_20
    const/4 v3, 0x0

    .line 2216
    :goto_17
    invoke-interface/range {v23 .. v23}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v5

    move/from16 v28, v6

    const/4 v6, 0x1

    .line 2217
    invoke-virtual {v5, v6}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v5

    if-eqz v5, :cond_21

    .line 2218
    invoke-virtual {v5}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v5

    goto :goto_18

    :cond_21
    const/4 v5, 0x0

    .line 2219
    :goto_18
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2230
    invoke-interface/range {v23 .. v23}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v5

    const/4 v6, 0x3

    .line 2231
    invoke-virtual {v5, v6}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v5

    if-eqz v5, :cond_22

    .line 2232
    invoke-virtual {v5}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v5

    goto :goto_19

    :cond_22
    const/4 v5, 0x0

    .line 2233
    :goto_19
    invoke-interface/range {v23 .. v23}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v6

    move/from16 v29, v7

    const/4 v7, 0x2

    .line 2234
    invoke-virtual {v6, v7}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v6

    if-eqz v6, :cond_23

    .line 2235
    invoke-virtual {v6}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v6

    goto :goto_1a

    :cond_23
    const/4 v6, 0x0

    .line 2236
    :goto_1a
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2247
    iget v6, v1, Landroid/graphics/Insets;->left:I

    .line 2248
    iget v7, v1, Landroid/graphics/Insets;->top:I

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2249
    iget v7, v1, Landroid/graphics/Insets;->right:I

    .line 2250
    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2251
    invoke-static {v6, v3, v7, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1f

    :cond_24
    move/from16 v28, v6

    move/from16 v29, v7

    .line 2260
    invoke-interface/range {v23 .. v23}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v3

    const/4 v5, 0x0

    .line 2261
    invoke-virtual {v3, v5}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 2262
    invoke-virtual {v3}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v5

    goto :goto_1b

    :cond_25
    const/4 v5, 0x0

    .line 2263
    :goto_1b
    invoke-interface/range {v23 .. v23}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v3

    const/4 v6, 0x3

    .line 2264
    invoke-virtual {v3, v6}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v3

    if-eqz v3, :cond_26

    .line 2265
    invoke-virtual {v3}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v3

    goto :goto_1c

    :cond_26
    const/4 v3, 0x0

    .line 2266
    :goto_1c
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2277
    invoke-interface/range {v23 .. v23}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v5

    const/4 v6, 0x1

    .line 2278
    invoke-virtual {v5, v6}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v5

    if-eqz v5, :cond_27

    .line 2279
    invoke-virtual {v5}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v5

    goto :goto_1d

    :cond_27
    const/4 v5, 0x0

    .line 2280
    :goto_1d
    invoke-interface/range {v23 .. v23}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v6

    const/4 v7, 0x2

    .line 2281
    invoke-virtual {v6, v7}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v6

    if-eqz v6, :cond_28

    .line 2282
    invoke-virtual {v6}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v6

    goto :goto_1e

    :cond_28
    const/4 v6, 0x0

    .line 2283
    :goto_1e
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2294
    iget v6, v1, Landroid/graphics/Insets;->left:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2295
    iget v6, v1, Landroid/graphics/Insets;->top:I

    .line 2296
    iget v7, v1, Landroid/graphics/Insets;->right:I

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2297
    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    .line 2298
    invoke-static {v3, v6, v5, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1f
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-nez v24, :cond_29

    .line 2318
    iget-object v2, v0, Lads_mobile_sdk/mb;->e:Lads_mobile_sdk/ex0;

    .line 2319
    iget-object v2, v2, Lads_mobile_sdk/ex0;->t:Lads_mobile_sdk/l93;

    .line 2320
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2322
    const-string v3, "gads:center_safe_area_side_margins:enabled"

    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2338
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v5, v4}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 2339
    iget v2, v1, Landroid/graphics/Insets;->left:I

    iget v3, v1, Landroid/graphics/Insets;->right:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lads_mobile_sdk/mb;->a(I)I

    move-result v2

    .line 2340
    new-instance v3, Lkotlin/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_20

    .line 2342
    :cond_29
    new-instance v3, Lkotlin/Pair;

    iget v2, v1, Landroid/graphics/Insets;->left:I

    invoke-virtual {v0, v2}, Lads_mobile_sdk/mb;->a(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v4, v1, Landroid/graphics/Insets;->right:I

    invoke-virtual {v0, v4}, Lads_mobile_sdk/mb;->a(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2343
    :goto_20
    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 2344
    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 2354
    iget v4, v1, Landroid/graphics/Insets;->top:I

    invoke-virtual {v0, v4}, Lads_mobile_sdk/mb;->a(I)I

    move-result v4

    .line 2356
    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {v0, v1}, Lads_mobile_sdk/mb;->a(I)I

    move-result v1

    .line 2357
    invoke-static {v2, v4, v3, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    goto :goto_22

    :goto_21
    const/4 v1, 0x0

    .line 2358
    :goto_22
    iget-object v2, v0, Lads_mobile_sdk/mb;->e:Lads_mobile_sdk/ex0;

    .line 2359
    iget-object v2, v2, Lads_mobile_sdk/ex0;->t:Lads_mobile_sdk/l93;

    .line 2360
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2362
    const-string v3, "gads:rounded_corner_radii_signals:enabled"

    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2378
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v5, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v2, v3, v4, v5}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2f

    const/16 v2, 0x23

    if-ge v15, v2, :cond_2a

    goto :goto_27

    .line 2379
    :cond_2a
    iget-object v2, v0, Lads_mobile_sdk/mb;->f:Lads_mobile_sdk/ao0;

    iget-object v3, v0, Lads_mobile_sdk/mb;->d:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lads_mobile_sdk/ao0;->b(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v2

    .line 2380
    invoke-interface {v2}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v2

    const-string v3, "getWindowInsets(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 2383
    invoke-virtual {v2, v5}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v3

    if-eqz v3, :cond_2b

    invoke-virtual {v3}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v3

    invoke-virtual {v0, v3}, Lads_mobile_sdk/mb;->a(I)I

    move-result v3

    goto :goto_23

    :cond_2b
    move v3, v5

    :goto_23
    const/4 v6, 0x1

    .line 2385
    invoke-virtual {v2, v6}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v4

    if-eqz v4, :cond_2c

    invoke-virtual {v4}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v4

    invoke-virtual {v0, v4}, Lads_mobile_sdk/mb;->a(I)I

    move-result v4

    goto :goto_24

    :cond_2c
    move v4, v5

    :goto_24
    const/4 v7, 0x2

    .line 2387
    invoke-virtual {v2, v7}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v6

    if-eqz v6, :cond_2d

    invoke-virtual {v6}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v6

    invoke-virtual {v0, v6}, Lads_mobile_sdk/mb;->a(I)I

    move-result v6

    goto :goto_25

    :cond_2d
    move v6, v5

    :goto_25
    const/4 v7, 0x3

    .line 2389
    invoke-virtual {v2, v7}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v2

    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v2

    invoke-virtual {v0, v2}, Lads_mobile_sdk/mb;->a(I)I

    move-result v2

    goto :goto_26

    :cond_2e
    move v2, v5

    .line 2391
    :goto_26
    new-instance v5, Lads_mobile_sdk/j83;

    invoke-direct {v5, v3, v4, v6, v2}, Lads_mobile_sdk/j83;-><init>(IIII)V

    move-object v15, v5

    goto :goto_28

    :cond_2f
    :goto_27
    const/4 v15, 0x0

    :goto_28
    if-eqz v17, :cond_30

    .line 2392
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->getWidth()I

    move-result v2

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_29

    :cond_30
    const/4 v2, 0x0

    :goto_29
    if-eqz v17, :cond_31

    .line 2393
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->getHeight()I

    move-result v3

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v18, v3

    goto :goto_2a

    :cond_31
    const/16 v18, 0x0

    :goto_2a
    move-object/from16 v17, v2

    move-object v2, v10

    move-object v10, v12

    move-object v11, v13

    move/from16 v16, v19

    move/from16 v4, v20

    move-object/from16 v3, v21

    move-object/from16 v13, v25

    move/from16 v5, v27

    move/from16 v6, v28

    move/from16 v7, v29

    move-object v12, v9

    move-object v9, v1

    move-object/from16 v1, v26

    .line 2394
    invoke-direct/range {v2 .. v18}, Lads_mobile_sdk/lb;-><init>(Ljava/lang/String;FIIIILandroid/graphics/Insets;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lads_mobile_sdk/j83;ZLjava/lang/Integer;Ljava/lang/Integer;)V

    .line 2395
    invoke-direct {v1, v2}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
