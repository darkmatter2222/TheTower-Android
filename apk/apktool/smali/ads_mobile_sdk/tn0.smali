.class public final Lads_mobile_sdk/tn0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/oy3;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lads_mobile_sdk/hl3;

.field public final c:Lads_mobile_sdk/ts3;

.field public final d:Ljava/lang/String;

.field public final e:J

.field public final f:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lads_mobile_sdk/na;Lads_mobile_sdk/hl3;Lads_mobile_sdk/ts3;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lads_mobile_sdk/tn0;->a:Landroid/content/Context;

    .line 48
    invoke-virtual {p2}, Lads_mobile_sdk/na;->M()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/tn0;->d:Ljava/lang/String;

    .line 49
    invoke-virtual {p2}, Lads_mobile_sdk/na;->K()J

    move-result-wide v0

    iput-wide v0, p0, Lads_mobile_sdk/tn0;->e:J

    .line 50
    invoke-virtual {p2}, Lads_mobile_sdk/na;->O()J

    move-result-wide p1

    iput-wide p1, p0, Lads_mobile_sdk/tn0;->f:J

    .line 51
    iput-object p3, p0, Lads_mobile_sdk/tn0;->b:Lads_mobile_sdk/hl3;

    .line 52
    iput-object p4, p0, Lads_mobile_sdk/tn0;->c:Lads_mobile_sdk/ts3;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/HashMap;)V
    .locals 12

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/tn0;->d:Ljava/lang/String;

    const-string v1, "v"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "t"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-string v0, "E"

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    .line 14
    :try_start_0
    const-string v4, "gs"

    .line 15
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v4, :cond_7

    .line 17
    iget-object v5, p0, Lads_mobile_sdk/tn0;->c:Lads_mobile_sdk/ts3;

    sget-object v6, Lads_mobile_sdk/lq0;->l2:Lads_mobile_sdk/lq0;

    invoke-virtual {v5, v6}, Lads_mobile_sdk/ts3;->a(Lads_mobile_sdk/lq0;)Lads_mobile_sdk/qr3;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :try_start_1
    invoke-virtual {v5}, Lads_mobile_sdk/qr3;->b()V

    .line 20
    iget-wide v6, p0, Lads_mobile_sdk/tn0;->e:J

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v6, v7, v8}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lads_mobile_sdk/fh;

    if-eqz v4, :cond_5

    .line 22
    invoke-virtual {v4}, Lads_mobile_sdk/fh;->C()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 23
    invoke-virtual {v4}, Lads_mobile_sdk/fh;->y()Lads_mobile_sdk/xh;

    move-result-object v6

    .line 24
    invoke-virtual {v6}, Lads_mobile_sdk/xh;->y()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 26
    invoke-virtual {v6}, Lads_mobile_sdk/xh;->v()Lads_mobile_sdk/du;

    move-result-object v7

    invoke-virtual {v7}, Lads_mobile_sdk/du;->i()[B

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 28
    :try_start_2
    invoke-virtual {v6}, Lads_mobile_sdk/xh;->v()Lads_mobile_sdk/du;

    move-result-object v8

    sget-object v9, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Lads_mobile_sdk/du;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    move-object v6, v3

    move-object v8, v6

    move-object v9, v8

    goto :goto_2

    :cond_0
    move-object v7, v3

    move-object v8, v7

    .line 30
    :goto_0
    :try_start_3
    invoke-virtual {v6}, Lads_mobile_sdk/xh;->A()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 31
    invoke-virtual {v6}, Lads_mobile_sdk/xh;->x()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :cond_1
    move-object v9, v3

    .line 33
    :goto_1
    :try_start_4
    invoke-virtual {v6}, Lads_mobile_sdk/xh;->z()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 34
    invoke-virtual {v6}, Lads_mobile_sdk/xh;->w()Ljava/lang/String;

    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    move-object v6, v3

    move-object v3, v7

    goto :goto_3

    :catchall_1
    move-exception v4

    move-object v6, v3

    goto :goto_2

    :catchall_2
    move-exception v4

    move-object v6, v3

    move-object v9, v6

    :goto_2
    move-object v3, v7

    goto :goto_5

    :cond_3
    move-object v6, v3

    move-object v8, v6

    move-object v9, v8

    .line 38
    :goto_3
    :try_start_5
    invoke-virtual {v4}, Lads_mobile_sdk/fh;->w()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v10, 0x1

    if-le v7, v10, :cond_4

    .line 39
    invoke-virtual {v4}, Lads_mobile_sdk/fh;->w()Ljava/lang/String;

    move-result-object v7

    const-string v10, "0000000000000000000000000000000000000000000000000000000000000000"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 40
    invoke-virtual {v4}, Lads_mobile_sdk/fh;->w()Ljava/lang/String;

    move-result-object v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_4

    :cond_4
    move-object v7, v0

    .line 42
    :goto_4
    :try_start_6
    invoke-virtual {v4}, Lads_mobile_sdk/fh;->A()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 43
    invoke-virtual {v4}, Lads_mobile_sdk/fh;->v()J

    move-result-wide v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v4

    goto :goto_7

    :catchall_4
    move-exception v4

    :goto_5
    move-object v7, v0

    goto :goto_7

    :cond_5
    move-object v7, v0

    move-object v6, v3

    move-object v8, v6

    move-object v9, v8

    .line 47
    :cond_6
    :goto_6
    :try_start_7
    invoke-virtual {v5}, Lads_mobile_sdk/qr3;->a()V

    goto :goto_8

    :catchall_5
    move-exception v4

    move-object v7, v0

    move-object v6, v3

    move-object v8, v6

    move-object v9, v8

    :goto_7
    invoke-virtual {v5}, Lads_mobile_sdk/qr3;->a()V

    .line 48
    throw v4
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_7 .. :try_end_7} :catch_5

    :catch_0
    :cond_7
    move-object v7, v0

    move-object v6, v3

    move-object v8, v6

    move-object v9, v8

    goto :goto_8

    :catch_1
    move-object v7, v0

    move-object v6, v3

    move-object v8, v6

    move-object v9, v8

    .line 53
    :catch_2
    iget-object v4, p0, Lads_mobile_sdk/tn0;->c:Lads_mobile_sdk/ts3;

    sget-object v5, Lads_mobile_sdk/lq0;->n2:Lads_mobile_sdk/lq0;

    invoke-virtual {v4, v5}, Lads_mobile_sdk/ts3;->b(Lads_mobile_sdk/lq0;)V

    goto :goto_8

    :catch_3
    move-object v7, v0

    move-object v6, v3

    move-object v8, v6

    move-object v9, v8

    .line 54
    :catch_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 62
    :catch_5
    :goto_8
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 64
    :try_start_8
    const-string v0, "ai"

    .line 65
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_9

    .line 67
    iget-object v4, p0, Lads_mobile_sdk/tn0;->c:Lads_mobile_sdk/ts3;

    sget-object v5, Lads_mobile_sdk/lq0;->m2:Lads_mobile_sdk/lq0;

    .line 68
    invoke-virtual {v4, v5}, Lads_mobile_sdk/ts3;->a(Lads_mobile_sdk/lq0;)Lads_mobile_sdk/qr3;

    move-result-object v4
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_8

    .line 70
    :try_start_9
    invoke-virtual {v4}, Lads_mobile_sdk/qr3;->b()V

    .line 71
    iget-wide v10, p0, Lads_mobile_sdk/tn0;->f:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v10, v11, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 72
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    if-nez v5, :cond_8

    move-object v7, v0

    .line 76
    :cond_8
    :try_start_a
    invoke-virtual {v4}, Lads_mobile_sdk/qr3;->a()V

    goto :goto_9

    :catchall_6
    move-exception v0

    invoke-virtual {v4}, Lads_mobile_sdk/qr3;->a()V

    .line 77
    throw v0
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_8

    .line 82
    :catch_6
    iget-object v0, p0, Lads_mobile_sdk/tn0;->c:Lads_mobile_sdk/ts3;

    sget-object v4, Lads_mobile_sdk/lq0;->o2:Lads_mobile_sdk/lq0;

    invoke-virtual {v0, v4}, Lads_mobile_sdk/ts3;->b(Lads_mobile_sdk/lq0;)V

    goto :goto_9

    .line 83
    :catch_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 91
    :catch_8
    :cond_9
    :goto_9
    const-string v0, "int"

    invoke-virtual {p1, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_a

    .line 93
    const-string v0, "attb"

    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    if-eqz v8, :cond_b

    .line 96
    const-string v0, "att"

    invoke-virtual {p1, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    if-eqz v9, :cond_c

    .line 99
    const-string v0, "attts"

    invoke-virtual {p1, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    if-eqz v6, :cond_d

    .line 102
    const-string v0, "attkid"

    invoke-virtual {p1, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_d
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "gv"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
