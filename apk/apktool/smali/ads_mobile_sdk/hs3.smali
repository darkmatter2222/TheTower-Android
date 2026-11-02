.class public abstract Lads_mobile_sdk/hs3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/WeakHashMap;

.field public static final b:Lads_mobile_sdk/ds3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    .line 3
    new-instance v0, Lads_mobile_sdk/ds3;

    invoke-direct {v0}, Lads_mobile_sdk/ds3;-><init>()V

    sput-object v0, Lads_mobile_sdk/hs3;->b:Lads_mobile_sdk/ds3;

    return-void
.end method

.method public static a()Lads_mobile_sdk/rr3;
    .locals 3

    .line 47
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v0

    .line 48
    iget-object v0, v0, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v0, :cond_0

    .line 49
    sget-object v0, Lads_mobile_sdk/s11;->b:Lads_mobile_sdk/s11;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    .line 50
    invoke-static {v0, v1, v2}, Lads_mobile_sdk/hs3;->b(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/fx1;

    move-result-object v0

    .line 51
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v1

    invoke-static {v1, v0}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/gs3;Lads_mobile_sdk/rr3;)Lads_mobile_sdk/rr3;

    :cond_0
    return-object v0
.end method

.method public static a(Lads_mobile_sdk/gs3;Lads_mobile_sdk/rr3;)Lads_mobile_sdk/rr3;
    .locals 6

    .line 37
    iget-object v0, p0, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-ne v0, p1, :cond_0

    return-object p1

    .line 38
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    if-eqz v0, :cond_1

    .line 39
    sget-object v3, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    .line 40
    iget-wide v3, p0, Lads_mobile_sdk/gs3;->b:J

    sub-long v3, v1, v3

    .line 41
    sget-object v5, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v3, v4, v5}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v3

    .line 42
    iget-object v5, v0, Lads_mobile_sdk/rr3;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v3, v4}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 43
    :cond_1
    iput-wide v1, p0, Lads_mobile_sdk/gs3;->b:J

    .line 44
    iput-object p1, p0, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    .line 45
    iget-object p0, p0, Lads_mobile_sdk/gs3;->c:Lads_mobile_sdk/fs3;

    if-nez p0, :cond_2

    return-object v0

    .line 46
    :cond_2
    iput-object p1, p0, Lads_mobile_sdk/fs3;->a:Lads_mobile_sdk/rr3;

    return-object v0
.end method

.method public static a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;
    .locals 1

    .line 1
    const-string v0, "cuiName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p0, p1, p2}, Lads_mobile_sdk/rr3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p0, p1, p2}, Lads_mobile_sdk/hs3;->b(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/fx1;

    move-result-object p0

    .line 6
    :goto_0
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object p1

    invoke-static {p1, p0}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/gs3;Lads_mobile_sdk/rr3;)Lads_mobile_sdk/rr3;

    return-object p0
.end method

.method public static a(Lads_mobile_sdk/rr3;)V
    .locals 10

    .line 7
    const-string v0, "expectedTrace"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lads_mobile_sdk/gs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v1

    const-string v2, "Tried to end trace "

    const-string v3, " ("

    if-nez v1, :cond_0

    .line 12
    invoke-virtual {p0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v4

    iget-object v4, v4, Lads_mobile_sdk/uj2;->c:Lads_mobile_sdk/s11;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lads_mobile_sdk/rr3;->c()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), but there was no active trace. If this is a test, did you forget to add a TraceThreadContextElement to your CoroutineScope?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 13
    invoke-static {v4}, Lads_mobile_sdk/sr3;->a(Ljava/lang/String;)V

    :cond_0
    const/4 v4, 0x0

    if-eq p0, v1, :cond_3

    .line 22
    invoke-virtual {p0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v5

    iget-object v5, v5, Lads_mobile_sdk/uj2;->c:Lads_mobile_sdk/s11;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lads_mobile_sdk/rr3;->c()I

    move-result v6

    if-eqz v1, :cond_1

    .line 24
    invoke-virtual {v1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, v7, Lads_mobile_sdk/uj2;->c:Lads_mobile_sdk/s11;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_1
    move-object v7, v4

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lads_mobile_sdk/rr3;->c()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_1

    :cond_2
    move-object v8, v4

    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "), but that trace is not the current trace. The current trace is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 25
    invoke-static {v2}, Lads_mobile_sdk/sr3;->a(Ljava/lang/String;)V

    :cond_3
    if-eqz v1, :cond_4

    .line 34
    invoke-virtual {v1}, Lads_mobile_sdk/rr3;->d()Lads_mobile_sdk/rr3;

    move-result-object v4

    :cond_4
    invoke-static {v0, v4}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/gs3;Lads_mobile_sdk/rr3;)Lads_mobile_sdk/rr3;

    .line 35
    invoke-virtual {p0}, Lads_mobile_sdk/rr3;->a()V

    return-void
.end method

.method public static b(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/fx1;
    .locals 3

    .line 2
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempted to start a trace "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " without a parent. Did you forget to start a root trace or propagate an existing one?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/sr3;->a(Ljava/lang/String;)V

    .line 6
    invoke-static {p0, p1, p2}, Lads_mobile_sdk/ex1;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/fx1;

    move-result-object p0

    return-object p0
.end method

.method public static b()Lads_mobile_sdk/gs3;
    .locals 5

    .line 7
    sget-object v0, Lads_mobile_sdk/hs3;->b:Lads_mobile_sdk/ds3;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lads_mobile_sdk/gs3;

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    .line 10
    invoke-direct {v1, v4, v2, v3, v4}, Lads_mobile_sdk/gs3;-><init>(Lads_mobile_sdk/rr3;JLads_mobile_sdk/fs3;)V

    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 12
    sget-object v3, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    monitor-enter v3

    :try_start_0
    invoke-virtual {v3, v2, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/gs3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 14
    monitor-exit v3

    throw v0

    .line 15
    :cond_0
    :goto_0
    check-cast v1, Lads_mobile_sdk/gs3;

    return-object v1
.end method

.method public static c()Lads_mobile_sdk/rr3;
    .locals 1

    .line 1
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    return-object v0
.end method
