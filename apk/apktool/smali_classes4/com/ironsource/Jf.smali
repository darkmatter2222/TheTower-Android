.class public final Lcom/ironsource/Jf;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTempThreadManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TempThreadManager.kt\ncom/unity3d/mediation/internal/TempThreadManager\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,55:1\n49#2,4:56\n*S KotlinDebug\n*F\n+ 1 TempThreadManager.kt\ncom/unity3d/mediation/internal/TempThreadManager\n*L\n22#1:56,4\n*E\n"
.end annotation


# static fields
.field public static final a:Lcom/ironsource/Jf;

.field private static final b:Lkotlin/Lazy;

.field private static final c:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$BiTym_UdyG595Bliuv3dcLz8AZQ()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    invoke-static {}, Lcom/ironsource/Jf;->a()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$xFBKt3qmcXPvq2rs1WtIZdcqlEw()Lcom/ironsource/oe;
    .locals 1

    invoke-static {}, Lcom/ironsource/Jf;->d()Lcom/ironsource/oe;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ironsource/Jf;

    invoke-direct {v0}, Lcom/ironsource/Jf;-><init>()V

    sput-object v0, Lcom/ironsource/Jf;->a:Lcom/ironsource/Jf;

    .line 1
    new-instance v0, Lcom/ironsource/Jf$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/ironsource/Jf$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/ironsource/Jf;->b:Lkotlin/Lazy;

    .line 5
    new-instance v0, Lcom/ironsource/Jf$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/ironsource/Jf$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/ironsource/Jf;->c:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a()Lkotlinx/coroutines/CoroutineScope;
    .locals 3

    .line 1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    .line 36
    sget-object v1, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    new-instance v2, Lcom/ironsource/Jf$a;

    invoke-direct {v2, v1}, Lcom/ironsource/Jf$a;-><init>(Lkotlinx/coroutines/CoroutineExceptionHandler$Key;)V

    .line 37
    invoke-virtual {v0, v2}, Lkotlinx/coroutines/CoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 38
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method

.method private final a(Ljava/lang/Runnable;)Z
    .locals 6

    .line 39
    :try_start_0
    invoke-direct {p0}, Lcom/ironsource/Jf;->b()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/ironsource/Jf$b;

    const/4 v1, 0x0

    invoke-direct {v3, p1, v1}, Lcom/ironsource/Jf$b;-><init>(Ljava/lang/Runnable;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 50
    :try_start_1
    invoke-static {p1}, Lcom/ironsource/If;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 52
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 54
    :goto_0
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to launch coroutine: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private final b()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 1
    sget-object v0, Lcom/ironsource/Jf;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method private final c()Lcom/ironsource/oe;
    .locals 1

    .line 1
    sget-object v0, Lcom/ironsource/Jf;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/oe;

    return-object v0
.end method

.method private static final d()Lcom/ironsource/oe;
    .locals 4

    .line 1
    new-instance v0, Lcom/ironsource/oe;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x10

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/ironsource/oe;-><init>(ILjava/util/concurrent/ThreadFactory;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/ironsource/Jf;->a(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/ironsource/Jf;->c()Lcom/ironsource/oe;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
