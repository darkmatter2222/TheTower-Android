.class final Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AndroidRemoteCacheDataSource.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource;->getFileInternal(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/unity3d/ads/core/data/model/CacheResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidRemoteCacheDataSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidRemoteCacheDataSource.kt\ncom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,194:1\n1#2:195\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/unity3d/ads/core/data/model/CacheResult;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.unity3d.ads.core.data.datasource.AndroidRemoteCacheDataSource$getFileInternal$2"
    f = "AndroidRemoteCacheDataSource.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2
    }
    l = {
        0x4e,
        0x4f,
        0x84
    }
    m = "invokeSuspend"
    n = {
        "$this$withContext",
        "file",
        "etagFile",
        "request",
        "fileSizeBefore",
        "$this$withContext",
        "file",
        "etagFile",
        "fileSizeBefore",
        "$this$withContext",
        "file",
        "etagFile",
        "response",
        "totalBytesRead",
        "nextProgressDeadline",
        "inputStream",
        "buffer",
        "bytesRead",
        "bufferedSink",
        "effectiveFileSizeBefore",
        "absoluteTotal"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "J$0",
        "L$0",
        "L$1",
        "L$2",
        "J$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$8",
        "L$9",
        "L$10",
        "L$13",
        "J$0",
        "J$1"
    }
.end annotation


# instance fields
.field final synthetic $cachePath:Ljava/io/File;

.field final synthetic $fileName:Ljava/lang/String;

.field final synthetic $intervalMs:I

.field final synthetic $onProgress:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $priority:Ljava/lang/Integer;

.field final synthetic $url:Ljava/lang/String;

.field I$0:I

.field J$0:J

.field J$1:J

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$10:Ljava/lang/Object;

.field L$11:Ljava/lang/Object;

.field L$12:Ljava/lang/Object;

.field L$13:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field L$8:Ljava/lang/Object;

.field L$9:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource;Ljava/io/File;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "I",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->this$0:Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource;

    iput-object p3, p0, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->$cachePath:Ljava/io/File;

    iput-object p4, p0, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->$fileName:Ljava/lang/String;

    iput-object p5, p0, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->$priority:Ljava/lang/Integer;

    iput p6, p0, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->$intervalMs:I

    iput-object p7, p0, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->$onProgress:Lkotlin/jvm/functions/Function3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->this$0:Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource;

    iget-object v3, p0, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->$cachePath:Ljava/io/File;

    iget-object v4, p0, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->$fileName:Ljava/lang/String;

    iget-object v5, p0, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->$priority:Ljava/lang/Integer;

    iget v6, p0, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->$intervalMs:I

    iget-object v7, p0, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->$onProgress:Lkotlin/jvm/functions/Function3;

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;-><init>(Ljava/lang/String;Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource;Ljava/io/File;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/data/model/CacheResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 48

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 46
    iget v2, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->label:I

    const/16 v6, 0x22

    const-string v7, ""

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v12, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v12, :cond_2

    if-eq v2, v9, :cond_1

    if-ne v2, v8, :cond_0

    iget v2, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->I$0:I

    iget-wide v14, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->J$1:J

    const-wide/16 v16, 0x0

    iget-wide v10, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->J$0:J

    iget-object v6, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->L$13:Ljava/lang/Object;

    check-cast v6, Lokio/BufferedSink;

    iget-object v9, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->L$12:Ljava/lang/Object;

    check-cast v9, Ljava/io/Closeable;

    iget-object v12, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->L$11:Ljava/lang/Object;

    check-cast v12, Ljava/io/Closeable;

    iget-object v4, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->L$10:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v8, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->L$9:Ljava/lang/Object;

    check-cast v8, [B

    const/16 v19, 0x0

    iget-object v5, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->L$8:Ljava/lang/Object;

    check-cast v5, Ljava/io/InputStream;

    iget-object v3, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->L$7:Ljava/lang/Object;

    check-cast v3, Ljava/io/Closeable;

    iget-object v13, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->L$6:Ljava/lang/Object;

    check-cast v13, Lkotlin/jvm/functions/Function3;

    move/from16 v21, v2

    iget-object v2, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->L$5:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$LongRef;

    move-object/from16 v22, v2

    iget-object v2, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$IntRef;

    move-object/from16 v23, v2

    iget-object v2, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->L$3:Ljava/lang/Object;

    check-cast v2, Lcom/unity3d/services/core/network/model/HttpResponse;

    move-object/from16 v24, v2

    iget-object v2, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    move-object/from16 v25, v2

    iget-object v2, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    move-object/from16 v26, v2

    iget-object v2, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v18, v12

    move-object v12, v6

    move-object/from16 v6, v18

    move-object/from16 v20, v7

    move-object/from16 v18, v8

    move-object v7, v13

    move-wide/from16 v27, v14

    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object v13, v0

    move-object v8, v2

    move-object v15, v5

    move-object v14, v9

    move-object/from16 v9, v22

    move-object/from16 v2, v23

    move-object/from16 v5, v26

    move-wide/from16 v22, v10

    move-object v10, v3

    move-object v11, v4

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    const/16 v24, 0x0

    :goto_0
    move/from16 v0, v21

    goto/16 :goto_c

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object/from16 v20, v7

    move-object/from16 v29, v23

    move-object/from16 v28, v24

    move-object/from16 v30, v25

    move-object/from16 v5, v26

    goto/16 :goto_12

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-wide/16 v16, 0x0

    const/16 v19, 0x0

    iget-wide v2, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->J$0:J

    iget-object v4, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->L$2:Ljava/lang/Object;

    check-cast v4, Ljava/io/File;

    iget-object v5, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/io/File;

    iget-object v8, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide v10, v2

    move-object v2, v4

    move-object/from16 v4, p1

    goto/16 :goto_6

    :cond_2
    const-wide/16 v16, 0x0

    const/16 v19, 0x0

    iget-wide v2, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->J$0:J

    iget-object v4, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->L$3:Ljava/lang/Object;

    check-cast v4, Lcom/unity3d/services/core/network/model/HttpRequest;

    iget-object v5, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->L$2:Ljava/lang/Object;

    check-cast v5, Ljava/io/File;

    iget-object v8, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->L$1:Ljava/lang/Object;

    check-cast v8, Ljava/io/File;

    iget-object v10, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->L$0:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v10

    move-object v10, v8

    move-object v8, v11

    move-object/from16 v11, p1

    goto/16 :goto_4

    :cond_3
    const-wide/16 v16, 0x0

    const/16 v19, 0x0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 47
    iget-object v3, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->$url:Ljava/lang/String;

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_28

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_20

    .line 51
    :cond_4
    iget-object v3, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->this$0:Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource;

    invoke-static {v3}, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource;->access$getSessionRepository$p(Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource;)Lcom/unity3d/ads/core/data/repository/SessionRepository;

    move-result-object v3

    invoke-interface {v3}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getFeatureFlags()Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    move-result-object v3

    invoke-virtual {v3}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->getEnsureCacheFolderExistences()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 52
    iget-object v3, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->$cachePath:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 53
    iget-object v3, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->$cachePath:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_6

    .line 54
    new-instance v21, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;

    sget-object v22, Lcom/unity3d/ads/core/data/model/CacheError;->FILE_IO_ERROR:Lcom/unity3d/ads/core/data/model/CacheError;

    sget-object v23, Lcom/unity3d/ads/core/data/model/CacheSource;->REMOTE:Lcom/unity3d/ads/core/data/model/CacheSource;

    const/16 v25, 0x4

    const/16 v26, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v21 .. v26}, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;-><init>(Lcom/unity3d/ads/core/data/model/CacheError;Lcom/unity3d/ads/core/data/model/CacheSource;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v21

    .line 56
    :cond_5
    iget-object v3, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->$cachePath:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->$cachePath:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_6

    .line 57
    new-instance v21, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;

    sget-object v22, Lcom/unity3d/ads/core/data/model/CacheError;->FILE_IO_ERROR:Lcom/unity3d/ads/core/data/model/CacheError;

    sget-object v23, Lcom/unity3d/ads/core/data/model/CacheSource;->REMOTE:Lcom/unity3d/ads/core/data/model/CacheSource;

    const/16 v25, 0x4

    const/16 v26, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v21 .. v26}, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;-><init>(Lcom/unity3d/ads/core/data/model/CacheError;Lcom/unity3d/ads/core/data/model/CacheSource;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v21

    .line 61
    :cond_6
    iget-object v3, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->this$0:Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource;

    invoke-static {v3}, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource;->access$getCreateFile$p(Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource;)Lcom/unity3d/ads/core/domain/CreateFile;

    move-result-object v3

    iget-object v4, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->$cachePath:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->$fileName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ".part"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/unity3d/ads/core/domain/CreateFile;->invoke(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 62
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 63
    :cond_7
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 64
    iget-object v5, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->this$0:Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource;

    invoke-static {v5}, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource;->access$getCreateFile$p(Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource;)Lcom/unity3d/ads/core/domain/CreateFile;

    move-result-object v5

    iget-object v10, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->$cachePath:Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->$fileName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ".etag"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Lcom/unity3d/ads/core/domain/CreateFile;->invoke(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 65
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_8

    move-object v10, v5

    goto :goto_1

    :cond_8
    const/4 v10, 0x0

    :goto_1
    if-eqz v10, :cond_9

    const/4 v11, 0x0

    invoke-static {v10, v11, v12, v11}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    :cond_9
    const/4 v10, 0x0

    .line 67
    :goto_2
    invoke-static {}, Lkotlin/collections/MapsKt;->createMapBuilder()Ljava/util/Map;

    move-result-object v11

    cmp-long v13, v3, v16

    if-lez v13, :cond_a

    .line 68
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "bytes="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x2d

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const-string v14, "Range"

    invoke-interface {v11, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    if-eqz v10, :cond_b

    .line 69
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "\""

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const-string v13, "If-Range"

    invoke-interface {v11, v13, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_b
    invoke-static {v11}, Lkotlin/collections/MapsKt;->build(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v26

    .line 74
    iget-object v10, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->$priority:Ljava/lang/Integer;

    if-eqz v10, :cond_c

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move/from16 v39, v10

    goto :goto_3

    :cond_c
    const v39, 0x7fffffff

    .line 72
    :goto_3
    new-instance v21, Lcom/unity3d/services/core/network/model/HttpRequest;

    .line 73
    iget-object v10, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->$url:Ljava/lang/String;

    const v40, 0x1ffee

    const/16 v41, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v22, v10

    .line 72
    invoke-direct/range {v21 .. v41}, Lcom/unity3d/services/core/network/model/HttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/services/core/network/model/RequestType;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/services/core/network/model/BodyType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;IIIIZLcom/unity3d/ads/core/data/model/OperationType;Ljava/io/File;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v10, v21

    .line 78
    iget-object v11, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->this$0:Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource;

    invoke-static {v11}, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource;->access$getHttpClientProvider$p(Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource;)Lcom/unity3d/ads/core/domain/HttpClientProvider;

    move-result-object v11

    move-object v13, v1

    check-cast v13, Lkotlin/coroutines/Continuation;

    iput-object v2, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->L$0:Ljava/lang/Object;

    iput-object v8, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->L$1:Ljava/lang/Object;

    iput-object v5, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->L$2:Ljava/lang/Object;

    iput-object v10, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->L$3:Ljava/lang/Object;

    iput-wide v3, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->J$0:J

    iput v12, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->label:I

    invoke-interface {v11, v13}, Lcom/unity3d/ads/core/domain/HttpClientProvider;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v0, :cond_d

    goto :goto_5

    :cond_d
    move-object/from16 v44, v8

    move-object v8, v2

    move-wide v2, v3

    move-object v4, v10

    move-object/from16 v10, v44

    .line 46
    :goto_4
    check-cast v11, Lcom/unity3d/services/core/network/core/HttpClient;

    .line 79
    move-object v13, v1

    check-cast v13, Lkotlin/coroutines/Continuation;

    iput-object v8, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->L$0:Ljava/lang/Object;

    iput-object v10, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->L$1:Ljava/lang/Object;

    iput-object v5, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->L$2:Ljava/lang/Object;

    const/4 v14, 0x0

    iput-object v14, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->L$3:Ljava/lang/Object;

    iput-wide v2, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->J$0:J

    iput v9, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->label:I

    invoke-interface {v11, v4, v12, v13}, Lcom/unity3d/services/core/network/core/HttpClient;->execute(Lcom/unity3d/services/core/network/model/HttpRequest;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_e

    :goto_5
    move-object v13, v0

    goto/16 :goto_b

    :cond_e
    move-wide/from16 v44, v2

    move-object v2, v5

    move-object v5, v10

    move-wide/from16 v10, v44

    .line 46
    :goto_6
    move-object v3, v4

    check-cast v3, Lcom/unity3d/services/core/network/model/HttpResponse;

    .line 81
    invoke-static {v3}, Lcom/unity3d/services/core/network/model/HttpResponseKt;->isSuccessful(Lcom/unity3d/services/core/network/model/HttpResponse;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 82
    new-instance v0, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;

    .line 83
    sget-object v2, Lcom/unity3d/ads/core/data/model/CacheError;->NETWORK_ERROR:Lcom/unity3d/ads/core/data/model/CacheError;

    .line 84
    sget-object v4, Lcom/unity3d/ads/core/data/model/CacheSource;->REMOTE:Lcom/unity3d/ads/core/data/model/CacheSource;

    .line 85
    new-instance v5, Ljava/lang/Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Request failed with status code "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/unity3d/services/core/network/model/HttpResponse;->getStatusCode()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    .line 82
    invoke-direct {v0, v2, v4, v5}, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;-><init>(Lcom/unity3d/ads/core/data/model/CacheError;Lcom/unity3d/ads/core/data/model/CacheSource;Ljava/lang/Throwable;)V

    return-object v0

    .line 90
    :cond_f
    invoke-virtual {v3}, Lcom/unity3d/services/core/network/model/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v4

    const-string v13, "ETag"

    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_10

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_10

    new-array v12, v12, [C

    aput-char v6, v12, v19

    invoke-static {v4, v12}, Lkotlin/text/StringsKt;->trim(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_11

    :cond_10
    move-object v4, v7

    .line 91
    :cond_11
    move-object v6, v4

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_12

    goto :goto_7

    :cond_12
    const/4 v4, 0x0

    :goto_7
    const/4 v14, 0x0

    if-eqz v4, :cond_13

    invoke-static {v2, v4, v14, v9, v14}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_13
    cmp-long v4, v10, v16

    if-lez v4, :cond_14

    .line 94
    invoke-virtual {v3}, Lcom/unity3d/services/core/network/model/HttpResponse;->getStatusCode()I

    move-result v4

    const/16 v6, 0xc8

    if-ne v4, v6, :cond_14

    .line 95
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 96
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    move-wide/from16 v10, v16

    .line 102
    :cond_14
    invoke-virtual {v3}, Lcom/unity3d/services/core/network/model/HttpResponse;->getBody()Ljava/lang/Object;

    move-result-object v4

    instance-of v6, v4, Ljava/io/InputStream;

    if-eqz v6, :cond_15

    check-cast v4, Ljava/io/InputStream;

    goto :goto_8

    :cond_15
    move-object v4, v14

    :goto_8
    if-nez v4, :cond_16

    .line 103
    new-instance v0, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;

    .line 104
    sget-object v2, Lcom/unity3d/ads/core/data/model/CacheError;->NETWORK_ERROR:Lcom/unity3d/ads/core/data/model/CacheError;

    .line 105
    sget-object v3, Lcom/unity3d/ads/core/data/model/CacheSource;->REMOTE:Lcom/unity3d/ads/core/data/model/CacheSource;

    .line 106
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Response body is not an InputStream"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    .line 103
    invoke-direct {v0, v2, v3, v4}, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;-><init>(Lcom/unity3d/ads/core/data/model/CacheError;Lcom/unity3d/ads/core/data/model/CacheSource;Ljava/lang/Throwable;)V

    return-object v0

    .line 109
    :cond_16
    invoke-virtual {v3}, Lcom/unity3d/services/core/network/model/HttpResponse;->getStatusCode()I

    move-result v6

    const/16 v9, 0xce

    if-ne v6, v9, :cond_17

    invoke-virtual {v3}, Lcom/unity3d/services/core/network/model/HttpResponse;->getContentSize()J

    move-result-wide v12

    cmp-long v6, v12, v16

    if-lez v6, :cond_17

    .line 110
    invoke-virtual {v3}, Lcom/unity3d/services/core/network/model/HttpResponse;->getContentSize()J

    move-result-wide v12

    add-long/2addr v12, v10

    goto :goto_9

    .line 112
    :cond_17
    invoke-virtual {v3}, Lcom/unity3d/services/core/network/model/HttpResponse;->getContentSize()J

    move-result-wide v12

    .line 115
    :goto_9
    new-instance v6, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 116
    new-instance v9, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    sget-object v15, Lkotlin/time/TimeSource$Monotonic;->INSTANCE:Lkotlin/time/TimeSource$Monotonic;

    invoke-virtual {v15}, Lkotlin/time/TimeSource$Monotonic;->markNow-z9LOYto()J

    move-result-wide v14

    sget-object v21, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    move-object/from16 v21, v2

    iget v2, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->$intervalMs:I

    move-object/from16 p1, v3

    sget-object v3, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v2, v3}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v2

    invoke-static {v14, v15, v2, v3}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->plus-LRDsOJo(JJ)J

    move-result-wide v2

    iput-wide v2, v9, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 118
    iget-object v2, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->$onProgress:Lkotlin/jvm/functions/Function3;

    iget v3, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->$intervalMs:I

    :try_start_1
    sget-object v14, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 119
    check-cast v4, Ljava/io/Closeable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_16

    :try_start_2
    move-object v14, v4

    check-cast v14, Ljava/io/InputStream;

    const/16 v15, 0x2000

    .line 120
    new-array v15, v15, [B

    .line 121
    new-instance v22, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct/range {v22 .. v22}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 123
    invoke-static {v5}, Lokio/Okio;->appendingSink(Ljava/io/File;)Lokio/Sink;

    move-result-object v23

    check-cast v23, Ljava/io/Closeable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_13

    :try_start_3
    move-object/from16 v24, v23

    check-cast v24, Lokio/Sink;

    .line 124
    invoke-static/range {v24 .. v24}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v24

    check-cast v24, Ljava/io/Closeable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_10

    :try_start_4
    move-object/from16 v25, v24

    check-cast v25, Lokio/BufferedSink;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_d

    move-wide/from16 v42, v12

    move-object/from16 v12, v25

    move-wide/from16 v25, v42

    move-object/from16 v27, v0

    move-object/from16 v20, v7

    move-object/from16 v13, v24

    const/16 v24, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object v7, v2

    move-object v2, v6

    move-object/from16 v6, v23

    move/from16 v44, v3

    move-object/from16 v3, p1

    move-object/from16 v45, v21

    move/from16 v21, v44

    move-wide/from16 v46, v10

    move-object v10, v4

    move-object/from16 v4, v45

    move-object/from16 v11, v22

    move-wide/from16 v22, v46

    .line 125
    :goto_a
    :try_start_5
    invoke-virtual {v14, v15}, Ljava/io/InputStream;->read([B)I

    move-result v0

    iput v0, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_c

    move-object/from16 v28, v13

    const/4 v13, -0x1

    if-eq v0, v13, :cond_1b

    .line 127
    :try_start_6
    iget v0, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move/from16 v13, v19

    invoke-interface {v12, v15, v13, v0}, Lokio/BufferedSink;->write([BII)Lokio/BufferedSink;

    .line 128
    invoke-interface {v12}, Lokio/BufferedSink;->flush()V

    .line 129
    iget v0, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v13, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v0, v13

    iput v0, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-eqz v7, :cond_1a

    move-object v0, v12

    .line 131
    iget-wide v12, v9, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v12, v13}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->hasPassedNow-impl(J)Z

    move-result v12

    if-eqz v12, :cond_19

    .line 132
    iget v12, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    int-to-long v12, v12

    add-long v12, v22, v12

    invoke-static {v12, v13}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static/range {v25 .. v26}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v13

    iput-object v8, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->L$0:Ljava/lang/Object;

    iput-object v5, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->L$1:Ljava/lang/Object;

    iput-object v4, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->L$2:Ljava/lang/Object;

    iput-object v3, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->L$3:Ljava/lang/Object;

    iput-object v2, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->L$4:Ljava/lang/Object;

    iput-object v9, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->L$5:Ljava/lang/Object;

    iput-object v7, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->L$6:Ljava/lang/Object;

    iput-object v10, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->L$7:Ljava/lang/Object;

    iput-object v14, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->L$8:Ljava/lang/Object;

    iput-object v15, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->L$9:Ljava/lang/Object;

    iput-object v11, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->L$10:Ljava/lang/Object;

    iput-object v6, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->L$11:Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    move-object/from16 v29, v2

    move-object/from16 v2, v28

    :try_start_7
    iput-object v2, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->L$12:Ljava/lang/Object;

    iput-object v0, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->L$13:Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    move-object/from16 v28, v3

    move-object/from16 v30, v4

    move-wide/from16 v3, v22

    :try_start_8
    iput-wide v3, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->J$0:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-wide/from16 v22, v3

    move-wide/from16 v3, v25

    :try_start_9
    iput-wide v3, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->J$1:J

    move-object/from16 v25, v0

    move/from16 v0, v21

    iput v0, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->I$0:I

    move/from16 v21, v0

    const/4 v0, 0x3

    iput v0, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->label:I

    invoke-interface {v7, v12, v13, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_b

    move-object/from16 v13, v27

    if-ne v12, v13, :cond_18

    :goto_b
    return-object v13

    :cond_18
    move-wide/from16 v44, v3

    move-object/from16 v3, v28

    move-wide/from16 v27, v44

    move-object/from16 v18, v15

    move-object/from16 v12, v25

    move-object/from16 v4, v30

    move-object v15, v14

    move-object v14, v2

    move-object/from16 v2, v29

    goto/16 :goto_0

    .line 133
    :goto_c
    :try_start_a
    sget-object v21, Lkotlin/time/TimeSource$Monotonic;->INSTANCE:Lkotlin/time/TimeSource$Monotonic;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-object/from16 p1, v2

    move-object/from16 v25, v3

    :try_start_b
    invoke-virtual/range {v21 .. v21}, Lkotlin/time/TimeSource$Monotonic;->markNow-z9LOYto()J

    move-result-wide v2

    sget-object v21, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-object/from16 v21, v4

    :try_start_c
    sget-object v4, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-object/from16 v29, v5

    :try_start_d
    invoke-static {v0, v4}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->plus-LRDsOJo(JJ)J

    move-result-wide v2

    iput-wide v2, v9, Lkotlin/jvm/internal/Ref$LongRef;->element:J
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-object/from16 v2, p1

    move-object/from16 v4, v21

    move-object/from16 v3, v25

    move-wide/from16 v25, v27

    move-object/from16 v5, v29

    const/16 v19, 0x0

    move/from16 v21, v0

    move-object/from16 v27, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v18

    goto/16 :goto_a

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v12, v6

    move-object v3, v10

    move-object v9, v14

    move-object/from16 v30, v21

    move-wide/from16 v10, v22

    move-object/from16 v28, v25

    move-object/from16 v5, v29

    goto :goto_f

    :catchall_2
    move-exception v0

    goto :goto_e

    :catchall_3
    move-exception v0

    goto :goto_d

    :catchall_4
    move-exception v0

    move-object/from16 p1, v2

    move-object/from16 v25, v3

    :goto_d
    move-object/from16 v21, v4

    :goto_e
    move-object/from16 v29, v5

    move-object v2, v0

    move-object v12, v6

    move-object v3, v10

    move-object v9, v14

    move-object/from16 v30, v21

    move-wide/from16 v10, v22

    move-object/from16 v28, v25

    :goto_f
    move-object/from16 v29, p1

    goto/16 :goto_12

    :catchall_5
    move-exception v0

    move-wide/from16 v22, v3

    goto/16 :goto_11

    :catchall_6
    move-exception v0

    move-object/from16 v28, v3

    move-object/from16 v30, v4

    goto/16 :goto_11

    :cond_19
    move-object/from16 v29, v2

    move-object/from16 v30, v4

    move-object/from16 v2, v28

    move-object/from16 v28, v3

    move-wide/from16 v3, v25

    move-object/from16 v25, v0

    goto :goto_10

    :cond_1a
    move-object/from16 v29, v2

    move-object/from16 v30, v4

    move-object/from16 v2, v28

    move-object/from16 v28, v3

    move-wide/from16 v3, v25

    move-object/from16 v25, v12

    :goto_10
    move-object/from16 v13, v27

    move-object/from16 v27, v13

    move-object/from16 v12, v25

    const/16 v19, 0x0

    move-object v13, v2

    move-wide/from16 v25, v3

    move-object/from16 v3, v28

    move-object/from16 v2, v29

    move-object/from16 v4, v30

    goto/16 :goto_a

    :catchall_7
    move-exception v0

    move-object/from16 v29, v2

    move-object/from16 v30, v4

    move-object/from16 v2, v28

    move-object/from16 v28, v3

    goto/16 :goto_11

    :cond_1b
    move-object/from16 v29, v2

    move-object/from16 v30, v4

    move-object/from16 v2, v28

    move-object/from16 v28, v3

    .line 136
    :try_start_e
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    move-object/from16 v0, v24

    .line 124
    :try_start_f
    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 137
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    move-object/from16 v0, v42

    .line 123
    :try_start_10
    invoke-static {v6, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 138
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    move-object/from16 v0, v43

    .line 119
    :try_start_11
    invoke-static {v10, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 139
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 118
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    move-wide/from16 v6, v22

    move-object/from16 v3, v28

    move-object/from16 v2, v29

    move-object/from16 v4, v30

    goto/16 :goto_19

    :catchall_8
    move-exception v0

    move-wide/from16 v10, v22

    move-object/from16 v3, v28

    move-object/from16 v6, v29

    move-object/from16 v2, v30

    goto/16 :goto_18

    :catchall_9
    move-exception v0

    move-object v2, v0

    move-object v4, v10

    move-wide/from16 v10, v22

    move-object/from16 v3, v28

    move-object/from16 v6, v29

    goto :goto_15

    :catchall_a
    move-exception v0

    move-object v2, v0

    move-object v12, v6

    move-object v4, v10

    move-wide/from16 v10, v22

    goto :goto_13

    :catchall_b
    move-exception v0

    goto :goto_11

    :catchall_c
    move-exception v0

    move-object/from16 v29, v2

    move-object/from16 v28, v3

    move-object/from16 v30, v4

    move-object v2, v13

    :goto_11
    move-object v9, v2

    move-object v12, v6

    move-object v3, v10

    move-wide/from16 v10, v22

    move-object v2, v0

    goto :goto_12

    :catchall_d
    move-exception v0

    move-object/from16 v20, v7

    move-object/from16 v28, p1

    move-object v2, v0

    move-object v3, v4

    move-object/from16 v29, v6

    move-object/from16 v30, v21

    move-object/from16 v12, v23

    move-object/from16 v9, v24

    .line 124
    :goto_12
    :try_start_12
    throw v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_e

    :catchall_e
    move-exception v0

    :try_start_13
    invoke-static {v9, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_f

    :catchall_f
    move-exception v0

    move-object v2, v0

    move-object v4, v3

    :goto_13
    move-object/from16 v3, v28

    move-object/from16 v6, v29

    goto :goto_14

    :catchall_10
    move-exception v0

    move-object/from16 v20, v7

    move-object/from16 v3, p1

    move-object v2, v0

    move-object/from16 v30, v21

    move-object/from16 v12, v23

    .line 123
    :goto_14
    :try_start_14
    throw v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_11

    :catchall_11
    move-exception v0

    :try_start_15
    invoke-static {v12, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_12

    :catchall_12
    move-exception v0

    move-object v2, v0

    :goto_15
    move-object/from16 v21, v30

    goto :goto_16

    :catchall_13
    move-exception v0

    move-object/from16 v20, v7

    move-object/from16 v3, p1

    move-object v2, v0

    .line 119
    :goto_16
    :try_start_16
    throw v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_14

    :catchall_14
    move-exception v0

    :try_start_17
    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_15

    :catchall_15
    move-exception v0

    :goto_17
    move-object/from16 v2, v21

    goto :goto_18

    :catchall_16
    move-exception v0

    move-object/from16 v20, v7

    move-object/from16 v3, p1

    goto :goto_17

    .line 118
    :goto_18
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v2

    move-object v2, v6

    move-wide v6, v10

    .line 139
    :goto_19
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 140
    new-instance v2, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;

    .line 141
    sget-object v3, Lcom/unity3d/ads/core/data/model/CacheError;->NETWORK_ERROR:Lcom/unity3d/ads/core/data/model/CacheError;

    .line 142
    sget-object v4, Lcom/unity3d/ads/core/data/model/CacheSource;->REMOTE:Lcom/unity3d/ads/core/data/model/CacheSource;

    .line 140
    invoke-direct {v2, v3, v4, v0}, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;-><init>(Lcom/unity3d/ads/core/data/model/CacheError;Lcom/unity3d/ads/core/data/model/CacheSource;Ljava/lang/Throwable;)V

    return-object v2

    .line 147
    :cond_1c
    invoke-virtual {v3}, Lcom/unity3d/services/core/network/model/HttpResponse;->getStatusCode()I

    move-result v0

    const/16 v9, 0xce

    if-ne v0, v9, :cond_1d

    .line 148
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v3}, Lcom/unity3d/services/core/network/model/HttpResponse;->getContentSize()J

    move-result-wide v10

    add-long/2addr v10, v6

    cmp-long v0, v8, v10

    if-nez v0, :cond_27

    goto :goto_1a

    .line 149
    :cond_1d
    invoke-virtual {v3}, Lcom/unity3d/services/core/network/model/HttpResponse;->getContentSize()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-eqz v0, :cond_1e

    .line 150
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v3}, Lcom/unity3d/services/core/network/model/HttpResponse;->getContentSize()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-nez v0, :cond_27

    goto :goto_1a

    .line 153
    :cond_1e
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v0, v6, v16

    if-lez v0, :cond_27

    .line 160
    :goto_1a
    new-instance v9, Ljava/io/File;

    iget-object v0, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->$cachePath:Ljava/io/File;

    iget-object v6, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->$fileName:Ljava/lang/String;

    invoke-direct {v9, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 162
    :try_start_18
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 163
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 164
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_1b

    :cond_1f
    const-string v0, "Final file exists and could not be deleted before overwriting"

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 168
    :cond_20
    :goto_1b
    invoke-virtual {v5, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 171
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 172
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_1c

    :cond_21
    const-string v0, "Could not delete Etag file after successful download"

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 174
    :cond_22
    :goto_1c
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 162
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1d

    .line 168
    :cond_23
    const-string v0, "Could not rename temporary file to final file"

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_17

    :catchall_17
    move-exception v0

    .line 162
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 174
    :goto_1d
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 175
    new-instance v2, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;

    .line 176
    sget-object v3, Lcom/unity3d/ads/core/data/model/CacheError;->FILE_STATE_WRONG:Lcom/unity3d/ads/core/data/model/CacheError;

    .line 177
    sget-object v4, Lcom/unity3d/ads/core/data/model/CacheSource;->REMOTE:Lcom/unity3d/ads/core/data/model/CacheSource;

    .line 175
    invoke-direct {v2, v3, v4, v0}, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;-><init>(Lcom/unity3d/ads/core/data/model/CacheError;Lcom/unity3d/ads/core/data/model/CacheSource;Ljava/lang/Throwable;)V

    return-object v2

    .line 182
    :cond_24
    new-instance v6, Lcom/unity3d/ads/core/data/model/CachedFile;

    .line 183
    iget-object v7, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->$url:Ljava/lang/String;

    .line 184
    iget-object v8, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->$fileName:Ljava/lang/String;

    .line 186
    iget-object v0, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->this$0:Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource;

    invoke-static {v0}, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource;->access$getGetFileExtensionFromUrl$p(Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource;)Lcom/unity3d/ads/core/domain/GetFileExtensionFromUrl;

    move-result-object v0

    iget-object v4, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->$url:Ljava/lang/String;

    invoke-interface {v0, v4}, Lcom/unity3d/ads/core/domain/GetFileExtensionFromUrl;->invoke(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_25

    move-object/from16 v10, v20

    goto :goto_1e

    :cond_25
    move-object v10, v0

    .line 187
    :goto_1e
    iget v0, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    int-to-long v11, v0

    .line 188
    invoke-virtual {v3}, Lcom/unity3d/services/core/network/model/HttpResponse;->getProtocol()Ljava/lang/String;

    move-result-object v13

    .line 189
    iget-object v0, v1, Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource$getFileInternal$2;->$priority:Ljava/lang/Integer;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v14, v4

    goto :goto_1f

    :cond_26
    const v14, 0x7fffffff

    .line 182
    :goto_1f
    invoke-direct/range {v6 .. v14}, Lcom/unity3d/ads/core/data/model/CachedFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;JLjava/lang/String;I)V

    .line 192
    new-instance v0, Lcom/unity3d/ads/core/data/model/CacheResult$Success;

    sget-object v2, Lcom/unity3d/ads/core/data/model/CacheSource;->REMOTE:Lcom/unity3d/ads/core/data/model/CacheSource;

    invoke-direct {v0, v6, v2}, Lcom/unity3d/ads/core/data/model/CacheResult$Success;-><init>(Lcom/unity3d/ads/core/data/model/CachedFile;Lcom/unity3d/ads/core/data/model/CacheSource;)V

    return-object v0

    .line 157
    :cond_27
    new-instance v7, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;

    sget-object v8, Lcom/unity3d/ads/core/data/model/CacheError;->NETWORK_ERROR:Lcom/unity3d/ads/core/data/model/CacheError;

    sget-object v9, Lcom/unity3d/ads/core/data/model/CacheSource;->REMOTE:Lcom/unity3d/ads/core/data/model/CacheSource;

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v7 .. v12}, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;-><init>(Lcom/unity3d/ads/core/data/model/CacheError;Lcom/unity3d/ads/core/data/model/CacheSource;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7

    .line 48
    :cond_28
    :goto_20
    new-instance v8, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;

    sget-object v9, Lcom/unity3d/ads/core/data/model/CacheError;->MALFORMED_URL:Lcom/unity3d/ads/core/data/model/CacheError;

    sget-object v10, Lcom/unity3d/ads/core/data/model/CacheSource;->REMOTE:Lcom/unity3d/ads/core/data/model/CacheSource;

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v8 .. v13}, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;-><init>(Lcom/unity3d/ads/core/data/model/CacheError;Lcom/unity3d/ads/core/data/model/CacheSource;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8
.end method
