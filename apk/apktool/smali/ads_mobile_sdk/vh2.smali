.class public final Lads_mobile_sdk/vh2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/r41;


# instance fields
.field public final a:Lads_mobile_sdk/sh2;

.field public final b:Lads_mobile_sdk/ur3;

.field public final c:Lads_mobile_sdk/ex0;

.field public final d:Lcom/google/gson/Gson;

.field public final e:Lads_mobile_sdk/k32;

.field public final f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/sh2;Lads_mobile_sdk/ur3;Lads_mobile_sdk/ex0;Lcom/google/gson/Gson;Lads_mobile_sdk/k32;Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "outOfContextTester"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdUtil"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "applicationContext"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lads_mobile_sdk/vh2;->a:Lads_mobile_sdk/sh2;

    .line 37
    iput-object p2, p0, Lads_mobile_sdk/vh2;->b:Lads_mobile_sdk/ur3;

    .line 38
    iput-object p3, p0, Lads_mobile_sdk/vh2;->c:Lads_mobile_sdk/ex0;

    .line 39
    iput-object p4, p0, Lads_mobile_sdk/vh2;->d:Lcom/google/gson/Gson;

    .line 40
    iput-object p5, p0, Lads_mobile_sdk/vh2;->e:Lads_mobile_sdk/k32;

    .line 41
    iput-object p6, p0, Lads_mobile_sdk/vh2;->f:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 236
    const-string v2, "width"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 237
    invoke-static {v2}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    .line 238
    :goto_0
    const-string v5, "height"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 239
    invoke-static {v5}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 240
    :cond_1
    const-string v6, "bannerType"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v6, "FIXED"

    if-nez v1, :cond_2

    move-object v1, v6

    .line 242
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    const-string v8, " ad size."

    const-string v9, "Failed to create "

    const-string v10, ") is not a number."

    const-string v11, "Width ("

    const-string v12, "INLINE_ADAPTIVE_PORTRAIT"

    const-string v13, "ANCHORED_ADAPTIVE"

    const-string v14, "LARGE_ANCHORED_ADAPTIVE_PORTRAIT"

    const-string v15, "LARGE_ANCHORED_ADAPTIVE"

    move/from16 p1, v7

    const-string v7, "ANCHORED_ADAPTIVE_LANDSCAPE"

    move-object/from16 v16, v3

    const-string v3, "INLINE_ADAPTIVE_LANDSCAPE"

    move-object/from16 v17, v4

    const-string v4, "ANCHORED_ADAPTIVE_PORTRAIT"

    move-object/from16 v18, v4

    const-string v4, "INLINE_ADAPTIVE"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto/16 :goto_4

    :sswitch_1
    const-string v5, "LARGE_ANCHORED_ADAPTIVE_LANDSCAPE"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto/16 :goto_4

    :sswitch_2
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto/16 :goto_4

    :sswitch_3
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto/16 :goto_4

    :sswitch_4
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto/16 :goto_4

    :sswitch_5
    const-string v2, "FLUID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_4

    .line 300
    :cond_3
    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->FLUID:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    return-object v1

    .line 301
    :sswitch_6
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_4

    :sswitch_7
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto/16 :goto_4

    :sswitch_8
    const-string v3, "INLINE_ADAPTIVE_MAX_HEIGHT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_4

    :cond_4
    if-eqz v17, :cond_7

    if-nez v16, :cond_5

    goto :goto_1

    .line 315
    :cond_5
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;-><init>(II)V

    return-object v1

    .line 317
    :cond_6
    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize$Companion;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize$Companion;->getInlineAdaptiveBannerAdSize(II)Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object v1

    return-object v1

    .line 318
    :cond_7
    :goto_1
    iget-object v3, v0, Lads_mobile_sdk/vh2;->b:Lads_mobile_sdk/ur3;

    .line 319
    new-instance v4, Ljava/lang/NumberFormatException;

    .line 320
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ") or height ("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 321
    invoke-direct {v4, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 325
    check-cast v3, Lads_mobile_sdk/as3;

    invoke-virtual {v3, v1, v4}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 331
    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->BANNER:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    return-object v1

    .line 332
    :sswitch_9
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto/16 :goto_4

    :cond_8
    move-object/from16 v5, v18

    goto :goto_2

    :sswitch_a
    move-object/from16 v5, v18

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto/16 :goto_4

    :sswitch_b
    move-object/from16 v5, v18

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto/16 :goto_4

    :cond_9
    :goto_2
    if-nez v17, :cond_a

    .line 404
    iget-object v3, v0, Lads_mobile_sdk/vh2;->b:Lads_mobile_sdk/ur3;

    .line 405
    new-instance v4, Ljava/lang/NumberFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 407
    check-cast v3, Lads_mobile_sdk/as3;

    invoke-virtual {v3, v1, v4}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 411
    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->BANNER:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    return-object v1

    .line 414
    :cond_a
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    goto/16 :goto_3

    :sswitch_c
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_3

    .line 424
    :cond_b
    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize$Companion;

    iget-object v2, v0, Lads_mobile_sdk/vh2;->f:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize$Companion;->getPortraitInlineAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object v1

    return-object v1

    .line 425
    :sswitch_d
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_3

    .line 427
    :cond_c
    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize$Companion;

    iget-object v2, v0, Lads_mobile_sdk/vh2;->f:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize$Companion;->getCurrentOrientationAnchoredAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object v1

    return-object v1

    .line 428
    :sswitch_e
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_3

    .line 444
    :cond_d
    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize$Companion;

    iget-object v2, v0, Lads_mobile_sdk/vh2;->f:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize$Companion;->getLargePortraitAnchoredAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object v1

    return-object v1

    .line 445
    :sswitch_f
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_3

    .line 459
    :cond_e
    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize$Companion;

    iget-object v2, v0, Lads_mobile_sdk/vh2;->f:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize$Companion;->getLargeAnchoredAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object v1

    return-object v1

    .line 460
    :sswitch_10
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_3

    .line 466
    :cond_f
    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize$Companion;

    iget-object v2, v0, Lads_mobile_sdk/vh2;->f:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize$Companion;->getLandscapeAnchoredAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object v1

    return-object v1

    .line 467
    :sswitch_11
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_3

    .line 479
    :cond_10
    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize$Companion;

    iget-object v2, v0, Lads_mobile_sdk/vh2;->f:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize$Companion;->getLandscapeInlineAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object v1

    return-object v1

    .line 480
    :sswitch_12
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_3

    .line 484
    :cond_11
    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize$Companion;

    iget-object v2, v0, Lads_mobile_sdk/vh2;->f:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize$Companion;->getPortraitAnchoredAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object v1

    return-object v1

    .line 485
    :sswitch_13
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_3

    .line 504
    :cond_12
    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize$Companion;

    iget-object v2, v0, Lads_mobile_sdk/vh2;->f:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize$Companion;->getCurrentOrientationInlineAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object v1

    return-object v1

    .line 503
    :goto_3
    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize$Companion;

    iget-object v2, v0, Lads_mobile_sdk/vh2;->f:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize$Companion;->getLargeLandscapeAnchoredAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object v1

    return-object v1

    .line 393
    :goto_4
    iget-object v2, v0, Lads_mobile_sdk/vh2;->b:Lads_mobile_sdk/ur3;

    .line 394
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 395
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unsupported banner type: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " width: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v4, v17

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", height: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v4, v16

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 396
    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 397
    check-cast v2, Lads_mobile_sdk/as3;

    const-string v1, "Failed to parse OOCT ad size."

    invoke-virtual {v2, v1, v3}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 403
    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->BANNER:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x72a042a4 -> :sswitch_b
        -0x63ca1227 -> :sswitch_a
        -0x60994888 -> :sswitch_9
        -0x2dd7f4bb -> :sswitch_8
        -0x3b1f7e3 -> :sswitch_7
        0x3fcef54 -> :sswitch_6
        0x3fe41aa -> :sswitch_5
        0x13ade41d -> :sswitch_4
        0x3387497d -> :sswitch_3
        0x3d0fa841 -> :sswitch_2
        0x4f2820f9 -> :sswitch_1
        0x6fec671e -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x72a042a4 -> :sswitch_13
        -0x63ca1227 -> :sswitch_12
        -0x60994888 -> :sswitch_11
        -0x3b1f7e3 -> :sswitch_10
        0x13ade41d -> :sswitch_f
        0x3387497d -> :sswitch_e
        0x3d0fa841 -> :sswitch_d
        0x6fec671e -> :sswitch_c
    .end sparse-switch
.end method

.method public final a(Lads_mobile_sdk/r31;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    .line 550
    const-string p1, "action"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 551
    :cond_0
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x6

    if-eqz v0, :cond_1

    .line 552
    const-string p1, "No OOCT action specified."

    const/4 p2, 0x0

    invoke-static {p1, p2, v1}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 553
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 557
    :cond_1
    invoke-virtual {p0, p2}, Lads_mobile_sdk/vh2;->b(Ljava/util/Map;)Lads_mobile_sdk/v01;

    move-result-object p2

    .line 903
    instance-of v0, p2, Lads_mobile_sdk/i01;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Lads_mobile_sdk/i01;

    .line 904
    invoke-static {p2, v2}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V

    .line 905
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 1250
    :cond_2
    const-string v0, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lads_mobile_sdk/q01;

    .line 1251
    iget-object p2, p2, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 1252
    check-cast p2, Lads_mobile_sdk/uh2;

    .line 1258
    const-string v0, "load"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object p1, p0, Lads_mobile_sdk/vh2;->a:Lads_mobile_sdk/sh2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1259
    iget-object v0, p2, Lads_mobile_sdk/uh2;->b:Lads_mobile_sdk/j53;

    .line 1260
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_19

    const/4 v4, 0x2

    if-eq v0, v4, :cond_14

    const/4 v4, 0x4

    if-eq v0, v4, :cond_10

    const/4 v4, 0x5

    if-eq v0, v4, :cond_7

    if-eq v0, v1, :cond_5

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    .line 1269
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_6

    .line 1270
    :cond_3
    invoke-virtual {p1, p2, p3}, Lads_mobile_sdk/sh2;->a(Lads_mobile_sdk/uh2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_4

    goto/16 :goto_6

    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_6

    .line 1271
    :cond_5
    invoke-virtual {p1, p2, p3}, Lads_mobile_sdk/sh2;->a(Lads_mobile_sdk/uh2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_6

    goto/16 :goto_6

    :cond_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_6

    .line 1272
    :cond_7
    iget-object v0, p2, Lads_mobile_sdk/uh2;->g:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 1273
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    .line 1276
    :cond_8
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeAdType;->CUSTOM_NATIVE:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeAdType;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 1277
    :cond_9
    :goto_0
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeAdType;->NATIVE:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeAdType;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1282
    :goto_1
    new-instance v1, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;

    .line 1283
    iget-object v4, p2, Lads_mobile_sdk/uh2;->a:Ljava/lang/String;

    .line 1284
    invoke-direct {v1, v4, v0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 1285
    iget-object v0, p2, Lads_mobile_sdk/uh2;->i:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;

    .line 1286
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;->setMediaAspectRatio(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;)Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;

    .line 1287
    iget-object v0, p2, Lads_mobile_sdk/uh2;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    .line 1288
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;->setAdChoicesPlacement(Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;)Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;

    .line 1289
    iget-boolean v0, p2, Lads_mobile_sdk/uh2;->f:Z

    .line 1290
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;->a(Z)V

    .line 1291
    iget-object v0, p2, Lads_mobile_sdk/uh2;->k:Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;

    if-eqz v0, :cond_a

    .line 1292
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;->setVideoOptions(Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;)Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;

    .line 1293
    :cond_a
    iget-object v0, p2, Lads_mobile_sdk/uh2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    if-eqz v0, :cond_b

    .line 1294
    invoke-static {v0, v1}, Lads_mobile_sdk/sh2;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdRequestBuilder;)V

    .line 1295
    :cond_b
    iget-object v0, p2, Lads_mobile_sdk/uh2;->g:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 1296
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;->setCustomFormatIds(Ljava/util/List;)Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;

    .line 1297
    :cond_c
    iget-boolean v0, p2, Lads_mobile_sdk/uh2;->h:Z

    if-eqz v0, :cond_d

    .line 1298
    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;->disableImageDownloading()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;

    .line 1301
    :cond_d
    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;->build()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;

    move-result-object v0

    .line 1304
    iget-object v1, p1, Lads_mobile_sdk/sh2;->h:Lads_mobile_sdk/cw2;

    .line 1305
    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/vz2;

    .line 1306
    sget-object v4, Lads_mobile_sdk/j53;->i:Lads_mobile_sdk/j53;

    invoke-interface {v1, v4}, Lads_mobile_sdk/f03;->a(Lads_mobile_sdk/j53;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/vz2;

    .line 1307
    invoke-interface {v1, v0}, Lads_mobile_sdk/f03;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/vz2;

    .line 1308
    invoke-interface {v1, v0}, Lads_mobile_sdk/f03;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/vz2;

    .line 1309
    invoke-interface {v1, v0}, Lads_mobile_sdk/vz2;->a(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;)Lads_mobile_sdk/vz2;

    move-result-object v1

    .line 1310
    invoke-interface {v1, v0}, Lads_mobile_sdk/vz2;->a(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;)Lads_mobile_sdk/vz2;

    move-result-object v0

    .line 1311
    invoke-interface {v0, v3}, Lads_mobile_sdk/f03;->b(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/vz2;

    .line 1312
    invoke-interface {v0, v2}, Lads_mobile_sdk/f03;->a(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/vz2;

    .line 1313
    invoke-interface {v0, v3}, Lads_mobile_sdk/vz2;->a(I)Lads_mobile_sdk/vz2;

    move-result-object v0

    .line 1314
    invoke-interface {v0}, Lads_mobile_sdk/vz2;->a()Lads_mobile_sdk/wz2;

    move-result-object v0

    .line 1315
    invoke-virtual {p1, v0, p2, p3}, Lads_mobile_sdk/sh2;->a(Lads_mobile_sdk/g03;Lads_mobile_sdk/uh2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_e

    goto :goto_2

    :cond_e
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1316
    :goto_2
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_f

    goto/16 :goto_6

    :cond_f
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_6

    .line 1317
    :cond_10
    iget-object v0, p2, Lads_mobile_sdk/uh2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    if-nez v0, :cond_11

    .line 1318
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest$Builder;

    .line 1319
    iget-object v1, p2, Lads_mobile_sdk/uh2;->a:Ljava/lang/String;

    .line 1320
    invoke-direct {v0, v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest$Builder;->build()Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    move-result-object v0

    .line 1322
    :cond_11
    iget-object v1, p1, Lads_mobile_sdk/sh2;->g:Lads_mobile_sdk/cw2;

    .line 1323
    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/oz2;

    .line 1324
    sget-object v4, Lads_mobile_sdk/j53;->h:Lads_mobile_sdk/j53;

    check-cast v1, Lads_mobile_sdk/di0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1325
    iput-object v4, v1, Lads_mobile_sdk/di0;->d:Lads_mobile_sdk/j53;

    .line 1326
    invoke-virtual {v1, v0}, Lads_mobile_sdk/di0;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/oz2;

    .line 1327
    check-cast v1, Lads_mobile_sdk/di0;

    .line 1328
    iput-object v0, v1, Lads_mobile_sdk/di0;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 1329
    invoke-virtual {v1, v3}, Lads_mobile_sdk/di0;->b(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/oz2;

    .line 1330
    check-cast v0, Lads_mobile_sdk/di0;

    invoke-virtual {v0, v2}, Lads_mobile_sdk/di0;->a(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/oz2;

    .line 1331
    check-cast v0, Lads_mobile_sdk/di0;

    invoke-virtual {v0}, Lads_mobile_sdk/di0;->b()Lads_mobile_sdk/ei0;

    move-result-object v0

    .line 1332
    invoke-virtual {p1, v0, p2, p3}, Lads_mobile_sdk/sh2;->a(Lads_mobile_sdk/g03;Lads_mobile_sdk/uh2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_12

    goto :goto_3

    :cond_12
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1333
    :goto_3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_13

    goto/16 :goto_6

    :cond_13
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_6

    .line 1334
    :cond_14
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;

    .line 1335
    iget-object v1, p2, Lads_mobile_sdk/uh2;->a:Ljava/lang/String;

    .line 1336
    iget-object v4, p2, Lads_mobile_sdk/uh2;->e:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    .line 1337
    invoke-direct {v0, v1, v4}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;-><init>(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;)V

    .line 1338
    iget-object v1, p2, Lads_mobile_sdk/uh2;->k:Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;

    if-eqz v1, :cond_15

    .line 1339
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;->setVideoOptions(Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;)Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;

    .line 1340
    :cond_15
    iget-object v1, p2, Lads_mobile_sdk/uh2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    if-eqz v1, :cond_16

    .line 1341
    invoke-static {v1, v0}, Lads_mobile_sdk/sh2;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdRequestBuilder;)V

    .line 1343
    :cond_16
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;->build()Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;

    move-result-object v0

    .line 1346
    iget-object v1, p1, Lads_mobile_sdk/sh2;->f:Lads_mobile_sdk/cw2;

    .line 1347
    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/bz2;

    .line 1348
    sget-object v4, Lads_mobile_sdk/j53;->f:Lads_mobile_sdk/j53;

    invoke-interface {v1, v4}, Lads_mobile_sdk/f03;->a(Lads_mobile_sdk/j53;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/bz2;

    .line 1349
    invoke-interface {v1, v0}, Lads_mobile_sdk/f03;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/bz2;

    .line 1350
    invoke-interface {v1, v0}, Lads_mobile_sdk/f03;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/bz2;

    .line 1351
    invoke-interface {v1, v0}, Lads_mobile_sdk/bz2;->a(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;)Lads_mobile_sdk/bz2;

    move-result-object v1

    .line 1352
    invoke-interface {v1, v0}, Lads_mobile_sdk/bz2;->a(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;)Lads_mobile_sdk/bz2;

    move-result-object v0

    .line 1353
    invoke-interface {v0, v3}, Lads_mobile_sdk/f03;->b(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/bz2;

    .line 1354
    invoke-interface {v0, v2}, Lads_mobile_sdk/f03;->a(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/bz2;

    .line 1355
    invoke-interface {v0}, Lads_mobile_sdk/bz2;->a()Lads_mobile_sdk/cz2;

    move-result-object v0

    .line 1356
    invoke-virtual {p1, v0, p2, p3}, Lads_mobile_sdk/sh2;->a(Lads_mobile_sdk/g03;Lads_mobile_sdk/uh2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_17

    goto :goto_4

    :cond_17
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1357
    :goto_4
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_18

    goto/16 :goto_6

    :cond_18
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_6

    .line 1358
    :cond_19
    iget-object v0, p2, Lads_mobile_sdk/uh2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    if-nez v0, :cond_1a

    .line 1359
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest$Builder;

    .line 1360
    iget-object v1, p2, Lads_mobile_sdk/uh2;->a:Ljava/lang/String;

    .line 1361
    invoke-direct {v0, v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest$Builder;->build()Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    move-result-object v0

    .line 1363
    :cond_1a
    iget-object v1, p1, Lads_mobile_sdk/sh2;->e:Lads_mobile_sdk/cw2;

    .line 1364
    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/dy2;

    .line 1365
    sget-object v4, Lads_mobile_sdk/j53;->e:Lads_mobile_sdk/j53;

    check-cast v1, Lads_mobile_sdk/uh0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1366
    iput-object v4, v1, Lads_mobile_sdk/uh0;->d:Lads_mobile_sdk/j53;

    .line 1367
    invoke-virtual {v1, v0}, Lads_mobile_sdk/uh0;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/dy2;

    .line 1368
    check-cast v1, Lads_mobile_sdk/uh0;

    .line 1369
    iput-object v0, v1, Lads_mobile_sdk/uh0;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 1370
    invoke-virtual {v1, v3}, Lads_mobile_sdk/uh0;->b(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/dy2;

    .line 1371
    check-cast v0, Lads_mobile_sdk/uh0;

    invoke-virtual {v0, v2}, Lads_mobile_sdk/uh0;->a(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/dy2;

    .line 1372
    check-cast v0, Lads_mobile_sdk/uh0;

    .line 1373
    iget-object v1, v0, Lads_mobile_sdk/uh0;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    const-class v2, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    invoke-static {v1, v2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1374
    iget-object v1, v0, Lads_mobile_sdk/uh0;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    const-class v2, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-static {v1, v2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1375
    iget-object v1, v0, Lads_mobile_sdk/uh0;->d:Lads_mobile_sdk/j53;

    const-class v2, Lads_mobile_sdk/j53;

    invoke-static {v1, v2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1376
    iget-object v1, v0, Lads_mobile_sdk/uh0;->e:Ljava/lang/Boolean;

    const-class v2, Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1377
    iget-object v1, v0, Lads_mobile_sdk/uh0;->f:Ljava/lang/Boolean;

    const-class v2, Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1378
    new-instance v3, Lads_mobile_sdk/vh0;

    iget-object v4, v0, Lads_mobile_sdk/uh0;->a:Lads_mobile_sdk/vf0;

    iget-object v5, v0, Lads_mobile_sdk/uh0;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    iget-object v6, v0, Lads_mobile_sdk/uh0;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    iget-object v7, v0, Lads_mobile_sdk/uh0;->d:Lads_mobile_sdk/j53;

    iget-object v8, v0, Lads_mobile_sdk/uh0;->e:Ljava/lang/Boolean;

    iget-object v9, v0, Lads_mobile_sdk/uh0;->f:Ljava/lang/Boolean;

    invoke-direct/range {v3 .. v9}, Lads_mobile_sdk/vh0;-><init>(Lads_mobile_sdk/vf0;Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/j53;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 1379
    invoke-virtual {p1, v3, p2, p3}, Lads_mobile_sdk/sh2;->a(Lads_mobile_sdk/g03;Lads_mobile_sdk/uh2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1b

    goto :goto_5

    :cond_1b
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1380
    :goto_5
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1c

    goto :goto_6

    :cond_1c
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1381
    :goto_6
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1d

    return-object p1

    :cond_1d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 1382
    :cond_1e
    const-string v0, "show"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    iget-object p1, p0, Lads_mobile_sdk/vh2;->a:Lads_mobile_sdk/sh2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1383
    invoke-static {p1, p2, p3}, Lads_mobile_sdk/sh2;->a(Lads_mobile_sdk/sh2;Lads_mobile_sdk/uh2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .line 1384
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1f

    return-object p1

    :cond_1f
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 1386
    :cond_20
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4

    .line 1614
    :try_start_0
    sget-object v0, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    iget-object v0, p0, Lads_mobile_sdk/vh2;->d:Lcom/google/gson/Gson;

    const-class v1, Lcom/google/gson/JsonArray;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonArray;

    .line 1788
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    .line 1793
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 1794
    :cond_0
    check-cast v2, Lcom/google/gson/JsonElement;

    .line 1795
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1796
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1973
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    return-object v0

    :catch_0
    move-exception p1

    .line 1974
    iget-object v0, p0, Lads_mobile_sdk/vh2;->b:Lads_mobile_sdk/ur3;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to parse OOCT string array: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast v0, Lads_mobile_sdk/as3;

    invoke-virtual {v0, p2, p1}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1975
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/util/Map;)Lads_mobile_sdk/v01;
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 67
    const-string v0, "adUnitId"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_20

    .line 68
    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_12

    .line 73
    :cond_0
    const-string v3, "format"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "No OOCT format specified."

    if-eqz v3, :cond_1f

    sget-object v6, Lads_mobile_sdk/j53;->b:Lads_mobile_sdk/h53;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lads_mobile_sdk/h53;->a(Ljava/lang/String;)Lads_mobile_sdk/j53;

    move-result-object v6

    if-nez v6, :cond_1

    goto/16 :goto_11

    .line 75
    :cond_1
    sget-object v3, Lads_mobile_sdk/j53;->d:Lads_mobile_sdk/j53;

    if-ne v6, v3, :cond_2

    .line 76
    new-instance v0, Lads_mobile_sdk/m01;

    invoke-direct {v0, v4}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 81
    :cond_2
    sget-object v3, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->BANNER:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    .line 83
    sget-object v4, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;->UNKNOWN:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;

    .line 84
    sget-object v7, Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;->TOP_RIGHT:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    .line 89
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 90
    const-string v9, "serverSideVerificationUserId"

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-nez v9, :cond_3

    goto :goto_0

    .line 91
    :cond_3
    const-string v11, "serverSideVerificationRewardString"

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-nez v11, :cond_4

    :goto_0
    const/4 v14, 0x0

    goto :goto_1

    .line 93
    :cond_4
    new-instance v12, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/ServerSideVerificationOptions;

    invoke-direct {v12, v9, v11}, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/ServerSideVerificationOptions;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v14, v12

    .line 94
    :goto_1
    iget-object v9, v1, Lads_mobile_sdk/vh2;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {v9}, Lads_mobile_sdk/ex0;->k0()Z

    move-result v9

    const-string v12, "1"

    if-eqz v9, :cond_14

    .line 95
    new-instance v3, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest$Builder;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest$Builder;-><init>(Ljava/lang/String;)V

    .line 97
    const-string v0, "keywords"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 98
    invoke-virtual {v1, v4, v0}, Lads_mobile_sdk/vh2;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 99
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 100
    invoke-virtual {v3, v4}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->addKeyword(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;

    goto :goto_2

    .line 101
    :cond_5
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 102
    const-string v0, "networkExtras"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 104
    :try_start_0
    iget-object v7, v1, Lads_mobile_sdk/vh2;->d:Lcom/google/gson/Gson;

    const-class v9, Lcom/google/gson/JsonObject;

    invoke-virtual {v7, v0, v9}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/gson/JsonObject;

    .line 105
    sget-object v7, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-static {v0}, Lads_mobile_sdk/ds1;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 108
    iget-object v7, v1, Lads_mobile_sdk/vh2;->b:Lads_mobile_sdk/ur3;

    check-cast v7, Lads_mobile_sdk/as3;

    const-string v9, "Failed to parse OOCT network extras."

    invoke-virtual {v7, v9, v0}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    :cond_6
    :goto_3
    const-string v0, "request_origin"

    const-string v7, "inspector_ooct"

    invoke-virtual {v4, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v3, v4}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->setGoogleExtrasBundle(Landroid/os/Bundle;)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;

    .line 117
    const-string v0, "customTargeting"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 119
    :try_start_1
    iget-object v4, v1, Lads_mobile_sdk/vh2;->d:Lcom/google/gson/Gson;

    const-class v7, Lcom/google/gson/JsonObject;

    invoke-virtual {v4, v0, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 120
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonElement;

    .line 121
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 122
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v4

    const-string v9, "getAsString(...)"

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v7, v4}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->putCustomTargeting(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;
    :try_end_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 127
    iget-object v4, v1, Lads_mobile_sdk/vh2;->b:Lads_mobile_sdk/ur3;

    check-cast v4, Lads_mobile_sdk/as3;

    const-string v7, "Failed to parse OOCT custom targeting."

    invoke-virtual {v4, v7, v0}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    :cond_8
    const-string v0, "contentUrl"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v3, v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->setContentUrl(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest$Builder;

    .line 133
    :cond_9
    const-string v0, "neighboringContentUrlStrings"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 135
    invoke-virtual {v1, v4, v0}, Lads_mobile_sdk/vh2;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 136
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->setNeighboringContentUrls(Ljava/util/Set;)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest$Builder;

    .line 139
    :cond_a
    const-string v0, "publisherProvidedId"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 140
    invoke-virtual {v3, v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->setPublisherProvidedId(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest$Builder;

    .line 143
    :cond_b
    const-string v0, "categoryExclusions"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_c

    .line 144
    invoke-virtual {v1, v4, v0}, Lads_mobile_sdk/vh2;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 145
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 146
    invoke-virtual {v3, v4}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->addCategoryExclusion(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;

    goto :goto_5

    .line 149
    :cond_c
    invoke-virtual {v3}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest$Builder;->build()Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    move-result-object v0

    .line 150
    invoke-virtual/range {p0 .. p1}, Lads_mobile_sdk/vh2;->a(Ljava/util/Map;)Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object v3

    .line 151
    iget-object v4, v1, Lads_mobile_sdk/vh2;->e:Lads_mobile_sdk/k32;

    const-string v7, "mediaAspectRatio"

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Lads_mobile_sdk/k32;->b(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;

    move-result-object v4

    .line 152
    iget-object v7, v1, Lads_mobile_sdk/vh2;->e:Lads_mobile_sdk/k32;

    const-string v9, "preferredAdChoicesPosition"

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v9}, Lads_mobile_sdk/k32;->a(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    move-result-object v7

    .line 155
    const-string v9, "clickToExpandRequested"

    invoke-interface {v2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    const-string v15, "customControlsRequested"

    const-string v10, "startMuted"

    if-nez v13, :cond_e

    .line 156
    invoke-interface {v2, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e

    .line 157
    invoke-interface {v2, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    goto :goto_6

    :cond_d
    const/4 v9, 0x0

    goto :goto_7

    .line 158
    :cond_e
    :goto_6
    new-instance v13, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions$Builder;

    invoke-direct {v13}, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions$Builder;-><init>()V

    .line 160
    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_f

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v13, v10}, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions$Builder;->setStartMuted(Z)Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions$Builder;

    .line 162
    :cond_f
    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_10

    .line 163
    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v13, v10}, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions$Builder;->setCustomControlsRequested(Z)Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions$Builder;

    .line 166
    :cond_10
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_11

    .line 167
    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v13, v9}, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions$Builder;->setClickToExpandRequested(Z)Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions$Builder;

    .line 170
    :cond_11
    invoke-virtual {v13}, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions$Builder;->build()Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;

    move-result-object v9

    .line 171
    :goto_7
    const-string v10, "disableImageLoading"

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_12

    .line 172
    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    goto :goto_8

    :cond_12
    const/4 v10, 0x0

    .line 175
    :goto_8
    const-string v13, "customMuteThisAdRequested"

    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    if-eqz v13, :cond_13

    .line 176
    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    move v15, v13

    move-object v13, v4

    move v4, v15

    move-object v15, v9

    goto :goto_9

    :cond_13
    move-object v13, v4

    move-object v15, v9

    const/4 v4, 0x0

    :goto_9
    move-object v9, v3

    move-object v3, v0

    goto :goto_a

    :cond_14
    move-object v9, v3

    move-object v13, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v15, 0x0

    .line 180
    :goto_a
    const-string v0, "bannerPosition"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v11, "CENTER"

    move-object/from16 v18, v3

    if-eqz v0, :cond_19

    .line 181
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    move/from16 v19, v4

    const v4, 0x14535

    if-eq v3, v4, :cond_17

    const v4, 0x75208e2b

    if-eq v3, v4, :cond_16

    const v4, 0x7645c055

    if-eq v3, v4, :cond_15

    goto :goto_c

    :cond_15
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_c

    :cond_16
    const-string v3, "BOTTOM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_b

    :cond_17
    const-string v3, "TOP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_c

    :cond_18
    :goto_b
    move-object v11, v0

    goto :goto_c

    :cond_19
    move/from16 v19, v4

    .line 190
    :cond_1a
    :goto_c
    const-string v0, "immersiveMode"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1b

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    move/from16 v17, v0

    goto :goto_d

    :cond_1b
    const/16 v17, 0x0

    :goto_d
    const/4 v3, 0x0

    .line 191
    const-string v0, "customNativeTemplates"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_1c

    .line 192
    invoke-virtual {v1, v4, v0}, Lads_mobile_sdk/vh2;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_e

    :cond_1c
    const/16 v16, 0x0

    .line 194
    :goto_e
    const-string v0, "imageScaleType"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_1d

    .line 196
    :try_start_2
    invoke-static {v4}, Landroid/widget/ImageView$ScaleType;->valueOf(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_f

    :catch_2
    move-exception v0

    .line 198
    iget-object v12, v1, Lads_mobile_sdk/vh2;->b:Lads_mobile_sdk/ur3;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "Failed to parse OOCT image scale type: "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v12, Lads_mobile_sdk/as3;

    invoke-virtual {v12, v1, v0}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    :cond_1d
    :goto_f
    const-string v0, "bannerWidthConstraint"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1e

    invoke-static {v0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_10

    :cond_1e
    const/4 v0, 0x0

    .line 205
    :goto_10
    new-instance v1, Lads_mobile_sdk/q01;

    .line 206
    new-instance v4, Lads_mobile_sdk/uh2;

    move-object/from16 v12, v18

    move-object/from16 v18, v8

    move-object v8, v12

    move-object/from16 v12, v16

    move-object/from16 v16, v11

    move-object v11, v12

    move v12, v10

    move/from16 v10, v19

    move/from16 v19, v0

    invoke-direct/range {v4 .. v19}, Lads_mobile_sdk/uh2;-><init>(Ljava/lang/String;Lads_mobile_sdk/j53;Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;ZLjava/util/List;ZLcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;Lcom/google/android/libraries/ads/mobile/sdk/rewarded/ServerSideVerificationOptions;Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;Ljava/lang/String;ZLandroid/widget/ImageView$ScaleType;I)V

    .line 207
    invoke-direct {v1, v4}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 208
    :cond_1f
    :goto_11
    new-instance v0, Lads_mobile_sdk/m01;

    invoke-direct {v0, v4}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 209
    :cond_20
    :goto_12
    new-instance v0, Lads_mobile_sdk/m01;

    const-string v1, "No OOCT ad unit ID specified."

    invoke-direct {v0, v1}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final g()Lads_mobile_sdk/u11;
    .locals 1

    .line 1
    sget-object v0, Lads_mobile_sdk/u11;->Q:Lads_mobile_sdk/u11;

    return-object v0
.end method
