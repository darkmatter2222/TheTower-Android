.class public final Lads_mobile_sdk/yt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lads_mobile_sdk/v01;)Lads_mobile_sdk/v01;
    .locals 20

    move-object/from16 v0, p0

    .line 1
    const-string v1, "jsResult"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v1, v0, Lads_mobile_sdk/q01;

    if-eqz v1, :cond_d

    check-cast v0, Lads_mobile_sdk/q01;

    invoke-virtual {v0}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 6
    const-string v1, "errors"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 7
    :goto_0
    const-string v1, "valid"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_c

    .line 15
    const-string v1, "url"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    goto :goto_1

    :cond_1
    move-object v10, v2

    :goto_1
    if-nez v10, :cond_2

    .line 16
    new-instance v0, Lads_mobile_sdk/m01;

    const-string v1, "BuildAdUrlResult url is null"

    invoke-direct {v0, v1}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 17
    :cond_2
    const-string v1, "base_uri"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v2

    .line 18
    :goto_2
    const-string v5, "post_parameters"

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    goto :goto_3

    :cond_4
    move-object v9, v2

    .line 21
    :goto_3
    const-string v5, "cookies_include"

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    const-string v6, "true"

    const-string v7, "1"

    const/4 v8, 0x0

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 22
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    move-object v11, v9

    move v9, v8

    goto :goto_5

    :cond_6
    :goto_4
    move-object v11, v9

    move v9, v4

    .line 23
    :goto_5
    const-string v5, "csrb_errors"

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    const-string v12, ","

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_7

    new-array v14, v4, [Ljava/lang/String;

    aput-object v12, v14, v8

    const/16 v17, 0x6

    const/16 v18, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v19, v12

    move-object v12, v5

    move-object/from16 v5, v19

    goto :goto_6

    :cond_7
    move-object v5, v12

    move-object v12, v2

    .line 26
    :goto_6
    const-string v13, "use_compression"

    invoke-virtual {v0, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v13

    if-eqz v13, :cond_9

    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_9

    .line 27
    invoke-static {v13, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-static {v13, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_8
    move v13, v4

    goto :goto_7

    :cond_9
    move v13, v8

    .line 28
    :goto_7
    const-string v6, "content_type"

    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    goto :goto_8

    :cond_a
    move-object v14, v2

    .line 30
    :goto_8
    new-instance v0, Lads_mobile_sdk/q01;

    .line 31
    new-instance v15, Lads_mobile_sdk/zt;

    if-eqz v3, :cond_b

    .line 32
    new-array v4, v4, [Ljava/lang/String;

    aput-object v5, v4, v8

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :cond_b
    move-object v6, v2

    move-object v8, v11

    const/4 v11, 0x0

    move-object v7, v1

    move-object v5, v15

    .line 33
    invoke-direct/range {v5 .. v14}, Lads_mobile_sdk/zt;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;)V

    .line 34
    invoke-direct {v0, v5}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 35
    :cond_c
    new-instance v0, Lads_mobile_sdk/m01;

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error building request URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 37
    sget-object v2, Lads_mobile_sdk/kk1;->b:Lads_mobile_sdk/kk1;

    .line 38
    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    return-object v0

    .line 39
    :cond_d
    instance-of v1, v0, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_e

    return-object v0

    :cond_e
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method
