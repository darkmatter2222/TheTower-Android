.class Lcom/applovin/impl/g4$b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/g4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/BlockingQueue;

.field private final b:Lcom/applovin/impl/sdk/l;


# direct methods
.method public static synthetic $r8$lambda$UpvGTiURWPDWQYk8R2SiIq7Q5OY(Lcom/applovin/impl/g4$c;Lcom/applovin/impl/g4$d;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/applovin/impl/g4$b;->a(Lcom/applovin/impl/g4$c;Lcom/applovin/impl/g4$d;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/BlockingQueue;ILcom/applovin/impl/sdk/l;)V
    .locals 0

    .line 2
    const-string p2, "AppLovinSdk:network"

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    .line 8
    iput-object p1, p0, Lcom/applovin/impl/g4$b;->a:Ljava/util/concurrent/BlockingQueue;

    .line 9
    iput-object p3, p0, Lcom/applovin/impl/g4$b;->b:Lcom/applovin/impl/sdk/l;

    .line 11
    sget-object p1, Lcom/applovin/impl/c5;->T:Lcom/applovin/impl/c5;

    invoke-virtual {p3, p1}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setPriority(I)V

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No sdk specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No request queue specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/BlockingQueue;ILcom/applovin/impl/sdk/l;Lcom/applovin/impl/g4$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/g4$b;-><init>(Ljava/util/concurrent/BlockingQueue;ILcom/applovin/impl/sdk/l;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/g4$c;)Ljava/net/HttpURLConnection;
    .locals 3

    .line 4
    new-instance v0, Ljava/net/URL;

    invoke-static {p1}, Lcom/applovin/impl/g4$c;->b(Lcom/applovin/impl/g4$c;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 6
    invoke-static {p1}, Lcom/applovin/impl/g4$c;->d(Lcom/applovin/impl/g4$c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 7
    invoke-static {p1}, Lcom/applovin/impl/g4$c;->e(Lcom/applovin/impl/g4$c;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 8
    invoke-static {p1}, Lcom/applovin/impl/g4$c;->e(Lcom/applovin/impl/g4$c;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDefaultUseCaches(Z)V

    .line 10
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setAllowUserInteraction(Z)V

    .line 11
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 13
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 15
    invoke-static {p1}, Lcom/applovin/impl/g4$c;->f(Lcom/applovin/impl/g4$c;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 17
    invoke-static {p1}, Lcom/applovin/impl/g4$c;->f(Lcom/applovin/impl/g4$c;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 19
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/g4$b;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/g4$c;

    .line 2
    invoke-direct {p0, v0}, Lcom/applovin/impl/g4$b;->b(Lcom/applovin/impl/g4$c;)V

    return-void
.end method

.method private static synthetic a(Lcom/applovin/impl/g4$c;Lcom/applovin/impl/g4$d;)V
    .locals 0

    .line 3
    invoke-static {p0}, Lcom/applovin/impl/g4$c;->g(Lcom/applovin/impl/g4$c;)Landroidx/core/util/Consumer;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private b(Lcom/applovin/impl/g4$c;)V
    .locals 19

    move-object/from16 v1, p0

    const-string v2, "processRequest"

    const-string v3, "code"

    const-string v4, "url"

    const-string v5, "details"

    const-string v6, "NetworkCommunicationThread"

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const/4 v9, 0x0

    .line 6
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/applovin/impl/g4$b;->a(Lcom/applovin/impl/g4$c;)Ljava/net/HttpURLConnection;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 8
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/applovin/impl/g4$c;->a(Lcom/applovin/impl/g4$c;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/applovin/impl/g4$c;->a(Lcom/applovin/impl/g4$c;)[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 10
    invoke-virtual {v11, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 11
    invoke-static/range {p1 .. p1}, Lcom/applovin/impl/g4$c;->a(Lcom/applovin/impl/g4$c;)[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 13
    :try_start_2
    invoke-virtual {v11}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 15
    :try_start_3
    invoke-static/range {p1 .. p1}, Lcom/applovin/impl/g4$c;->a(Lcom/applovin/impl/g4$c;)[B

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 16
    :try_start_4
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v13, v0

    if-eqz v12, :cond_0

    .line 17
    :try_start_5
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v13, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    .line 23
    :try_start_7
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 24
    const-string v13, "outputStream"

    invoke-static {v5, v13, v12}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 25
    invoke-static/range {p1 .. p1}, Lcom/applovin/impl/g4$c;->b(Lcom/applovin/impl/g4$c;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13, v12}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 26
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13, v12}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 27
    iget-object v13, v1, Lcom/applovin/impl/g4$b;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v13}, Lcom/applovin/impl/sdk/l;->E()Lcom/applovin/impl/s1;

    move-result-object v13

    invoke-virtual {v13, v6, v2, v0, v12}, Lcom/applovin/impl/s1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 30
    throw v0

    .line 34
    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 35
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    if-lez v9, :cond_4

    .line 43
    :try_start_8
    invoke-virtual {v11}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 45
    :try_start_9
    iget-object v0, v1, Lcom/applovin/impl/g4$b;->b:Lcom/applovin/impl/sdk/l;

    invoke-static {v14, v0}, Lcom/applovin/impl/s0;->a(Ljava/io/InputStream;Lcom/applovin/impl/sdk/l;)[B

    move-result-object v15
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v14, :cond_2

    .line 46
    :try_start_a
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    goto :goto_4

    :cond_2
    :goto_2
    move-object v10, v15

    const/4 v0, 0x0

    const/4 v2, 0x0

    goto/16 :goto_b

    :catchall_4
    move-exception v0

    move-object v12, v0

    if-eqz v14, :cond_3

    .line 47
    :try_start_b
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v0

    :try_start_c
    invoke-virtual {v12, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw v12
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :catchall_6
    move-exception v0

    const/4 v15, 0x0

    .line 53
    :goto_4
    :try_start_d
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 54
    const-string v13, "responseDataInputStream"

    invoke-static {v5, v13, v12}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 55
    invoke-static/range {p1 .. p1}, Lcom/applovin/impl/g4$c;->b(Lcom/applovin/impl/g4$c;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13, v12}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 56
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13, v12}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 57
    iget-object v13, v1, Lcom/applovin/impl/g4$b;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v13}, Lcom/applovin/impl/sdk/l;->E()Lcom/applovin/impl/s1;

    move-result-object v13

    invoke-virtual {v13, v6, v2, v0, v12}, Lcom/applovin/impl/s1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 60
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    :catchall_7
    move-exception v0

    move-object v12, v11

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x0

    goto/16 :goto_b

    :catchall_8
    move-exception v0

    move-object v12, v11

    const/4 v15, 0x0

    :goto_5
    move v11, v9

    goto :goto_6

    :catchall_9
    move-exception v0

    move v11, v9

    const/4 v12, 0x0

    const/4 v15, 0x0

    :goto_6
    move-wide v8, v7

    move-object v7, v0

    .line 94
    :try_start_e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 97
    iget-object v0, v1, Lcom/applovin/impl/g4$b;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    iget-object v0, v1, Lcom/applovin/impl/g4$b;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/applovin/impl/g4$b;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    move-result-object v0

    const-string v10, "Failed to make HTTP request"

    invoke-virtual {v0, v6, v10, v7}, Lcom/applovin/impl/sdk/p;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_f

    :cond_5
    if-eqz v12, :cond_8

    .line 102
    :try_start_f
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v10
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_e

    .line 104
    :try_start_10
    iget-object v0, v1, Lcom/applovin/impl/g4$b;->b:Lcom/applovin/impl/sdk/l;

    invoke-static {v10, v0}, Lcom/applovin/impl/s0;->a(Ljava/io/InputStream;Lcom/applovin/impl/sdk/l;)[B

    move-result-object v16
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    if-eqz v10, :cond_6

    .line 105
    :try_start_11
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    goto :goto_7

    :catchall_a
    move-exception v0

    move-wide/from16 v17, v8

    move-object/from16 v10, v16

    goto :goto_a

    :cond_6
    :goto_7
    move-object v2, v7

    move-wide v7, v8

    move v9, v11

    move-object v11, v12

    move-wide v12, v13

    move-object v10, v15

    move-object/from16 v0, v16

    goto :goto_b

    :catchall_b
    move-exception v0

    move-wide/from16 v17, v8

    move-object v8, v0

    if-eqz v10, :cond_7

    .line 106
    :try_start_12
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_c

    goto :goto_8

    :catchall_c
    move-exception v0

    :try_start_13
    invoke-virtual {v8, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_8
    throw v8
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_d

    :catchall_d
    move-exception v0

    goto :goto_9

    :catchall_e
    move-exception v0

    move-wide/from16 v17, v8

    :goto_9
    const/4 v10, 0x0

    .line 112
    :goto_a
    :try_start_14
    iget-object v8, v1, Lcom/applovin/impl/g4$b;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 115
    const-string v9, "responseErrorDataInputStream"

    invoke-static {v5, v9, v8}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 116
    invoke-static/range {p1 .. p1}, Lcom/applovin/impl/g4$c;->b(Lcom/applovin/impl/g4$c;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 117
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v8}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 118
    iget-object v3, v1, Lcom/applovin/impl/g4$b;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/l;->E()Lcom/applovin/impl/s1;

    move-result-object v3

    invoke-virtual {v3, v6, v2, v0, v8}, Lcom/applovin/impl/s1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_f

    move-object v2, v7

    move-object v0, v10

    move v9, v11

    move-object v11, v12

    move-wide v12, v13

    move-object v10, v15

    move-wide/from16 v7, v17

    goto :goto_b

    :cond_8
    move-wide/from16 v17, v8

    move-object v2, v7

    move v9, v11

    move-object v11, v12

    move-wide v12, v13

    move-object v10, v15

    move-wide/from16 v7, v17

    const/4 v0, 0x0

    .line 93
    :goto_b
    iget-object v3, v1, Lcom/applovin/impl/g4$b;->b:Lcom/applovin/impl/sdk/l;

    invoke-static {v11, v3}, Lcom/applovin/impl/u7;->a(Ljava/net/HttpURLConnection;Lcom/applovin/impl/sdk/l;)V

    .line 127
    invoke-static {}, Lcom/applovin/impl/g4$d;->a()Lcom/applovin/impl/g4$d$a;

    move-result-object v3

    .line 128
    invoke-virtual {v3, v9}, Lcom/applovin/impl/g4$d$a;->a(I)Lcom/applovin/impl/g4$d$a;

    move-result-object v3

    .line 129
    invoke-virtual {v3, v10}, Lcom/applovin/impl/g4$d$a;->a([B)Lcom/applovin/impl/g4$d$a;

    move-result-object v3

    .line 130
    invoke-virtual {v3, v0}, Lcom/applovin/impl/g4$d$a;->b([B)Lcom/applovin/impl/g4$d$a;

    move-result-object v0

    sub-long/2addr v12, v7

    .line 131
    invoke-virtual {v0, v12, v13}, Lcom/applovin/impl/g4$d$a;->a(J)Lcom/applovin/impl/g4$d$a;

    move-result-object v0

    .line 132
    invoke-virtual {v0, v2}, Lcom/applovin/impl/g4$d$a;->a(Ljava/lang/Throwable;)Lcom/applovin/impl/g4$d$a;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Lcom/applovin/impl/g4$d$a;->a()Lcom/applovin/impl/g4$d;

    move-result-object v0

    .line 135
    invoke-static/range {p1 .. p1}, Lcom/applovin/impl/g4$c;->c(Lcom/applovin/impl/g4$c;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/applovin/impl/g4$b$$ExternalSyntheticLambda0;

    move-object/from16 v4, p1

    invoke-direct {v3, v4, v0}, Lcom/applovin/impl/g4$b$$ExternalSyntheticLambda0;-><init>(Lcom/applovin/impl/g4$c;Lcom/applovin/impl/g4$d;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_f
    move-exception v0

    .line 136
    iget-object v2, v1, Lcom/applovin/impl/g4$b;->b:Lcom/applovin/impl/sdk/l;

    invoke-static {v12, v2}, Lcom/applovin/impl/u7;->a(Ljava/net/HttpURLConnection;Lcom/applovin/impl/sdk/l;)V

    .line 137
    throw v0
.end method


# virtual methods
.method public run()V
    .locals 1

    const/16 v0, 0xa

    .line 1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 7
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/applovin/impl/g4$b;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 12
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method
