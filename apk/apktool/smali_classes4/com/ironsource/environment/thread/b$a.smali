.class public final Lcom/ironsource/environment/thread/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/environment/thread/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSingleScheduledExecutorService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SingleScheduledExecutorService.kt\ncom/ironsource/environment/thread/SingleScheduledExecutorService$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,36:1\n1#2:37\n*E\n"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$I7IEqGYuSaIfd8TiDC5dTJpBPOg(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/ironsource/environment/thread/b$a;->a(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ironsource/environment/thread/b$a;-><init>()V

    return-void
.end method

.method private static final a(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    .line 4
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/ironsource/environment/thread/b;
    .locals 4

    const-string v0, "threadName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    new-instance v1, Lcom/ironsource/environment/thread/b$a$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, v0}, Lcom/ironsource/environment/thread/b$a$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 3
    new-instance p1, Lcom/ironsource/environment/thread/b;

    new-instance v2, Lcom/ironsource/oe;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Lcom/ironsource/oe;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    const/4 v1, 0x0

    invoke-direct {p1, v0, v2, v1}, Lcom/ironsource/environment/thread/b;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/ScheduledExecutorService;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method
