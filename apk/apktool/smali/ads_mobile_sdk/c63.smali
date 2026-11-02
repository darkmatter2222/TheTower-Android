.class public final Lads_mobile_sdk/c63;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/ex0;

.field public final b:Lads_mobile_sdk/ac2;

.field public final c:Lads_mobile_sdk/tx;

.field public final d:Lkotlinx/coroutines/CoroutineScope;

.field public final e:Lads_mobile_sdk/e01;

.field public final f:Lads_mobile_sdk/vw3;

.field public final g:Lads_mobile_sdk/uv;

.field public final h:Lads_mobile_sdk/g83;

.field public final i:Lads_mobile_sdk/ur3;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ex0;Lads_mobile_sdk/ac2;Lads_mobile_sdk/tx;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/e01;Lads_mobile_sdk/vw3;Lads_mobile_sdk/uv;Lads_mobile_sdk/g83;Lads_mobile_sdk/ur3;)V
    .locals 1

    .line 1
    const-string v0, "flags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineDatabase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpClient"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "urlPinger"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chromeVariationsProvider"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lads_mobile_sdk/c63;->a:Lads_mobile_sdk/ex0;

    .line 42
    iput-object p2, p0, Lads_mobile_sdk/c63;->b:Lads_mobile_sdk/ac2;

    .line 43
    iput-object p3, p0, Lads_mobile_sdk/c63;->c:Lads_mobile_sdk/tx;

    .line 44
    iput-object p4, p0, Lads_mobile_sdk/c63;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 45
    iput-object p5, p0, Lads_mobile_sdk/c63;->e:Lads_mobile_sdk/e01;

    .line 46
    iput-object p6, p0, Lads_mobile_sdk/c63;->f:Lads_mobile_sdk/vw3;

    .line 47
    iput-object p7, p0, Lads_mobile_sdk/c63;->g:Lads_mobile_sdk/uv;

    .line 48
    iput-object p8, p0, Lads_mobile_sdk/c63;->h:Lads_mobile_sdk/g83;

    .line 49
    iput-object p9, p0, Lads_mobile_sdk/c63;->i:Lads_mobile_sdk/ur3;

    return-void
.end method

.method public static final synthetic a(Lads_mobile_sdk/c63;)Lads_mobile_sdk/e01;
    .locals 0

    .line 38
    iget-object p0, p0, Lads_mobile_sdk/c63;->e:Lads_mobile_sdk/e01;

    return-object p0
.end method

.method public static final synthetic a(Lads_mobile_sdk/c63;Landroid/net/Uri;Lads_mobile_sdk/q01;Lads_mobile_sdk/v3;Lads_mobile_sdk/ks3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 76
    invoke-virtual/range {p0 .. p5}, Lads_mobile_sdk/c63;->a(Landroid/net/Uri;Lads_mobile_sdk/q01;Lads_mobile_sdk/v3;Lads_mobile_sdk/ks3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lads_mobile_sdk/c63;Landroid/net/Uri;)Ljava/util/Map;
    .locals 0

    .line 78
    iget-object p0, p0, Lads_mobile_sdk/c63;->g:Lads_mobile_sdk/uv;

    .line 79
    invoke-virtual {p0, p1}, Lads_mobile_sdk/uv;->a(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lads_mobile_sdk/c63;Ljava/util/List;Lads_mobile_sdk/i2;Lads_mobile_sdk/zy;Lads_mobile_sdk/v3;Ljava/lang/Boolean;I)V
    .locals 7

    and-int/lit8 v0, p6, 0x8

    if-eqz v0, :cond_0

    const/4 p4, 0x0

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    .line 2190
    sget-object p5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_1
    move-object v5, p5

    .line 2191
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2192
    const-string p4, "uris"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "adConfiguration"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "commonConfiguration"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2278
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    move-object v1, p4

    check-cast v1, Landroid/net/Uri;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    .line 2279
    invoke-virtual/range {v0 .. v6}, Lads_mobile_sdk/c63;->a(Landroid/net/Uri;Lads_mobile_sdk/i2;Lads_mobile_sdk/zy;Lads_mobile_sdk/v3;Ljava/lang/Boolean;Lads_mobile_sdk/ks3;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/v3;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 80
    instance-of v0, p3, Lads_mobile_sdk/w53;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/w53;

    iget v1, v0, Lads_mobile_sdk/w53;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/w53;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/w53;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/w53;-><init>(Lads_mobile_sdk/c63;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lads_mobile_sdk/w53;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 81
    iget v2, v0, Lads_mobile_sdk/w53;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p2, v0, Lads_mobile_sdk/w53;->b:Ljava/lang/String;

    iget-object p1, v0, Lads_mobile_sdk/w53;->a:Lads_mobile_sdk/c63;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p3

    goto :goto_2

    :catch_1
    move-exception p3

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-eqz p2, :cond_5

    .line 85
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_3

    goto/16 :goto_4

    .line 90
    :cond_3
    :try_start_1
    invoke-static {p2}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p3

    .line 91
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p3}, Lads_mobile_sdk/wc;->b(Lcom/google/gson/JsonObject;)Lads_mobile_sdk/xc;

    move-result-object p3

    .line 94
    new-instance v2, Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;

    iget-object v4, p3, Lads_mobile_sdk/xc;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;

    iget-wide v5, p3, Lads_mobile_sdk/xc;->b:J

    iget-object p3, p3, Lads_mobile_sdk/xc;->d:Ljava/lang/String;

    invoke-direct {v2, v4, v5, v6, p3}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;JLjava/lang/String;)V

    .line 95
    iput-object p0, v0, Lads_mobile_sdk/w53;->a:Lads_mobile_sdk/c63;

    iput-object p2, v0, Lads_mobile_sdk/w53;->b:Ljava/lang/String;

    iput v3, v0, Lads_mobile_sdk/w53;->e:I

    invoke-virtual {p1, v2, v0}, Lads_mobile_sdk/v3;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;Lads_mobile_sdk/w53;)Lkotlin/Unit;

    move-result-object p1
    :try_end_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-ne p1, v1, :cond_4

    return-object v1

    .line 118
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catch_2
    move-exception p3

    move-object p1, p0

    .line 119
    :goto_2
    new-instance v0, Lads_mobile_sdk/m01;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed while emitting ad paid event for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-static {v0}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V

    .line 123
    iget-object p1, p1, Lads_mobile_sdk/c63;->i:Lads_mobile_sdk/ur3;

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 126
    check-cast p1, Lads_mobile_sdk/as3;

    invoke-virtual {p1, p2, p3}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catch_3
    move-exception p3

    move-object p1, p0

    .line 131
    :goto_3
    new-instance v0, Lads_mobile_sdk/m01;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to parse ad event value from JSON: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-static {v0}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V

    .line 135
    iget-object p1, p1, Lads_mobile_sdk/c63;->i:Lads_mobile_sdk/ur3;

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 138
    check-cast p1, Lads_mobile_sdk/as3;

    invoke-virtual {p1, p2, p3}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 143
    :cond_5
    :goto_4
    new-instance p1, Lads_mobile_sdk/m01;

    const-string p2, "AdEventValueString is null or empty"

    invoke-direct {p1, p2}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V

    .line 144
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Landroid/net/Uri;Lads_mobile_sdk/ha2;IJLjava/lang/String;Ljava/util/Map;Lads_mobile_sdk/v3;Lads_mobile_sdk/i2;Ljava/lang/Boolean;Lads_mobile_sdk/ks3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 33

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    move-object/from16 v4, p7

    move-object/from16 v0, p12

    const-string v5, "Suppressed retry for non-retryable error on URL: "

    .line 145
    instance-of v6, v0, Lads_mobile_sdk/x53;

    if-eqz v6, :cond_0

    move-object v6, v0

    check-cast v6, Lads_mobile_sdk/x53;

    iget v7, v6, Lads_mobile_sdk/x53;->n:I

    const/high16 v8, -0x80000000

    and-int v9, v7, v8

    if-eqz v9, :cond_0

    sub-int/2addr v7, v8

    iput v7, v6, Lads_mobile_sdk/x53;->n:I

    goto :goto_0

    :cond_0
    new-instance v6, Lads_mobile_sdk/x53;

    invoke-direct {v6, v1, v0}, Lads_mobile_sdk/x53;-><init>(Lads_mobile_sdk/c63;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v6, Lads_mobile_sdk/x53;->l:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    .line 297
    iget v8, v6, Lads_mobile_sdk/x53;->n:I

    const-string v9, ": "

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v8, :cond_3

    if-eq v8, v11, :cond_2

    if-ne v8, v10, :cond_1

    iget-wide v2, v6, Lads_mobile_sdk/x53;->k:J

    iget v4, v6, Lads_mobile_sdk/x53;->j:I

    iget-object v5, v6, Lads_mobile_sdk/x53;->i:Lads_mobile_sdk/ks3;

    iget-object v7, v6, Lads_mobile_sdk/x53;->h:Ljava/lang/Boolean;

    iget-object v8, v6, Lads_mobile_sdk/x53;->g:Lads_mobile_sdk/i2;

    iget-object v10, v6, Lads_mobile_sdk/x53;->f:Lads_mobile_sdk/v3;

    iget-object v11, v6, Lads_mobile_sdk/x53;->e:Ljava/util/Map;

    iget-object v12, v6, Lads_mobile_sdk/x53;->d:Ljava/lang/String;

    iget-object v13, v6, Lads_mobile_sdk/x53;->c:Lads_mobile_sdk/ha2;

    iget-object v14, v6, Lads_mobile_sdk/x53;->b:Landroid/net/Uri;

    iget-object v6, v6, Lads_mobile_sdk/x53;->a:Lads_mobile_sdk/c63;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_12

    :catch_0
    move-exception v0

    move-object/from16 v29, v9

    move-object v2, v14

    goto/16 :goto_f

    :catch_1
    move-exception v0

    move-object/from16 v28, v5

    move-object v15, v7

    move-object v1, v8

    move-object v5, v9

    move-object/from16 v25, v10

    move-object v10, v12

    move-wide/from16 v31, v2

    move v3, v4

    move-object v4, v11

    move-object v11, v13

    move-object v2, v14

    move-wide/from16 v12, v31

    goto/16 :goto_11

    .line 298
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v2, v6, Lads_mobile_sdk/x53;->k:J

    iget v4, v6, Lads_mobile_sdk/x53;->j:I

    iget-object v8, v6, Lads_mobile_sdk/x53;->i:Lads_mobile_sdk/ks3;

    iget-object v12, v6, Lads_mobile_sdk/x53;->h:Ljava/lang/Boolean;

    iget-object v13, v6, Lads_mobile_sdk/x53;->g:Lads_mobile_sdk/i2;

    iget-object v14, v6, Lads_mobile_sdk/x53;->f:Lads_mobile_sdk/v3;

    iget-object v15, v6, Lads_mobile_sdk/x53;->e:Ljava/util/Map;

    iget-object v10, v6, Lads_mobile_sdk/x53;->d:Ljava/lang/String;

    iget-object v11, v6, Lads_mobile_sdk/x53;->c:Lads_mobile_sdk/ha2;

    move-wide/from16 p1, v2

    iget-object v2, v6, Lads_mobile_sdk/x53;->b:Landroid/net/Uri;

    iget-object v3, v6, Lads_mobile_sdk/x53;->a:Lads_mobile_sdk/c63;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v29, v9

    move-object v1, v13

    move-object v9, v3

    move v3, v4

    move-object v4, v15

    move-object v15, v12

    move-wide/from16 v12, p1

    goto/16 :goto_1

    :catch_2
    move-exception v0

    move-object/from16 v29, v9

    goto/16 :goto_f

    :catch_3
    move-exception v0

    move-object v6, v3

    move v3, v4

    move-object/from16 v28, v8

    move-object v5, v9

    move-object v1, v13

    move-object/from16 v25, v14

    move-object v4, v15

    move-object v15, v12

    move-wide/from16 v12, p1

    goto/16 :goto_11

    .line 299
    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 312
    :try_start_2
    invoke-virtual {v1, v2, v3}, Lads_mobile_sdk/c63;->a(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1a

    .line 313
    :try_start_3
    iget-object v8, v1, Lads_mobile_sdk/c63;->e:Lads_mobile_sdk/e01;

    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, v6, Lads_mobile_sdk/x53;->a:Lads_mobile_sdk/c63;

    iput-object v2, v6, Lads_mobile_sdk/x53;->b:Landroid/net/Uri;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_19
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1a

    move-object/from16 v11, p2

    :try_start_4
    iput-object v11, v6, Lads_mobile_sdk/x53;->c:Lads_mobile_sdk/ha2;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_18
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1a

    move-object/from16 v12, p6

    :try_start_5
    iput-object v12, v6, Lads_mobile_sdk/x53;->d:Ljava/lang/String;

    iput-object v4, v6, Lads_mobile_sdk/x53;->e:Ljava/util/Map;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_17
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1a

    move-object/from16 v13, p8

    :try_start_6
    iput-object v13, v6, Lads_mobile_sdk/x53;->f:Lads_mobile_sdk/v3;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_16
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1a

    move-object/from16 v14, p9

    :try_start_7
    iput-object v14, v6, Lads_mobile_sdk/x53;->g:Lads_mobile_sdk/i2;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_15
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1a

    move-object/from16 v15, p10

    :try_start_8
    iput-object v15, v6, Lads_mobile_sdk/x53;->h:Ljava/lang/Boolean;

    move-object/from16 v1, p11

    iput-object v1, v6, Lads_mobile_sdk/x53;->i:Lads_mobile_sdk/ks3;

    iput v3, v6, Lads_mobile_sdk/x53;->j:I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1a

    move-wide/from16 v1, p4

    :try_start_9
    iput-wide v1, v6, Lads_mobile_sdk/x53;->k:J

    const/4 v0, 0x1

    iput v0, v6, Lads_mobile_sdk/x53;->n:I

    const/16 v0, 0x1a

    invoke-static {v8, v10, v4, v6, v0}, Lads_mobile_sdk/e01;->a(Lads_mobile_sdk/e01;Ljava/net/URL;Ljava/util/Map;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_13
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1a

    if-ne v0, v7, :cond_4

    move-object v1, v7

    goto/16 :goto_2

    :cond_4
    move-object/from16 v8, p11

    move-object/from16 v29, v9

    move-object v10, v12

    move-object/from16 v9, p0

    move-wide/from16 v31, v1

    move-object/from16 v2, p1

    move-object v1, v14

    move-object v14, v13

    move-wide/from16 v12, v31

    .line 314
    :goto_1
    :try_start_a
    check-cast v0, Lads_mobile_sdk/v01;

    move-object/from16 v30, v5

    .line 329
    instance-of v5, v0, Lads_mobile_sdk/q01;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_12
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_11

    if-eqz v5, :cond_7

    if-eqz v14, :cond_6

    const/16 v16, 0x1

    .line 332
    :try_start_b
    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 333
    iget-object v5, v9, Lads_mobile_sdk/c63;->a:Lads_mobile_sdk/ex0;

    .line 334
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 p1, v0

    .line 335
    const-string v0, "gads:ad_events_for_scar:enabled"

    move-object/from16 v16, v7

    .line 336
    const-string v7, "key"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_11

    move-wide/from16 v21, v12

    :try_start_c
    sget-object v12, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v5, v0, v7, v12}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 353
    iget-boolean v0, v1, Lads_mobile_sdk/i2;->B0:Z

    if-eqz v0, :cond_5

    .line 354
    move-object/from16 v0, p1

    check-cast v0, Lads_mobile_sdk/q01;

    iput-object v9, v6, Lads_mobile_sdk/x53;->a:Lads_mobile_sdk/c63;

    iput-object v2, v6, Lads_mobile_sdk/x53;->b:Landroid/net/Uri;

    iput-object v11, v6, Lads_mobile_sdk/x53;->c:Lads_mobile_sdk/ha2;

    iput-object v10, v6, Lads_mobile_sdk/x53;->d:Ljava/lang/String;

    iput-object v4, v6, Lads_mobile_sdk/x53;->e:Ljava/util/Map;

    iput-object v14, v6, Lads_mobile_sdk/x53;->f:Lads_mobile_sdk/v3;

    iput-object v1, v6, Lads_mobile_sdk/x53;->g:Lads_mobile_sdk/i2;

    iput-object v15, v6, Lads_mobile_sdk/x53;->h:Ljava/lang/Boolean;

    iput-object v8, v6, Lads_mobile_sdk/x53;->i:Lads_mobile_sdk/ks3;

    iput v3, v6, Lads_mobile_sdk/x53;->j:I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_11

    move-wide/from16 v12, v21

    :try_start_d
    iput-wide v12, v6, Lads_mobile_sdk/x53;->k:J

    const/4 v5, 0x2

    iput v5, v6, Lads_mobile_sdk/x53;->n:I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_11

    move-object/from16 p3, v0

    move-object/from16 p2, v2

    move-object/from16 p6, v6

    move-object/from16 p5, v8

    move-object/from16 p1, v9

    move-object/from16 p4, v14

    :try_start_e
    invoke-virtual/range {p1 .. p6}, Lads_mobile_sdk/c63;->a(Landroid/net/Uri;Lads_mobile_sdk/q01;Lads_mobile_sdk/v3;Lads_mobile_sdk/ks3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_a

    :goto_2
    return-object v1

    :catch_4
    move-exception v0

    move-object/from16 v18, p2

    goto/16 :goto_6

    :catch_5
    move-exception v0

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    move-object/from16 v25, p4

    move-object/from16 v28, p5

    goto/16 :goto_7

    :cond_5
    move-object/from16 v18, v2

    move-object/from16 v28, v8

    move-object/from16 v17, v9

    move-object/from16 v25, v14

    move-wide/from16 v12, v21

    goto :goto_3

    :catch_6
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v28, v8

    move-object/from16 v17, v9

    move-object/from16 v25, v14

    move-wide/from16 v12, v21

    goto/16 :goto_8

    :catch_7
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v28, v8

    move-object/from16 v17, v9

    move-object/from16 v25, v14

    goto/16 :goto_8

    :cond_6
    move-object/from16 p1, v0

    move-object/from16 v18, v2

    move-object/from16 v28, v8

    move-object/from16 v17, v9

    move-object/from16 v25, v14

    .line 356
    :goto_3
    :try_start_f
    move-object/from16 v0, p1

    check-cast v0, Lads_mobile_sdk/q01;

    invoke-virtual {v0}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/h81;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    goto/16 :goto_12

    :catch_8
    move-exception v0

    goto/16 :goto_7

    :cond_7
    move-object/from16 v18, v2

    move-object/from16 v28, v8

    move-object/from16 v17, v9

    move-object/from16 v25, v14

    .line 359
    :try_start_10
    instance-of v2, v0, Lads_mobile_sdk/k01;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_f

    if-eqz v2, :cond_8

    :try_start_11
    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/k01;

    invoke-virtual {v2}, Lads_mobile_sdk/k01;->c()I

    move-result v2
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_f

    const/16 v5, 0x1f6

    if-ne v2, v5, :cond_8

    move-object/from16 v26, v1

    move/from16 v20, v3

    move-object/from16 v24, v4

    move-object/from16 v23, v10

    move-object/from16 v19, v11

    move-wide/from16 v21, v12

    move-object/from16 v27, v15

    .line 361
    :try_start_12
    invoke-virtual/range {v17 .. v28}, Lads_mobile_sdk/c63;->a(Landroid/net/Uri;Lads_mobile_sdk/ha2;IJLjava/lang/String;Ljava/util/Map;Lads_mobile_sdk/v3;Lads_mobile_sdk/i2;Ljava/lang/Boolean;Lads_mobile_sdk/ks3;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_f

    goto/16 :goto_12

    :catch_9
    move-exception v0

    move-object/from16 v2, v18

    goto :goto_4

    :catch_a
    move-exception v0

    move-object/from16 v26, v1

    move/from16 v20, v3

    move-object/from16 v24, v4

    move-object/from16 v23, v10

    move-object/from16 v19, v11

    move-wide/from16 v21, v12

    move-object/from16 v27, v15

    move-object/from16 v2, v18

    goto/16 :goto_8

    :cond_8
    move-object/from16 v26, v1

    move/from16 v20, v3

    move-object/from16 v24, v4

    move-object/from16 v23, v10

    move-object/from16 v19, v11

    move-wide/from16 v21, v12

    move-object/from16 v27, v15

    move-object/from16 v2, v18

    .line 373
    :try_start_13
    instance-of v1, v0, Lads_mobile_sdk/p01;

    if-nez v1, :cond_a

    .line 375
    instance-of v1, v0, Lads_mobile_sdk/o01;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_e
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_11

    if-eqz v1, :cond_9

    .line 377
    :try_start_14
    sget-object v0, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_b

    goto/16 :goto_12

    :catch_b
    move-exception v0

    goto/16 :goto_f

    :catch_c
    move-exception v0

    goto :goto_4

    .line 378
    :cond_9
    :try_start_15
    instance-of v0, v0, Lads_mobile_sdk/k01;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_e
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_11

    if-nez v0, :cond_a

    move-object/from16 v18, v2

    .line 379
    :try_start_16
    invoke-virtual/range {v17 .. v28}, Lads_mobile_sdk/c63;->a(Landroid/net/Uri;Lads_mobile_sdk/ha2;IJLjava/lang/String;Ljava/util/Map;Lads_mobile_sdk/v3;Lads_mobile_sdk/i2;Ljava/lang/Boolean;Lads_mobile_sdk/ks3;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_f

    goto/16 :goto_12

    :catch_d
    move-exception v0

    move-object/from16 v6, v17

    move-object/from16 v2, v18

    goto :goto_5

    :catch_e
    move-exception v0

    move-object/from16 v18, v2

    :goto_4
    move-object/from16 v6, v17

    :goto_5
    move-object/from16 v11, v19

    move/from16 v3, v20

    move-wide/from16 v12, v21

    move-object/from16 v10, v23

    move-object/from16 v4, v24

    move-object/from16 v1, v26

    move-object/from16 v15, v27

    goto :goto_9

    :catch_f
    move-exception v0

    :goto_6
    move-object/from16 v2, v18

    goto/16 :goto_f

    :catch_10
    move-exception v0

    move-object/from16 v26, v1

    move/from16 v20, v3

    move-object/from16 v24, v4

    move-object/from16 v23, v10

    move-object/from16 v19, v11

    move-wide/from16 v21, v12

    move-object/from16 v27, v15

    :goto_7
    move-object/from16 v6, v17

    move-object/from16 v2, v18

    goto :goto_9

    :catch_11
    move-exception v0

    move-object/from16 v18, v2

    goto/16 :goto_f

    :catch_12
    move-exception v0

    move-object/from16 v26, v1

    move-object/from16 v18, v2

    move/from16 v20, v3

    move-object/from16 v24, v4

    move-object/from16 v28, v8

    move-object/from16 v17, v9

    move-object/from16 v23, v10

    move-object/from16 v19, v11

    move-wide/from16 v21, v12

    move-object/from16 v25, v14

    move-object/from16 v27, v15

    :goto_8
    move-object/from16 v6, v17

    :goto_9
    move-object/from16 v5, v29

    goto/16 :goto_11

    :catch_13
    move-exception v0

    goto :goto_e

    :catch_14
    move-exception v0

    move-wide/from16 v1, p4

    goto :goto_e

    :catch_15
    move-exception v0

    move-wide/from16 v1, p4

    goto :goto_d

    :catch_16
    move-exception v0

    move-wide/from16 v1, p4

    goto :goto_c

    :catch_17
    move-exception v0

    move-wide/from16 v1, p4

    goto :goto_b

    :catch_18
    move-exception v0

    goto :goto_a

    :catch_19
    move-exception v0

    move-object/from16 v11, p2

    :goto_a
    move-wide/from16 v1, p4

    move-object/from16 v12, p6

    :goto_b
    move-object/from16 v13, p8

    :goto_c
    move-object/from16 v14, p9

    :goto_d
    move-object/from16 v15, p10

    :goto_e
    move-object/from16 v29, v9

    move-object/from16 v6, p0

    move-object/from16 v28, p11

    move-object v10, v12

    move-object/from16 v25, v13

    move-object/from16 v5, v29

    goto :goto_10

    :catch_1a
    move-exception v0

    move-object/from16 v29, v9

    move-object/from16 v2, p1

    .line 407
    :goto_f
    sget-object v1, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Error while pinging URL: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v5, v29

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;)V

    goto :goto_12

    :catch_1b
    move-exception v0

    move-object/from16 v11, p2

    move-wide/from16 v1, p4

    move-object/from16 v12, p6

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    move-object v5, v9

    move-object/from16 v6, p0

    move-object/from16 v28, p11

    move-object v10, v12

    move-object/from16 v25, v13

    :goto_10
    move-wide v12, v1

    move-object v1, v14

    move-object/from16 v2, p1

    .line 408
    :goto_11
    sget-object v7, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "IOException while pinging URL: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;)V

    move-object/from16 p10, v1

    move-object/from16 p2, v2

    move/from16 p4, v3

    move-object/from16 p8, v4

    move-object/from16 p1, v6

    move-object/from16 p7, v10

    move-object/from16 p3, v11

    move-wide/from16 p5, v12

    move-object/from16 p11, v15

    move-object/from16 p9, v25

    move-object/from16 p12, v28

    .line 409
    invoke-virtual/range {p1 .. p12}, Lads_mobile_sdk/c63;->a(Landroid/net/Uri;Lads_mobile_sdk/ha2;IJLjava/lang/String;Ljava/util/Map;Lads_mobile_sdk/v3;Lads_mobile_sdk/i2;Ljava/lang/Boolean;Lads_mobile_sdk/ks3;)V

    .line 424
    :cond_a
    :goto_12
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final a(Landroid/net/Uri;Lads_mobile_sdk/q01;Lads_mobile_sdk/v3;Lads_mobile_sdk/ks3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    .line 425
    instance-of v5, v4, Lads_mobile_sdk/y53;

    if-eqz v5, :cond_0

    move-object v5, v4

    check-cast v5, Lads_mobile_sdk/y53;

    iget v6, v5, Lads_mobile_sdk/y53;->f:I

    const/high16 v7, -0x80000000

    and-int v8, v6, v7

    if-eqz v8, :cond_0

    sub-int/2addr v6, v7

    iput v6, v5, Lads_mobile_sdk/y53;->f:I

    goto :goto_0

    :cond_0
    new-instance v5, Lads_mobile_sdk/y53;

    invoke-direct {v5, v1, v4}, Lads_mobile_sdk/y53;-><init>(Lads_mobile_sdk/c63;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v4, v5, Lads_mobile_sdk/y53;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v6

    .line 714
    iget v7, v5, Lads_mobile_sdk/y53;->f:I

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v7, :cond_3

    if-eq v7, v9, :cond_2

    if-ne v7, v8, :cond_1

    iget-object v2, v5, Lads_mobile_sdk/y53;->c:Lads_mobile_sdk/rr3;

    iget-object v3, v5, Lads_mobile_sdk/y53;->b:Lads_mobile_sdk/rr3;

    iget-object v0, v5, Lads_mobile_sdk/y53;->a:Lads_mobile_sdk/q01;

    :try_start_0
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    .line 715
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v2, v5, Lads_mobile_sdk/y53;->c:Lads_mobile_sdk/rr3;

    iget-object v3, v5, Lads_mobile_sdk/y53;->b:Lads_mobile_sdk/rr3;

    iget-object v0, v5, Lads_mobile_sdk/y53;->a:Lads_mobile_sdk/q01;

    :try_start_1
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    goto/16 :goto_4

    .line 716
    :cond_3
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 722
    iget-object v4, v1, Lads_mobile_sdk/c63;->h:Lads_mobile_sdk/g83;

    .line 723
    sget-object v7, Lads_mobile_sdk/s11;->I0:Lads_mobile_sdk/s11;

    .line 724
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v11

    if-nez p4, :cond_4

    .line 725
    invoke-static {}, Lads_mobile_sdk/js3;->a()Lads_mobile_sdk/ks3;

    move-result-object v12

    goto :goto_1

    :cond_4
    move-object/from16 v12, p4

    .line 845
    :goto_1
    invoke-static {}, Lads_mobile_sdk/hs3;->c()Lads_mobile_sdk/rr3;

    move-result-object v13

    const-string v14, "X-Ad-Event-Value"

    const-string v15, "X-Afma-Ad-Event-Value"

    const-string v8, "Untrusted domain for ad event value: "

    if-nez v13, :cond_e

    .line 846
    invoke-static {v4, v7, v11, v12}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v4

    .line 847
    :try_start_2
    invoke-virtual/range {p0 .. p1}, Lads_mobile_sdk/c63;->a(Landroid/net/Uri;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 848
    new-instance v3, Lads_mobile_sdk/m01;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V

    .line 849
    invoke-virtual {v2}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/h81;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, v4

    move-object v3, v2

    goto :goto_3

    .line 854
    :cond_5
    invoke-virtual {v2}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/h81;

    invoke-virtual {v0}, Lads_mobile_sdk/h81;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_6

    .line 855
    invoke-virtual {v2}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/h81;

    invoke-virtual {v0}, Lads_mobile_sdk/h81;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 856
    :cond_6
    iput-object v2, v5, Lads_mobile_sdk/y53;->a:Lads_mobile_sdk/q01;

    iput-object v4, v5, Lads_mobile_sdk/y53;->b:Lads_mobile_sdk/rr3;

    iput-object v4, v5, Lads_mobile_sdk/y53;->c:Lads_mobile_sdk/rr3;

    iput v9, v5, Lads_mobile_sdk/y53;->f:I

    invoke-virtual {v1, v3, v0, v5}, Lads_mobile_sdk/c63;->a(Lads_mobile_sdk/v3;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v0, v6, :cond_7

    goto/16 :goto_6

    :cond_7
    move-object v0, v2

    move-object v2, v4

    move-object v3, v2

    .line 861
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/h81;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 862
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 973
    instance-of v4, v0, Lads_mobile_sdk/i01;

    if-eqz v4, :cond_8

    .line 974
    check-cast v0, Lads_mobile_sdk/i01;

    invoke-static {v0}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 975
    :cond_8
    invoke-static {v2, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    :goto_4
    move-object v4, v3

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v2, v4

    .line 983
    :goto_5
    :try_start_4
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 987
    instance-of v3, v0, Lads_mobile_sdk/v24;

    if-nez v3, :cond_d

    .line 989
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_9

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_9

    .line 995
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 1001
    :cond_9
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_c

    .line 1002
    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_b

    .line 1003
    instance-of v3, v0, Lads_mobile_sdk/w01;

    if-eqz v3, :cond_a

    throw v0

    .line 1004
    :cond_a
    new-instance v3, Lads_mobile_sdk/b01;

    invoke-direct {v3, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1005
    :cond_b
    new-instance v3, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v3

    .line 1006
    :cond_c
    new-instance v3, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v3

    .line 1007
    :cond_d
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception v0

    move-object v3, v0

    .line 1008
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    move-exception v0

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 1042
    :cond_e
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {v7, v4, v9}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v4

    .line 1043
    :try_start_6
    invoke-virtual/range {p0 .. p1}, Lads_mobile_sdk/c63;->a(Landroid/net/Uri;)Z

    move-result v7

    if-nez v7, :cond_f

    .line 1044
    new-instance v3, Lads_mobile_sdk/m01;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V

    .line 1045
    invoke-virtual {v2}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/h81;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, v4

    move-object v3, v2

    goto :goto_8

    .line 1050
    :cond_f
    invoke-virtual {v2}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/h81;

    invoke-virtual {v0}, Lads_mobile_sdk/h81;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_10

    .line 1051
    invoke-virtual {v2}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/h81;

    invoke-virtual {v0}, Lads_mobile_sdk/h81;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1052
    :cond_10
    iput-object v2, v5, Lads_mobile_sdk/y53;->a:Lads_mobile_sdk/q01;

    iput-object v4, v5, Lads_mobile_sdk/y53;->b:Lads_mobile_sdk/rr3;

    iput-object v4, v5, Lads_mobile_sdk/y53;->c:Lads_mobile_sdk/rr3;

    const/4 v7, 0x2

    iput v7, v5, Lads_mobile_sdk/y53;->f:I

    invoke-virtual {v1, v3, v0, v5}, Lads_mobile_sdk/c63;->a(Lads_mobile_sdk/v3;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-ne v0, v6, :cond_11

    :goto_6
    return-object v6

    :cond_11
    move-object v0, v2

    move-object v2, v4

    move-object v3, v2

    .line 1057
    :goto_7
    :try_start_7
    invoke-virtual {v0}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/h81;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1058
    :goto_8
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1206
    instance-of v4, v0, Lads_mobile_sdk/i01;

    if-eqz v4, :cond_12

    .line 1207
    check-cast v0, Lads_mobile_sdk/i01;

    invoke-static {v0}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1208
    :cond_12
    invoke-static {v2, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1209
    :goto_9
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :goto_a
    move-object v4, v3

    goto :goto_b

    :catchall_5
    move-exception v0

    move-object v2, v4

    .line 1361
    :goto_b
    :try_start_8
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1365
    instance-of v3, v0, Lads_mobile_sdk/v24;

    if-nez v3, :cond_17

    .line 1367
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_13

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_13

    .line 1373
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 1379
    :cond_13
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_16

    .line 1380
    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_15

    .line 1381
    instance-of v3, v0, Lads_mobile_sdk/w01;

    if-eqz v3, :cond_14

    throw v0

    .line 1382
    :cond_14
    new-instance v3, Lads_mobile_sdk/b01;

    invoke-direct {v3, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1383
    :cond_15
    new-instance v3, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v3

    .line 1384
    :cond_16
    new-instance v3, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v3

    .line 1385
    :cond_17
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :catchall_6
    move-exception v0

    move-object v3, v0

    .line 1386
    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :catchall_7
    move-exception v0

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final a(Landroid/net/Uri;I)Ljava/lang/String;
    .locals 2

    .line 2074
    iget-object v0, p0, Lads_mobile_sdk/c63;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Lads_mobile_sdk/ex0;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2076
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    .line 2078
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "pa"

    invoke-virtual {p1, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 2079
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "&"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2081
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2082
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final a(Landroid/net/Uri;Lads_mobile_sdk/ha2;IJLjava/lang/String;Ljava/util/Map;Lads_mobile_sdk/v3;Lads_mobile_sdk/i2;Ljava/lang/Boolean;Lads_mobile_sdk/ks3;)V
    .locals 15

    move-object/from16 v7, p2

    move/from16 v1, p3

    .line 3326
    iget v0, v7, Lads_mobile_sdk/ha2;->a:I

    if-lt v1, v0, :cond_1

    .line 3327
    iget-boolean v0, v7, Lads_mobile_sdk/ha2;->c:Z

    if-eqz v0, :cond_0

    .line 3328
    iget-object v0, p0, Lads_mobile_sdk/c63;->b:Lads_mobile_sdk/ac2;

    .line 3329
    new-instance v2, Lads_mobile_sdk/sb2;

    .line 3330
    iget-object v3, p0, Lads_mobile_sdk/c63;->c:Lads_mobile_sdk/tx;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3331
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v5, p1

    .line 3332
    invoke-virtual {p0, v5, v1}, Lads_mobile_sdk/c63;->a(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v1

    .line 3333
    sget-object v5, Lads_mobile_sdk/rb2;->a:Lads_mobile_sdk/rb2;

    move-object/from16 v11, p6

    .line 3334
    invoke-direct {v2, v3, v4, v11, v1}, Lads_mobile_sdk/sb2;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 3335
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3336
    const-string v1, "pingRecord"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3421
    new-instance v1, Lads_mobile_sdk/wb2;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lads_mobile_sdk/wb2;-><init>(Lads_mobile_sdk/ac2;Lads_mobile_sdk/sb2;Lkotlin/coroutines/Continuation;)V

    .line 3422
    iget-object v2, v0, Lads_mobile_sdk/ac2;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v4, Lads_mobile_sdk/xb2;

    invoke-direct {v4, v0, v1, v3}, Lads_mobile_sdk/xb2;-><init>(Lads_mobile_sdk/ac2;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v5, 0x0

    move/from16 p5, v0

    move-object/from16 p6, v1

    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p4, v4

    move-object/from16 p3, v5

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void

    :cond_1
    move-object/from16 v5, p1

    move-object/from16 v11, p6

    .line 3423
    iget-object v14, p0, Lads_mobile_sdk/c63;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lads_mobile_sdk/b63;

    const/4 v13, 0x0

    move-object v9, p0

    move-wide/from16 v2, p4

    move-object/from16 v12, p7

    move-object/from16 v6, p8

    move-object/from16 v10, p10

    move-object/from16 v8, p11

    move-object v4, v5

    move-object/from16 v5, p9

    invoke-direct/range {v0 .. v13}, Lads_mobile_sdk/b63;-><init>(IJLandroid/net/Uri;Lads_mobile_sdk/i2;Lads_mobile_sdk/v3;Lads_mobile_sdk/ha2;Lads_mobile_sdk/ks3;Lads_mobile_sdk/c63;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 p4, v0

    move/from16 p5, v1

    move-object/from16 p6, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p1, v14

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final a(Landroid/net/Uri;Lads_mobile_sdk/i2;Lads_mobile_sdk/zy;Lads_mobile_sdk/v3;Ljava/lang/Boolean;Lads_mobile_sdk/ks3;)V
    .locals 9

    .line 2083
    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adConfiguration"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "commonConfiguration"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2084
    iget-object v1, p0, Lads_mobile_sdk/c63;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2086
    const-string v2, "gads:use_retry_strategy:enabled"

    const-string v3, "key"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2102
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v5, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v1, v2, v4, v5}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2103
    iget-object v1, p2, Lads_mobile_sdk/i2;->x0:Lads_mobile_sdk/ga2;

    if-eqz v1, :cond_0

    move-object v2, p1

    .line 2104
    iget-object p1, p0, Lads_mobile_sdk/c63;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lads_mobile_sdk/a63;

    const/4 v8, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lads_mobile_sdk/a63;-><init>(Lads_mobile_sdk/c63;Landroid/net/Uri;Lads_mobile_sdk/i2;Lads_mobile_sdk/zy;Lads_mobile_sdk/v3;Ljava/lang/Boolean;Lads_mobile_sdk/ks3;Lkotlin/coroutines/Continuation;)V

    move-object p4, v0

    const/4 p5, 0x3

    const/4 p6, 0x0

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move-object p1, p2

    move-object v6, p5

    move-object v7, p6

    move-object p2, v3

    move-object v3, p4

    if-eqz v3, :cond_1

    .line 2105
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 2106
    iget-object p3, v1, Lads_mobile_sdk/c63;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2108
    const-string p4, "gads:ad_events_for_scar:enabled"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2124
    invoke-virtual {p3, p4, v4, v5}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2125
    iget-boolean p1, p1, Lads_mobile_sdk/i2;->B0:Z

    if-eqz p1, :cond_1

    .line 2126
    iget-object p1, v1, Lads_mobile_sdk/c63;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lads_mobile_sdk/z53;

    const/4 v5, 0x0

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lads_mobile_sdk/z53;-><init>(Lads_mobile_sdk/c63;Landroid/net/Uri;Lads_mobile_sdk/v3;Lads_mobile_sdk/ks3;Lkotlin/coroutines/Continuation;)V

    move-object p2, v1

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    :cond_1
    move-object p2, v1

    .line 2143
    iget-object p1, p2, Lads_mobile_sdk/c63;->f:Lads_mobile_sdk/vw3;

    .line 2144
    iget-object p3, p2, Lads_mobile_sdk/c63;->g:Lads_mobile_sdk/uv;

    invoke-virtual {p3, v2}, Lads_mobile_sdk/uv;->a(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object p3

    .line 2145
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2146
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2188
    iget-object p1, p1, Lads_mobile_sdk/vw3;->e:Lkotlinx/coroutines/channels/Channel;

    new-instance p4, Lkotlin/Pair;

    invoke-direct {p4, v2, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, p4}, Lkotlinx/coroutines/channels/Channel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 5

    .line 2280
    const-string v0, "uris"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2353
    iget-object v0, p0, Lads_mobile_sdk/c63;->f:Lads_mobile_sdk/vw3;

    .line 2687
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2688
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2689
    check-cast v2, Landroid/net/Uri;

    .line 2690
    new-instance v3, Lkotlin/Pair;

    .line 2691
    iget-object v4, p0, Lads_mobile_sdk/c63;->g:Lads_mobile_sdk/uv;

    invoke-virtual {v4, v2}, Lads_mobile_sdk/uv;->a(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v4

    .line 2692
    invoke-direct {v3, v2, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3028
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3029
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3030
    const-string p1, "urisAndHeaders"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3082
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 3083
    iget-object v3, v0, Lads_mobile_sdk/vw3;->e:Lkotlinx/coroutines/channels/Channel;

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Lkotlinx/coroutines/channels/Channel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final a(Landroid/net/Uri;)Z
    .locals 6

    .line 1445
    iget-object v0, p0, Lads_mobile_sdk/c63;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Lads_mobile_sdk/ex0;->O0()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1448
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 1449
    :cond_1
    iget-object v2, p0, Lads_mobile_sdk/c63;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {v2}, Lads_mobile_sdk/ex0;->a()Ljava/util/List;

    move-result-object v2

    .line 1791
    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 1792
    :cond_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1793
    const-string v4, "."

    invoke-static {v3, v4}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1794
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {p1, v3, v0, v4, v5}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_4
    return v1

    :cond_5
    :goto_0
    return v0
.end method
