.class public final Lads_mobile_sdk/y12;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Lads_mobile_sdk/rr3;

.field public f:Ljava/io/Closeable;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:I

.field public final synthetic j:Lads_mobile_sdk/c22;

.field public final synthetic k:I

.field public final synthetic l:I

.field public final synthetic m:Lcom/google/gson/JsonArray;

.field public final synthetic n:Lkotlinx/coroutines/channels/ProducerScope;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/c22;IILcom/google/gson/JsonArray;Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/y12;->j:Lads_mobile_sdk/c22;

    iput p2, p0, Lads_mobile_sdk/y12;->k:I

    iput p3, p0, Lads_mobile_sdk/y12;->l:I

    iput-object p4, p0, Lads_mobile_sdk/y12;->m:Lcom/google/gson/JsonArray;

    iput-object p5, p0, Lads_mobile_sdk/y12;->n:Lkotlinx/coroutines/channels/ProducerScope;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    .line 1
    new-instance v0, Lads_mobile_sdk/y12;

    iget-object v1, p0, Lads_mobile_sdk/y12;->j:Lads_mobile_sdk/c22;

    iget v2, p0, Lads_mobile_sdk/y12;->k:I

    iget v3, p0, Lads_mobile_sdk/y12;->l:I

    iget-object v4, p0, Lads_mobile_sdk/y12;->m:Lcom/google/gson/JsonArray;

    iget-object v5, p0, Lads_mobile_sdk/y12;->n:Lkotlinx/coroutines/channels/ProducerScope;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lads_mobile_sdk/y12;-><init>(Lads_mobile_sdk/c22;IILcom/google/gson/JsonArray;Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/y12;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/y12;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/y12;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 136
    iget v2, v1, Lads_mobile_sdk/y12;->i:I

    const-string v4, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, v1, Lads_mobile_sdk/y12;->c:Ljava/lang/Object;

    check-cast v0, Ljava/io/Closeable;

    iget-object v2, v1, Lads_mobile_sdk/y12;->b:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/rr3;

    goto :goto_0

    .line 137
    :pswitch_1
    iget-object v0, v1, Lads_mobile_sdk/y12;->c:Ljava/lang/Object;

    check-cast v0, Ljava/io/Closeable;

    iget-object v2, v1, Lads_mobile_sdk/y12;->b:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/rr3;

    :goto_0
    move-object v4, v2

    move-object v2, v0

    .line 136
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_11

    .line 138
    :pswitch_2
    iget-object v2, v1, Lads_mobile_sdk/y12;->d:Ljava/lang/Object;

    check-cast v2, Ljava/io/Closeable;

    iget-object v4, v1, Lads_mobile_sdk/y12;->c:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/rr3;

    iget-object v5, v1, Lads_mobile_sdk/y12;->b:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ProducerScope;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v7, v2

    move-object/from16 v2, p1

    goto/16 :goto_f

    :catchall_0
    move-exception v0

    goto/16 :goto_13

    .line 139
    :pswitch_3
    iget v2, v1, Lads_mobile_sdk/y12;->a:I

    iget-object v4, v1, Lads_mobile_sdk/y12;->h:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;

    iget-object v5, v1, Lads_mobile_sdk/y12;->g:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/q52;

    iget-object v7, v1, Lads_mobile_sdk/y12;->f:Ljava/io/Closeable;

    iget-object v8, v1, Lads_mobile_sdk/y12;->e:Lads_mobile_sdk/rr3;

    iget-object v9, v1, Lads_mobile_sdk/y12;->d:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v10, v1, Lads_mobile_sdk/y12;->c:Ljava/lang/Object;

    check-cast v10, Lads_mobile_sdk/c22;

    iget-object v11, v1, Lads_mobile_sdk/y12;->b:Ljava/lang/Object;

    check-cast v11, Lcom/google/gson/JsonArray;

    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_c

    move-object v3, v5

    move-object v5, v9

    goto/16 :goto_e

    .line 140
    :pswitch_4
    iget v2, v1, Lads_mobile_sdk/y12;->a:I

    iget-object v5, v1, Lads_mobile_sdk/y12;->h:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/v01;

    iget-object v7, v1, Lads_mobile_sdk/y12;->g:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v1, Lads_mobile_sdk/y12;->f:Ljava/io/Closeable;

    iget-object v9, v1, Lads_mobile_sdk/y12;->e:Lads_mobile_sdk/rr3;

    iget-object v10, v1, Lads_mobile_sdk/y12;->d:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v11, v1, Lads_mobile_sdk/y12;->c:Ljava/lang/Object;

    check-cast v11, Lads_mobile_sdk/c22;

    iget-object v12, v1, Lads_mobile_sdk/y12;->b:Ljava/lang/Object;

    check-cast v12, Lcom/google/gson/JsonArray;

    :try_start_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_d

    move-object v3, v10

    move-object v10, v11

    move-object v11, v12

    goto/16 :goto_d

    .line 141
    :pswitch_5
    iget v2, v1, Lads_mobile_sdk/y12;->a:I

    iget-object v5, v1, Lads_mobile_sdk/y12;->g:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v7, v1, Lads_mobile_sdk/y12;->f:Ljava/io/Closeable;

    iget-object v8, v1, Lads_mobile_sdk/y12;->e:Lads_mobile_sdk/rr3;

    iget-object v9, v1, Lads_mobile_sdk/y12;->d:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v10, v1, Lads_mobile_sdk/y12;->c:Ljava/lang/Object;

    check-cast v10, Lads_mobile_sdk/c22;

    iget-object v11, v1, Lads_mobile_sdk/y12;->b:Ljava/lang/Object;

    check-cast v11, Lcom/google/gson/JsonArray;

    :try_start_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_c

    move-object v3, v10

    move-object v10, v9

    move v9, v2

    move-object v2, v7

    move-object v7, v5

    move-object/from16 v5, p1

    goto/16 :goto_b

    .line 142
    :pswitch_6
    iget-object v0, v1, Lads_mobile_sdk/y12;->c:Ljava/lang/Object;

    check-cast v0, Ljava/io/Closeable;

    iget-object v2, v1, Lads_mobile_sdk/y12;->b:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/rr3;

    goto :goto_1

    .line 143
    :pswitch_7
    iget-object v0, v1, Lads_mobile_sdk/y12;->c:Ljava/lang/Object;

    check-cast v0, Ljava/io/Closeable;

    iget-object v2, v1, Lads_mobile_sdk/y12;->b:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/rr3;

    :goto_1
    move-object v4, v2

    move-object v2, v0

    .line 142
    :try_start_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_8

    .line 144
    :pswitch_8
    iget-object v2, v1, Lads_mobile_sdk/y12;->d:Ljava/lang/Object;

    check-cast v2, Ljava/io/Closeable;

    iget-object v4, v1, Lads_mobile_sdk/y12;->c:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/rr3;

    iget-object v5, v1, Lads_mobile_sdk/y12;->b:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ProducerScope;

    :try_start_6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v7, v2

    move-object/from16 v2, p1

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    goto/16 :goto_9

    .line 145
    :pswitch_9
    iget v2, v1, Lads_mobile_sdk/y12;->a:I

    iget-object v4, v1, Lads_mobile_sdk/y12;->h:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;

    iget-object v5, v1, Lads_mobile_sdk/y12;->g:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/q52;

    iget-object v7, v1, Lads_mobile_sdk/y12;->f:Ljava/io/Closeable;

    iget-object v8, v1, Lads_mobile_sdk/y12;->e:Lads_mobile_sdk/rr3;

    iget-object v9, v1, Lads_mobile_sdk/y12;->d:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v10, v1, Lads_mobile_sdk/y12;->c:Ljava/lang/Object;

    check-cast v10, Lads_mobile_sdk/c22;

    iget-object v11, v1, Lads_mobile_sdk/y12;->b:Ljava/lang/Object;

    check-cast v11, Lcom/google/gson/JsonArray;

    :try_start_7
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move-object v3, v5

    move-object v5, v9

    goto/16 :goto_6

    .line 146
    :pswitch_a
    iget v2, v1, Lads_mobile_sdk/y12;->a:I

    iget-object v7, v1, Lads_mobile_sdk/y12;->h:Ljava/lang/Object;

    check-cast v7, Lads_mobile_sdk/v01;

    iget-object v8, v1, Lads_mobile_sdk/y12;->g:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v9, v1, Lads_mobile_sdk/y12;->f:Ljava/io/Closeable;

    iget-object v10, v1, Lads_mobile_sdk/y12;->e:Lads_mobile_sdk/rr3;

    iget-object v11, v1, Lads_mobile_sdk/y12;->d:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v12, v1, Lads_mobile_sdk/y12;->c:Ljava/lang/Object;

    check-cast v12, Lads_mobile_sdk/c22;

    iget-object v13, v1, Lads_mobile_sdk/y12;->b:Ljava/lang/Object;

    check-cast v13, Lcom/google/gson/JsonArray;

    :try_start_8
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object v3, v10

    move-object v5, v11

    move-object v10, v12

    move-object v11, v13

    goto/16 :goto_5

    :catchall_2
    move-exception v0

    move-object v2, v9

    move-object v4, v10

    goto/16 :goto_9

    .line 147
    :pswitch_b
    iget v2, v1, Lads_mobile_sdk/y12;->a:I

    iget-object v7, v1, Lads_mobile_sdk/y12;->g:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v1, Lads_mobile_sdk/y12;->f:Ljava/io/Closeable;

    iget-object v9, v1, Lads_mobile_sdk/y12;->e:Lads_mobile_sdk/rr3;

    iget-object v10, v1, Lads_mobile_sdk/y12;->d:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v11, v1, Lads_mobile_sdk/y12;->c:Ljava/lang/Object;

    check-cast v11, Lads_mobile_sdk/c22;

    iget-object v12, v1, Lads_mobile_sdk/y12;->b:Ljava/lang/Object;

    check-cast v12, Lcom/google/gson/JsonArray;

    :try_start_9
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object v3, v11

    move-object v11, v10

    move-object v10, v3

    move-object/from16 v5, p1

    move-object v3, v9

    move v9, v2

    move-object v2, v8

    move-object v8, v7

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v2, v8

    move-object v4, v9

    goto/16 :goto_9

    .line 148
    :pswitch_c
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 149
    iget-object v10, v1, Lads_mobile_sdk/y12;->j:Lads_mobile_sdk/c22;

    .line 150
    iget-object v2, v10, Lads_mobile_sdk/c22;->s:Lads_mobile_sdk/g83;

    .line 151
    sget-object v7, Lads_mobile_sdk/s11;->u0:Lads_mobile_sdk/s11;

    .line 152
    iget-object v8, v10, Lads_mobile_sdk/n2;->a:Lads_mobile_sdk/ks3;

    .line 153
    iget v9, v1, Lads_mobile_sdk/y12;->k:I

    iget v11, v1, Lads_mobile_sdk/y12;->l:I

    iget-object v12, v1, Lads_mobile_sdk/y12;->m:Lcom/google/gson/JsonArray;

    iget-object v13, v1, Lads_mobile_sdk/y12;->n:Lkotlinx/coroutines/channels/ProducerScope;

    .line 281
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v14

    .line 282
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v15

    .line 283
    iget-object v15, v15, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const-string v3, ""

    const-string v6, "ad_mid"

    const/4 v5, 0x1

    if-nez v15, :cond_e

    .line 284
    invoke-static {v2, v7, v14, v8}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v2

    if-ge v9, v11, :cond_6

    .line 285
    :try_start_a
    sget-object v7, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-static {v12, v9}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonArray;I)Lcom/google/gson/JsonObject;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 286
    invoke-static {v7, v6, v3}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_0
    const/4 v3, 0x0

    .line 287
    :goto_2
    iget-object v6, v10, Lads_mobile_sdk/c22;->o:Lads_mobile_sdk/t52;

    .line 288
    iget-object v7, v10, Lads_mobile_sdk/n2;->f:Lads_mobile_sdk/i2;

    .line 289
    iput-object v12, v1, Lads_mobile_sdk/y12;->b:Ljava/lang/Object;

    iput-object v10, v1, Lads_mobile_sdk/y12;->c:Ljava/lang/Object;

    iput-object v13, v1, Lads_mobile_sdk/y12;->d:Ljava/lang/Object;

    iput-object v2, v1, Lads_mobile_sdk/y12;->e:Lads_mobile_sdk/rr3;

    iput-object v2, v1, Lads_mobile_sdk/y12;->f:Ljava/io/Closeable;

    iput-object v3, v1, Lads_mobile_sdk/y12;->g:Ljava/lang/Object;

    iput v9, v1, Lads_mobile_sdk/y12;->a:I

    iput v5, v1, Lads_mobile_sdk/y12;->i:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    invoke-static {v6, v7, v1}, Lads_mobile_sdk/t52;->a(Lads_mobile_sdk/t52;Lads_mobile_sdk/i2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    if-ne v5, v0, :cond_1

    goto/16 :goto_10

    :cond_1
    move-object v8, v3

    move-object v11, v13

    move-object v3, v2

    .line 291
    :goto_3
    :try_start_b
    move-object v7, v5

    check-cast v7, Lads_mobile_sdk/v01;

    .line 435
    instance-of v5, v7, Lads_mobile_sdk/i01;

    if-eqz v5, :cond_2

    move-object v5, v7

    check-cast v5, Lads_mobile_sdk/i01;

    .line 436
    iput-object v12, v1, Lads_mobile_sdk/y12;->b:Ljava/lang/Object;

    iput-object v10, v1, Lads_mobile_sdk/y12;->c:Ljava/lang/Object;

    iput-object v11, v1, Lads_mobile_sdk/y12;->d:Ljava/lang/Object;

    iput-object v3, v1, Lads_mobile_sdk/y12;->e:Lads_mobile_sdk/rr3;

    iput-object v2, v1, Lads_mobile_sdk/y12;->f:Ljava/io/Closeable;

    iput-object v8, v1, Lads_mobile_sdk/y12;->g:Ljava/lang/Object;

    iput-object v7, v1, Lads_mobile_sdk/y12;->h:Ljava/lang/Object;

    iput v9, v1, Lads_mobile_sdk/y12;->a:I

    const/4 v6, 0x2

    iput v6, v1, Lads_mobile_sdk/y12;->i:I

    invoke-interface {v11, v5, v1}, Lkotlinx/coroutines/channels/ProducerScope;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    if-ne v5, v0, :cond_2

    goto/16 :goto_10

    :goto_4
    move-object v4, v3

    goto/16 :goto_9

    :cond_2
    move v5, v9

    move-object v9, v2

    move v2, v5

    move-object v5, v11

    move-object v11, v12

    .line 568
    :goto_5
    :try_start_c
    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lads_mobile_sdk/q01;

    .line 569
    iget-object v4, v7, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 570
    check-cast v4, Lads_mobile_sdk/q52;

    .line 572
    new-instance v6, Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;

    .line 573
    invoke-interface {v4}, Lads_mobile_sdk/q52;->a()Lads_mobile_sdk/nr1;

    move-result-object v7

    .line 574
    invoke-direct {v6, v7, v8}, Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;-><init>(Lads_mobile_sdk/nr1;Ljava/lang/String;)V

    .line 575
    iget-object v7, v10, Lads_mobile_sdk/c22;->r:Lads_mobile_sdk/bq2;

    .line 576
    iput-object v11, v1, Lads_mobile_sdk/y12;->b:Ljava/lang/Object;

    iput-object v10, v1, Lads_mobile_sdk/y12;->c:Ljava/lang/Object;

    iput-object v5, v1, Lads_mobile_sdk/y12;->d:Ljava/lang/Object;

    iput-object v3, v1, Lads_mobile_sdk/y12;->e:Lads_mobile_sdk/rr3;

    iput-object v9, v1, Lads_mobile_sdk/y12;->f:Ljava/io/Closeable;

    iput-object v4, v1, Lads_mobile_sdk/y12;->g:Ljava/lang/Object;

    iput-object v6, v1, Lads_mobile_sdk/y12;->h:Ljava/lang/Object;

    iput v2, v1, Lads_mobile_sdk/y12;->a:I

    const/4 v8, 0x3

    iput v8, v1, Lads_mobile_sdk/y12;->i:I

    invoke-virtual {v7, v6, v1}, Lads_mobile_sdk/pr1;->a(Lads_mobile_sdk/nr1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    if-ne v7, v0, :cond_3

    goto/16 :goto_10

    :cond_3
    move-object v8, v3

    move-object v3, v4

    move-object v4, v6

    move-object v7, v9

    .line 579
    :goto_6
    :try_start_d
    invoke-static {v11, v2}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonArray;I)Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 580
    iput-object v5, v1, Lads_mobile_sdk/y12;->b:Ljava/lang/Object;

    iput-object v8, v1, Lads_mobile_sdk/y12;->c:Ljava/lang/Object;

    iput-object v7, v1, Lads_mobile_sdk/y12;->d:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, v1, Lads_mobile_sdk/y12;->e:Lads_mobile_sdk/rr3;

    iput-object v6, v1, Lads_mobile_sdk/y12;->f:Ljava/io/Closeable;

    iput-object v6, v1, Lads_mobile_sdk/y12;->g:Ljava/lang/Object;

    iput-object v6, v1, Lads_mobile_sdk/y12;->h:Ljava/lang/Object;

    const/4 v6, 0x4

    iput v6, v1, Lads_mobile_sdk/y12;->i:I

    .line 581
    invoke-virtual {v10, v2, v3, v4, v1}, Lads_mobile_sdk/c22;->a(Lcom/google/gson/JsonObject;Lads_mobile_sdk/q52;Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    if-ne v2, v0, :cond_4

    goto/16 :goto_10

    :cond_4
    move-object v4, v8

    .line 582
    :goto_7
    :try_start_e
    check-cast v2, Lads_mobile_sdk/v01;

    .line 608
    iput-object v4, v1, Lads_mobile_sdk/y12;->b:Ljava/lang/Object;

    iput-object v7, v1, Lads_mobile_sdk/y12;->c:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, v1, Lads_mobile_sdk/y12;->d:Ljava/lang/Object;

    const/4 v3, 0x5

    iput v3, v1, Lads_mobile_sdk/y12;->i:I

    invoke-interface {v5, v2, v1}, Lkotlinx/coroutines/channels/ProducerScope;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    if-ne v2, v0, :cond_5

    goto/16 :goto_10

    :cond_5
    move-object v2, v7

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object v2, v7

    goto :goto_9

    :catchall_5
    move-exception v0

    move-object v2, v7

    move-object v4, v8

    goto :goto_9

    :catchall_6
    move-exception v0

    move-object v4, v3

    move-object v2, v9

    goto :goto_9

    :catchall_7
    move-exception v0

    goto :goto_4

    .line 610
    :cond_6
    :try_start_f
    new-instance v3, Lads_mobile_sdk/n01;

    const/4 v6, 0x0

    const/4 v8, 0x3

    invoke-direct {v3, v6, v8}, Lads_mobile_sdk/n01;-><init>(Ljava/lang/String;I)V

    iput-object v2, v1, Lads_mobile_sdk/y12;->b:Ljava/lang/Object;

    iput-object v2, v1, Lads_mobile_sdk/y12;->c:Ljava/lang/Object;

    const/4 v4, 0x6

    iput v4, v1, Lads_mobile_sdk/y12;->i:I

    invoke-interface {v13, v3, v1}, Lkotlinx/coroutines/channels/ProducerScope;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    if-ne v3, v0, :cond_7

    goto/16 :goto_10

    :cond_7
    move-object v4, v2

    .line 612
    :goto_8
    :try_start_10
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 728
    instance-of v3, v0, Lads_mobile_sdk/i01;

    if-eqz v3, :cond_8

    .line 729
    check-cast v0, Lads_mobile_sdk/i01;

    const/4 v3, 0x0

    .line 730
    invoke-static {v0, v3}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :cond_8
    const/4 v6, 0x0

    .line 731
    invoke-static {v2, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    :catchall_8
    move-exception v0

    move-object v4, v2

    .line 741
    :goto_9
    :try_start_11
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 745
    instance-of v3, v0, Lads_mobile_sdk/v24;

    if-nez v3, :cond_d

    .line 747
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_9

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_9

    .line 753
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 759
    :cond_9
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_c

    .line 760
    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_b

    .line 761
    instance-of v3, v0, Lads_mobile_sdk/w01;

    if-eqz v3, :cond_a

    throw v0

    .line 762
    :cond_a
    new-instance v3, Lads_mobile_sdk/b01;

    invoke-direct {v3, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 763
    :cond_b
    new-instance v3, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v3

    .line 764
    :cond_c
    new-instance v3, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v3

    .line 765
    :cond_d
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    :catchall_9
    move-exception v0

    move-object v3, v0

    .line 766
    :try_start_12
    throw v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    :catchall_a
    move-exception v0

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 802
    :cond_e
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {v7, v2, v5}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v2

    if-ge v9, v11, :cond_15

    .line 803
    :try_start_13
    sget-object v5, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-static {v12, v9}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonArray;I)Lcom/google/gson/JsonObject;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 804
    invoke-static {v5, v6, v3}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    :cond_f
    const/4 v3, 0x0

    .line 805
    :goto_a
    iget-object v5, v10, Lads_mobile_sdk/c22;->o:Lads_mobile_sdk/t52;

    .line 806
    iget-object v6, v10, Lads_mobile_sdk/n2;->f:Lads_mobile_sdk/i2;

    .line 807
    iput-object v12, v1, Lads_mobile_sdk/y12;->b:Ljava/lang/Object;

    iput-object v10, v1, Lads_mobile_sdk/y12;->c:Ljava/lang/Object;

    iput-object v13, v1, Lads_mobile_sdk/y12;->d:Ljava/lang/Object;

    iput-object v2, v1, Lads_mobile_sdk/y12;->e:Lads_mobile_sdk/rr3;

    iput-object v2, v1, Lads_mobile_sdk/y12;->f:Ljava/io/Closeable;

    iput-object v3, v1, Lads_mobile_sdk/y12;->g:Ljava/lang/Object;

    iput v9, v1, Lads_mobile_sdk/y12;->a:I

    const/4 v7, 0x7

    iput v7, v1, Lads_mobile_sdk/y12;->i:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 808
    invoke-static {v5, v6, v1}, Lads_mobile_sdk/t52;->a(Lads_mobile_sdk/t52;Lads_mobile_sdk/i2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_f

    if-ne v5, v0, :cond_10

    goto/16 :goto_10

    :cond_10
    move-object v8, v2

    move-object v7, v3

    move-object v3, v10

    move-object v11, v12

    move-object v10, v13

    .line 809
    :goto_b
    :try_start_14
    check-cast v5, Lads_mobile_sdk/v01;

    .line 953
    instance-of v6, v5, Lads_mobile_sdk/i01;

    if-eqz v6, :cond_11

    move-object v6, v5

    check-cast v6, Lads_mobile_sdk/i01;

    .line 954
    iput-object v11, v1, Lads_mobile_sdk/y12;->b:Ljava/lang/Object;

    iput-object v3, v1, Lads_mobile_sdk/y12;->c:Ljava/lang/Object;

    iput-object v10, v1, Lads_mobile_sdk/y12;->d:Ljava/lang/Object;

    iput-object v8, v1, Lads_mobile_sdk/y12;->e:Lads_mobile_sdk/rr3;

    iput-object v2, v1, Lads_mobile_sdk/y12;->f:Ljava/io/Closeable;

    iput-object v7, v1, Lads_mobile_sdk/y12;->g:Ljava/lang/Object;

    iput-object v5, v1, Lads_mobile_sdk/y12;->h:Ljava/lang/Object;

    iput v9, v1, Lads_mobile_sdk/y12;->a:I

    const/16 v12, 0x8

    iput v12, v1, Lads_mobile_sdk/y12;->i:I

    invoke-interface {v10, v6, v1}, Lkotlinx/coroutines/channels/ProducerScope;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_e

    if-ne v6, v0, :cond_11

    goto/16 :goto_10

    :goto_c
    move-object v4, v8

    goto/16 :goto_13

    :cond_11
    move-object/from16 v16, v8

    move-object v8, v2

    move v2, v9

    move-object/from16 v9, v16

    move-object/from16 v16, v10

    move-object v10, v3

    move-object/from16 v3, v16

    .line 1086
    :goto_d
    :try_start_15
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lads_mobile_sdk/q01;

    .line 1087
    iget-object v4, v5, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 1088
    move-object v5, v4

    check-cast v5, Lads_mobile_sdk/q52;

    .line 1090
    new-instance v4, Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;

    .line 1091
    invoke-interface {v5}, Lads_mobile_sdk/q52;->a()Lads_mobile_sdk/nr1;

    move-result-object v6

    .line 1092
    invoke-direct {v4, v6, v7}, Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;-><init>(Lads_mobile_sdk/nr1;Ljava/lang/String;)V

    .line 1093
    iget-object v6, v10, Lads_mobile_sdk/c22;->r:Lads_mobile_sdk/bq2;

    .line 1094
    iput-object v11, v1, Lads_mobile_sdk/y12;->b:Ljava/lang/Object;

    iput-object v10, v1, Lads_mobile_sdk/y12;->c:Ljava/lang/Object;

    iput-object v3, v1, Lads_mobile_sdk/y12;->d:Ljava/lang/Object;

    iput-object v9, v1, Lads_mobile_sdk/y12;->e:Lads_mobile_sdk/rr3;

    iput-object v8, v1, Lads_mobile_sdk/y12;->f:Ljava/io/Closeable;

    iput-object v5, v1, Lads_mobile_sdk/y12;->g:Ljava/lang/Object;

    iput-object v4, v1, Lads_mobile_sdk/y12;->h:Ljava/lang/Object;

    iput v2, v1, Lads_mobile_sdk/y12;->a:I

    const/16 v7, 0x9

    iput v7, v1, Lads_mobile_sdk/y12;->i:I

    invoke-virtual {v6, v4, v1}, Lads_mobile_sdk/pr1;->a(Lads_mobile_sdk/nr1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_d

    if-ne v6, v0, :cond_12

    goto/16 :goto_10

    :cond_12
    move-object v7, v5

    move-object v5, v3

    move-object v3, v7

    move-object v7, v8

    move-object v8, v9

    .line 1097
    :goto_e
    :try_start_16
    invoke-static {v11, v2}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonArray;I)Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 1098
    iput-object v5, v1, Lads_mobile_sdk/y12;->b:Ljava/lang/Object;

    iput-object v8, v1, Lads_mobile_sdk/y12;->c:Ljava/lang/Object;

    iput-object v7, v1, Lads_mobile_sdk/y12;->d:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, v1, Lads_mobile_sdk/y12;->e:Lads_mobile_sdk/rr3;

    iput-object v6, v1, Lads_mobile_sdk/y12;->f:Ljava/io/Closeable;

    iput-object v6, v1, Lads_mobile_sdk/y12;->g:Ljava/lang/Object;

    iput-object v6, v1, Lads_mobile_sdk/y12;->h:Ljava/lang/Object;

    const/16 v6, 0xa

    iput v6, v1, Lads_mobile_sdk/y12;->i:I

    .line 1099
    invoke-virtual {v10, v2, v3, v4, v1}, Lads_mobile_sdk/c22;->a(Lcom/google/gson/JsonObject;Lads_mobile_sdk/q52;Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_c

    if-ne v2, v0, :cond_13

    goto :goto_10

    :cond_13
    move-object v4, v8

    .line 1100
    :goto_f
    :try_start_17
    check-cast v2, Lads_mobile_sdk/v01;

    .line 1126
    iput-object v4, v1, Lads_mobile_sdk/y12;->b:Ljava/lang/Object;

    iput-object v7, v1, Lads_mobile_sdk/y12;->c:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, v1, Lads_mobile_sdk/y12;->d:Ljava/lang/Object;

    const/16 v3, 0xb

    iput v3, v1, Lads_mobile_sdk/y12;->i:I

    invoke-interface {v5, v2, v1}, Lkotlinx/coroutines/channels/ProducerScope;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    if-ne v2, v0, :cond_14

    goto :goto_10

    :cond_14
    move-object v2, v7

    goto :goto_11

    :catchall_b
    move-exception v0

    move-object v2, v7

    goto :goto_13

    :catchall_c
    move-exception v0

    move-object v2, v7

    goto :goto_c

    :catchall_d
    move-exception v0

    move-object v2, v8

    move-object v4, v9

    goto :goto_13

    :catchall_e
    move-exception v0

    goto/16 :goto_c

    .line 1128
    :cond_15
    :try_start_18
    new-instance v3, Lads_mobile_sdk/n01;

    const/4 v6, 0x0

    const/4 v8, 0x3

    invoke-direct {v3, v6, v8}, Lads_mobile_sdk/n01;-><init>(Ljava/lang/String;I)V

    iput-object v2, v1, Lads_mobile_sdk/y12;->b:Ljava/lang/Object;

    iput-object v2, v1, Lads_mobile_sdk/y12;->c:Ljava/lang/Object;

    const/16 v4, 0xc

    iput v4, v1, Lads_mobile_sdk/y12;->i:I

    invoke-interface {v13, v3, v1}, Lkotlinx/coroutines/channels/ProducerScope;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_f

    if-ne v3, v0, :cond_16

    :goto_10
    return-object v0

    :cond_16
    move-object v4, v2

    .line 1130
    :goto_11
    :try_start_19
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1283
    instance-of v3, v0, Lads_mobile_sdk/i01;

    if-eqz v3, :cond_17

    .line 1284
    check-cast v0, Lads_mobile_sdk/i01;

    const/4 v3, 0x0

    .line 1285
    invoke-static {v0, v3}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    :cond_17
    const/4 v6, 0x0

    .line 1286
    invoke-static {v2, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1287
    :goto_12
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_f
    move-exception v0

    move-object v4, v2

    .line 1444
    :goto_13
    :try_start_1a
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1448
    instance-of v3, v0, Lads_mobile_sdk/v24;

    if-nez v3, :cond_1c

    .line 1450
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_18

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_18

    .line 1456
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 1462
    :cond_18
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_1b

    .line 1463
    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_1a

    .line 1464
    instance-of v3, v0, Lads_mobile_sdk/w01;

    if-eqz v3, :cond_19

    throw v0

    .line 1465
    :cond_19
    new-instance v3, Lads_mobile_sdk/b01;

    invoke-direct {v3, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1466
    :cond_1a
    new-instance v3, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v3

    .line 1467
    :cond_1b
    new-instance v3, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v3

    .line 1468
    :cond_1c
    throw v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_10

    :catchall_10
    move-exception v0

    move-object v3, v0

    .line 1469
    :try_start_1b
    throw v3
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_11

    :catchall_11
    move-exception v0

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
