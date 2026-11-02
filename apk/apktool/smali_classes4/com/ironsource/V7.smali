.class public final Lcom/ironsource/V7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/hg;


# static fields
.field public static final a:Lcom/ironsource/V7;

.field private static final b:Landroid/os/Handler;

.field private static c:Z = false

.field public static final d:Ljava/lang/String; = "deviceStatus"

.field public static final e:Ljava/lang/String; = "iabTokenAPI"

.field public static final f:Ljava/lang/String; = "dsSharedSignalsAPI"

.field public static final g:Ljava/lang/String; = "deleteFolder"

.field public static final h:Ljava/lang/String; = "deleteFile"

.field public static final i:Ljava/lang/String; = "getCachedFilesMap"

.field public static final j:Ljava/lang/String; = "permissionsAPI"

.field public static final k:Ljava/lang/String; = "deviceDataAPI"

.field public static final l:Ljava/lang/String; = "adViewAPI"

.field private static final m:Lkotlin/Lazy;

.field private static final n:Lkotlin/Lazy;

.field private static final o:Lcom/ironsource/Z9;

.field private static final p:Lcom/ironsource/Z9;

.field private static final q:Lcom/ironsource/Z9;


# direct methods
.method public static synthetic $r8$lambda$XkQNZKeMFFDNA6oX8-VI4hwsUHc()Lcom/ironsource/oe;
    .locals 1

    invoke-static {}, Lcom/ironsource/V7;->a()Lcom/ironsource/oe;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$e9DapT2q57Lg2gxopqCG-FXUouE()Ljava/util/Map;
    .locals 1

    invoke-static {}, Lcom/ironsource/V7;->g()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ironsource/V7;

    invoke-direct {v0}, Lcom/ironsource/V7;-><init>()V

    sput-object v0, Lcom/ironsource/V7;->a:Lcom/ironsource/V7;

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/ironsource/V7;->b:Landroid/os/Handler;

    .line 15
    new-instance v0, Lcom/ironsource/V7$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/ironsource/V7$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/ironsource/V7;->m:Lkotlin/Lazy;

    .line 18
    new-instance v0, Lcom/ironsource/V7$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/ironsource/V7$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/ironsource/V7;->n:Lkotlin/Lazy;

    .line 33
    new-instance v0, Lcom/ironsource/Z9;

    const-string v1, "isadplayer-background"

    invoke-direct {v0, v1}, Lcom/ironsource/Z9;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 35
    invoke-virtual {v0}, Lcom/ironsource/Z9;->a()V

    .line 36
    sput-object v0, Lcom/ironsource/V7;->o:Lcom/ironsource/Z9;

    .line 42
    new-instance v0, Lcom/ironsource/Z9;

    const-string v1, "isadplayer-publisher-callbacks"

    invoke-direct {v0, v1}, Lcom/ironsource/Z9;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 44
    invoke-virtual {v0}, Lcom/ironsource/Z9;->a()V

    .line 45
    sput-object v0, Lcom/ironsource/V7;->p:Lcom/ironsource/Z9;

    .line 51
    new-instance v0, Lcom/ironsource/Z9;

    const-string v1, "isadplayer-release"

    invoke-direct {v0, v1}, Lcom/ironsource/Z9;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 53
    invoke-virtual {v0}, Lcom/ironsource/Z9;->a()V

    .line 54
    sput-object v0, Lcom/ironsource/V7;->q:Lcom/ironsource/Z9;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a()Lcom/ironsource/oe;
    .locals 4

    .line 2
    new-instance v0, Lcom/ironsource/oe;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/ironsource/oe;-><init>(ILjava/util/concurrent/ThreadFactory;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/ironsource/V7;Ljava/lang/Runnable;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x0

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/V7;->b(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static synthetic b(Lcom/ironsource/V7;Ljava/lang/Runnable;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x0

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/V7;->c(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private final c()Lcom/ironsource/oe;
    .locals 1

    .line 2
    sget-object v0, Lcom/ironsource/V7;->m:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/oe;

    return-object v0
.end method

.method public static synthetic c(Lcom/ironsource/V7;Ljava/lang/Runnable;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x0

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/V7;->d(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private final d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/ironsource/V7;->n:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method private final f(Ljava/lang/Runnable;)Z
    .locals 1

    .line 2
    sget-boolean v0, Lcom/ironsource/V7;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ironsource/V7;->c()Lcom/ironsource/oe;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static final g()Ljava/util/Map;
    .locals 11

    .line 1
    sget-object v0, Lcom/ironsource/Pb;->w:Lcom/ironsource/Pb$a;

    invoke-virtual {v0}, Lcom/ironsource/Pb$a;->d()Lcom/ironsource/M7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/M7;->h()Lcom/ironsource/D7;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/ironsource/V7$a;

    invoke-direct {v1, v0}, Lcom/ironsource/V7$a;-><init>(Ljava/lang/Object;)V

    const-string v2, "deviceStatus"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 4
    new-instance v2, Lcom/ironsource/V7$b;

    invoke-direct {v2, v0}, Lcom/ironsource/V7$b;-><init>(Ljava/lang/Object;)V

    const-string v3, "iabTokenAPI"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 5
    new-instance v3, Lcom/ironsource/V7$c;

    invoke-direct {v3, v0}, Lcom/ironsource/V7$c;-><init>(Ljava/lang/Object;)V

    const-string v4, "dsSharedSignalsAPI"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    .line 6
    new-instance v4, Lcom/ironsource/V7$d;

    invoke-direct {v4, v0}, Lcom/ironsource/V7$d;-><init>(Ljava/lang/Object;)V

    const-string v5, "deleteFolder"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 7
    new-instance v5, Lcom/ironsource/V7$e;

    invoke-direct {v5, v0}, Lcom/ironsource/V7$e;-><init>(Ljava/lang/Object;)V

    const-string v6, "deleteFile"

    invoke-static {v6, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    .line 8
    new-instance v6, Lcom/ironsource/V7$f;

    invoke-direct {v6, v0}, Lcom/ironsource/V7$f;-><init>(Ljava/lang/Object;)V

    const-string v7, "getCachedFilesMap"

    invoke-static {v7, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    .line 9
    new-instance v7, Lcom/ironsource/V7$g;

    invoke-direct {v7, v0}, Lcom/ironsource/V7$g;-><init>(Ljava/lang/Object;)V

    const-string v8, "permissionsAPI"

    invoke-static {v8, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    .line 10
    new-instance v8, Lcom/ironsource/V7$h;

    invoke-direct {v8, v0}, Lcom/ironsource/V7$h;-><init>(Ljava/lang/Object;)V

    const-string v9, "deviceDataAPI"

    invoke-static {v9, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    .line 11
    new-instance v9, Lcom/ironsource/V7$i;

    invoke-direct {v9, v0}, Lcom/ironsource/V7$i;-><init>(Ljava/lang/Object;)V

    const-string v0, "adViewAPI"

    invoke-static {v0, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v9, 0x9

    new-array v9, v9, [Lkotlin/Pair;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    const/4 v1, 0x1

    aput-object v2, v9, v1

    const/4 v1, 0x2

    aput-object v3, v9, v1

    const/4 v1, 0x3

    aput-object v4, v9, v1

    const/4 v1, 0x4

    aput-object v5, v9, v1

    const/4 v1, 0x5

    aput-object v6, v9, v1

    const/4 v1, 0x6

    aput-object v7, v9, v1

    const/4 v1, 0x7

    aput-object v8, v9, v1

    const/16 v1, 0x8

    aput-object v0, v9, v1

    .line 12
    invoke-static {v9}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 7

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 3
    invoke-static/range {v1 .. v6}, Lcom/ironsource/V7;->c(Lcom/ironsource/V7;Ljava/lang/Runnable;JILjava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Runnable;J)V
    .locals 2

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-boolean v0, Lcom/ironsource/V7;->c:Z

    if-eqz v0, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/ironsource/V7;->c()Lcom/ironsource/oe;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    .line 9
    :cond_0
    sget-object v0, Lcom/ironsource/V7;->q:Lcom/ironsource/Z9;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ironsource/Z9;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final a(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 6

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Lcom/ironsource/V7;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/jvm/functions/Function0;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 12
    invoke-static/range {v0 .. v5}, Lcom/ironsource/V7;->a(Lcom/ironsource/V7;Ljava/lang/Runnable;JILjava/lang/Object;)V

    return-void

    :cond_1
    move-object v1, p1

    .line 14
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lcom/ironsource/V7;->c:Z

    return-void
.end method

.method public final b()Landroid/os/Looper;
    .locals 1

    .line 4
    sget-object v0, Lcom/ironsource/V7;->o:Lcom/ironsource/Z9;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Runnable;)V
    .locals 7

    .line 1
    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/ironsource/V7;->a(Lcom/ironsource/V7;Ljava/lang/Runnable;JILjava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/lang/Runnable;J)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/ironsource/V7;->o:Lcom/ironsource/Z9;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ironsource/Z9;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final c(Ljava/lang/Runnable;)V
    .locals 7

    .line 1
    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/ironsource/V7;->b(Lcom/ironsource/V7;Ljava/lang/Runnable;JILjava/lang/Object;)V

    return-void
.end method

.method public final c(Ljava/lang/Runnable;J)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/ironsource/V7;->p:Lcom/ironsource/Z9;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ironsource/Z9;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final d(Ljava/lang/Runnable;)V
    .locals 7

    .line 1
    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/ironsource/V7;->c(Lcom/ironsource/V7;Ljava/lang/Runnable;JILjava/lang/Object;)V

    return-void
.end method

.method public final d(Ljava/lang/Runnable;J)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/ironsource/V7;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final e()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ironsource/V7;->c()Lcom/ironsource/oe;

    move-result-object v0

    return-object v0
.end method

.method public final e(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/ironsource/V7;->f(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/ironsource/V7;->c()Lcom/ironsource/oe;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/ironsource/V7;->q:Lcom/ironsource/Z9;

    invoke-virtual {v0, p1}, Lcom/ironsource/Z9;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ironsource/V7;->c:Z

    return v0
.end method
