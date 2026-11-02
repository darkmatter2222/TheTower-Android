.class public final Lads_mobile_sdk/t72;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/g83;

.field public final b:Lads_mobile_sdk/iz3;

.field public final c:Lads_mobile_sdk/r72;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/g83;Lads_mobile_sdk/iz3;Lads_mobile_sdk/r72;)V
    .locals 1

    .line 1
    const-string v0, "rootTraceCreator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webViewFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativePolicyValidatorOverlayConfigurator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lads_mobile_sdk/t72;->a:Lads_mobile_sdk/g83;

    .line 22
    iput-object p2, p0, Lads_mobile_sdk/t72;->b:Lads_mobile_sdk/iz3;

    .line 23
    iput-object p3, p0, Lads_mobile_sdk/t72;->c:Lads_mobile_sdk/r72;

    return-void
.end method

.method public static a(Lads_mobile_sdk/t72;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    instance-of v2, v1, Lads_mobile_sdk/s72;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/s72;

    iget v3, v2, Lads_mobile_sdk/s72;->f:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/s72;->f:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/s72;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/s72;-><init>(Lads_mobile_sdk/t72;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lads_mobile_sdk/s72;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 27
    iget v4, v2, Lads_mobile_sdk/s72;->f:I

    const-string v5, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    const-string v6, "policy_validator"

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x4

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-eqz v4, :cond_5

    if-eq v4, v10, :cond_4

    if-eq v4, v8, :cond_3

    if-eq v4, v7, :cond_2

    if-ne v4, v9, :cond_1

    iget-object v0, v2, Lads_mobile_sdk/s72;->c:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/r31;

    iget-object v3, v2, Lads_mobile_sdk/s72;->b:Ljava/io/Closeable;

    iget-object v2, v2, Lads_mobile_sdk/s72;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/rr3;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v8, v9

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_2
    iget-object v0, v2, Lads_mobile_sdk/s72;->c:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/io/Closeable;

    iget-object v0, v2, Lads_mobile_sdk/s72;->b:Ljava/io/Closeable;

    move-object v7, v0

    check-cast v7, Lads_mobile_sdk/rr3;

    iget-object v0, v2, Lads_mobile_sdk/s72;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/t72;

    :try_start_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_6

    :catchall_1
    move-exception v0

    goto/16 :goto_b

    .line 29
    :cond_3
    iget-object v0, v2, Lads_mobile_sdk/s72;->c:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/r31;

    iget-object v3, v2, Lads_mobile_sdk/s72;->b:Ljava/io/Closeable;

    iget-object v2, v2, Lads_mobile_sdk/s72;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/rr3;

    :try_start_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v1, v9

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    goto/16 :goto_4

    .line 30
    :cond_4
    iget-object v0, v2, Lads_mobile_sdk/s72;->c:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/io/Closeable;

    iget-object v0, v2, Lads_mobile_sdk/s72;->b:Ljava/io/Closeable;

    move-object v7, v0

    check-cast v7, Lads_mobile_sdk/rr3;

    iget-object v0, v2, Lads_mobile_sdk/s72;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/t72;

    :try_start_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    goto/16 :goto_5

    .line 31
    :cond_5
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 32
    iget-object v1, v0, Lads_mobile_sdk/t72;->a:Lads_mobile_sdk/g83;

    .line 33
    sget-object v4, Lads_mobile_sdk/s11;->f1:Lads_mobile_sdk/s11;

    .line 58
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v13

    .line 59
    new-instance v14, Lads_mobile_sdk/ks3;

    .line 60
    new-instance v15, Lads_mobile_sdk/n03;

    invoke-direct {v15}, Lads_mobile_sdk/n03;-><init>()V

    .line 61
    new-instance v7, Lads_mobile_sdk/tn1;

    invoke-direct {v7}, Lads_mobile_sdk/tn1;-><init>()V

    .line 62
    new-instance v9, Lads_mobile_sdk/m33;

    invoke-direct {v9}, Lads_mobile_sdk/m33;-><init>()V

    .line 63
    new-instance v8, Lads_mobile_sdk/zb;

    invoke-direct {v8}, Lads_mobile_sdk/zb;-><init>()V

    .line 64
    invoke-direct {v14, v15, v7, v9, v8}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 65
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v7

    .line 66
    iget-object v7, v7, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const/16 v8, 0xe

    if-nez v7, :cond_f

    .line 67
    invoke-static {v1, v4, v13, v14}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v4

    .line 68
    :try_start_4
    iget-object v1, v0, Lads_mobile_sdk/t72;->b:Lads_mobile_sdk/iz3;

    .line 69
    new-instance v7, Lads_mobile_sdk/v14;

    sget-object v9, Lads_mobile_sdk/u14;->a:Lads_mobile_sdk/u14;

    invoke-direct {v7, v9, v11, v11, v8}, Lads_mobile_sdk/v14;-><init>(Lads_mobile_sdk/u14;III)V

    .line 70
    iput-object v0, v2, Lads_mobile_sdk/s72;->a:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/s72;->b:Ljava/io/Closeable;

    iput-object v4, v2, Lads_mobile_sdk/s72;->c:Ljava/lang/Object;

    iput v10, v2, Lads_mobile_sdk/s72;->f:I

    invoke-virtual {v1, v7, v12, v10, v2}, Lads_mobile_sdk/iz3;->a(Lads_mobile_sdk/v14;Lads_mobile_sdk/v52;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-ne v1, v3, :cond_6

    goto/16 :goto_7

    :cond_6
    move-object v7, v4

    .line 71
    :goto_1
    :try_start_5
    check-cast v1, Lads_mobile_sdk/v01;

    .line 104
    instance-of v8, v1, Lads_mobile_sdk/i01;

    if-eqz v8, :cond_7

    check-cast v1, Lads_mobile_sdk/i01;

    move-object v3, v4

    move-object v2, v7

    goto :goto_3

    .line 105
    :cond_7
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lads_mobile_sdk/q01;

    .line 106
    iget-object v1, v1, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 107
    check-cast v1, Lads_mobile_sdk/r31;

    .line 111
    iget-object v0, v0, Lads_mobile_sdk/t72;->c:Lads_mobile_sdk/r72;

    invoke-virtual {v1}, Lads_mobile_sdk/r31;->c()Lads_mobile_sdk/nr1;

    move-result-object v5

    iput-object v7, v2, Lads_mobile_sdk/s72;->a:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/s72;->b:Ljava/io/Closeable;

    iput-object v1, v2, Lads_mobile_sdk/s72;->c:Ljava/lang/Object;

    const/4 v8, 0x2

    iput v8, v2, Lads_mobile_sdk/s72;->f:I

    invoke-virtual {v0, v5, v2}, Lads_mobile_sdk/pr1;->a(Lads_mobile_sdk/nr1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-ne v0, v3, :cond_8

    goto/16 :goto_7

    :cond_8
    move-object v0, v1

    move-object v3, v4

    move-object v2, v7

    const/4 v1, 0x4

    .line 113
    :goto_2
    :try_start_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 114
    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 116
    new-instance v1, Lads_mobile_sdk/q01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    .line 137
    :goto_3
    instance-of v0, v1, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_9

    .line 138
    move-object v0, v1

    check-cast v0, Lads_mobile_sdk/i01;

    .line 139
    invoke-static {v0, v11}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 140
    :cond_9
    invoke-static {v3, v12}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    :goto_4
    move-object v7, v2

    move-object v4, v3

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v7, v4

    .line 150
    :goto_5
    :try_start_7
    invoke-virtual {v7, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 154
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_e

    .line 156
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_a

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_a

    .line 162
    invoke-virtual {v7, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 168
    :cond_a
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_d

    .line 169
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_c

    .line 170
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_b

    throw v0

    .line 171
    :cond_b
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 172
    :cond_c
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 173
    :cond_d
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 174
    :cond_e
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :catchall_5
    move-exception v0

    move-object v1, v0

    .line 175
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :catchall_6
    move-exception v0

    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 211
    :cond_f
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v4, v1, v10}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v4

    .line 212
    :try_start_9
    iget-object v1, v0, Lads_mobile_sdk/t72;->b:Lads_mobile_sdk/iz3;

    .line 213
    new-instance v7, Lads_mobile_sdk/v14;

    sget-object v9, Lads_mobile_sdk/u14;->a:Lads_mobile_sdk/u14;

    invoke-direct {v7, v9, v11, v11, v8}, Lads_mobile_sdk/v14;-><init>(Lads_mobile_sdk/u14;III)V

    .line 214
    iput-object v0, v2, Lads_mobile_sdk/s72;->a:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/s72;->b:Ljava/io/Closeable;

    iput-object v4, v2, Lads_mobile_sdk/s72;->c:Ljava/lang/Object;

    const/4 v8, 0x3

    iput v8, v2, Lads_mobile_sdk/s72;->f:I

    invoke-virtual {v1, v7, v12, v10, v2}, Lads_mobile_sdk/iz3;->a(Lads_mobile_sdk/v14;Lads_mobile_sdk/v52;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    if-ne v1, v3, :cond_10

    goto :goto_7

    :cond_10
    move-object v7, v4

    .line 215
    :goto_6
    :try_start_a
    check-cast v1, Lads_mobile_sdk/v01;

    .line 248
    instance-of v8, v1, Lads_mobile_sdk/i01;

    if-eqz v8, :cond_11

    check-cast v1, Lads_mobile_sdk/i01;

    move-object v3, v4

    move-object v2, v7

    goto :goto_9

    .line 249
    :cond_11
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lads_mobile_sdk/q01;

    .line 250
    iget-object v1, v1, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 251
    check-cast v1, Lads_mobile_sdk/r31;

    .line 255
    iget-object v0, v0, Lads_mobile_sdk/t72;->c:Lads_mobile_sdk/r72;

    invoke-virtual {v1}, Lads_mobile_sdk/r31;->c()Lads_mobile_sdk/nr1;

    move-result-object v5

    iput-object v7, v2, Lads_mobile_sdk/s72;->a:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/s72;->b:Ljava/io/Closeable;

    iput-object v1, v2, Lads_mobile_sdk/s72;->c:Ljava/lang/Object;

    const/4 v8, 0x4

    iput v8, v2, Lads_mobile_sdk/s72;->f:I

    invoke-virtual {v0, v5, v2}, Lads_mobile_sdk/pr1;->a(Lads_mobile_sdk/nr1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-ne v0, v3, :cond_12

    :goto_7
    return-object v3

    :cond_12
    move-object v0, v1

    move-object v3, v4

    move-object v2, v7

    .line 257
    :goto_8
    :try_start_b
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 258
    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 260
    new-instance v1, Lads_mobile_sdk/q01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    .line 318
    :goto_9
    instance-of v0, v1, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_13

    .line 319
    move-object v0, v1

    check-cast v0, Lads_mobile_sdk/i01;

    .line 320
    invoke-static {v0, v11}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 321
    :cond_13
    invoke-static {v3, v12}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    :goto_a
    move-object v7, v2

    move-object v4, v3

    goto :goto_b

    :catchall_7
    move-exception v0

    move-object v7, v4

    .line 329
    :goto_b
    :try_start_c
    invoke-virtual {v7, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 333
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_18

    .line 335
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_14

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_14

    .line 341
    invoke-virtual {v7, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 347
    :cond_14
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_17

    .line 348
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_16

    .line 349
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_15

    throw v0

    .line 350
    :cond_15
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 351
    :cond_16
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 352
    :cond_17
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 353
    :cond_18
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    :catchall_8
    move-exception v0

    move-object v1, v0

    .line 354
    :try_start_d
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    :catchall_9
    move-exception v0

    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
