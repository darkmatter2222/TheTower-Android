.class public abstract Lads_mobile_sdk/f32;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lads_mobile_sdk/g83;Lads_mobile_sdk/ks3;Lads_mobile_sdk/k32;Landroid/widget/FrameLayout;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)Lads_mobile_sdk/g32;
    .locals 11

    move-object/from16 v5, p5

    .line 1
    const-string v6, "rootTraceCreator"

    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "traceMetaSet"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "nativeAdUtil"

    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "assetViews"

    invoke-static {p4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "mediaviewScaleType"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v6, Lads_mobile_sdk/s11;->k0:Lads_mobile_sdk/s11;

    .line 22
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 23
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v8

    .line 24
    iget-object v8, v8, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-nez v8, :cond_6

    .line 25
    invoke-static {p0, v6, v7, p1}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v1

    .line 26
    :try_start_0
    new-instance v0, Lads_mobile_sdk/g32;

    .line 28
    invoke-virtual {p2, p3, v5, p4}, Lads_mobile_sdk/k32;->a(Landroid/widget/FrameLayout;Landroid/widget/ImageView$ScaleType;Ljava/util/Map;)Lcom/google/gson/JsonObject;

    move-result-object v4

    .line 29
    invoke-virtual/range {p2 .. p3}, Lads_mobile_sdk/k32;->c(Landroid/widget/FrameLayout;)Lcom/google/gson/JsonObject;

    move-result-object v5

    .line 30
    invoke-virtual/range {p2 .. p3}, Lads_mobile_sdk/k32;->b(Landroid/widget/FrameLayout;)Lcom/google/gson/JsonObject;

    move-result-object v6

    .line 31
    invoke-virtual/range {p2 .. p3}, Lads_mobile_sdk/k32;->a(Landroid/widget/FrameLayout;)Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 32
    invoke-virtual {p2}, Lads_mobile_sdk/k32;->a()Lcom/google/gson/JsonObject;

    move-result-object v2

    move-object p0, v0

    move-object/from16 p5, v2

    move-object p4, v3

    move-object p1, v4

    move-object p2, v5

    move-object p3, v6

    .line 33
    invoke-direct/range {p0 .. p5}, Lads_mobile_sdk/g32;-><init>(Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;)V

    move-object v0, p0

    .line 65
    instance-of v2, v0, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_0

    .line 66
    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/i01;

    .line 67
    invoke-static {v2, v9}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_0
    invoke-static {v1, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 76
    :try_start_1
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 80
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_5

    .line 82
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_1

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_1

    .line 88
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 94
    :cond_1
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_4

    .line 95
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_3

    .line 96
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_2

    throw v0

    .line 97
    :cond_2
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 98
    :cond_3
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 99
    :cond_4
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 100
    :cond_5
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 101
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 135
    :cond_6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v6, v0, v1}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 136
    :try_start_3
    new-instance v0, Lads_mobile_sdk/g32;

    .line 138
    invoke-virtual {p2, p3, v5, p4}, Lads_mobile_sdk/k32;->a(Landroid/widget/FrameLayout;Landroid/widget/ImageView$ScaleType;Ljava/util/Map;)Lcom/google/gson/JsonObject;

    move-result-object v4

    .line 139
    invoke-virtual/range {p2 .. p3}, Lads_mobile_sdk/k32;->c(Landroid/widget/FrameLayout;)Lcom/google/gson/JsonObject;

    move-result-object v5

    .line 140
    invoke-virtual/range {p2 .. p3}, Lads_mobile_sdk/k32;->b(Landroid/widget/FrameLayout;)Lcom/google/gson/JsonObject;

    move-result-object v6

    .line 141
    invoke-virtual/range {p2 .. p3}, Lads_mobile_sdk/k32;->a(Landroid/widget/FrameLayout;)Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 142
    invoke-virtual {p2}, Lads_mobile_sdk/k32;->a()Lcom/google/gson/JsonObject;

    move-result-object v2

    move-object p0, v0

    move-object/from16 p5, v2

    move-object p4, v3

    move-object p1, v4

    move-object p2, v5

    move-object p3, v6

    .line 143
    invoke-direct/range {p0 .. p5}, Lads_mobile_sdk/g32;-><init>(Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;)V

    move-object v0, p0

    .line 212
    instance-of v2, v0, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_7

    .line 213
    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/i01;

    .line 214
    invoke-static {v2, v9}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 215
    :cond_7
    invoke-static {v1, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_3
    move-exception v0

    .line 223
    :try_start_4
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 227
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_c

    .line 229
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_8

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_8

    .line 235
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 241
    :cond_8
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_b

    .line 242
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_a

    .line 243
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_9

    throw v0

    .line 244
    :cond_9
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 245
    :cond_a
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 246
    :cond_b
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 247
    :cond_c
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v0

    move-object v2, v0

    .line 248
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :catchall_5
    move-exception v0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
