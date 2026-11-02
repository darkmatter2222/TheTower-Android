.class public final Lcom/ironsource/environment/thread/IronSourceThreadManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIronSourceThreadManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IronSourceThreadManager.kt\ncom/ironsource/environment/thread/IronSourceThreadManager\n+ 2 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n*L\n1#1,147:1\n32#2,2:148\n32#2,2:150\n32#2,2:152\n*S KotlinDebug\n*F\n+ 1 IronSourceThreadManager.kt\ncom/ironsource/environment/thread/IronSourceThreadManager\n*L\n78#1:148,2\n85#1:150,2\n92#1:152,2\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

.field private static a:Z

.field private static final b:Lkotlin/Lazy;

.field private static final c:Lkotlin/Lazy;

.field private static final d:Lkotlin/Lazy;

.field private static final e:Lkotlin/Lazy;

.field private static final f:Lkotlin/Lazy;

.field private static final g:Lkotlin/Lazy;

.field private static final h:Lkotlin/Lazy;

.field private static final i:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$3ConP9GTLRVh9_rhLOclXNoQVWs()Lcom/ironsource/Z9;
    .locals 1

    invoke-static {}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->j()Lcom/ironsource/Z9;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$4gXvKxXnM5SndN2TOOzJYvPFF9k()Lcom/ironsource/Ef;
    .locals 1

    invoke-static {}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->l()Lcom/ironsource/Ef;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$BHT56Mtsj68U0JJxZDPXFP_PWw0(Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->a(Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RKaeQ8NgMXMGXHPZi93adVdm6ys()Lcom/ironsource/environment/thread/b;
    .locals 1

    invoke-static {}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->i()Lcom/ironsource/environment/thread/b;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$VQo3T4Q9zvARy_xR5nsgZhsVkaw(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-static {p0}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->a(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vrkkv0RmZS9OaTeH_JjXWvvnalY()Lcom/ironsource/Z9;
    .locals 1

    invoke-static {}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->m()Lcom/ironsource/Z9;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$_MDnLs8-iLvovWmae6g94Sjh3gI()Lcom/ironsource/oe;
    .locals 1

    invoke-static {}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->b()Lcom/ironsource/oe;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$kwv-2VwXQ11vwfnc825TRxHhLz4()Landroid/os/Handler;
    .locals 1

    invoke-static {}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->h()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$mBYiroxZKfu15Dvb4ZH_0ooZhOw()Lcom/ironsource/Z9;
    .locals 1

    invoke-static {}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->k()Lcom/ironsource/Z9;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$wZlnJV2IikKaE0x3F6HRGSYt9IU()Lcom/ironsource/Z9;
    .locals 1

    invoke-static {}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->a()Lcom/ironsource/Z9;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;

    invoke-direct {v0}, Lcom/ironsource/environment/thread/IronSourceThreadManager;-><init>()V

    sput-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    .line 1
    new-instance v0, Lcom/ironsource/environment/thread/IronSourceThreadManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/ironsource/environment/thread/IronSourceThreadManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->b:Lkotlin/Lazy;

    .line 3
    new-instance v0, Lcom/ironsource/environment/thread/IronSourceThreadManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/ironsource/environment/thread/IronSourceThreadManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->c:Lkotlin/Lazy;

    .line 5
    new-instance v0, Lcom/ironsource/environment/thread/IronSourceThreadManager$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/ironsource/environment/thread/IronSourceThreadManager$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->d:Lkotlin/Lazy;

    .line 14
    new-instance v0, Lcom/ironsource/environment/thread/IronSourceThreadManager$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/ironsource/environment/thread/IronSourceThreadManager$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->e:Lkotlin/Lazy;

    .line 21
    new-instance v0, Lcom/ironsource/environment/thread/IronSourceThreadManager$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/ironsource/environment/thread/IronSourceThreadManager$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->f:Lkotlin/Lazy;

    .line 28
    new-instance v0, Lcom/ironsource/environment/thread/IronSourceThreadManager$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/ironsource/environment/thread/IronSourceThreadManager$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->g:Lkotlin/Lazy;

    .line 35
    new-instance v0, Lcom/ironsource/environment/thread/IronSourceThreadManager$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/ironsource/environment/thread/IronSourceThreadManager$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->h:Lkotlin/Lazy;

    .line 42
    new-instance v0, Lcom/ironsource/environment/thread/IronSourceThreadManager$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/ironsource/environment/thread/IronSourceThreadManager$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->i:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a()Lcom/ironsource/Z9;
    .locals 2

    .line 1
    new-instance v0, Lcom/ironsource/Z9;

    const-string v1, "adapterBackground"

    invoke-direct {v0, v1}, Lcom/ironsource/Z9;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3
    invoke-virtual {v0}, Lcom/ironsource/Z9;->a()V

    return-object v0
.end method

.method private static final a(Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 5
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 7
    new-instance p0, Lcom/ironsource/environment/thread/IronSourceThreadManager$$ExternalSyntheticLambda8;

    invoke-direct {p0, p1}, Lcom/ironsource/environment/thread/IronSourceThreadManager$$ExternalSyntheticLambda8;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static final a(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 8
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private final a(Ljava/lang/Runnable;)Z
    .locals 1

    .line 4
    sget-boolean v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->a:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->d()Lcom/ironsource/oe;

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

.method private static final b()Lcom/ironsource/oe;
    .locals 4

    .line 1
    new-instance v0, Lcom/ironsource/oe;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/ironsource/oe;-><init>(ILjava/util/concurrent/ThreadFactory;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private final c()Lcom/ironsource/Z9;
    .locals 1

    .line 1
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/Z9;

    return-object v0
.end method

.method private final d()Lcom/ironsource/oe;
    .locals 1

    .line 1
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->i:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/oe;

    return-object v0
.end method

.method private final e()Lcom/ironsource/Z9;
    .locals 1

    .line 1
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->f:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/Z9;

    return-object v0
.end method

.method private final f()Lcom/ironsource/Z9;
    .locals 1

    .line 1
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->h:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/Z9;

    return-object v0
.end method

.method private final g()Lcom/ironsource/Ef;
    .locals 1

    .line 1
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/Ef;

    return-object v0
.end method

.method private static final h()Landroid/os/Handler;
    .locals 2

    .line 1
    new-instance v0, Lcom/ironsource/Z9;

    const-string v1, "IronSourceInitiatorHandler"

    invoke-direct {v0, v1}, Lcom/ironsource/Z9;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3
    invoke-virtual {v0}, Lcom/ironsource/Z9;->a()V

    .line 5
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v1
.end method

.method private static final i()Lcom/ironsource/environment/thread/b;
    .locals 2

    .line 1
    sget-object v0, Lcom/ironsource/environment/thread/b;->c:Lcom/ironsource/environment/thread/b$a;

    const-string v1, "LevelPlayThread"

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/b$a;->a(Ljava/lang/String;)Lcom/ironsource/environment/thread/b;

    move-result-object v0

    return-object v0
.end method

.method private static final j()Lcom/ironsource/Z9;
    .locals 2

    .line 1
    new-instance v0, Lcom/ironsource/Z9;

    const-string v1, "mediationBackground"

    invoke-direct {v0, v1}, Lcom/ironsource/Z9;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3
    invoke-virtual {v0}, Lcom/ironsource/Z9;->a()V

    return-object v0
.end method

.method private static final k()Lcom/ironsource/Z9;
    .locals 2

    .line 1
    new-instance v0, Lcom/ironsource/Z9;

    const-string v1, "publisher-callbacks"

    invoke-direct {v0, v1}, Lcom/ironsource/Z9;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3
    invoke-virtual {v0}, Lcom/ironsource/Z9;->a()V

    return-object v0
.end method

.method private static final l()Lcom/ironsource/Ef;
    .locals 6

    .line 1
    new-instance v0, Lcom/ironsource/Ef;

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/Ef;-><init>(Lcom/ironsource/Hf;Lcom/ironsource/fg;Lcom/ironsource/fg;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private static final m()Lcom/ironsource/Z9;
    .locals 2

    .line 1
    new-instance v0, Lcom/ironsource/Z9;

    const-string v1, "managersThread"

    invoke-direct {v0, v1}, Lcom/ironsource/Z9;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3
    invoke-virtual {v0}, Lcom/ironsource/Z9;->a()V

    return-object v0
.end method

.method public static synthetic postAdapterBackgroundTask$default(Lcom/ironsource/environment/thread/IronSourceThreadManager;Ljava/lang/Runnable;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postAdapterBackgroundTask(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static synthetic postMediationBackgroundTask$default(Lcom/ironsource/environment/thread/IronSourceThreadManager;Ljava/lang/Runnable;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postMediationBackgroundTask(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static synthetic postOnUiThreadTask$default(Lcom/ironsource/environment/thread/IronSourceThreadManager;Ljava/lang/Runnable;JILjava/lang/Object;)Lcom/ironsource/Ff$a;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;J)Lcom/ironsource/Ff$a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic postPublisherCallback$default(Lcom/ironsource/environment/thread/IronSourceThreadManager;Ljava/lang/Runnable;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postPublisherCallback(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public final executeTasks(ZZLjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tasks"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 71
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Runnable;

    .line 72
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 79
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 144
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Ljava/lang/Runnable;

    .line 145
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postMediationBackgroundTask$default(Lcom/ironsource/environment/thread/IronSourceThreadManager;Ljava/lang/Runnable;JILjava/lang/Object;)V

    goto :goto_1

    .line 151
    :cond_1
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 152
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 212
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Runnable;

    .line 213
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/environment/thread/IronSourceThreadManager$$ExternalSyntheticLambda9;

    invoke-direct {v1, p3, p1}, Lcom/ironsource/environment/thread/IronSourceThreadManager$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postMediationBackgroundTask$default(Lcom/ironsource/environment/thread/IronSourceThreadManager;Ljava/lang/Runnable;JILjava/lang/Object;)V

    goto :goto_2

    .line 221
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 223
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public final getInitHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method public final getLevelPlayThread()Lcom/ironsource/environment/thread/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/environment/thread/b;

    return-object v0
.end method

.method public final getSharedManagersThread()Lcom/ironsource/Z9;
    .locals 1

    .line 1
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/Z9;

    return-object v0
.end method

.method public final getThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    .line 3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    .line 5
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide v3, 0x7fffffffffffffffL

    .line 7
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    return-object v0
.end method

.method public final getUseSharedExecutorService()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->a:Z

    return v0
.end method

.method public final postAdapterBackgroundTask(Ljava/lang/Runnable;)V
    .locals 7

    .line 1
    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postAdapterBackgroundTask$default(Lcom/ironsource/environment/thread/IronSourceThreadManager;Ljava/lang/Runnable;JILjava/lang/Object;)V

    return-void
.end method

.method public final postAdapterBackgroundTask(Ljava/lang/Runnable;J)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->c()Lcom/ironsource/Z9;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/ironsource/Z9;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final postMediationBackgroundTask(Ljava/lang/Runnable;)V
    .locals 7

    .line 1
    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postMediationBackgroundTask$default(Lcom/ironsource/environment/thread/IronSourceThreadManager;Ljava/lang/Runnable;JILjava/lang/Object;)V

    return-void
.end method

.method public final postMediationBackgroundTask(Ljava/lang/Runnable;J)V
    .locals 2

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-boolean v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->a:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->d()Lcom/ironsource/oe;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->e()Lcom/ironsource/Z9;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/ironsource/Z9;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final postOnUiThreadTask(Ljava/lang/Runnable;)Lcom/ironsource/Ff$a;
    .locals 7

    .line 1
    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask$default(Lcom/ironsource/environment/thread/IronSourceThreadManager;Ljava/lang/Runnable;JILjava/lang/Object;)Lcom/ironsource/Ff$a;

    move-result-object p1

    return-object p1
.end method

.method public final postOnUiThreadTask(Ljava/lang/Runnable;J)Lcom/ironsource/Ff$a;
    .locals 2

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->g()Lcom/ironsource/Ef;

    move-result-object v0

    sget-object v1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p2, p3, v1}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Lcom/ironsource/Ef;->a(Ljava/lang/Runnable;J)Lcom/ironsource/Ff$a;

    move-result-object p1

    return-object p1
.end method

.method public final postPublisherCallback(Ljava/lang/Runnable;)V
    .locals 7

    .line 1
    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postPublisherCallback$default(Lcom/ironsource/environment/thread/IronSourceThreadManager;Ljava/lang/Runnable;JILjava/lang/Object;)V

    return-void
.end method

.method public final postPublisherCallback(Ljava/lang/Runnable;J)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->f()Lcom/ironsource/Z9;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/ironsource/Z9;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final removeAdapterBackgroundTask(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->a(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->d()Lcom/ironsource/oe;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    return-void

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->c()Lcom/ironsource/Z9;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/Z9;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final removeMediationBackgroundTask(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->a(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->d()Lcom/ironsource/oe;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    return-void

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->e()Lcom/ironsource/Z9;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/Z9;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setUseSharedExecutorService(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lcom/ironsource/environment/thread/IronSourceThreadManager;->a:Z

    return-void
.end method
