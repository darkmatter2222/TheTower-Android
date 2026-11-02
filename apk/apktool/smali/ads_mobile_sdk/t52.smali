.class public final Lads_mobile_sdk/t52;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lkotlinx/coroutines/CoroutineScope;

.field public final b:Lkotlinx/coroutines/CoroutineScope;

.field public final c:Lads_mobile_sdk/ex0;

.field public final d:Lads_mobile_sdk/iz3;

.field public final e:Lads_mobile_sdk/g83;

.field public final f:Lads_mobile_sdk/cw2;

.field public final g:Lads_mobile_sdk/nk3;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/ex0;Lads_mobile_sdk/iz3;Lads_mobile_sdk/g83;Lads_mobile_sdk/dw2;Lads_mobile_sdk/nk3;)V
    .locals 1

    .line 1
    const-string v0, "uiScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webViewFactory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "singletonEngineProvider"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "singletonNativeJavascriptEngineConfigurator"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lads_mobile_sdk/t52;->a:Lkotlinx/coroutines/CoroutineScope;

    .line 7
    iput-object p2, p0, Lads_mobile_sdk/t52;->b:Lkotlinx/coroutines/CoroutineScope;

    .line 8
    iput-object p3, p0, Lads_mobile_sdk/t52;->c:Lads_mobile_sdk/ex0;

    .line 9
    iput-object p4, p0, Lads_mobile_sdk/t52;->d:Lads_mobile_sdk/iz3;

    .line 10
    iput-object p5, p0, Lads_mobile_sdk/t52;->e:Lads_mobile_sdk/g83;

    .line 11
    iput-object p6, p0, Lads_mobile_sdk/t52;->f:Lads_mobile_sdk/cw2;

    .line 12
    iput-object p7, p0, Lads_mobile_sdk/t52;->g:Lads_mobile_sdk/nk3;

    return-void
.end method

.method public static a(Lads_mobile_sdk/t52;Lads_mobile_sdk/i2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    instance-of v3, v2, Lads_mobile_sdk/r52;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lads_mobile_sdk/r52;

    iget v4, v3, Lads_mobile_sdk/r52;->g:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lads_mobile_sdk/r52;->g:I

    goto :goto_0

    :cond_0
    new-instance v3, Lads_mobile_sdk/r52;

    invoke-direct {v3, v0, v2}, Lads_mobile_sdk/r52;-><init>(Lads_mobile_sdk/t52;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lads_mobile_sdk/r52;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 40
    iget v5, v3, Lads_mobile_sdk/r52;->g:I

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v5, :cond_4

    if-eq v5, v8, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    iget-object v0, v3, Lads_mobile_sdk/r52;->d:Lads_mobile_sdk/r31;

    iget-object v1, v3, Lads_mobile_sdk/r52;->c:Ljava/io/Closeable;

    iget-object v4, v3, Lads_mobile_sdk/r52;->b:Lads_mobile_sdk/rr3;

    iget-object v3, v3, Lads_mobile_sdk/r52;->a:Lads_mobile_sdk/t52;

    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    move-object v12, v0

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_2
    iget-object v0, v3, Lads_mobile_sdk/r52;->d:Lads_mobile_sdk/r31;

    iget-object v1, v3, Lads_mobile_sdk/r52;->c:Ljava/io/Closeable;

    iget-object v5, v3, Lads_mobile_sdk/r52;->b:Lads_mobile_sdk/rr3;

    iget-object v7, v3, Lads_mobile_sdk/r52;->a:Lads_mobile_sdk/t52;

    :try_start_1
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    move-object v4, v5

    goto/16 :goto_8

    .line 42
    :cond_3
    iget-object v1, v3, Lads_mobile_sdk/r52;->c:Ljava/io/Closeable;

    iget-object v5, v3, Lads_mobile_sdk/r52;->b:Lads_mobile_sdk/rr3;

    iget-object v0, v3, Lads_mobile_sdk/r52;->a:Lads_mobile_sdk/t52;

    :try_start_2
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    goto/16 :goto_9

    .line 43
    :cond_4
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    iget-object v2, v1, Lads_mobile_sdk/i2;->J:Lads_mobile_sdk/vc1;

    if-eqz v2, :cond_5

    iget-object v2, v2, Lads_mobile_sdk/vc1;->e:Ljava/lang/String;

    goto :goto_2

    :cond_5
    move-object v2, v10

    :goto_2
    if-eqz v2, :cond_6

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 51
    :cond_6
    iget-object v1, v1, Lads_mobile_sdk/i2;->J:Lads_mobile_sdk/vc1;

    if-eqz v1, :cond_8

    iget-boolean v1, v1, Lads_mobile_sdk/vc1;->f:Z

    if-ne v1, v8, :cond_8

    .line 53
    :cond_7
    new-instance v1, Lads_mobile_sdk/q01;

    iget-object v0, v0, Lads_mobile_sdk/t52;->f:Lads_mobile_sdk/cw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 55
    :cond_8
    sget-object v1, Lads_mobile_sdk/s11;->t0:Lads_mobile_sdk/s11;

    .line 81
    sget-object v2, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2, v8}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 82
    :try_start_3
    iget-object v2, v0, Lads_mobile_sdk/t52;->d:Lads_mobile_sdk/iz3;

    .line 83
    new-instance v5, Lads_mobile_sdk/v14;

    sget-object v11, Lads_mobile_sdk/u14;->a:Lads_mobile_sdk/u14;

    const/16 v12, 0xe

    invoke-direct {v5, v11, v9, v9, v12}, Lads_mobile_sdk/v14;-><init>(Lads_mobile_sdk/u14;III)V

    .line 84
    iput-object v0, v3, Lads_mobile_sdk/r52;->a:Lads_mobile_sdk/t52;

    iput-object v1, v3, Lads_mobile_sdk/r52;->b:Lads_mobile_sdk/rr3;

    iput-object v1, v3, Lads_mobile_sdk/r52;->c:Ljava/io/Closeable;

    iput v8, v3, Lads_mobile_sdk/r52;->g:I

    .line 85
    invoke-virtual {v2, v5, v10, v9, v3}, Lads_mobile_sdk/iz3;->a(Lads_mobile_sdk/v14;Lads_mobile_sdk/v52;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-ne v2, v4, :cond_9

    goto :goto_5

    :cond_9
    move-object v5, v1

    .line 86
    :goto_3
    :try_start_4
    check-cast v2, Lads_mobile_sdk/v01;

    .line 130
    instance-of v11, v2, Lads_mobile_sdk/i01;

    if-eqz v11, :cond_a

    check-cast v2, Lads_mobile_sdk/i01;

    .line 131
    invoke-static {v2, v9}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V

    .line 132
    invoke-static {v2, v9}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 133
    invoke-static {v1, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    .line 137
    :cond_a
    :try_start_5
    const-string v11, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lads_mobile_sdk/q01;

    .line 138
    iget-object v2, v2, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 139
    check-cast v2, Lads_mobile_sdk/r31;

    .line 143
    invoke-virtual {v2, v8}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 144
    iget-object v8, v0, Lads_mobile_sdk/t52;->g:Lads_mobile_sdk/nk3;

    invoke-virtual {v2}, Lads_mobile_sdk/r31;->c()Lads_mobile_sdk/nr1;

    move-result-object v11

    iput-object v0, v3, Lads_mobile_sdk/r52;->a:Lads_mobile_sdk/t52;

    iput-object v5, v3, Lads_mobile_sdk/r52;->b:Lads_mobile_sdk/rr3;

    iput-object v1, v3, Lads_mobile_sdk/r52;->c:Ljava/io/Closeable;

    iput-object v2, v3, Lads_mobile_sdk/r52;->d:Lads_mobile_sdk/r31;

    iput v7, v3, Lads_mobile_sdk/r52;->g:I

    invoke-virtual {v8, v11, v3}, Lads_mobile_sdk/pr1;->a(Lads_mobile_sdk/nr1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-ne v7, v4, :cond_b

    goto :goto_5

    :cond_b
    move-object v7, v0

    move-object v0, v2

    .line 146
    :goto_4
    :try_start_6
    iget-object v2, v7, Lads_mobile_sdk/t52;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    const-string v8, "gads:native:engine_url_with_protocol"

    const-string v11, "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/native_ads.html"

    .line 148
    const-string v12, "key"

    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "defaultValue"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    sget-object v12, Lads_mobile_sdk/yr;->o:Lads_mobile_sdk/wr;

    invoke-virtual {v2, v8, v11, v12}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 191
    iput-object v7, v3, Lads_mobile_sdk/r52;->a:Lads_mobile_sdk/t52;

    iput-object v5, v3, Lads_mobile_sdk/r52;->b:Lads_mobile_sdk/rr3;

    iput-object v1, v3, Lads_mobile_sdk/r52;->c:Ljava/io/Closeable;

    iput-object v0, v3, Lads_mobile_sdk/r52;->d:Lads_mobile_sdk/r31;

    iput v6, v3, Lads_mobile_sdk/r52;->g:I

    invoke-virtual {v0, v2, v3}, Lads_mobile_sdk/r31;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-ne v2, v4, :cond_c

    :goto_5
    return-object v4

    :cond_c
    move-object v4, v5

    move-object v3, v7

    goto/16 :goto_1

    .line 192
    :goto_6
    :try_start_7
    check-cast v2, Lads_mobile_sdk/v01;

    .line 214
    instance-of v0, v2, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_d

    .line 215
    iget-object v13, v3, Lads_mobile_sdk/t52;->a:Lkotlinx/coroutines/CoroutineScope;

    sget-object v14, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    new-instance v0, Lads_mobile_sdk/s52;

    invoke-direct {v0, v12, v10}, Lads_mobile_sdk/s52;-><init>(Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v0

    invoke-static/range {v13 .. v18}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 216
    move-object v0, v2

    check-cast v0, Lads_mobile_sdk/i01;

    .line 217
    invoke-static {v0, v9}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V

    goto :goto_7

    .line 218
    :cond_d
    new-instance v2, Lads_mobile_sdk/q01;

    .line 219
    new-instance v0, Lads_mobile_sdk/qo0;

    .line 220
    new-instance v11, Lads_mobile_sdk/fl1;

    iget-object v13, v3, Lads_mobile_sdk/t52;->a:Lkotlinx/coroutines/CoroutineScope;

    iget-object v14, v3, Lads_mobile_sdk/t52;->b:Lkotlinx/coroutines/CoroutineScope;

    iget-object v15, v3, Lads_mobile_sdk/t52;->e:Lads_mobile_sdk/g83;

    iget-object v3, v3, Lads_mobile_sdk/t52;->c:Lads_mobile_sdk/ex0;

    const/16 v17, 0x0

    move-object/from16 v16, v3

    .line 221
    invoke-direct/range {v11 .. v17}, Lads_mobile_sdk/fl1;-><init>(Lads_mobile_sdk/r31;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/g83;Lads_mobile_sdk/ex0;Z)V

    .line 222
    invoke-direct {v0, v11}, Lads_mobile_sdk/qo0;-><init>(Lads_mobile_sdk/fl1;)V

    .line 223
    invoke-direct {v2, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 224
    :goto_7
    invoke-static {v1, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    :goto_8
    move-object v5, v4

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object v5, v1

    .line 253
    :goto_9
    :try_start_8
    invoke-virtual {v5, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 257
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_12

    .line 259
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_e

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_e

    .line 265
    invoke-virtual {v5, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 271
    :cond_e
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_11

    .line 272
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_10

    .line 273
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_f

    throw v0

    .line 274
    :cond_f
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 275
    :cond_10
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 276
    :cond_11
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 277
    :cond_12
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v0

    move-object v2, v0

    .line 278
    :try_start_9
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_5
    move-exception v0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
