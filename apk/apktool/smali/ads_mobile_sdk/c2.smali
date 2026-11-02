.class public abstract Lads_mobile_sdk/c2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)I
    .locals 1

    .line 16723
    sget-object v0, Lads_mobile_sdk/f2;->a:[Lads_mobile_sdk/f2;

    .line 16724
    const-string v0, "landscape"

    .line 16725
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x6

    return p0

    .line 16726
    :cond_0
    const-string v0, "portrait"

    .line 16727
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x7

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static a(Lcom/google/gson/JsonObject;ILkotlinx/coroutines/Deferred;)Lads_mobile_sdk/i2;
    .locals 110

    .line 1
    const-string v0, "ping_strategy"

    const-string v1, "json"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v3, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    .line 3
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4
    sget-object v5, Lads_mobile_sdk/bc;->b:Lads_mobile_sdk/bc;

    .line 5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 8
    sget-object v8, Lads_mobile_sdk/e2;->d:Lads_mobile_sdk/e2;

    .line 9
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 11
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 15
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 16
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 17
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v97, 0x0

    .line 18
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 19
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v5

    .line 20
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v8

    .line 21
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v52, v3

    .line 23
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v1

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v49, v15

    .line 25
    new-instance v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move-object/from16 v19, v1

    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    iput-object v1, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 31
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 33
    new-instance v20, Lcom/google/gson/JsonObject;

    invoke-direct/range {v20 .. v20}, Lcom/google/gson/JsonObject;-><init>()V

    .line 41
    sget-object v21, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual/range {v21 .. v21}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v22

    .line 44
    new-instance v24, Lads_mobile_sdk/dg2;

    .line 45
    sget-object v25, Lads_mobile_sdk/cg2;->c:Lads_mobile_sdk/cg2;

    .line 46
    sget-object v26, Lads_mobile_sdk/xh2;->d:Lads_mobile_sdk/xh2;

    .line 48
    const-string v28, ""

    .line 49
    const-string v29, ""

    const/16 v27, 0x0

    .line 50
    invoke-direct/range {v24 .. v29}, Lads_mobile_sdk/dg2;-><init>(Lads_mobile_sdk/cg2;Lads_mobile_sdk/xh2;ZLjava/lang/String;Ljava/lang/String;)V

    .line 51
    sget-object v25, Lads_mobile_sdk/h2;->d:Lads_mobile_sdk/h2;

    .line 56
    invoke-virtual/range {v21 .. v21}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v26

    .line 63
    new-instance v28, Lcom/google/gson/JsonObject;

    invoke-direct/range {v28 .. v28}, Lcom/google/gson/JsonObject;-><init>()V

    move-object/from16 v29, v1

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    sget-object v30, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 75
    new-instance v31, Lads_mobile_sdk/o93;

    invoke-direct/range {v31 .. v31}, Lads_mobile_sdk/o93;-><init>()V

    .line 81
    sget-object v32, Lads_mobile_sdk/st2;->c:Lads_mobile_sdk/st2;

    .line 83
    new-instance v33, Lcom/google/gson/JsonObject;

    invoke-direct/range {v33 .. v33}, Lcom/google/gson/JsonObject;-><init>()V

    .line 87
    invoke-virtual/range {v21 .. v21}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v34

    .line 91
    new-instance v21, Lcom/google/gson/JsonObject;

    invoke-direct/range {v21 .. v21}, Lcom/google/gson/JsonObject;-><init>()V

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v36
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v37, v3

    const-string v3, ""

    move-object/from16 v38, v3

    const-wide/16 v39, 0x0

    move-object/from16 v98, v16

    move-object/from16 v99, v17

    move-object/from16 v65, v18

    move-object/from16 v93, v21

    move-wide/from16 v62, v22

    move-object/from16 v50, v24

    move-wide/from16 v53, v26

    move-object/from16 v71, v28

    move-object/from16 v21, v30

    move-object/from16 v73, v31

    move-object/from16 v85, v32

    move-object/from16 v57, v33

    move-wide/from16 v88, v34

    move-object/from16 v41, v36

    move-object/from16 v42, v37

    move-object/from16 v16, v38

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v22, v18

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v26, v24

    move-object/from16 v30, v26

    move-object/from16 v37, v30

    move-object/from16 v44, v37

    move-object/from16 v58, v44

    move-object/from16 v64, v58

    move-object/from16 v66, v64

    move-object/from16 v67, v66

    move-object/from16 v72, v67

    move-object/from16 v78, v72

    move-wide/from16 v83, v39

    move-object/from16 v27, v97

    move-object/from16 v35, v27

    move-object/from16 v43, v35

    move-object/from16 v56, v43

    move-object/from16 v59, v56

    move-object/from16 v70, v59

    move-object/from16 v79, v70

    move-object/from16 v80, v79

    move-object/from16 v81, v80

    move-object/from16 v82, v81

    move-object/from16 v90, v82

    move-object/from16 v91, v90

    move-object/from16 v92, v91

    const/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v40, 0x0

    const/16 v45, -0x1

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v51, 0x0

    const/16 v55, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v74, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v86, 0x0

    const/16 v87, 0x0

    const/16 v94, 0x0

    const/16 v95, 0x0

    const/16 v100, 0x0

    move-object/from16 v28, v19

    move-object/from16 v33, v20

    move-object/from16 v31, v29

    move-object/from16 v20, v78

    move-object/from16 v39, v20

    const/16 v19, 0x0

    const/16 v29, 0x0

    :goto_0
    :try_start_2
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v68

    if-eqz v68, :cond_92

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v68

    check-cast v68, Ljava/util/Map$Entry;

    invoke-static/range {v68 .. v68}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface/range {v68 .. v68}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v75

    move-object/from16 v3, v75

    check-cast v3, Ljava/lang/String;

    invoke-interface/range {v68 .. v68}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v68

    move-object/from16 v75, v2

    move-object/from16 v2, v68

    check-cast v2, Lcom/google/gson/JsonElement;

    if-eqz v3, :cond_91

    .line 95
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v68
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v101, v2

    const-string v2, "getAsJsonObject(...)"

    move-object/from16 v102, v13

    const-string v13, "getAsJsonArray(...)"

    move-object/from16 v103, v14

    const-string v14, "getAsString(...)"

    sparse-switch v68, :sswitch_data_0

    :goto_1
    move-object/from16 v68, v5

    goto/16 :goto_33

    :sswitch_0
    :try_start_3
    const-string v2, "flow_control"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 221
    :cond_0
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v87

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_2
    move-object/from16 v68, v5

    :goto_3
    move-object/from16 v2, v38

    move-object/from16 v38, v49

    move-object/from16 v13, v52

    move-object/from16 v5, v65

    move-object/from16 v49, v1

    move-object/from16 v65, v4

    move-object/from16 v4, v26

    :goto_4
    move-object/from16 v26, v6

    move-object/from16 v6, v42

    goto/16 :goto_36

    .line 222
    :sswitch_1
    const-string v2, "render_serially"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 310
    :cond_1
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v60

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_2

    .line 311
    :sswitch_2
    const-string v2, "manual_tracking_urls"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 376
    :cond_2
    sget-object v2, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v2

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 661
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v68, v3, 0x1

    if-gez v3, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_3
    check-cast v13, Lcom/google/gson/JsonElement;

    .line 662
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 663
    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 948
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 949
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_4
    move/from16 v3, v68

    goto :goto_5

    .line 955
    :cond_5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_2

    .line 956
    :sswitch_3
    const-string v2, "rule_line_external_id"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_1

    .line 1063
    :cond_6
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v72, v2

    goto/16 :goto_2

    .line 1064
    :sswitch_4
    const-string v2, "recursive_signal_collection"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_1

    .line 1148
    :cond_7
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v59

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_2

    .line 1149
    :sswitch_5
    const-string v2, "is_analytics_logging_enabled"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto/16 :goto_1

    .line 1258
    :cond_8
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v74

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_2

    .line 1259
    :sswitch_6
    const-string v2, "renderers"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto/16 :goto_1

    .line 1346
    :cond_9
    sget-object v2, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v2

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1637
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v14, v3, 0x1

    if-gez v3, :cond_a

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_a
    check-cast v13, Lcom/google/gson/JsonElement;

    .line 1638
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1639
    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 1928
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_b
    move v3, v14

    goto :goto_6

    .line 1933
    :cond_c
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_2

    .line 1934
    :sswitch_7
    const-string v2, "use_third_party_container_height"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto/16 :goto_1

    .line 2047
    :cond_d
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v77

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_2

    .line 2048
    :sswitch_8
    const-string v2, "video_reward_urls"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto/16 :goto_1

    .line 2141
    :cond_e
    sget-object v2, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v2

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2432
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v68, v3, 0x1

    if-gez v3, :cond_f

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_f
    check-cast v13, Lcom/google/gson/JsonElement;

    .line 2433
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2434
    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2725
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 2726
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_10
    move/from16 v3, v68

    goto :goto_7

    .line 2732
    :cond_11
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_2

    .line 2733
    :sswitch_9
    const-string v2, "ad_network_class_name"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto/16 :goto_1

    .line 2741
    :cond_12
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v20, v2

    goto/16 :goto_2

    .line 2742
    :sswitch_a
    const-string v2, "video_start_urls"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto/16 :goto_1

    .line 2845
    :cond_13
    sget-object v2, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v2

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3140
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v68, v3, 0x1

    if-gez v3, :cond_14

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_14
    check-cast v13, Lcom/google/gson/JsonElement;

    .line 3141
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 3142
    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3437
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 3438
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_15
    move/from16 v3, v68

    goto :goto_8

    .line 3444
    :cond_16
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_2

    .line 3445
    :sswitch_b
    const-string v2, "bid_response"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    goto/16 :goto_1

    .line 3469
    :cond_17
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v30, v2

    goto/16 :goto_2

    .line 3470
    :sswitch_c
    const-string v2, "adapter_only_third_party_impression"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    goto/16 :goto_1

    .line 3595
    :cond_18
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v100

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_2

    .line 3596
    :sswitch_d
    const-string v2, "post_click_lifecycle_monitoring_duration_ms"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    goto/16 :goto_1

    .line 3724
    :cond_19
    sget-object v2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    sget-object v3, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v2, v3}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v2

    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-wide/from16 v88, v2

    goto/16 :goto_2

    .line 3725
    :sswitch_e
    const-string v2, "ad_source_id"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto/16 :goto_1

    .line 3739
    :cond_1a
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v23, v2

    goto/16 :goto_2

    .line 3740
    :sswitch_f
    const-string v2, "is_collapsible"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    goto/16 :goto_1

    .line 3800
    :cond_1b
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v47

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_2

    .line 3801
    :sswitch_10
    const-string v13, "recursive_request_parameters"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1c

    goto/16 :goto_1

    .line 3884
    :cond_1c
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v57, v3

    goto/16 :goto_2

    .line 3885
    :sswitch_11
    const-string v2, "allow_pub_owned_ad_view"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    goto/16 :goto_1

    .line 3905
    :cond_1d
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v19

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_2

    .line 3906
    :sswitch_12
    const-string v2, "base_creative_conversion_url"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto/16 :goto_1

    .line 4039
    :cond_1e
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v92

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_2

    .line 4040
    :sswitch_13
    const-string v2, "preload_sort_value"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto/16 :goto_1

    .line 4162
    :cond_1f
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v2

    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-wide/from16 v83, v2

    goto/16 :goto_2

    .line 4163
    :sswitch_14
    const-string v2, "cache_hit_urls"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    goto/16 :goto_1

    .line 4190
    :cond_20
    sget-object v2, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v2

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4471
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v68, v3, 0x1

    if-gez v3, :cond_21

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_21
    check-cast v13, Lcom/google/gson/JsonElement;

    .line 4472
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4473
    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4755
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 4756
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_22
    move/from16 v3, v68

    goto :goto_9

    .line 4762
    :cond_23
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_2

    .line 4763
    :sswitch_15
    const-string v2, "adapter_response_info_key"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    goto/16 :goto_1

    .line 4767
    :cond_24
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v17, v2

    goto/16 :goto_2

    .line 4768
    :sswitch_16
    const-string v2, "rewards"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    goto/16 :goto_1

    .line 4853
    :cond_25
    invoke-static/range {v101 .. v101}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static/range {v101 .. v101}, Lads_mobile_sdk/m63;->a(Lcom/google/gson/JsonElement;)Lads_mobile_sdk/l63;

    move-result-object v70

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_2

    .line 4854
    :sswitch_17
    const-string v2, "transaction_id"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    goto/16 :goto_1

    .line 4950
    :cond_26
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v66, v2

    goto/16 :goto_2

    .line 4951
    :sswitch_18
    const-string v13, "analytics_event_name_to_parameters_map"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_27

    goto/16 :goto_1

    .line 4974
    :cond_27
    sget-object v3, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lads_mobile_sdk/ds1;->b(Lcom/google/gson/JsonObject;)Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v21, v2

    goto/16 :goto_2

    .line 4975
    :sswitch_19
    const-string v2, "impression_type"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    goto/16 :goto_1

    .line 5023
    :cond_28
    sget-object v2, Lads_mobile_sdk/e2;->b:Lads_mobile_sdk/d2;

    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lads_mobile_sdk/d2;->a(I)Lads_mobile_sdk/e2;

    move-result-object v2

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v99, v2

    goto/16 :goto_2

    .line 5024
    :sswitch_1a
    const-string v14, "container_sizes"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_29

    goto/16 :goto_1

    .line 5057
    :cond_29
    sget-object v3, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v3

    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5346
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v13, 0x0

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v68, v13, 0x1

    if-gez v13, :cond_2a

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_2a
    check-cast v14, Lcom/google/gson/JsonElement;

    .line 5347
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 5348
    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v13

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13}, Lads_mobile_sdk/o2;->a(Lcom/google/gson/JsonObject;)Lads_mobile_sdk/p2;

    move-result-object v13

    if-eqz v13, :cond_2b

    .line 5634
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_2b
    move/from16 v13, v68

    goto :goto_a

    .line 5639
    :cond_2c
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_2

    .line 5640
    :sswitch_1b
    const-string v2, "response_info_extras_override"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    goto/16 :goto_1

    .line 5775
    :cond_2d
    invoke-static/range {v101 .. v101}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonObject;

    move-result-object v2

    if-nez v2, :cond_2e

    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    :cond_2e
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v93, v2

    goto/16 :goto_2

    .line 5776
    :sswitch_1c
    const-string v2, "debug_dialog_string"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    goto/16 :goto_1

    .line 5813
    :cond_2f
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v39, v2

    goto/16 :goto_2

    .line 5814
    :sswitch_1d
    const-string v2, "presentation_error_timeout_ms"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    goto/16 :goto_1

    .line 5891
    :cond_30
    sget-object v2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    sget-object v3, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v2, v3}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v2

    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-wide/from16 v53, v2

    goto/16 :goto_2

    .line 5892
    :sswitch_1e
    const-string v2, "consent_form_action_identifier"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    goto/16 :goto_1

    .line 6029
    :cond_31
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v95

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_2

    .line 6030
    :sswitch_1f
    const-string v2, "is_closable_area_disabled"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    goto/16 :goto_1

    .line 6089
    :cond_32
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v46

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_2

    .line 6090
    :sswitch_20
    const-string v2, "ad_load_urls"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    goto/16 :goto_1

    .line 6097
    :cond_33
    sget-object v2, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v2

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6385
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v68, v3, 0x1

    if-gez v3, :cond_34

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_34
    check-cast v13, Lcom/google/gson/JsonElement;

    .line 6386
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6387
    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6676
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 6677
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_35
    move/from16 v3, v68

    goto :goto_b

    .line 6683
    :cond_36
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_2

    .line 6684
    :sswitch_21
    const-string v2, "qdata"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    goto/16 :goto_1

    .line 6766
    :cond_37
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v58, v2

    goto/16 :goto_2

    .line 6767
    :sswitch_22
    const-string v2, "render_test_label"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    goto/16 :goto_1

    .line 6856
    :cond_38
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v61

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_2

    .line 6857
    :sswitch_23
    const-string v2, "request_id"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    goto/16 :goto_1

    .line 6914
    :cond_39
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v44, v2

    goto/16 :goto_2

    .line 6915
    :sswitch_24
    const-string v13, "data"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3a

    goto/16 :goto_1

    .line 6920
    :cond_3a
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_2

    .line 6921
    :sswitch_25
    const-string v2, "id"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    goto/16 :goto_1

    .line 6968
    :cond_3b
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v37, v2

    goto/16 :goto_2

    .line 6969
    :sswitch_26
    const-string v13, "ad"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3c

    goto/16 :goto_1

    .line 7023
    :cond_3c
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v13, p2

    invoke-static {v3, v13}, Lads_mobile_sdk/uc1;->a(Lcom/google/gson/JsonObject;Lkotlinx/coroutines/Deferred;)Lads_mobile_sdk/vc1;

    move-result-object v2

    .line 7024
    iget-object v3, v2, Lads_mobile_sdk/vc1;->d:Lcom/google/gson/JsonObject;

    if-eqz v3, :cond_3d

    const-string v14, "slots"

    invoke-static {v3, v14}, Lads_mobile_sdk/ds1;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v3

    if-eqz v3, :cond_3d

    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    if-lez v3, :cond_3d

    const/16 v86, 0x1

    goto :goto_c

    :cond_3d
    const/16 v86, 0x0

    :goto_c
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v43, v2

    goto/16 :goto_2

    :sswitch_27
    move-object/from16 v13, p2

    .line 7025
    const-string v2, "native_required_asset_viewability"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    goto/16 :goto_1

    .line 7054
    :cond_3e
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v34

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_2

    :sswitch_28
    move-object/from16 v13, p2

    .line 7055
    const-string v2, "watermark"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    goto/16 :goto_1

    .line 7169
    :cond_3f
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v78, v2

    goto/16 :goto_2

    :sswitch_29
    move-object/from16 v13, p2

    .line 7170
    const-string v2, "force_disable_hardware_acceleration"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    goto/16 :goto_1

    .line 7216
    :cond_40
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v36

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_2

    :sswitch_2a
    move-object/from16 v13, p2

    .line 7217
    const-string v2, "content_url"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    goto/16 :goto_1

    .line 7253
    :cond_41
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v35

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_2

    :sswitch_2b
    move-object/from16 v13, p2

    .line 7254
    const-string v2, "render_timeout_ms"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    goto/16 :goto_1

    .line 7344
    :cond_42
    sget-object v2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    sget-object v3, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v2, v3}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v2

    sget-object v14, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-wide/from16 v62, v2

    goto/16 :goto_2

    :sswitch_2c
    move-object/from16 v13, p2

    .line 7345
    const-string v14, "rtb_native_required_assets"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_43

    goto/16 :goto_1

    .line 7451
    :cond_43
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v71, v3

    goto/16 :goto_2

    .line 7452
    :sswitch_2d
    const-string v2, "imp_urls"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    goto/16 :goto_1

    .line 7502
    :cond_44
    sget-object v2, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v2

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7794
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v68, v3, 0x1

    if-gez v3, :cond_45

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_45
    check-cast v13, Lcom/google/gson/JsonElement;

    .line 7795
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 7796
    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8088
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_46

    .line 8089
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_46
    move/from16 v3, v68

    goto :goto_d

    .line 8095
    :cond_47
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_2

    .line 8096
    :sswitch_2e
    const-string v13, "safe_browsing"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_48

    goto/16 :goto_1

    .line 8204
    :cond_48
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lads_mobile_sdk/n93;->a(Lcom/google/gson/JsonObject;)Lads_mobile_sdk/o93;

    move-result-object v2

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v73, v2

    goto/16 :goto_2

    .line 8205
    :sswitch_2f
    const-string v2, "click_urls"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    goto/16 :goto_1

    .line 8236
    :cond_49
    sget-object v2, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v2

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8520
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v68, v3, 0x1

    if-gez v3, :cond_4a

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_4a
    check-cast v13, Lcom/google/gson/JsonElement;

    .line 8521
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 8522
    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8807
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_4b

    .line 8808
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_4b
    move/from16 v3, v68

    goto :goto_e

    .line 8814
    :cond_4c
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_2

    .line 8815
    :sswitch_30
    const-string v2, "ad_source_instance_id"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    goto/16 :goto_1

    .line 8831
    :cond_4d
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v68, v5

    move-object/from16 v26, v6

    move-object/from16 v6, v42

    move-object/from16 v13, v52

    move-object/from16 v5, v65

    move-object/from16 v65, v4

    move-object v4, v2

    move-object/from16 v2, v38

    move-object/from16 v38, v49

    move-object/from16 v49, v1

    goto/16 :goto_36

    .line 8832
    :sswitch_31
    const-string v2, "valid_from_timestamp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    goto/16 :goto_1

    .line 8929
    :cond_4e
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v67, v2

    goto/16 :goto_2

    .line 8930
    :sswitch_32
    const-string v2, "active_view"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    goto/16 :goto_1

    .line 8931
    :cond_4f
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v16, v2

    goto/16 :goto_2

    .line 8932
    :sswitch_33
    const-string v2, "video_complete_urls"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_50

    goto/16 :goto_1

    .line 9031
    :cond_50
    sget-object v2, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v2

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9323
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v68, v3, 0x1

    if-gez v3, :cond_51

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_51
    check-cast v13, Lcom/google/gson/JsonElement;

    .line 9324
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 9325
    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9617
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_52

    .line 9618
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_52
    move/from16 v3, v68

    goto :goto_f

    .line 9624
    :cond_53
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_2

    .line 9625
    :sswitch_34
    const-string v2, "ad_quality_urls"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_54

    goto/16 :goto_1

    .line 9669
    :cond_54
    sget-object v2, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v2

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9960
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_57

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v68, v3, 0x1

    if-gez v3, :cond_55

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_55
    check-cast v13, Lcom/google/gson/JsonElement;

    .line 9961
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 9962
    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10254
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_56

    move-object/from16 v13, v103

    .line 10255
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_11

    :cond_56
    move-object/from16 v13, v103

    :goto_11
    move-object/from16 v103, v13

    move/from16 v3, v68

    goto :goto_10

    :cond_57
    move-object/from16 v13, v103

    .line 10261
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_12

    :sswitch_35
    move-object/from16 v13, v103

    .line 10262
    const-string v2, "allocation_id"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_58

    move-object/from16 v68, v5

    move-object/from16 v103, v13

    goto/16 :goto_33

    .line 10281
    :cond_58
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v18, v2

    :goto_12
    move-object/from16 v68, v5

    move-object/from16 v103, v13

    goto/16 :goto_3

    .line 10282
    :sswitch_36
    const-string v2, "fill_urls"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    goto/16 :goto_1

    .line 10324
    :cond_59
    sget-object v2, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v2

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10610
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v68, v3, 0x1

    if-gez v3, :cond_5a

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_5a
    check-cast v13, Lcom/google/gson/JsonElement;

    .line 10611
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 10612
    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10899
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_5b

    move-object/from16 v13, v102

    .line 10900
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_14

    :cond_5b
    move-object/from16 v13, v102

    :goto_14
    move-object/from16 v102, v13

    move/from16 v3, v68

    goto :goto_13

    :cond_5c
    move-object/from16 v13, v102

    .line 10906
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_15

    :sswitch_37
    move-object/from16 v13, v102

    .line 10907
    const-string v2, "is_scroll_aware"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5d

    goto :goto_16

    .line 10970
    :cond_5d
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v55

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_15
    move-object/from16 v68, v5

    move-object/from16 v102, v13

    goto/16 :goto_3

    :sswitch_38
    move-object/from16 v13, v102

    .line 10971
    const-string v2, "ad_type"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5e

    :goto_16
    move-object/from16 v68, v5

    move-object/from16 v102, v13

    goto/16 :goto_33

    .line 10988
    :cond_5e
    sget-object v2, Lads_mobile_sdk/bc;->a:Lads_mobile_sdk/ac;

    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v14, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v14}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v14, "toUpperCase(...)"

    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lads_mobile_sdk/ac;->a(Ljava/lang/String;)Lads_mobile_sdk/bc;

    move-result-object v2

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v98, v2

    goto :goto_15

    .line 10989
    :sswitch_39
    const-string v2, "presentation_error_urls"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5f

    goto/16 :goto_1

    .line 11068
    :cond_5f
    sget-object v2, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v2

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11360
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_62

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v68, v3, 0x1

    if-gez v3, :cond_60

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_60
    check-cast v13, Lcom/google/gson/JsonElement;

    .line 11361
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 11362
    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11654
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_61

    move-object/from16 v13, v75

    .line 11655
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_18

    :cond_61
    move-object/from16 v13, v75

    :goto_18
    move-object/from16 v75, v13

    move/from16 v3, v68

    goto :goto_17

    :cond_62
    move-object/from16 v13, v75

    .line 11661
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1b

    :sswitch_3a
    move-object/from16 v13, v75

    .line 11662
    const-string v2, "allow_pub_rendered_attribution"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_63

    goto :goto_19

    .line 11683
    :cond_63
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v29

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1b

    :sswitch_3b
    move-object/from16 v13, v75

    .line 11684
    const-string v14, "ad_event_value"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_64

    goto :goto_19

    .line 11702
    :cond_64
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lads_mobile_sdk/wc;->a(Lcom/google/gson/JsonObject;)Lads_mobile_sdk/xc;

    move-result-object v27

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1b

    :sswitch_3c
    move-object/from16 v13, v75

    .line 11703
    const-string v14, "extras"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_65

    :goto_19
    goto :goto_1a

    .line 11743
    :cond_65
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v33, v3

    goto :goto_1b

    :sswitch_3d
    move-object/from16 v13, v75

    .line 11744
    const-string v2, "test_mode_enabled"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_66

    :goto_1a
    move-object/from16 v68, v5

    move-object/from16 v75, v13

    goto/16 :goto_33

    .line 11856
    :cond_66
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v76

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1b
    move-object/from16 v68, v5

    move-object/from16 v75, v13

    goto/16 :goto_3

    .line 11857
    :sswitch_3e
    const-string v2, "adapters"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_67

    goto/16 :goto_1

    .line 11860
    :cond_67
    sget-object v2, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v2

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12146
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v14, v3, 0x1

    if-gez v3, :cond_68

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_68
    check-cast v13, Lcom/google/gson/JsonElement;

    .line 12147
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 12148
    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_69

    move-object/from16 v13, v42

    .line 12432
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1d

    :cond_69
    move-object/from16 v13, v42

    :goto_1d
    move-object/from16 v42, v13

    move v3, v14

    goto :goto_1c

    :cond_6a
    move-object/from16 v13, v42

    .line 12437
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v68, v5

    move-object/from16 v2, v38

    move-object/from16 v38, v49

    move-object/from16 v5, v65

    move-object/from16 v49, v1

    move-object/from16 v65, v4

    move-object/from16 v4, v26

    move-object/from16 v26, v6

    move-object v6, v13

    goto/16 :goto_2a

    .line 12438
    :sswitch_3f
    const-string v14, "ad_sizes"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6b

    goto/16 :goto_1

    .line 12448
    :cond_6b
    sget-object v3, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v3

    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12740
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v13, 0x0

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v68, v13, 0x1

    if-gez v13, :cond_6c

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_6c
    check-cast v14, Lcom/google/gson/JsonElement;

    .line 12741
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 12742
    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v13

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13}, Lads_mobile_sdk/o2;->a(Lcom/google/gson/JsonObject;)Lads_mobile_sdk/p2;

    move-result-object v13

    if-eqz v13, :cond_6d

    move-object/from16 v14, v28

    .line 13031
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1f

    :cond_6d
    move-object/from16 v14, v28

    :goto_1f
    move-object/from16 v28, v14

    move/from16 v13, v68

    goto :goto_1e

    :cond_6e
    move-object/from16 v14, v28

    .line 13036
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_22

    :sswitch_40
    move-object/from16 v14, v28

    .line 13037
    const-string v2, "showable_impression_type"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6f

    goto :goto_20

    .line 13148
    :cond_6f
    sget-object v2, Lads_mobile_sdk/h2;->b:Lads_mobile_sdk/g2;

    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lads_mobile_sdk/g2;->a(I)Lads_mobile_sdk/h2;

    move-result-object v2

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v25, v2

    goto :goto_22

    :sswitch_41
    move-object/from16 v14, v28

    .line 13149
    const-string v2, "buffer_click_url_as_ready_to_ping"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_70

    :goto_20
    goto :goto_21

    .line 13174
    :cond_70
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v32

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_22

    :sswitch_42
    move-object/from16 v14, v28

    .line 13175
    const-string v2, "enable_omid"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_71

    :goto_21
    move-object/from16 v68, v5

    move-object/from16 v28, v14

    goto/16 :goto_33

    .line 13237
    :cond_71
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v51

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_22
    move-object/from16 v68, v5

    move-object/from16 v28, v14

    goto/16 :goto_3

    .line 13238
    :sswitch_43
    const-string v2, "orientation"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_72

    goto/16 :goto_1

    .line 13296
    :cond_72
    sget-object v2, Lads_mobile_sdk/i2;->J0:Ljava/util/List;

    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lads_mobile_sdk/c2;->a(Ljava/lang/String;)I

    move-result v45

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_2

    .line 13297
    :sswitch_44
    const-string v2, "is_custom_close_blocked"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_73

    goto/16 :goto_1

    .line 13358
    :cond_73
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v48

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_2

    .line 13359
    :sswitch_45
    const-string v2, "post_click_lifecycle_interaction_label"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_74

    goto/16 :goto_1

    .line 13489
    :cond_74
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v90

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_2

    .line 13490
    :sswitch_46
    const-string v2, "enable_lock_screen_ad"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_75

    goto/16 :goto_1

    .line 13529
    :cond_75
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v40

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_2

    .line 13530
    :sswitch_47
    const-string v2, "nofill_urls"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_76

    goto/16 :goto_1

    .line 13600
    :cond_76
    sget-object v2, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v2

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13887
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_79

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v68, v3, 0x1

    if-gez v3, :cond_77

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_77
    check-cast v13, Lcom/google/gson/JsonElement;

    .line 13888
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 13889
    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14177
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_78

    move-object/from16 v13, v49

    .line 14178
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_24

    :cond_78
    move-object/from16 v13, v49

    :goto_24
    move-object/from16 v49, v13

    move/from16 v3, v68

    goto :goto_23

    :cond_79
    move-object/from16 v13, v49

    .line 14184
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_25

    :sswitch_48
    move-object/from16 v13, v49

    .line 14185
    const-string v2, "backend_query_id"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7a

    goto/16 :goto_27

    .line 14276
    :cond_7a
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v49, v1

    move-object/from16 v64, v2

    goto :goto_26

    :sswitch_49
    move-object/from16 v13, v49

    .line 14277
    const-string v2, "preload_sort_type"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7b

    goto/16 :goto_27

    .line 14400
    :cond_7b
    sget-object v2, Lads_mobile_sdk/st2;->a:Lads_mobile_sdk/rt2;

    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lads_mobile_sdk/rt2;->a(I)Lads_mobile_sdk/st2;

    move-result-object v2

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v49, v1

    move-object/from16 v85, v2

    goto :goto_26

    :sswitch_4a
    move-object/from16 v13, v49

    .line 14401
    const-string v2, "post_click_lifecycle_interaction_macroed_params"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7c

    goto/16 :goto_27

    .line 14533
    :cond_7c
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v91

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_25

    :sswitch_4b
    move-object/from16 v13, v49

    .line 14534
    const-string v2, "ad_source_name"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7d

    goto :goto_27

    .line 14547
    :cond_7d
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v49, v1

    move-object/from16 v22, v2

    goto :goto_26

    :sswitch_4c
    move-object/from16 v13, v49

    .line 14548
    const-string v2, "parallel_key"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7e

    goto :goto_27

    .line 14620
    :cond_7e
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v56

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_25
    move-object/from16 v49, v1

    :goto_26
    move-object/from16 v68, v5

    move-object/from16 v2, v38

    move-object/from16 v5, v65

    move-object/from16 v65, v4

    move-object/from16 v38, v13

    move-object/from16 v4, v26

    move-object/from16 v13, v52

    goto/16 :goto_4

    :sswitch_4d
    move-object/from16 v13, v49

    .line 14621
    const-string v14, "play_prewarm_options"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7f

    goto :goto_27

    .line 14742
    :cond_7f
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lads_mobile_sdk/to2;->a(Lcom/google/gson/JsonObject;)Lads_mobile_sdk/uo2;

    move-result-object v81

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_25

    :sswitch_4e
    move-object/from16 v13, v49

    .line 14743
    const-string v14, "network_ping_config"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_80

    :goto_27
    move-object/from16 v49, v1

    move-object/from16 v68, v5

    move-object/from16 v2, v38

    move-object/from16 v5, v65

    move-object/from16 v65, v4

    move-object/from16 v38, v13

    move-object/from16 v4, v26

    move-object/from16 v13, v52

    goto/16 :goto_34

    .line 14811
    :cond_80
    invoke-static/range {v101 .. v101}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v14, v65

    move-object/from16 v3, v101

    .line 14812
    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14827
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v49

    if-nez v49, :cond_81

    move-object/from16 v49, v1

    goto :goto_28

    :cond_81
    move-object/from16 v49, v1

    .line 14830
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_82

    goto :goto_28

    .line 14833
    :cond_82
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 14834
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v3

    if-nez v3, :cond_83

    :goto_28
    move-object/from16 v65, v4

    move-object/from16 v68, v5

    move-object/from16 v82, v97

    goto :goto_29

    .line 14837
    :cond_83
    new-instance v3, Lads_mobile_sdk/ga2;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14838
    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14888
    new-instance v104, Lads_mobile_sdk/ha2;

    .line 14889
    sget-object v2, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    const-string v2, "max_attempts"

    move-object/from16 v65, v4

    const/4 v4, 0x1

    invoke-static {v1, v2, v4}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v105

    .line 14890
    const-string v2, "initial_backoff_ms"

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v106

    .line 14891
    const-string v2, "buffer_after_max_attempts"

    invoke-static {v1, v2, v4}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Z)Z

    move-result v107

    .line 14892
    const-string v2, "backoff_multiplier"

    move-object/from16 v68, v5

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2, v4, v5}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;D)D

    move-result-wide v108

    .line 14893
    invoke-direct/range {v104 .. v109}, Lads_mobile_sdk/ha2;-><init>(IIZD)V

    move-object/from16 v1, v104

    .line 14894
    invoke-direct {v3, v1}, Lads_mobile_sdk/ga2;-><init>(Lads_mobile_sdk/ha2;)V

    move-object/from16 v82, v3

    .line 14895
    :goto_29
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v5, v14

    move-object/from16 v4, v26

    move-object/from16 v2, v38

    move-object/from16 v26, v6

    move-object/from16 v38, v13

    move-object/from16 v6, v42

    :goto_2a
    move-object/from16 v13, v52

    goto/16 :goto_36

    :sswitch_4f
    move-object/from16 v68, v49

    move-object/from16 v49, v1

    move-object/from16 v1, v68

    move-object/from16 v68, v5

    move-object/from16 v5, v65

    move-object/from16 v65, v4

    move-object/from16 v4, v26

    move-object/from16 v26, v6

    move-object/from16 v6, v42

    .line 14896
    const-string v2, "presentation_urls"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_84

    move-object/from16 v2, v38

    move-object/from16 v13, v52

    goto/16 :goto_2f

    .line 14970
    :cond_84
    sget-object v2, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v2

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15260
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_87

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v42, v3, 0x1

    if-gez v3, :cond_85

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_85
    check-cast v13, Lcom/google/gson/JsonElement;

    .line 15261
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 15262
    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15552
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_86

    move-object/from16 v13, v52

    .line 15553
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_2c

    :cond_86
    move-object/from16 v13, v52

    :goto_2c
    move-object/from16 v52, v13

    move/from16 v3, v42

    goto :goto_2b

    :cond_87
    move-object/from16 v13, v52

    .line 15559
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_2d

    :sswitch_50
    move-object/from16 v13, v49

    move-object/from16 v49, v1

    move-object v1, v13

    move-object/from16 v68, v5

    move-object/from16 v13, v52

    move-object/from16 v5, v65

    move-object/from16 v65, v4

    move-object/from16 v4, v26

    move-object/from16 v26, v6

    move-object/from16 v6, v42

    .line 15560
    const-string v2, "is_consent"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_88

    goto/16 :goto_2e

    .line 15696
    :cond_88
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v94

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_2d
    move-object/from16 v2, v38

    move-object/from16 v38, v1

    goto/16 :goto_36

    :sswitch_51
    move-object/from16 v13, v49

    move-object/from16 v49, v1

    move-object v1, v13

    move-object/from16 v68, v5

    move-object/from16 v13, v52

    move-object/from16 v5, v65

    move-object/from16 v65, v4

    move-object/from16 v4, v26

    move-object/from16 v26, v6

    move-object/from16 v6, v42

    .line 15697
    const-string v14, "swipeable_interstitial_ad_config"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_89

    goto :goto_2e

    .line 15815
    :cond_89
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lads_mobile_sdk/pm3;->a(Lcom/google/gson/JsonObject;)Lads_mobile_sdk/qm3;

    move-result-object v80

    .line 15816
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_2d

    :sswitch_52
    move-object/from16 v13, v49

    move-object/from16 v49, v1

    move-object v1, v13

    move-object/from16 v68, v5

    move-object/from16 v13, v52

    move-object/from16 v5, v65

    move-object/from16 v65, v4

    move-object/from16 v4, v26

    move-object/from16 v26, v6

    move-object/from16 v6, v42

    .line 15817
    const-string v14, "offline_ad_config"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8a

    goto :goto_2e

    .line 15932
    :cond_8a
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lads_mobile_sdk/nb2;->a(Lcom/google/gson/JsonObject;)Lads_mobile_sdk/qb2;

    move-result-object v79

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_2d

    :sswitch_53
    move-object/from16 v13, v49

    move-object/from16 v49, v1

    move-object v1, v13

    move-object/from16 v68, v5

    move-object/from16 v13, v52

    move-object/from16 v5, v65

    move-object/from16 v65, v4

    move-object/from16 v4, v26

    move-object/from16 v26, v6

    move-object/from16 v6, v42

    .line 15933
    const-string v14, "omid_settings"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8b

    :goto_2e
    move-object/from16 v2, v38

    :goto_2f
    move-object/from16 v38, v1

    goto/16 :goto_35

    .line 16004
    :cond_8b
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16005
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16034
    sget-object v2, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    const-string v2, "media_type"

    const/4 v14, -0x1

    invoke-static {v3, v2, v14}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_8d

    const/4 v14, 0x1

    if-eq v2, v14, :cond_8c

    .line 16037
    sget-object v2, Lads_mobile_sdk/cg2;->c:Lads_mobile_sdk/cg2;

    goto :goto_30

    .line 16038
    :cond_8c
    sget-object v2, Lads_mobile_sdk/cg2;->a:Lads_mobile_sdk/cg2;

    goto :goto_30

    .line 16039
    :cond_8d
    sget-object v2, Lads_mobile_sdk/cg2;->b:Lads_mobile_sdk/cg2;

    :goto_30
    move-object/from16 v105, v2

    .line 16045
    sget-object v2, Lads_mobile_sdk/bg2;->a:[I

    invoke-virtual/range {v105 .. v105}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v2, v2, v14

    const/4 v14, 0x1

    if-ne v2, v14, :cond_8e

    .line 16046
    sget-object v2, Lads_mobile_sdk/xh2;->d:Lads_mobile_sdk/xh2;

    :goto_31
    move-object/from16 v106, v2

    goto :goto_32

    .line 16047
    :cond_8e
    sget-object v2, Lads_mobile_sdk/xh2;->c:Lads_mobile_sdk/xh2;

    goto :goto_31

    .line 16051
    :goto_32
    const-string v2, "javascript_session_service_enabled"

    invoke-static {v3, v2, v14}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Z)Z

    move-result v107

    .line 16052
    const-string v2, "omid_partner_name"

    move-object/from16 v14, v38

    .line 16053
    invoke-static {v3, v2, v14}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v108

    .line 16054
    const-string v2, "omid_html"

    .line 16055
    invoke-static {v3, v2, v14}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v109

    .line 16056
    new-instance v104, Lads_mobile_sdk/dg2;

    invoke-direct/range {v104 .. v109}, Lads_mobile_sdk/dg2;-><init>(Lads_mobile_sdk/cg2;Lads_mobile_sdk/xh2;ZLjava/lang/String;Ljava/lang/String;)V

    .line 16057
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v2, v49

    move-object/from16 v49, v1

    move-object v1, v2

    move-object/from16 v42, v6

    move-object/from16 v52, v13

    move-object/from16 v38, v14

    move-object/from16 v6, v26

    move-object/from16 v2, v75

    move-object/from16 v13, v102

    move-object/from16 v14, v103

    move-object/from16 v50, v104

    move-object/from16 v26, v4

    move-object/from16 v4, v65

    move-object/from16 v65, v5

    move-object/from16 v5, v68

    goto/16 :goto_0

    :sswitch_54
    move-object/from16 v68, v5

    move-object/from16 v14, v38

    move-object/from16 v38, v49

    move-object/from16 v13, v52

    move-object/from16 v5, v65

    move-object/from16 v49, v1

    move-object/from16 v65, v4

    move-object/from16 v4, v26

    move-object/from16 v26, v6

    move-object/from16 v6, v42

    .line 16058
    const-string v1, "debug_signals"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8f

    move-object v2, v14

    goto :goto_35

    .line 16096
    :cond_8f
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v31, v1

    move-object v2, v14

    goto :goto_36

    :sswitch_55
    move-object/from16 v68, v5

    move-object/from16 v2, v38

    move-object/from16 v38, v49

    move-object/from16 v13, v52

    move-object/from16 v5, v65

    move-object/from16 v49, v1

    move-object/from16 v65, v4

    move-object/from16 v4, v26

    move-object/from16 v26, v6

    move-object/from16 v6, v42

    .line 16097
    const-string v1, "ad_source_instance_name"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_90

    goto :goto_35

    .line 16112
    :cond_90
    invoke-virtual/range {v101 .. v101}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v24, v1

    goto :goto_36

    :cond_91
    move-object/from16 v68, v5

    move-object/from16 v102, v13

    move-object/from16 v103, v14

    :goto_33
    move-object/from16 v2, v38

    move-object/from16 v38, v49

    move-object/from16 v13, v52

    move-object/from16 v5, v65

    move-object/from16 v49, v1

    move-object/from16 v65, v4

    move-object/from16 v4, v26

    :goto_34
    move-object/from16 v26, v6

    move-object/from16 v6, v42

    .line 16236
    :goto_35
    sget-object v1, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance v1, Lads_mobile_sdk/b2;

    invoke-direct {v1, v3}, Lads_mobile_sdk/b2;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lads_mobile_sdk/f01;->a(Lkotlin/jvm/functions/Function0;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_36
    move-object/from16 v42, v6

    move-object/from16 v52, v13

    move-object/from16 v6, v26

    move-object/from16 v1, v49

    move-object/from16 v13, v102

    move-object/from16 v14, v103

    move-object/from16 v26, v4

    move-object/from16 v49, v38

    move-object/from16 v4, v65

    move-object/from16 v38, v2

    move-object/from16 v65, v5

    move-object/from16 v5, v68

    move-object/from16 v2, v75

    goto/16 :goto_0

    :cond_92
    move-object/from16 v75, v2

    move-object/from16 v65, v4

    move-object/from16 v68, v5

    move-object/from16 v102, v13

    move-object/from16 v103, v14

    move-object/from16 v4, v26

    move-object/from16 v38, v49

    move-object/from16 v13, v52

    move-object/from16 v49, v1

    move-object/from16 v26, v6

    move-object/from16 v6, v42

    .line 16246
    sget-object v0, Lads_mobile_sdk/e2;->f:Lads_mobile_sdk/e2;

    move-object/from16 v1, v99

    if-eq v1, v0, :cond_93

    .line 16247
    sget-object v0, Lads_mobile_sdk/bc;->c:Lads_mobile_sdk/bc;

    move-object/from16 v2, v98

    if-ne v2, v0, :cond_94

    move/from16 v3, v100

    const/4 v14, 0x1

    if-ne v3, v14, :cond_94

    goto :goto_37

    :cond_93
    move-object/from16 v2, v98

    .line 16249
    :goto_37
    sget-object v25, Lads_mobile_sdk/h2;->g:Lads_mobile_sdk/h2;

    .line 16252
    :cond_94
    new-instance v0, Lads_mobile_sdk/c2$$ExternalSyntheticLambda0;

    invoke-direct {v0, v15}, Lads_mobile_sdk/c2$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->replaceAll(Ljava/util/function/UnaryOperator;)V

    move-object v0, v4

    .line 16254
    new-instance v4, Lads_mobile_sdk/i2;

    .line 16257
    iget-object v3, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcom/google/gson/JsonObject;

    .line 16271
    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v96, 0x0

    move-object v15, v0

    move-object/from16 v69, v10

    move-object/from16 v52, v13

    move-object/from16 v5, v16

    move-object/from16 v10, v20

    move-object/from16 v13, v23

    move-object/from16 v14, v24

    move/from16 v20, v29

    move/from16 v23, v32

    move/from16 v32, v40

    move-object/from16 v40, v43

    move-object/from16 v41, v44

    move/from16 v42, v45

    move/from16 v43, v46

    move/from16 v44, v47

    move/from16 v45, v48

    move-object/from16 v24, v49

    move/from16 v46, v51

    move/from16 v47, v55

    move-object/from16 v51, v56

    move-object/from16 v56, v58

    move-object/from16 v58, v59

    move-object/from16 v59, v65

    move-object/from16 v48, v68

    move-object/from16 v55, v75

    move-object/from16 v16, v2

    move-object/from16 v29, v8

    move-object/from16 v65, v11

    move-object/from16 v68, v12

    move-object/from16 v8, v17

    move-object/from16 v12, v22

    move-object/from16 v75, v25

    move-object/from16 v17, v27

    move-object/from16 v11, v28

    move-object/from16 v22, v30

    move/from16 v25, v34

    move-object/from16 v28, v35

    move-object/from16 v49, v38

    move-object/from16 v30, v39

    move-object/from16 v34, v102

    move-object/from16 v35, v103

    move/from16 v27, p1

    move-object/from16 v38, v1

    move-object/from16 v39, v7

    move-object v7, v3

    .line 16272
    invoke-direct/range {v4 .. v96}, Lads_mobile_sdk/i2;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lads_mobile_sdk/bc;Lads_mobile_sdk/xc;Ljava/lang/String;ZZLandroid/os/Bundle;Ljava/lang/String;ZLjava/util/ArrayList;ZLjava/util/ArrayList;ILjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lcom/google/gson/JsonObject;ZLcom/google/gson/JsonObject;Ljava/util/ArrayList;Ljava/util/ArrayList;ZLjava/lang/String;Lads_mobile_sdk/e2;Ljava/util/ArrayList;Lads_mobile_sdk/vc1;Ljava/lang/String;IZZZZZLjava/util/ArrayList;Ljava/util/ArrayList;Lads_mobile_sdk/dg2;Ljava/lang/String;Ljava/util/ArrayList;JLjava/util/ArrayList;Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonArray;Ljava/util/ArrayList;ZZJLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lads_mobile_sdk/l63;Lcom/google/gson/JsonObject;Ljava/lang/String;Lads_mobile_sdk/o93;ZLads_mobile_sdk/h2;ZZLjava/lang/String;Lads_mobile_sdk/qb2;Lads_mobile_sdk/qm3;Lads_mobile_sdk/uo2;Lads_mobile_sdk/ga2;DLads_mobile_sdk/st2;ZZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;ZII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object v4

    :catch_0
    move-exception v0

    goto :goto_38

    :catch_1
    move-exception v0

    const/16 v97, 0x0

    .line 16273
    :goto_38
    const-string v1, "t"

    invoke-static {v0, v1, v0}, Lads_mobile_sdk/a2;->a(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lads_mobile_sdk/uj2;

    move-result-object v1

    .line 16274
    iget-object v1, v1, Lads_mobile_sdk/uj2;->s:Ljava/util/List;

    .line 16275
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_95

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    :cond_95
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v97

    :sswitch_data_0
    .sparse-switch
        -0x7f724a93 -> :sswitch_55
        -0x760d5f21 -> :sswitch_54
        -0x752755d7 -> :sswitch_53
        -0x751ba07e -> :sswitch_52
        -0x70379d6a -> :sswitch_51
        -0x6ddc55fb -> :sswitch_50
        -0x6db3fd17 -> :sswitch_4f
        -0x6d0041e2 -> :sswitch_4e
        -0x6c01c604 -> :sswitch_4d
        -0x6a655fd9 -> :sswitch_4c
        -0x69ea0ded -> :sswitch_4b
        -0x6749ec0e -> :sswitch_4a
        -0x6097a97b -> :sswitch_49
        -0x60966ac3 -> :sswitch_48
        -0x5c657e81 -> :sswitch_47
        -0x5bb27f02 -> :sswitch_46
        -0x56cd7d24 -> :sswitch_45
        -0x55d641b4 -> :sswitch_44
        -0x55cd0a30 -> :sswitch_43
        -0x552c574b -> :sswitch_42
        -0x53d154ad -> :sswitch_41
        -0x53abfab8 -> :sswitch_40
        -0x511c568a -> :sswitch_3f
        -0x4dd838fc -> :sswitch_3e
        -0x4daf44ce -> :sswitch_3d
        -0x4cd5119d -> :sswitch_3c
        -0x49ea2690 -> :sswitch_3b
        -0x49901bd3 -> :sswitch_3a
        -0x45a06900 -> :sswitch_39
        -0x44ada62a -> :sswitch_38
        -0x4456b89f -> :sswitch_37
        -0x428259e0 -> :sswitch_36
        -0x407d0b26 -> :sswitch_35
        -0x405de940 -> :sswitch_34
        -0x4041c09a -> :sswitch_33
        -0x3ea917c2 -> :sswitch_32
        -0x3a916a9c -> :sswitch_31
        -0x39f06783 -> :sswitch_30
        -0x2e4deec5 -> :sswitch_2f
        -0x207016c7 -> :sswitch_2e
        -0x1a0cf689 -> :sswitch_2d
        -0x181b2b46 -> :sswitch_2c
        -0x18198873 -> :sswitch_2b
        -0x172cbb57 -> :sswitch_2a
        -0xcb8faf4 -> :sswitch_29
        -0xcb8979c -> :sswitch_28
        -0xabddb62 -> :sswitch_27
        0xc23 -> :sswitch_26
        0xd1b -> :sswitch_25
        0x2eefaa -> :sswitch_24
        0x23640cb -> :sswitch_23
        0x3c44b50 -> :sswitch_22
        0x6674f9b -> :sswitch_21
        0xdba7381 -> :sswitch_20
        0x18f0294b -> :sswitch_1f
        0x2052155c -> :sswitch_1e
        0x20bbc660 -> :sswitch_1d
        0x239cb9fc -> :sswitch_1c
        0x261865d5 -> :sswitch_1b
        0x2cfeab54 -> :sswitch_1a
        0x2f2793b0 -> :sswitch_19
        0x2ffcc875 -> :sswitch_18
        0x3c3c4a1c -> :sswitch_17
        0x419a9724 -> :sswitch_16
        0x440b789c -> :sswitch_15
        0x46b1262d -> :sswitch_14
        0x4db3b386 -> :sswitch_13
        0x4eb671e8 -> :sswitch_12
        0x4ec7dc6f -> :sswitch_11
        0x514e86c7 -> :sswitch_10
        0x54c7ec75 -> :sswitch_f
        0x55aac6a3 -> :sswitch_e
        0x5ccce785 -> :sswitch_d
        0x5d4fd9dd -> :sswitch_c
        0x619b1543 -> :sswitch_b
        0x61b080e5 -> :sswitch_a
        0x6483313f -> :sswitch_9
        0x64a20a30 -> :sswitch_8
        0x6b3eec6e -> :sswitch_7
        0x6da6d810 -> :sswitch_6
        0x6fc8b8d3 -> :sswitch_5
        0x7777c1c8 -> :sswitch_4
        0x7b455927 -> :sswitch_3
        0x7b8dc4b3 -> :sswitch_2
        0x7bb5b70a -> :sswitch_1
        0x7e31ff4c -> :sswitch_0
    .end sparse-switch
.end method

.method public static a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 16718
    const-string v0, "className"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterData"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16719
    sget-object v0, Lads_mobile_sdk/i2;->J0:Ljava/util/List;

    .line 16720
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16721
    sget-object v0, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    const-string v0, "class_name"

    invoke-static {p0, v0, p1}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static final a(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 16276
    const-string v0, "$adapterData"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16717
    sget-object v0, Lads_mobile_sdk/i2;->J0:Ljava/util/List;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/google/gson/JsonObject;

    invoke-static {p0, p1}, Lads_mobile_sdk/c2;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
