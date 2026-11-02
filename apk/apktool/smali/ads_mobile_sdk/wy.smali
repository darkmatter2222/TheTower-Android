.class public abstract Lads_mobile_sdk/wy;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/gson/JsonObject;Lads_mobile_sdk/ex0;)Lads_mobile_sdk/zy;
    .locals 35

    move-object/from16 v1, p1

    .line 2
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 3
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v0}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v2

    .line 4
    invoke-virtual {v0}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v4

    sget-object v0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    const/4 v6, 0x1

    invoke-static {v6, v0}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v7

    invoke-static {v4, v5, v7, v8}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide v4

    .line 11
    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    iput-object v0, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 15
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 17
    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v9, Lcom/google/gson/JsonObject;

    invoke-direct {v9}, Lcom/google/gson/JsonObject;-><init>()V

    iput-object v9, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 19
    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v10, Lcom/google/gson/JsonObject;

    invoke-direct {v10}, Lcom/google/gson/JsonObject;-><init>()V

    iput-object v10, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 23
    const-string v10, "key"

    const-string v11, ""

    const-wide/16 v15, 0x0

    if-eqz p0, :cond_23

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move-object/from16 v18, v11

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-wide/from16 v23, v15

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move v11, v6

    move-object/from16 v15, v22

    move-object/from16 v16, v15

    move-wide v5, v4

    move-wide v3, v2

    move-object v2, v0

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v12, v31

    check-cast v12, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    if-eqz v12, :cond_20

    .line 27
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v31

    const-string v13, "getAsJsonObject(...)"

    move-object/from16 p0, v2

    const-string v2, "t"

    move-wide/from16 v33, v3

    const-string v3, "getAsString(...)"

    sparse-switch v31, :sswitch_data_0

    goto/16 :goto_6

    :sswitch_0
    const-string v2, "refresh_interval"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_6

    .line 55
    :cond_0
    sget-object v2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    sget-object v2, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v2}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v3

    move-object/from16 v2, p0

    goto :goto_0

    .line 56
    :sswitch_1
    const-string v3, "bidding_data"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_6

    .line 69
    :cond_1
    invoke-static {v0}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonObject;

    move-result-object v3

    if-nez v3, :cond_3

    .line 70
    :try_start_0
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    const-class v4, Lcom/google/gson/JsonObject;

    invoke-virtual {v3, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 71
    invoke-static {v0, v2, v0}, Lads_mobile_sdk/a2;->a(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lads_mobile_sdk/uj2;

    move-result-object v2

    .line 72
    iget-object v2, v2, Lads_mobile_sdk/uj2;->s:Ljava/util/List;

    .line 73
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_3

    .line 74
    iget-object v0, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/google/gson/JsonObject;

    .line 75
    :cond_3
    iput-object v3, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto/16 :goto_6

    .line 76
    :sswitch_2
    const-string v2, "response_code"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_6

    .line 107
    :cond_4
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v25

    goto/16 :goto_6

    .line 108
    :sswitch_3
    const-string v2, "is_cross_process_ad_enabled"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_6

    .line 144
    :cond_5
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v30

    goto/16 :goto_6

    .line 145
    :sswitch_4
    const-string v2, "refresh_load_delay_time_interval"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_6

    .line 175
    :cond_6
    sget-object v2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    sget-object v2, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v2}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v5

    goto/16 :goto_6

    .line 176
    :sswitch_5
    const-string v2, "analytics_query_ad_event_id"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_6

    .line 209
    :cond_7
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    move-object/from16 v16, v0

    goto/16 :goto_7

    .line 210
    :sswitch_6
    const-string v2, "adRequestPostBody"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto/16 :goto_6

    .line 212
    :cond_8
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    move-object/from16 v19, v0

    goto/16 :goto_7

    .line 213
    :sswitch_7
    const-string v2, "response_info_extras"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto/16 :goto_6

    .line 245
    :cond_9
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 246
    :sswitch_8
    const-string v3, "public_error"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto/16 :goto_6

    .line 273
    :cond_a
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 274
    const-string v3, "json"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_2

    .line 298
    :cond_b
    :try_start_1
    new-instance v3, Lads_mobile_sdk/et;

    .line 299
    sget-object v4, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "code"

    move-object/from16 v31, v0

    const-string v0, "<this>"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    invoke-virtual {v4, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    .line 301
    invoke-virtual/range {v31 .. v31}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "description"

    invoke-static {v4, v12}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 302
    invoke-direct {v3, v0, v4}, Lads_mobile_sdk/et;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v2, p0

    move-object/from16 v26, v3

    goto/16 :goto_7

    :catch_1
    move-exception v0

    .line 303
    invoke-static {v0, v2, v0}, Lads_mobile_sdk/a2;->a(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lads_mobile_sdk/uj2;

    move-result-object v2

    .line 304
    iget-object v2, v2, Lads_mobile_sdk/uj2;->s:Ljava/util/List;

    .line 305
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    :cond_c
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    move-object/from16 v2, p0

    move-wide/from16 v3, v33

    const/16 v26, 0x0

    goto/16 :goto_0

    :sswitch_9
    move-object/from16 v31, v0

    .line 306
    const-string v0, "adResponseBody"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_6

    .line 310
    :cond_d
    invoke-virtual/range {v31 .. v31}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    move-object/from16 v21, v0

    goto/16 :goto_7

    :sswitch_a
    move-object/from16 v31, v0

    .line 311
    const-string v0, "latency"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_6

    .line 334
    :cond_e
    invoke-virtual/range {v31 .. v31}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v23

    goto/16 :goto_6

    :sswitch_b
    move-object/from16 v31, v0

    .line 335
    const-string v0, "throttle_configuration"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_6

    .line 370
    :cond_f
    invoke-static/range {v31 .. v31}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonObject;

    move-result-object v29

    goto/16 :goto_6

    :sswitch_c
    move-object/from16 v31, v0

    .line 371
    const-string v0, "max_parallel_renderers"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_6

    .line 395
    :cond_10
    invoke-virtual/range {v31 .. v31}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v11

    goto/16 :goto_6

    :sswitch_d
    move-object/from16 v31, v0

    .line 396
    const-string v0, "is_idless"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_6

    .line 418
    :cond_11
    invoke-virtual/range {v31 .. v31}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v27

    goto/16 :goto_6

    :sswitch_e
    move-object/from16 v31, v0

    .line 419
    const-string v0, "gws_query_id"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_6

    .line 435
    :cond_12
    invoke-virtual/range {v31 .. v31}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_6

    :sswitch_f
    move-object/from16 v31, v0

    .line 436
    const-string v0, "adResponseHeaders"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_6

    .line 443
    :cond_13
    invoke-static/range {v31 .. v31}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonObject;

    move-result-object v0

    if-nez v0, :cond_15

    .line 444
    :try_start_2
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual/range {v31 .. v31}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 445
    invoke-static {v0, v2, v0}, Lads_mobile_sdk/a2;->a(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lads_mobile_sdk/uj2;

    move-result-object v2

    .line 446
    iget-object v2, v2, Lads_mobile_sdk/uj2;->s:Ljava/util/List;

    .line 447
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_14

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    :cond_14
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_15

    .line 448
    iget-object v0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 449
    :cond_15
    iput-object v0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto/16 :goto_6

    :sswitch_10
    move-object/from16 v31, v0

    .line 450
    const-string v0, "adapter_response_replacement_key"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_6

    .line 451
    :cond_16
    invoke-virtual/range {v31 .. v31}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    move-object/from16 v20, v0

    goto/16 :goto_7

    :sswitch_11
    move-object/from16 v31, v0

    .line 452
    const-string v0, "nofill_urls"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_6

    .line 478
    :cond_17
    sget-object v0, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-virtual/range {v31 .. v31}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    const-string v2, "getAsJsonArray(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 544
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v12, v2, 0x1

    if-gez v2, :cond_18

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_18
    check-cast v4, Lcom/google/gson/JsonElement;

    .line 545
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 546
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 613
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 614
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    move v2, v12

    goto :goto_4

    :sswitch_12
    move-object/from16 v31, v0

    .line 615
    const-string v0, "backend_query_id"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto/16 :goto_6

    .line 625
    :cond_1a
    invoke-virtual/range {v31 .. v31}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    move-object/from16 v22, v0

    goto/16 :goto_7

    :sswitch_13
    move-object/from16 v31, v0

    .line 626
    const-string v0, "inspector_ad_transaction_extras"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_6

    .line 645
    :cond_1b
    invoke-static/range {v31 .. v31}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonObject;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 646
    :try_start_3
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual/range {v31 .. v31}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    .line 647
    invoke-static {v0, v2, v0}, Lads_mobile_sdk/a2;->a(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lads_mobile_sdk/uj2;

    move-result-object v2

    .line 648
    iget-object v2, v2, Lads_mobile_sdk/uj2;->s:Ljava/util/List;

    .line 649
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1c

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    :cond_1c
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_5
    if-nez v0, :cond_1d

    .line 650
    iget-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 651
    :cond_1d
    iput-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_6

    :sswitch_14
    move-object/from16 v31, v0

    .line 652
    const-string v0, "adRequestUrl"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_6

    .line 655
    :cond_1e
    invoke-virtual/range {v31 .. v31}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    move-object/from16 v18, v0

    goto :goto_7

    :sswitch_15
    move-object/from16 v31, v0

    .line 656
    const-string v0, "is_persistent_ad_enabled"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_6

    .line 690
    :cond_1f
    invoke-virtual/range {v31 .. v31}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v28

    goto :goto_6

    :cond_20
    move-object/from16 p0, v2

    move-wide/from16 v33, v3

    :cond_21
    :goto_6
    move-object/from16 v2, p0

    :goto_7
    move-wide/from16 v3, v33

    goto/16 :goto_0

    :cond_22
    move-object/from16 p0, v2

    move-wide/from16 v33, v3

    move v13, v11

    move-object v11, v15

    move-object/from16 v3, v18

    move-object/from16 v2, v19

    move-object/from16 v0, v20

    move-object/from16 v4, v21

    move/from16 v19, v25

    move-object/from16 v32, v26

    move/from16 v12, v27

    move-object/from16 v20, p0

    move-wide/from16 v17, v5

    move-object/from16 v21, v16

    move-object/from16 v26, v22

    move-wide/from16 v5, v23

    move/from16 v22, v28

    move-object/from16 v23, v29

    move/from16 v24, v30

    move-wide/from16 v15, v33

    goto :goto_8

    :cond_23
    move-object/from16 v20, v0

    move-wide/from16 v17, v4

    move v13, v6

    move-object v0, v11

    move-object v4, v0

    move-object/from16 v21, v4

    move-object/from16 v26, v21

    move-wide v5, v15

    const/4 v12, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v32, 0x0

    move-wide v15, v2

    move-object/from16 v2, v26

    move-object v3, v2

    :goto_8
    move-object/from16 p0, v0

    if-eqz v1, :cond_24

    .line 692
    const-string v0, "gads:fullscreen_on_show_trigger"

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "defaultValue"

    move-object/from16 v25, v2

    const-string v2, "create"

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 734
    sget-object v10, Lads_mobile_sdk/yr;->o:Lads_mobile_sdk/wr;

    invoke-virtual {v1, v0, v2, v10}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_25

    .line 735
    sget-object v1, Lads_mobile_sdk/yy;->b:Lads_mobile_sdk/xy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 736
    const-string v1, "value"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 737
    sget-object v1, Lads_mobile_sdk/yy;->c:Ljava/util/LinkedHashMap;

    .line 738
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/yy;

    if-nez v0, :cond_26

    sget-object v0, Lads_mobile_sdk/yy;->d:Lads_mobile_sdk/yy;

    goto :goto_9

    :cond_24
    move-object/from16 v25, v2

    .line 739
    :cond_25
    sget-object v0, Lads_mobile_sdk/yy;->d:Lads_mobile_sdk/yy;

    .line 741
    :cond_26
    :goto_9
    new-instance v1, Lads_mobile_sdk/zy;

    .line 746
    iget-object v2, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/google/gson/JsonObject;

    .line 747
    iget-object v7, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Lcom/google/gson/JsonObject;

    .line 750
    iget-object v8, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v9, v8

    check-cast v9, Lcom/google/gson/JsonObject;

    move-object v8, v11

    move v10, v12

    move-wide v11, v5

    move-object v6, v7

    move-object/from16 v7, v32

    move-object v5, v2

    move-object/from16 v2, v25

    move-object/from16 v25, v0

    move-object v0, v1

    move-object/from16 v1, p0

    .line 751
    invoke-direct/range {v0 .. v26}, Lads_mobile_sdk/zy;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Lads_mobile_sdk/et;Ljava/lang/String;Lcom/google/gson/JsonObject;ZJILjava/util/ArrayList;JJILcom/google/gson/JsonObject;Ljava/lang/String;ZLcom/google/gson/JsonObject;ZLads_mobile_sdk/yy;Ljava/lang/String;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7b4f4f88 -> :sswitch_15
        -0x73528b1d -> :sswitch_14
        -0x633a5ac8 -> :sswitch_13
        -0x60966ac3 -> :sswitch_12
        -0x5c657e81 -> :sswitch_11
        -0x402d7e5c -> :sswitch_10
        -0x3b5ea69e -> :sswitch_f
        -0x345e18d2 -> :sswitch_e
        -0x2b76aa17 -> :sswitch_d
        -0x266a5d6d -> :sswitch_c
        -0x19a2ff5f -> :sswitch_b
        -0x2c6b302 -> :sswitch_a
        0x1fc3fd46 -> :sswitch_9
        0x337fb4b2 -> :sswitch_8
        0x33c7a016 -> :sswitch_7
        0x3952cf6e -> :sswitch_6
        0x433d580c -> :sswitch_5
        0x4c790446 -> :sswitch_4
        0x57e4a6c9 -> :sswitch_3
        0x63e9d32b -> :sswitch_2
        0x66afd9ee -> :sswitch_1
        0x6c4a89a9 -> :sswitch_0
    .end sparse-switch
.end method
