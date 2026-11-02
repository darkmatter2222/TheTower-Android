.class public abstract Lads_mobile_sdk/wc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/gson/JsonObject;)Lads_mobile_sdk/xc;
    .locals 9

    .line 1
    const-string v0, "key"

    const-string v1, "<this>"

    const-string v2, "json"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v2, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    .line 3
    :try_start_0
    new-instance v3, Lads_mobile_sdk/xc;

    .line 4
    sget-object v2, Lads_mobile_sdk/zc;->b:Lads_mobile_sdk/yc;

    sget-object v4, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    const-string v4, "type_num"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v4

    .line 6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lads_mobile_sdk/yc;->a(I)Lads_mobile_sdk/zc;

    move-result-object v4

    .line 7
    const-string v2, "value"

    .line 8
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v5

    .line 155
    const-string v2, "precision_num"

    .line 156
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    const/4 v7, 0x1

    if-eq v2, v7, :cond_2

    const/4 v7, 0x2

    if-eq v2, v7, :cond_1

    const/4 v7, 0x3

    if-eq v2, v7, :cond_0

    .line 299
    sget-object v2, Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;->UNKNOWN:Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;

    goto :goto_0

    .line 300
    :cond_0
    sget-object v2, Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;->PRECISE:Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;

    goto :goto_0

    .line 301
    :cond_1
    sget-object v2, Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;->PUBLISHER_PROVIDED:Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;

    goto :goto_0

    .line 302
    :cond_2
    sget-object v2, Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;->ESTIMATED:Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;

    :goto_0
    move-object v7, v2

    .line 307
    const-string v2, "currency"

    .line 308
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    invoke-virtual {p0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    const-string p0, "getAsString(...)"

    invoke-static {v8, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 457
    invoke-direct/range {v3 .. v8}, Lads_mobile_sdk/xc;-><init>(Lads_mobile_sdk/zc;JLcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 458
    const-string v0, "t"

    invoke-static {p0, v0, p0}, Lads_mobile_sdk/a2;->a(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lads_mobile_sdk/uj2;

    move-result-object v0

    .line 459
    iget-object v0, v0, Lads_mobile_sdk/uj2;->s:Ljava/util/List;

    .line 460
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Lcom/google/gson/JsonObject;)Lads_mobile_sdk/xc;
    .locals 10

    .line 1
    const-string v0, "json"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    .line 3
    const-string v0, "type"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    const-string v2, "precision"

    .line 5
    invoke-static {p0, v2, v1}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    const-string v3, "currency"

    .line 7
    invoke-static {p0, v3, v1}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 8
    const-string v1, "value"

    invoke-static {p0, v1}, Lads_mobile_sdk/ds1;->g(Lcom/google/gson/JsonObject;Ljava/lang/String;)J

    move-result-wide v3

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p0

    const v1, 0x10576

    if-eq p0, v1, :cond_4

    const v1, 0x10580

    if-eq p0, v1, :cond_2

    const v1, 0x506e232d

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "ONE_PIXEL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/16 p0, 0x3e8

    int-to-long v0, p0

    .line 17
    div-long/2addr v3, v0

    .line 18
    sget-object p0, Lads_mobile_sdk/zc;->g:Lads_mobile_sdk/zc;

    goto :goto_1

    .line 19
    :cond_2
    const-string p0, "CPM"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    .line 20
    :cond_3
    sget-object p0, Lads_mobile_sdk/zc;->e:Lads_mobile_sdk/zc;

    goto :goto_1

    .line 21
    :cond_4
    const-string p0, "CPC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 30
    :goto_0
    sget-object p0, Lads_mobile_sdk/zc;->d:Lads_mobile_sdk/zc;

    :goto_1
    move-object v5, p0

    move-wide v6, v3

    goto :goto_2

    .line 31
    :cond_5
    sget-object p0, Lads_mobile_sdk/zc;->f:Lads_mobile_sdk/zc;

    goto :goto_1

    .line 42
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result p0

    const v0, -0x7f136fe4

    if-eq p0, v0, :cond_a

    const v0, 0x17cbce3b

    if-eq p0, v0, :cond_8

    const v0, 0x4bc5cce6    # 2.5926092E7f

    if-eq p0, v0, :cond_6

    goto :goto_3

    :cond_6
    const-string p0, "PUBLISHER_PROVIDED"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_3

    .line 44
    :cond_7
    sget-object p0, Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;->PUBLISHER_PROVIDED:Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;

    goto :goto_4

    .line 45
    :cond_8
    const-string p0, "PRECISE"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_3

    .line 48
    :cond_9
    sget-object p0, Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;->PRECISE:Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;

    goto :goto_4

    .line 49
    :cond_a
    const-string p0, "ESTIMATED"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    .line 53
    :goto_3
    sget-object p0, Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;->UNKNOWN:Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;

    :goto_4
    move-object v8, p0

    goto :goto_5

    .line 54
    :cond_b
    sget-object p0, Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;->ESTIMATED:Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;

    goto :goto_4

    .line 60
    :goto_5
    new-instance v4, Lads_mobile_sdk/xc;

    invoke-direct/range {v4 .. v9}, Lads_mobile_sdk/xc;-><init>(Lads_mobile_sdk/zc;JLcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;Ljava/lang/String;)V

    return-object v4
.end method
