.class public Lcom/applovin/shadow/okio/AsyncTimeout;
.super Lcom/applovin/shadow/okio/Timeout;
.source "AsyncTimeout.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/shadow/okio/AsyncTimeout$Companion;,
        Lcom/applovin/shadow/okio/AsyncTimeout$Watchdog;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u0000 \u001b2\u00020\u0001:\u0002\u001b\u001cB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0001J\u0006\u0010\u000b\u001a\u00020\u000cJ\u0006\u0010\r\u001a\u00020\u0004J\u0012\u0010\u000e\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0014J\u0010\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0007H\u0002J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0014J\u0008\u0010\u0015\u001a\u00020\u000cH\u0014J%\u0010\u0016\u001a\u0002H\u0017\"\u0004\u0008\u0000\u0010\u00172\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u0002H\u00170\u0019H\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001aR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0000X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/applovin/shadow/okio/AsyncTimeout;",
        "Lcom/applovin/shadow/okio/Timeout;",
        "()V",
        "inQueue",
        "",
        "next",
        "timeoutAt",
        "",
        "access$newTimeoutException",
        "Ljava/io/IOException;",
        "cause",
        "enter",
        "",
        "exit",
        "newTimeoutException",
        "remainingNanos",
        "now",
        "sink",
        "Lcom/applovin/shadow/okio/Sink;",
        "source",
        "Lcom/applovin/shadow/okio/Source;",
        "timedOut",
        "withTimeout",
        "T",
        "block",
        "Lkotlin/Function0;",
        "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "Companion",
        "Watchdog",
        "com.applovin.shadow.okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/applovin/shadow/okio/AsyncTimeout$Companion;

.field private static final IDLE_TIMEOUT_MILLIS:J

.field private static final IDLE_TIMEOUT_NANOS:J

.field private static final TIMEOUT_WRITE_SIZE:I = 0x10000

.field private static final condition:Ljava/util/concurrent/locks/Condition;

.field private static head:Lcom/applovin/shadow/okio/AsyncTimeout;

.field private static final lock:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field private inQueue:Z

.field private next:Lcom/applovin/shadow/okio/AsyncTimeout;

.field private timeoutAt:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/applovin/shadow/okio/AsyncTimeout$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/applovin/shadow/okio/AsyncTimeout$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/applovin/shadow/okio/AsyncTimeout;->Companion:Lcom/applovin/shadow/okio/AsyncTimeout$Companion;

    .line 205
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/applovin/shadow/okio/AsyncTimeout;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 206
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    const-string v1, "newCondition(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/applovin/shadow/okio/AsyncTimeout;->condition:Ljava/util/concurrent/locks/Condition;

    .line 216
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/applovin/shadow/okio/AsyncTimeout;->IDLE_TIMEOUT_MILLIS:J

    .line 217
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/applovin/shadow/okio/AsyncTimeout;->IDLE_TIMEOUT_NANOS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/applovin/shadow/okio/Timeout;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCondition$cp()Ljava/util/concurrent/locks/Condition;
    .locals 1

    .line 41
    sget-object v0, Lcom/applovin/shadow/okio/AsyncTimeout;->condition:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method public static final synthetic access$getHead$cp()Lcom/applovin/shadow/okio/AsyncTimeout;
    .locals 1

    .line 41
    sget-object v0, Lcom/applovin/shadow/okio/AsyncTimeout;->head:Lcom/applovin/shadow/okio/AsyncTimeout;

    return-object v0
.end method

.method public static final synthetic access$getIDLE_TIMEOUT_MILLIS$cp()J
    .locals 2

    .line 41
    sget-wide v0, Lcom/applovin/shadow/okio/AsyncTimeout;->IDLE_TIMEOUT_MILLIS:J

    return-wide v0
.end method

.method public static final synthetic access$getIDLE_TIMEOUT_NANOS$cp()J
    .locals 2

    .line 41
    sget-wide v0, Lcom/applovin/shadow/okio/AsyncTimeout;->IDLE_TIMEOUT_NANOS:J

    return-wide v0
.end method

.method public static final synthetic access$getInQueue$p(Lcom/applovin/shadow/okio/AsyncTimeout;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/applovin/shadow/okio/AsyncTimeout;->inQueue:Z

    return p0
.end method

.method public static final synthetic access$getLock$cp()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .line 41
    sget-object v0, Lcom/applovin/shadow/okio/AsyncTimeout;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method public static final synthetic access$getNext$p(Lcom/applovin/shadow/okio/AsyncTimeout;)Lcom/applovin/shadow/okio/AsyncTimeout;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/applovin/shadow/okio/AsyncTimeout;->next:Lcom/applovin/shadow/okio/AsyncTimeout;

    return-object p0
.end method

.method public static final synthetic access$remainingNanos(Lcom/applovin/shadow/okio/AsyncTimeout;J)J
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/applovin/shadow/okio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$setHead$cp(Lcom/applovin/shadow/okio/AsyncTimeout;)V
    .locals 0

    .line 41
    sput-object p0, Lcom/applovin/shadow/okio/AsyncTimeout;->head:Lcom/applovin/shadow/okio/AsyncTimeout;

    return-void
.end method

.method public static final synthetic access$setInQueue$p(Lcom/applovin/shadow/okio/AsyncTimeout;Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/applovin/shadow/okio/AsyncTimeout;->inQueue:Z

    return-void
.end method

.method public static final synthetic access$setNext$p(Lcom/applovin/shadow/okio/AsyncTimeout;Lcom/applovin/shadow/okio/AsyncTimeout;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/applovin/shadow/okio/AsyncTimeout;->next:Lcom/applovin/shadow/okio/AsyncTimeout;

    return-void
.end method

.method public static final synthetic access$setTimeoutAt$p(Lcom/applovin/shadow/okio/AsyncTimeout;J)V
    .locals 0

    .line 41
    iput-wide p1, p0, Lcom/applovin/shadow/okio/AsyncTimeout;->timeoutAt:J

    return-void
.end method

.method private final remainingNanos(J)J
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/applovin/shadow/okio/AsyncTimeout;->timeoutAt:J

    sub-long/2addr v0, p1

    return-wide v0
.end method


# virtual methods
.method public final access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    .line 161
    invoke-virtual {p0, p1}, Lcom/applovin/shadow/okio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method public final enter()V
    .locals 5

    .line 52
    invoke-virtual {p0}, Lcom/applovin/shadow/okio/AsyncTimeout;->timeoutNanos()J

    move-result-wide v0

    .line 53
    invoke-virtual {p0}, Lcom/applovin/shadow/okio/AsyncTimeout;->hasDeadline()Z

    move-result v2

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    return-void

    .line 57
    :cond_0
    sget-object v3, Lcom/applovin/shadow/okio/AsyncTimeout;->Companion:Lcom/applovin/shadow/okio/AsyncTimeout$Companion;

    invoke-static {v3, p0, v0, v1, v2}, Lcom/applovin/shadow/okio/AsyncTimeout$Companion;->access$scheduleTimeout(Lcom/applovin/shadow/okio/AsyncTimeout$Companion;Lcom/applovin/shadow/okio/AsyncTimeout;JZ)V

    return-void
.end method

.method public final exit()Z
    .locals 1

    .line 62
    sget-object v0, Lcom/applovin/shadow/okio/AsyncTimeout;->Companion:Lcom/applovin/shadow/okio/AsyncTimeout$Companion;

    invoke-static {v0, p0}, Lcom/applovin/shadow/okio/AsyncTimeout$Companion;->access$cancelScheduledTimeout(Lcom/applovin/shadow/okio/AsyncTimeout$Companion;Lcom/applovin/shadow/okio/AsyncTimeout;)Z

    move-result v0

    return v0
.end method

.method protected newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .line 169
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 171
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 173
    :cond_0
    check-cast v0, Ljava/io/IOException;

    return-object v0
.end method

.method public final sink(Lcom/applovin/shadow/okio/Sink;)Lcom/applovin/shadow/okio/Sink;
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    new-instance v0, Lcom/applovin/shadow/okio/AsyncTimeout$sink$1;

    invoke-direct {v0, p0, p1}, Lcom/applovin/shadow/okio/AsyncTimeout$sink$1;-><init>(Lcom/applovin/shadow/okio/AsyncTimeout;Lcom/applovin/shadow/okio/Sink;)V

    check-cast v0, Lcom/applovin/shadow/okio/Sink;

    return-object v0
.end method

.method public final source(Lcom/applovin/shadow/okio/Source;)Lcom/applovin/shadow/okio/Source;
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    new-instance v0, Lcom/applovin/shadow/okio/AsyncTimeout$source$1;

    invoke-direct {v0, p0, p1}, Lcom/applovin/shadow/okio/AsyncTimeout$source$1;-><init>(Lcom/applovin/shadow/okio/AsyncTimeout;Lcom/applovin/shadow/okio/Source;)V

    check-cast v0, Lcom/applovin/shadow/okio/Source;

    return-object v0
.end method

.method protected timedOut()V
    .locals 0

    return-void
.end method

.method public final withTimeout(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/applovin/shadow/okio/AsyncTimeout;->enter()V

    .line 149
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    invoke-virtual {p0}, Lcom/applovin/shadow/okio/AsyncTimeout;->exit()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 156
    invoke-virtual {p0, p1}, Lcom/applovin/shadow/okio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 153
    :try_start_1
    invoke-virtual {p0}, Lcom/applovin/shadow/okio/AsyncTimeout;->exit()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    check-cast p1, Ljava/lang/Throwable;

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/applovin/shadow/okio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    goto :goto_0

    :goto_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    :goto_2
    invoke-virtual {p0}, Lcom/applovin/shadow/okio/AsyncTimeout;->exit()Z

    .line 156
    throw p1
.end method
