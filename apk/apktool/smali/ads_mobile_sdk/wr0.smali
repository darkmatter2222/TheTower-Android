.class public final Lads_mobile_sdk/wr0;
.super Lads_mobile_sdk/xl3;
.source "SourceFile"


# instance fields
.field public final b:Ljava/util/concurrent/ExecutorService;

.field public final c:Lads_mobile_sdk/vr0;

.field public final d:Lcom/google/common/base/Function;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/util/concurrent/ExecutorService;Lads_mobile_sdk/vr0;Lcom/google/common/base/Function;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lads_mobile_sdk/xl3;-><init>(Ljava/io/File;)V

    .line 114
    iput-object p2, p0, Lads_mobile_sdk/wr0;->b:Ljava/util/concurrent/ExecutorService;

    .line 115
    iput-object p3, p0, Lads_mobile_sdk/wr0;->c:Lads_mobile_sdk/vr0;

    .line 116
    iput-object p4, p0, Lads_mobile_sdk/wr0;->d:Lcom/google/common/base/Function;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 122
    new-instance v0, Lads_mobile_sdk/wr0$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lads_mobile_sdk/wr0$$ExternalSyntheticLambda1;-><init>(Lads_mobile_sdk/wr0;)V

    iget-object v1, p0, Lads_mobile_sdk/wr0;->b:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->submit(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 266
    new-instance v0, Lads_mobile_sdk/wr0$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/wr0$$ExternalSyntheticLambda0;-><init>(Lads_mobile_sdk/wr0;Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/wr0;->b:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/Futures;->submit(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 3

    .line 124
    monitor-enter p0

    .line 125
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lads_mobile_sdk/xl3;->a:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lads_mobile_sdk/tr0; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 126
    :try_start_1
    iget-object v1, p0, Lads_mobile_sdk/wr0;->c:Lads_mobile_sdk/vr0;

    invoke-interface {v1, v0}, Lads_mobile_sdk/vr0;->a(Ljava/io/FileInputStream;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lads_mobile_sdk/tr0; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-object v1

    :catchall_0
    move-exception v1

    .line 128
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lads_mobile_sdk/tr0; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 137
    :try_start_6
    iget-object v1, p0, Lads_mobile_sdk/wr0;->d:Lcom/google/common/base/Function;

    new-instance v2, Lads_mobile_sdk/tr0;

    invoke-direct {v2, v0}, Lads_mobile_sdk/tr0;-><init>(Ljava/io/IOException;)V

    invoke-interface {v1, v2}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catch_1
    move-exception v0

    .line 138
    iget-object v1, p0, Lads_mobile_sdk/wr0;->d:Lcom/google/common/base/Function;

    invoke-interface {v1, v0}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 139
    :catch_2
    iget-object v0, p0, Lads_mobile_sdk/wr0;->c:Lads_mobile_sdk/vr0;

    invoke-interface {v0}, Lads_mobile_sdk/vr0;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 147
    :goto_1
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method

.method public final synthetic b(Ljava/lang/Object;)Ljava/lang/Void;
    .locals 4

    .line 293
    monitor-enter p0

    .line 294
    :try_start_0
    iget-object v0, p0, Lads_mobile_sdk/xl3;->a:Ljava/io/File;

    invoke-static {v0}, Lcom/google/common/io/Files;->createParentDirs(Ljava/io/File;)V

    .line 295
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lads_mobile_sdk/xl3;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lads_mobile_sdk/xl3;->a:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".temp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 299
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 300
    :try_start_2
    iget-object v2, p0, Lads_mobile_sdk/wr0;->c:Lads_mobile_sdk/vr0;

    invoke-interface {v2, p1, v1}, Lads_mobile_sdk/vr0;->a(Ljava/lang/Object;Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 301
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 307
    iget-object p1, p0, Lads_mobile_sdk/xl3;->a:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 316
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-object p1

    .line 317
    :cond_0
    :try_start_5
    new-instance p1, Ljava/io/IOException;

    const-string v1, "Failed to rename file."

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_0
    move-exception p1

    .line 318
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_7
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catch_0
    move-exception p1

    .line 331
    :try_start_8
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 332
    throw p1

    :catchall_2
    move-exception p1

    .line 336
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p1
.end method
