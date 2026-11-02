.class public final Lads_mobile_sdk/tj3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/ks1;

.field public final b:Lads_mobile_sdk/ks1;

.field public final c:Lads_mobile_sdk/ks1;

.field public final d:Lads_mobile_sdk/ks1;

.field public final e:Ljava/util/concurrent/ExecutorService;

.field public final f:Lads_mobile_sdk/ts3;

.field public final g:Lads_mobile_sdk/kb;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ks1;Lads_mobile_sdk/ks1;Lads_mobile_sdk/ks1;Lads_mobile_sdk/ks1;Lads_mobile_sdk/na;Ljava/util/concurrent/ExecutorService;Lads_mobile_sdk/ts3;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lads_mobile_sdk/tj3;->a:Lads_mobile_sdk/ks1;

    .line 47
    iput-object p2, p0, Lads_mobile_sdk/tj3;->b:Lads_mobile_sdk/ks1;

    .line 48
    iput-object p3, p0, Lads_mobile_sdk/tj3;->c:Lads_mobile_sdk/ks1;

    .line 49
    iput-object p4, p0, Lads_mobile_sdk/tj3;->d:Lads_mobile_sdk/ks1;

    .line 50
    iput-object p6, p0, Lads_mobile_sdk/tj3;->e:Ljava/util/concurrent/ExecutorService;

    .line 51
    iput-object p7, p0, Lads_mobile_sdk/tj3;->f:Lads_mobile_sdk/ts3;

    .line 52
    invoke-virtual {p5}, Lads_mobile_sdk/na;->I()Lads_mobile_sdk/kb;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/tj3;->g:Lads_mobile_sdk/kb;

    return-void
.end method

.method public static synthetic a(Lads_mobile_sdk/qj3;Ljava/lang/Void;)Lads_mobile_sdk/qj3;
    .locals 0

    return-object p0
.end method

.method public static synthetic a(Ljava/lang/Throwable;)Lads_mobile_sdk/qj3;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic a(Lads_mobile_sdk/qj3;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 137
    invoke-interface {p0}, Lads_mobile_sdk/qj3;->a()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lads_mobile_sdk/tj3$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lads_mobile_sdk/tj3$$ExternalSyntheticLambda1;-><init>(Lads_mobile_sdk/qj3;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    .line 138
    invoke-static {v0, v1, p0}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/kb;)Lcom/google/common/util/concurrent/FluentFuture;
    .locals 2

    .line 28
    new-instance v0, Lads_mobile_sdk/tj3$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/tj3$$ExternalSyntheticLambda2;-><init>(Lads_mobile_sdk/tj3;Lads_mobile_sdk/kb;)V

    iget-object p1, p0, Lads_mobile_sdk/tj3;->e:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/Futures;->submit(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/util/concurrent/FluentFuture;->from(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object p1

    new-instance v0, Lads_mobile_sdk/tj3$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lads_mobile_sdk/tj3$$ExternalSyntheticLambda3;-><init>()V

    .line 34
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 35
    invoke-virtual {p1, v0, v1}, Lcom/google/common/util/concurrent/FluentFuture;->transformAsync(Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/kb;Z)Lcom/google/common/util/concurrent/FluentFuture;
    .locals 2

    .line 2
    invoke-virtual {p0, p1}, Lads_mobile_sdk/tj3;->a(Lads_mobile_sdk/kb;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lads_mobile_sdk/tj3;->g:Lads_mobile_sdk/kb;

    if-eq p1, p2, :cond_0

    .line 9
    invoke-static {v0}, Lcom/google/common/util/concurrent/FluentFuture;->from(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object p1

    new-instance p2, Lads_mobile_sdk/tj3$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lads_mobile_sdk/tj3$$ExternalSyntheticLambda0;-><init>()V

    .line 11
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    const-class v1, Ljava/lang/Throwable;

    invoke-virtual {p1, v1, p2, v0}, Lcom/google/common/util/concurrent/FluentFuture;->catching(Ljava/lang/Class;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object p1

    new-instance p2, Lads_mobile_sdk/sj3;

    invoke-direct {p2, p0}, Lads_mobile_sdk/sj3;-><init>(Lads_mobile_sdk/tj3;)V

    .line 25
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 26
    invoke-virtual {p1, p2, v0}, Lcom/google/common/util/concurrent/FluentFuture;->transformAsync(Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final b(Lads_mobile_sdk/kb;)Lads_mobile_sdk/qj3;
    .locals 1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 13
    iget-object p1, p0, Lads_mobile_sdk/tj3;->d:Lads_mobile_sdk/ks1;

    invoke-interface {p1}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/qj3;

    return-object p1

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 14
    :cond_1
    iget-object p1, p0, Lads_mobile_sdk/tj3;->c:Lads_mobile_sdk/ks1;

    invoke-interface {p1}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/qj3;

    return-object p1

    .line 15
    :cond_2
    iget-object p1, p0, Lads_mobile_sdk/tj3;->b:Lads_mobile_sdk/ks1;

    invoke-interface {p1}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/qj3;

    return-object p1

    .line 16
    :cond_3
    iget-object p1, p0, Lads_mobile_sdk/tj3;->a:Lads_mobile_sdk/ks1;

    invoke-interface {p1}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/qj3;

    return-object p1
.end method
