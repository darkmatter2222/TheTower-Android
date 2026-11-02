.class public abstract Lcom/ironsource/q0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/q0$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/ironsource/x0;

.field private final b:Lcom/ironsource/T0;

.field private c:Lcom/ironsource/L0;

.field private d:Lcom/ironsource/z0;

.field private final e:Lcom/ironsource/Hg;

.field private final f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ironsource/J0;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/ironsource/l5;

.field private final h:Lcom/ironsource/E5;


# direct methods
.method public constructor <init>(Lcom/ironsource/p0;Lcom/ironsource/x0;Lcom/ironsource/J0;)V
    .locals 10

    const-string v0, "adTools"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnitData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/ironsource/q0;->a:Lcom/ironsource/x0;

    .line 7
    new-instance v2, Lcom/ironsource/T0;

    sget-object v0, Lcom/ironsource/E0$b;->a:Lcom/ironsource/E0$b;

    invoke-direct {v2, p1, p2, v0}, Lcom/ironsource/T0;-><init>(Lcom/ironsource/p0;Lcom/ironsource/x0;Lcom/ironsource/E0$b;)V

    iput-object v2, p0, Lcom/ironsource/q0;->b:Lcom/ironsource/T0;

    .line 12
    new-instance v1, Lcom/ironsource/Hg;

    invoke-direct {p0}, Lcom/ironsource/q0;->c()Lcom/ironsource/q0$b;

    move-result-object v5

    const/16 v8, 0x30

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    invoke-direct/range {v1 .. v9}, Lcom/ironsource/Hg;-><init>(Lcom/ironsource/T0;Lcom/ironsource/x0;ZLcom/ironsource/Pg;Lcom/ironsource/Dd;Lcom/ironsource/E;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, p0, Lcom/ironsource/q0;->e:Lcom/ironsource/Hg;

    .line 13
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ironsource/q0;->f:Ljava/lang/ref/WeakReference;

    .line 20
    invoke-virtual {v2}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/q0;->h:Lcom/ironsource/E5;

    .line 26
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    .line 27
    invoke-virtual {v3}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/g0;->a()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object p2

    invoke-virtual {v3}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ironsource/g0;->c()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "adFormat = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", adUnitId = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 28
    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic a(Lcom/ironsource/q0;)Lcom/ironsource/E5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ironsource/q0;->h:Lcom/ironsource/E5;

    return-object p0
.end method

.method public static final synthetic b(Lcom/ironsource/q0;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ironsource/q0;->f:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static final synthetic c(Lcom/ironsource/q0;)Lcom/ironsource/l5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ironsource/q0;->g:Lcom/ironsource/l5;

    return-object p0
.end method

.method private final c()Lcom/ironsource/q0$b;
    .locals 1

    .line 2
    new-instance v0, Lcom/ironsource/q0$b;

    invoke-direct {v0, p0}, Lcom/ironsource/q0$b;-><init>(Lcom/ironsource/q0;)V

    return-object v0
.end method


# virtual methods
.method protected abstract a()Lcom/ironsource/D;
.end method

.method protected final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/ironsource/q0;->b:Lcom/ironsource/T0;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/ironsource/p0;->a(Lcom/ironsource/p0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final a(ILjava/lang/String;)V
    .locals 7

    const-string v0, "errorReason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "errorCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errorReason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/q0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/ironsource/q0;->g:Lcom/ironsource/l5;

    invoke-static {v0}, Lcom/ironsource/l5;->a(Lcom/ironsource/l5;)J

    move-result-wide v2

    .line 17
    iget-object v0, p0, Lcom/ironsource/q0;->h:Lcom/ironsource/E5;

    invoke-virtual {v0}, Lcom/ironsource/E5;->e()Lcom/ironsource/Cb;

    move-result-object v1

    .line 18
    iget-object v0, p0, Lcom/ironsource/q0;->a:Lcom/ironsource/x0;

    invoke-virtual {v0}, Lcom/ironsource/x0;->v()Z

    move-result v6

    move v4, p1

    move-object v5, p2

    .line 19
    invoke-virtual/range {v1 .. v6}, Lcom/ironsource/Cb;->a(JILjava/lang/String;Z)V

    .line 21
    iget-object p1, p0, Lcom/ironsource/q0;->c:Lcom/ironsource/L0;

    if-eqz p1, :cond_0

    new-instance p2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {p2, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/ironsource/L0;->b(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/ironsource/J;Lcom/ironsource/z0;)V
    .locals 1

    const-string v0, "adInstancePresenter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iput-object p2, p0, Lcom/ironsource/q0;->d:Lcom/ironsource/z0;

    .line 10
    iget-object p2, p0, Lcom/ironsource/q0;->e:Lcom/ironsource/Hg;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/ironsource/Hg;->a(Lcom/ironsource/J;Z)V

    return-void
.end method

.method public a(Lcom/ironsource/L0;)V
    .locals 4

    const-string v0, "loadListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v1, p0, Lcom/ironsource/q0;->b:Lcom/ironsource/T0;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v1, v2, v2, v3, v2}, Lcom/ironsource/p0;->a(Lcom/ironsource/p0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/ironsource/q0;->b:Lcom/ironsource/T0;

    invoke-virtual {p0}, Lcom/ironsource/q0;->b()Lcom/ironsource/s0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/T0;->a(Lcom/ironsource/s2;)V

    .line 5
    iput-object p1, p0, Lcom/ironsource/q0;->c:Lcom/ironsource/L0;

    .line 6
    iget-object p1, p0, Lcom/ironsource/q0;->h:Lcom/ironsource/E5;

    iget-object v0, p0, Lcom/ironsource/q0;->a:Lcom/ironsource/x0;

    invoke-virtual {v0}, Lcom/ironsource/x0;->v()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ironsource/E5;->a(Z)V

    .line 7
    new-instance p1, Lcom/ironsource/l5;

    invoke-direct {p1}, Lcom/ironsource/l5;-><init>()V

    iput-object p1, p0, Lcom/ironsource/q0;->g:Lcom/ironsource/l5;

    .line 8
    iget-object p1, p0, Lcom/ironsource/q0;->e:Lcom/ironsource/Hg;

    invoke-virtual {p0}, Lcom/ironsource/q0;->a()Lcom/ironsource/D;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/Hg;->a(Lcom/ironsource/D;)V

    return-void
.end method

.method protected final a(Lcom/ironsource/z0;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ironsource/q0;->d:Lcom/ironsource/z0;

    return-void
.end method

.method public final a(Z)V
    .locals 4

    .line 11
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v1, p0, Lcom/ironsource/q0;->b:Lcom/ironsource/T0;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v1, v2, v2, v3, v2}, Lcom/ironsource/p0;->a(Lcom/ironsource/p0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/ironsource/q0;->e:Lcom/ironsource/Hg;

    invoke-virtual {v0}, Lcom/ironsource/Hg;->c()V

    if-eqz p1, :cond_0

    .line 14
    iget-object p1, p0, Lcom/ironsource/q0;->b:Lcom/ironsource/T0;

    invoke-virtual {p1}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/E5;->e()Lcom/ironsource/Cb;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/q0;->b:Lcom/ironsource/T0;

    invoke-virtual {v0}, Lcom/ironsource/p0;->g()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ironsource/Cb;->a(I)V

    :cond_0
    return-void
.end method

.method public b()Lcom/ironsource/s0;
    .locals 2

    .line 3
    new-instance v0, Lcom/ironsource/s0;

    iget-object v1, p0, Lcom/ironsource/q0;->a:Lcom/ironsource/x0;

    invoke-virtual {v1}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ironsource/s0;-><init>(Lcom/ironsource/g0;)V

    return-object v0
.end method

.method protected final b(Lcom/ironsource/L0;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ironsource/q0;->c:Lcom/ironsource/L0;

    return-void
.end method

.method public d()Lcom/ironsource/k0;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/q0;->e:Lcom/ironsource/Hg;

    invoke-virtual {v0}, Lcom/ironsource/Hg;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ironsource/k0$b;->a:Lcom/ironsource/k0$b;

    return-object v0

    :cond_0
    new-instance v0, Lcom/ironsource/k0$a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/ironsource/k0$a;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method protected final e()Lcom/ironsource/x0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/q0;->a:Lcom/ironsource/x0;

    return-object v0
.end method

.method protected final f()Lcom/ironsource/T0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/q0;->b:Lcom/ironsource/T0;

    return-object v0
.end method

.method protected final g()Lcom/ironsource/md;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/q0;->a:Lcom/ironsource/x0;

    invoke-virtual {v0}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g0;->f()Lcom/ironsource/md;

    move-result-object v0

    return-object v0
.end method

.method protected final h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/q0;->a:Lcom/ironsource/x0;

    invoke-virtual {v0}, Lcom/ironsource/x0;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final i()Lcom/ironsource/z0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/q0;->d:Lcom/ironsource/z0;

    return-object v0
.end method

.method protected final j()Lcom/ironsource/L0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/q0;->c:Lcom/ironsource/L0;

    return-object v0
.end method

.method protected final k()Lcom/ironsource/Hg;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/q0;->e:Lcom/ironsource/Hg;

    return-object v0
.end method
