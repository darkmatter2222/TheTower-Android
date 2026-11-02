.class public final Lads_mobile_sdk/as3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/ur3;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lads_mobile_sdk/ex0;

.field public final c:Lads_mobile_sdk/tx;

.field public final d:Lads_mobile_sdk/ms3;

.field public final e:Lads_mobile_sdk/rq0;

.field public final f:Lads_mobile_sdk/ja1;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Lads_mobile_sdk/ks1;

.field public final j:Lads_mobile_sdk/cn0;

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Ljava/util/Map;

.field public p:Z

.field public q:I

.field public final r:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lads_mobile_sdk/ex0;Lads_mobile_sdk/tx;Lads_mobile_sdk/ms3;Lads_mobile_sdk/rq0;Lads_mobile_sdk/ja1;Ljava/lang/String;Ljava/lang/String;Lads_mobile_sdk/ks1;Lads_mobile_sdk/cn0;)V
    .locals 1

    .line 1
    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceReporter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exceptionReporter"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializationConfigWrapper"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "afmaVersionString"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gmaVersion"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chromeVariationsProvider"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceTierManager"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lads_mobile_sdk/as3;->a:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lads_mobile_sdk/as3;->b:Lads_mobile_sdk/ex0;

    .line 78
    iput-object p3, p0, Lads_mobile_sdk/as3;->c:Lads_mobile_sdk/tx;

    .line 79
    iput-object p4, p0, Lads_mobile_sdk/as3;->d:Lads_mobile_sdk/ms3;

    .line 80
    iput-object p5, p0, Lads_mobile_sdk/as3;->e:Lads_mobile_sdk/rq0;

    .line 81
    iput-object p6, p0, Lads_mobile_sdk/as3;->f:Lads_mobile_sdk/ja1;

    .line 82
    iput-object p7, p0, Lads_mobile_sdk/as3;->g:Ljava/lang/String;

    .line 83
    iput-object p8, p0, Lads_mobile_sdk/as3;->h:Ljava/lang/String;

    .line 85
    iput-object p9, p0, Lads_mobile_sdk/as3;->i:Lads_mobile_sdk/ks1;

    .line 86
    iput-object p10, p0, Lads_mobile_sdk/as3;->j:Lads_mobile_sdk/cn0;

    .line 94
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/as3;->o:Ljava/util/Map;

    .line 98
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/as3;->r:Ljava/util/HashSet;

    return-void
.end method

.method public static final a(Lads_mobile_sdk/as3;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 16271
    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16452
    :try_start_0
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p3}, Lads_mobile_sdk/as3;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    goto :goto_0

    :catchall_0
    if-eqz p1, :cond_0

    .line 16457
    :goto_0
    invoke-interface {p1, p2, p3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 16251
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 16252
    new-instance v1, Lads_mobile_sdk/as3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lads_mobile_sdk/as3$$ExternalSyntheticLambda0;-><init>(Lads_mobile_sdk/as3;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 16266
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "getThread(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16267
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    .line 16269
    new-instance v2, Lads_mobile_sdk/vr3;

    invoke-direct {v2, p0, v1}, Lads_mobile_sdk/vr3;-><init>(Lads_mobile_sdk/as3;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 16270
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 10

    .line 16470
    const-string v0, "exception"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "label"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16471
    sget-object v0, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance v0, Lads_mobile_sdk/xr3;

    invoke-direct {v0, p1, p2}, Lads_mobile_sdk/xr3;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-static {v0}, Lads_mobile_sdk/f01;->a(Lkotlin/jvm/functions/Function0;)V

    .line 16472
    iget-object v0, p0, Lads_mobile_sdk/as3;->e:Lads_mobile_sdk/rq0;

    .line 16473
    new-instance v1, Lads_mobile_sdk/tq0;

    .line 16474
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v2

    .line 16475
    iget-object v2, v2, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-eqz v2, :cond_0

    .line 16476
    iget-object v2, v2, Lads_mobile_sdk/rr3;->a:Lads_mobile_sdk/ks3;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v4, v2

    .line 16477
    iget-object v2, p0, Lads_mobile_sdk/as3;->c:Lads_mobile_sdk/tx;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16478
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v5, 0x1

    move-object v3, p1

    move-object v2, p2

    .line 16479
    invoke-direct/range {v1 .. v9}, Lads_mobile_sdk/tq0;-><init>(Ljava/lang/Throwable;Ljava/lang/String;Lads_mobile_sdk/ks3;ZJIZ)V

    .line 16480
    invoke-virtual {v0, v1}, Lads_mobile_sdk/b43;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 10

    .line 16458
    const-string v0, "exception"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "label"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16459
    sget-object v0, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance v0, Lads_mobile_sdk/wr3;

    invoke-direct {v0, p1, p2}, Lads_mobile_sdk/wr3;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lads_mobile_sdk/f01;->a(Lkotlin/jvm/functions/Function0;)V

    .line 16460
    iget-boolean v0, p0, Lads_mobile_sdk/as3;->l:Z

    if-eqz v0, :cond_1

    .line 16461
    iget-object v0, p0, Lads_mobile_sdk/as3;->e:Lads_mobile_sdk/rq0;

    .line 16462
    new-instance v1, Lads_mobile_sdk/tq0;

    .line 16463
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v2

    .line 16464
    iget-object v2, v2, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-eqz v2, :cond_0

    .line 16465
    iget-object v2, v2, Lads_mobile_sdk/rr3;->a:Lads_mobile_sdk/ks3;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v4, v2

    .line 16466
    iget-object v2, p0, Lads_mobile_sdk/as3;->c:Lads_mobile_sdk/tx;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16467
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v5, 0x1

    move-object v3, p1

    move-object v2, p2

    .line 16468
    invoke-direct/range {v1 .. v9}, Lads_mobile_sdk/tq0;-><init>(Ljava/lang/Throwable;Ljava/lang/String;Lads_mobile_sdk/ks3;ZJIZ)V

    .line 16469
    invoke-virtual {v0, v1}, Lads_mobile_sdk/b43;->a(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 17

    move-object/from16 v0, p0

    .line 14877
    const-string v1, "exception"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15176
    iget-boolean v3, v0, Lads_mobile_sdk/as3;->p:Z

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 15178
    :cond_0
    invoke-static {v2}, Lads_mobile_sdk/bs3;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-eqz v3, :cond_7

    .line 15182
    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    const-string v7, "getStackTrace(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v7, v6

    move v8, v4

    :goto_1
    const/4 v9, 0x0

    if-ge v8, v7, :cond_5

    aget-object v10, v6, v8

    .line 15186
    const-class v11, Lads_mobile_sdk/as3;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto/16 :goto_3

    .line 15190
    :cond_1
    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "getClassName(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15191
    iget-object v11, v0, Lads_mobile_sdk/as3;->b:Lads_mobile_sdk/ex0;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v12, 0x4

    .line 15197
    new-array v12, v12, [Ljava/lang/String;

    const-string v13, "com.google"

    aput-object v13, v12, v4

    const-string v13, "ads_mobile_sdk"

    const/4 v14, 0x1

    aput-object v13, v12, v14

    const-string v13, "org.chromium"

    const/4 v15, 0x2

    aput-object v13, v12, v15

    const/4 v13, 0x3

    const-string v16, "android.webkit"

    aput-object v16, v12, v13

    .line 15198
    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    .line 15199
    const-string v13, "key"

    const-string v14, "gads:uncaught_exception_handler_prefix"

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "defaultValue"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15244
    sget-object v13, Lads_mobile_sdk/yr;->g:Lads_mobile_sdk/qr;

    invoke-virtual {v11, v14, v12, v13}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 15245
    instance-of v12, v11, Ljava/util/Collection;

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_2

    .line 15246
    :cond_2
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 15247
    invoke-static {v10, v12, v4, v15, v9}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v5, 0x1

    :cond_4
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 15248
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-static {v3}, Lads_mobile_sdk/bs3;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    goto/16 :goto_0

    :cond_6
    move-object v3, v9

    goto/16 :goto_0

    :cond_7
    if-nez v5, :cond_8

    goto :goto_3

    .line 15255
    :cond_8
    iget v3, v0, Lads_mobile_sdk/as3;->q:I

    if-lez v3, :cond_c

    .line 15256
    iget-object v3, v0, Lads_mobile_sdk/as3;->r:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    iget v4, v0, Lads_mobile_sdk/as3;->q:I

    if-lt v3, v4, :cond_9

    goto :goto_3

    .line 15258
    :cond_9
    invoke-static {v2}, Lads_mobile_sdk/bs3;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    .line 15259
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16063
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 16064
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 16065
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "toString(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16066
    invoke-static {v1}, Lads_mobile_sdk/bs3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    const-string v1, ""

    .line 16067
    :cond_a
    iget-object v3, v0, Lads_mobile_sdk/as3;->r:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :goto_3
    return-void

    .line 16069
    :cond_b
    iget-object v3, v0, Lads_mobile_sdk/as3;->r:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 16072
    :cond_c
    invoke-virtual/range {p0 .. p1}, Lads_mobile_sdk/as3;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lkotlinx/coroutines/CoroutineScope;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    const-string v2, "backgroundScope"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object v3, v0, Lads_mobile_sdk/as3;->j:Lads_mobile_sdk/cn0;

    invoke-virtual {v3}, Lads_mobile_sdk/cn0;->b()V

    .line 103
    sput-object v0, Lads_mobile_sdk/sr3;->a:Lads_mobile_sdk/ur3;

    .line 104
    iget-object v3, v0, Lads_mobile_sdk/as3;->b:Lads_mobile_sdk/ex0;

    .line 106
    const-string v4, "gads:max_duplicate_crash:amount"

    const-string v5, "key"

    const/16 v6, 0xa

    invoke-static {v3, v4, v5, v6}, Lads_mobile_sdk/by0;->a(Lads_mobile_sdk/ex0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v6

    .line 107
    sget-object v7, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {v3, v4, v6, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 108
    iput v3, v0, Lads_mobile_sdk/as3;->q:I

    .line 109
    iget-object v3, v0, Lads_mobile_sdk/as3;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 111
    iget-object v4, v0, Lads_mobile_sdk/as3;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v6, 0x80

    if-eqz v4, :cond_0

    .line 112
    iget-object v7, v0, Lads_mobile_sdk/as3;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 113
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v4, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    const-string v4, ""

    .line 118
    :goto_0
    :try_start_0
    iget-object v7, v0, Lads_mobile_sdk/as3;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 119
    iget-object v8, v0, Lads_mobile_sdk/as3;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 120
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_1

    .line 122
    const-string v7, "com.google.unity.ads.UNITY_VERSION"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_1
    const/4 v6, 0x0

    .line 826
    :goto_1
    invoke-static {}, Lads_mobile_sdk/a21;->v()Lads_mobile_sdk/p11;

    move-result-object v7

    const-string v8, "newBuilder(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 827
    const-string v9, "builder"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 828
    sget-object v10, Lads_mobile_sdk/v11;->b:Lads_mobile_sdk/v11;

    .line 829
    const-string v11, "value"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1177
    invoke-virtual {v7}, Lads_mobile_sdk/p11;->j()V

    .line 1178
    sget-object v10, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v12, "RELEASE"

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1179
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1670
    invoke-virtual {v7, v10}, Lads_mobile_sdk/p11;->p(Ljava/lang/String;)V

    .line 1671
    sget-object v13, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v14, "MODEL"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1672
    invoke-static {v13, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2197
    invoke-virtual {v7, v13}, Lads_mobile_sdk/p11;->k(Ljava/lang/String;)V

    .line 2198
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2199
    invoke-virtual {v7, v15}, Lads_mobile_sdk/p11;->j(I)V

    move-object/from16 v16, v2

    .line 2200
    iget-object v2, v0, Lads_mobile_sdk/as3;->g:Ljava/lang/String;

    .line 2201
    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2573
    invoke-virtual {v7, v2}, Lads_mobile_sdk/p11;->y(Ljava/lang/String;)V

    .line 2574
    iget-object v2, v0, Lads_mobile_sdk/as3;->h:Ljava/lang/String;

    .line 2575
    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2964
    invoke-virtual {v7, v2}, Lads_mobile_sdk/p11;->g(Ljava/lang/String;)V

    .line 2965
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2966
    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3389
    invoke-virtual {v7, v3}, Lads_mobile_sdk/p11;->d(Ljava/lang/String;)V

    .line 3390
    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3830
    invoke-virtual {v7, v4}, Lads_mobile_sdk/p11;->e(Ljava/lang/String;)V

    .line 3831
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    const-string v1, "getCountry(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3832
    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4463
    invoke-virtual {v7, v2}, Lads_mobile_sdk/p11;->i(Ljava/lang/String;)V

    .line 4464
    iget-object v2, v0, Lads_mobile_sdk/as3;->f:Lads_mobile_sdk/ja1;

    invoke-virtual {v2}, Lads_mobile_sdk/ja1;->a()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4465
    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5641
    invoke-virtual {v7, v2}, Lads_mobile_sdk/p11;->q(Ljava/lang/String;)V

    .line 5642
    :cond_2
    iget-object v2, v0, Lads_mobile_sdk/as3;->j:Lads_mobile_sdk/cn0;

    .line 5643
    iget-object v2, v2, Lads_mobile_sdk/cn0;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5644
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v5

    const-string v5, "get(...)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lads_mobile_sdk/mm0;

    .line 5645
    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6187
    invoke-virtual {v7, v2}, Lads_mobile_sdk/p11;->a(Lads_mobile_sdk/mm0;)V

    .line 6188
    iget-object v2, v0, Lads_mobile_sdk/as3;->j:Lads_mobile_sdk/cn0;

    .line 6189
    iget-object v2, v2, Lads_mobile_sdk/cn0;->d:Ljava/util/concurrent/atomic/AtomicLong;

    move-object/from16 v18, v1

    .line 6190
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    .line 6191
    invoke-virtual {v7, v1, v2}, Lads_mobile_sdk/p11;->c(J)V

    .line 6192
    iget-object v1, v0, Lads_mobile_sdk/as3;->j:Lads_mobile_sdk/cn0;

    .line 6193
    iget-object v1, v1, Lads_mobile_sdk/cn0;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6194
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lads_mobile_sdk/om0;

    .line 6195
    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6761
    invoke-virtual {v7, v1}, Lads_mobile_sdk/p11;->a(Lads_mobile_sdk/om0;)V

    .line 6762
    iget-object v1, v0, Lads_mobile_sdk/as3;->j:Lads_mobile_sdk/cn0;

    invoke-virtual {v1}, Lads_mobile_sdk/cn0;->a()Lads_mobile_sdk/nm0;

    move-result-object v1

    .line 6763
    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7353
    invoke-virtual {v7, v1}, Lads_mobile_sdk/p11;->a(Lads_mobile_sdk/nm0;)V

    .line 7354
    iget-object v1, v0, Lads_mobile_sdk/as3;->b:Lads_mobile_sdk/ex0;

    .line 7355
    iget-object v1, v1, Lads_mobile_sdk/yr;->a:Lads_mobile_sdk/xw0;

    .line 7356
    check-cast v1, Lads_mobile_sdk/hr;

    .line 7357
    iget-boolean v1, v1, Lads_mobile_sdk/hr;->r:Z

    .line 7358
    invoke-virtual {v7, v1}, Lads_mobile_sdk/p11;->c(Z)V

    .line 7359
    iget-object v1, v0, Lads_mobile_sdk/as3;->b:Lads_mobile_sdk/ex0;

    .line 7360
    iget-object v1, v1, Lads_mobile_sdk/yr;->a:Lads_mobile_sdk/xw0;

    .line 7361
    check-cast v1, Lads_mobile_sdk/hr;

    .line 7362
    iget-boolean v1, v1, Lads_mobile_sdk/hr;->p:Z

    .line 7363
    invoke-virtual {v7, v1}, Lads_mobile_sdk/p11;->a(Z)V

    .line 7364
    iget-object v1, v0, Lads_mobile_sdk/as3;->b:Lads_mobile_sdk/ex0;

    .line 7365
    iget-object v1, v1, Lads_mobile_sdk/yr;->a:Lads_mobile_sdk/xw0;

    .line 7366
    check-cast v1, Lads_mobile_sdk/hr;

    .line 7367
    iget-boolean v1, v1, Lads_mobile_sdk/hr;->q:Z

    .line 7368
    invoke-virtual {v7, v1}, Lads_mobile_sdk/p11;->g(Z)V

    if-eqz v6, :cond_3

    .line 7369
    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9199
    invoke-virtual {v7, v6}, Lads_mobile_sdk/p11;->D(Ljava/lang/String;)V

    .line 9200
    :cond_3
    invoke-virtual {v7}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v1

    const-string v2, "build(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lads_mobile_sdk/a21;

    .line 9201
    invoke-static {}, Lads_mobile_sdk/e11;->w()Lads_mobile_sdk/b11;

    move-result-object v5

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9202
    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9203
    sget-object v7, Lads_mobile_sdk/ot1;->b:Lads_mobile_sdk/ot1;

    .line 9204
    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9351
    invoke-virtual {v5}, Lads_mobile_sdk/b11;->n()V

    .line 9352
    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9353
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9626
    invoke-virtual {v5, v10}, Lads_mobile_sdk/b11;->o(Ljava/lang/String;)V

    .line 9627
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9628
    invoke-static {v13, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9935
    invoke-virtual {v5, v13}, Lads_mobile_sdk/b11;->i(Ljava/lang/String;)V

    .line 9936
    invoke-virtual {v5, v15}, Lads_mobile_sdk/b11;->e(I)V

    .line 9937
    iget-object v7, v0, Lads_mobile_sdk/as3;->h:Ljava/lang/String;

    .line 9938
    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10109
    invoke-virtual {v5, v7}, Lads_mobile_sdk/b11;->s(Ljava/lang/String;)V

    .line 10110
    iget-object v7, v0, Lads_mobile_sdk/as3;->g:Ljava/lang/String;

    .line 10111
    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10299
    invoke-virtual {v5, v7}, Lads_mobile_sdk/b11;->c(Ljava/lang/String;)V

    .line 10300
    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10522
    invoke-virtual {v5, v3}, Lads_mobile_sdk/b11;->e(Ljava/lang/String;)V

    .line 10523
    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10762
    invoke-virtual {v5, v4}, Lads_mobile_sdk/b11;->f(Ljava/lang/String;)V

    .line 10763
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v18

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10764
    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11207
    invoke-virtual {v5, v3}, Lads_mobile_sdk/b11;->h(Ljava/lang/String;)V

    if-eqz v6, :cond_4

    .line 11208
    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12056
    invoke-virtual {v5, v6}, Lads_mobile_sdk/b11;->x(Ljava/lang/String;)V

    .line 12057
    :cond_4
    iget-object v3, v0, Lads_mobile_sdk/as3;->f:Lads_mobile_sdk/ja1;

    invoke-virtual {v3}, Lads_mobile_sdk/ja1;->a()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 12058
    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12784
    invoke-virtual {v5, v3}, Lads_mobile_sdk/b11;->p(Ljava/lang/String;)V

    .line 12785
    :cond_5
    invoke-virtual {v5}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lads_mobile_sdk/e11;

    .line 12786
    sget-object v2, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v4, v5}, Lkotlin/random/Random$Default;->nextDouble(D)D

    move-result-wide v6

    iget-object v8, v0, Lads_mobile_sdk/as3;->b:Lads_mobile_sdk/ex0;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12788
    const-string v9, "gads:cui_monitoring_session_sample_rate"

    move-object/from16 v10, v17

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide v11, 0x3f9eb851eb851eb8L    # 0.03

    .line 12807
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    sget-object v14, Lads_mobile_sdk/yr;->c:Lads_mobile_sdk/kr;

    invoke-virtual {v8, v9, v13, v14}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v17

    cmpg-double v6, v6, v17

    const/4 v8, 0x1

    if-gez v6, :cond_6

    move v6, v8

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    .line 12808
    :goto_2
    iput-boolean v6, v0, Lads_mobile_sdk/as3;->k:Z

    .line 12809
    invoke-virtual {v2, v4, v5}, Lkotlin/random/Random$Default;->nextDouble(D)D

    move-result-wide v17

    iget-object v6, v0, Lads_mobile_sdk/as3;->b:Lads_mobile_sdk/ex0;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12811
    const-string v13, "gads:trapped_exception_monitoring_session_sample_rate"

    invoke-static {v13, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12830
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-virtual {v6, v13, v15, v14}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v19

    cmpg-double v6, v17, v19

    if-gez v6, :cond_7

    move v6, v8

    goto :goto_3

    :cond_7
    const/4 v6, 0x0

    .line 12831
    :goto_3
    iput-boolean v6, v0, Lads_mobile_sdk/as3;->l:Z

    .line 12832
    invoke-virtual {v2, v4, v5}, Lkotlin/random/Random$Default;->nextDouble(D)D

    move-result-wide v17

    iget-object v6, v0, Lads_mobile_sdk/as3;->b:Lads_mobile_sdk/ex0;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12834
    const-string v15, "gads:untrapped_exception_monitoring_session_sample_rate"

    invoke-static {v15, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide v19, 0x3fb999999999999aL    # 0.1

    .line 12853
    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v6, v15, v7, v14}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    cmpg-double v6, v17, v6

    if-gez v6, :cond_8

    move v6, v8

    goto :goto_4

    :cond_8
    const/4 v6, 0x0

    .line 12854
    :goto_4
    iput-boolean v6, v0, Lads_mobile_sdk/as3;->m:Z

    .line 12856
    invoke-virtual {v2, v4, v5}, Lkotlin/random/Random$Default;->nextDouble(D)D

    move-result-wide v6

    iget-object v2, v0, Lads_mobile_sdk/as3;->b:Lads_mobile_sdk/ex0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide/from16 v17, v11

    .line 12858
    const-string v11, "gads:cui_monitoring_trace_failure_stacktrace_rate"

    invoke-static {v11, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide v21, 0x3f847ae147ae147bL    # 0.01

    .line 12877
    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v2, v11, v12, v14}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v11

    cmpg-double v2, v6, v11

    if-gez v2, :cond_9

    move v2, v8

    goto :goto_5

    :cond_9
    const/4 v2, 0x0

    .line 12878
    :goto_5
    iput-boolean v2, v0, Lads_mobile_sdk/as3;->n:Z

    .line 12881
    iget-object v2, v0, Lads_mobile_sdk/as3;->b:Lads_mobile_sdk/ex0;

    invoke-virtual {v2}, Lads_mobile_sdk/ex0;->n0()Ljava/util/Map;

    move-result-object v2

    .line 13546
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v7

    invoke-static {v7}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 13547
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 13548
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 13549
    check-cast v7, Ljava/util/Map$Entry;

    .line 13550
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    .line 13551
    sget-object v12, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {v12, v4, v5}, Lkotlin/random/Random$Default;->nextDouble(D)D

    move-result-wide v21

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v23

    cmpg-double v7, v21, v23

    if-gez v7, :cond_a

    move v7, v8

    goto :goto_7

    :cond_a
    const/4 v7, 0x0

    :goto_7
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 14219
    invoke-interface {v6, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 14220
    :cond_b
    iput-object v6, v0, Lads_mobile_sdk/as3;->o:Ljava/util/Map;

    .line 14223
    iget-object v2, v0, Lads_mobile_sdk/as3;->i:Lads_mobile_sdk/ks1;

    invoke-interface {v2}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/uv;

    .line 14224
    iget-object v4, v0, Lads_mobile_sdk/as3;->d:Lads_mobile_sdk/ms3;

    iget-object v5, v0, Lads_mobile_sdk/as3;->b:Lads_mobile_sdk/ex0;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14226
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14245
    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    sget-object v7, Lads_mobile_sdk/yr;->c:Lads_mobile_sdk/kr;

    invoke-virtual {v5, v9, v6, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    .line 14246
    iput-wide v5, v4, Lads_mobile_sdk/ms3;->l:D

    .line 14247
    iget-object v4, v0, Lads_mobile_sdk/as3;->d:Lads_mobile_sdk/ms3;

    iget-object v5, v0, Lads_mobile_sdk/as3;->b:Lads_mobile_sdk/ex0;

    invoke-virtual {v5}, Lads_mobile_sdk/ex0;->n0()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14248
    const-string v6, "<set-?>"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14749
    iput-object v5, v4, Lads_mobile_sdk/ms3;->m:Ljava/util/Map;

    .line 14750
    iget-object v4, v0, Lads_mobile_sdk/as3;->d:Lads_mobile_sdk/ms3;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v5, p1

    invoke-virtual {v4, v5, v1, v2}, Lads_mobile_sdk/b43;->a(Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/vz0;Lads_mobile_sdk/uv;)V

    .line 14751
    iget-object v1, v0, Lads_mobile_sdk/as3;->e:Lads_mobile_sdk/rq0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v4, v16

    .line 14752
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "baseMessage"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "chromeVariationsProvider"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14753
    iget-object v4, v1, Lads_mobile_sdk/b43;->c:Lads_mobile_sdk/ex0;

    .line 14754
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14756
    invoke-static {v13, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14775
    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v13, v6, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v11

    const-wide/16 v21, 0x0

    cmpl-double v4, v11, v21

    if-lez v4, :cond_c

    int-to-double v11, v8

    .line 14776
    iget-object v4, v1, Lads_mobile_sdk/b43;->c:Lads_mobile_sdk/ex0;

    .line 14777
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14779
    invoke-static {v13, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14798
    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v13, v6, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v13

    div-double/2addr v11, v13

    double-to-long v11, v11

    .line 14799
    iput-wide v11, v1, Lads_mobile_sdk/rq0;->l:J

    .line 14800
    :cond_c
    iget-object v4, v1, Lads_mobile_sdk/b43;->c:Lads_mobile_sdk/ex0;

    .line 14801
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14803
    invoke-static {v15, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14822
    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v15, v6, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v11

    cmpl-double v4, v11, v21

    if-lez v4, :cond_d

    int-to-double v11, v8

    .line 14823
    iget-object v4, v1, Lads_mobile_sdk/b43;->c:Lads_mobile_sdk/ex0;

    .line 14824
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14826
    invoke-static {v15, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14845
    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v15, v6, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    div-double/2addr v11, v6

    double-to-long v6, v11

    .line 14846
    iput-wide v6, v1, Lads_mobile_sdk/rq0;->m:J

    .line 14848
    :cond_d
    invoke-virtual {v1, v5, v3, v2}, Lads_mobile_sdk/b43;->a(Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/vz0;Lads_mobile_sdk/uv;)V

    .line 14849
    iget-object v1, v0, Lads_mobile_sdk/as3;->f:Lads_mobile_sdk/ja1;

    invoke-virtual {v1}, Lads_mobile_sdk/ja1;->a()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->getSdkCrashReportingDisabled()Z

    move-result v1

    goto :goto_8

    :cond_e
    const/4 v1, 0x0

    .line 14851
    :goto_8
    iget-object v2, v0, Lads_mobile_sdk/as3;->b:Lads_mobile_sdk/ex0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14853
    const-string v3, "gads:uncaught_exception_handler"

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14869
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v5, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v2, v3, v4, v5}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_f

    if-nez v1, :cond_f

    move v7, v8

    goto :goto_9

    :cond_f
    const/4 v7, 0x0

    .line 14870
    :goto_9
    iput-boolean v7, v0, Lads_mobile_sdk/as3;->p:Z

    if-eqz v7, :cond_10

    .line 14873
    invoke-virtual {v0}, Lads_mobile_sdk/as3;->a()V

    :cond_10
    return-void
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 12

    .line 1
    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    sget-object v0, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance v0, Lads_mobile_sdk/yr3;

    invoke-direct {v0, p1}, Lads_mobile_sdk/yr3;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lads_mobile_sdk/f01;->a(Lkotlin/jvm/functions/Function0;)V

    .line 347
    iget-boolean v0, p0, Lads_mobile_sdk/as3;->m:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    move-object v2, p1

    move v3, v0

    move v4, v3

    :goto_0
    if-eqz v2, :cond_4

    .line 348
    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 349
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v6, v5

    move v7, v0

    :goto_1
    if-ge v7, v6, :cond_3

    aget-object v8, v5, v7

    .line 350
    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "getClassName(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "com.google.android.libraries.ads.mobile.sdk"

    const/4 v11, 0x2

    invoke-static {v9, v10, v0, v11, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_0

    move v3, v10

    .line 354
    :cond_0
    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    const-class v11, Lads_mobile_sdk/as3;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 355
    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    const-class v9, Lads_mobile_sdk/rq0;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    move v4, v10

    .line 361
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    if-nez v4, :cond_5

    .line 362
    iget-object v0, p0, Lads_mobile_sdk/as3;->e:Lads_mobile_sdk/rq0;

    .line 363
    new-instance v2, Lads_mobile_sdk/tq0;

    .line 368
    iget-object v3, p0, Lads_mobile_sdk/as3;->c:Lads_mobile_sdk/tx;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v9, -0x1

    const/4 v10, 0x0

    .line 370
    const-string v4, "UNTRAPPED_EXCEPTION"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    invoke-direct/range {v2 .. v10}, Lads_mobile_sdk/tq0;-><init>(Ljava/lang/Throwable;Ljava/lang/String;Lads_mobile_sdk/ks3;ZJIZ)V

    .line 371
    invoke-virtual {v0, v2}, Lads_mobile_sdk/b43;->a(Ljava/lang/Object;)V

    .line 382
    :cond_5
    sget-object p1, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    new-instance v0, Lads_mobile_sdk/zr3;

    invoke-direct {v0, p0, v1}, Lads_mobile_sdk/zr3;-><init>(Lads_mobile_sdk/as3;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v0}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    return-void
.end method
