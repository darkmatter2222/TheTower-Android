.class public final Lcom/ironsource/Ef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/Ff;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/Ef$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/ironsource/Ef$a;

.field private static e:Lcom/ironsource/Hf;


# instance fields
.field private final a:Lcom/ironsource/Hf;

.field private final b:Lcom/ironsource/fg;

.field private final c:Lcom/ironsource/fg;


# direct methods
.method public static synthetic $r8$lambda$TzZFnzzgQ3qJGfKpmVrMjI5FCJg(Lcom/ironsource/fg;Lcom/ironsource/environment/thread/a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/ironsource/Ef;->a(Lcom/ironsource/fg;Lcom/ironsource/environment/thread/a;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ironsource/Ef$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/Ef$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/Ef;->d:Lcom/ironsource/Ef$a;

    .line 1
    new-instance v0, Lcom/ironsource/Q5;

    sget-object v1, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    invoke-virtual {v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->getLevelPlayThread()Lcom/ironsource/environment/thread/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ironsource/Q5;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    sput-object v0, Lcom/ironsource/Ef;->e:Lcom/ironsource/Hf;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/ironsource/Ef;-><init>(Lcom/ironsource/Hf;Lcom/ironsource/fg;Lcom/ironsource/fg;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/Hf;Lcom/ironsource/fg;Lcom/ironsource/fg;)V
    .locals 1

    const-string v0, "engine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "levelPlayDispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainDispatcher"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/ironsource/Ef;->a:Lcom/ironsource/Hf;

    .line 4
    iput-object p2, p0, Lcom/ironsource/Ef;->b:Lcom/ironsource/fg;

    .line 5
    iput-object p3, p0, Lcom/ironsource/Ef;->c:Lcom/ironsource/fg;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ironsource/Hf;Lcom/ironsource/fg;Lcom/ironsource/fg;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 6
    sget-object p1, Lcom/ironsource/Ef;->e:Lcom/ironsource/Hf;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 7
    sget-object p2, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    invoke-virtual {p2}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->getLevelPlayThread()Lcom/ironsource/environment/thread/b;

    move-result-object p2

    invoke-static {p2}, Lcom/ironsource/gg;->a(Lcom/ironsource/environment/thread/b;)Lcom/ironsource/fg;

    move-result-object p2

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 9
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {p3}, Lcom/ironsource/gg;->a(Landroid/os/Handler;)Lcom/ironsource/fg;

    move-result-object p3

    .line 10
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/Ef;-><init>(Lcom/ironsource/Hf;Lcom/ironsource/fg;Lcom/ironsource/fg;)V

    return-void
.end method

.method private final a(Ljava/lang/Runnable;JLcom/ironsource/fg;)Lcom/ironsource/Ff$a;
    .locals 2

    .line 4
    sget-object v0, Lcom/ironsource/environment/thread/a;->a:Lcom/ironsource/environment/thread/a$a;

    invoke-virtual {v0, p1}, Lcom/ironsource/environment/thread/a$a;->a(Ljava/lang/Runnable;)Lcom/ironsource/environment/thread/a;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/ironsource/Ef;->a:Lcom/ironsource/Hf;

    invoke-static {p2, p3}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide p2

    new-instance v1, Lcom/ironsource/Ef$$ExternalSyntheticLambda0;

    invoke-direct {v1, p4, p1}, Lcom/ironsource/Ef$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/fg;Lcom/ironsource/environment/thread/a;)V

    invoke-interface {v0, p2, p3, v1}, Lcom/ironsource/Hf;->a(JLjava/lang/Runnable;)Lcom/ironsource/Hf$a;

    move-result-object p1

    .line 7
    new-instance p2, Lcom/ironsource/Ff$a;

    invoke-direct {p2, p1}, Lcom/ironsource/Ff$a;-><init>(Lcom/ironsource/Hf$a;)V

    return-object p2
.end method

.method public static final synthetic a()Lcom/ironsource/Hf;
    .locals 1

    .line 1
    sget-object v0, Lcom/ironsource/Ef;->e:Lcom/ironsource/Hf;

    return-object v0
.end method

.method public static final synthetic a(Lcom/ironsource/Hf;)V
    .locals 0

    .line 2
    sput-object p0, Lcom/ironsource/Ef;->e:Lcom/ironsource/Hf;

    return-void
.end method

.method private static final a(Lcom/ironsource/fg;Lcom/ironsource/environment/thread/a;)V
    .locals 1

    .line 8
    new-instance v0, Lcom/ironsource/Ef$b;

    invoke-direct {v0, p1}, Lcom/ironsource/Ef$b;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lcom/ironsource/fg;->a(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;J)Lcom/ironsource/Ff$a;
    .locals 1

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/Ef;->c:Lcom/ironsource/fg;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ironsource/Ef;->a(Ljava/lang/Runnable;JLcom/ironsource/fg;)Lcom/ironsource/Ff$a;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Runnable;J)Lcom/ironsource/Ff$a;
    .locals 1

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ef;->b:Lcom/ironsource/fg;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ironsource/Ef;->a(Ljava/lang/Runnable;JLcom/ironsource/fg;)Lcom/ironsource/Ff$a;

    move-result-object p1

    return-object p1
.end method
