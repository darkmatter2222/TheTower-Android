.class public abstract Lcom/ironsource/Ca;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/ironsource/p0;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/ironsource/p0;)V
    .locals 1

    const-string v0, "adTools"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Ca;->a:Lcom/ironsource/p0;

    .line 3
    const-string p1, ""

    iput-object p1, p0, Lcom/ironsource/Ca;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/ironsource/p0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ca;->a:Lcom/ironsource/p0;

    return-object v0
.end method

.method public final a(Lcom/ironsource/g0;)V
    .locals 7

    const-string v0, "adProperties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/ironsource/Ca;->a:Lcom/ironsource/p0;

    invoke-virtual {v0}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object v0

    new-instance v1, Lcom/ironsource/C0;

    iget-object v2, p0, Lcom/ironsource/Ca;->a:Lcom/ironsource/p0;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/C0;-><init>(Lcom/ironsource/p0;Lcom/ironsource/g0;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/E5;->a(Lcom/ironsource/D0;)V

    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/ironsource/Ca;->a:Lcom/ironsource/p0;

    invoke-virtual {v0, p1}, Lcom/ironsource/yb;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/ironsource/Ca;->b:Ljava/lang/String;

    return-void
.end method

.method protected final a(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ironsource/Ca;->c:Z

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ca;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/Ca;->a:Lcom/ironsource/p0;

    invoke-virtual {v0, p1}, Lcom/ironsource/yb;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/Ca;->c:Z

    return v0
.end method

.method public abstract d()Z
.end method
