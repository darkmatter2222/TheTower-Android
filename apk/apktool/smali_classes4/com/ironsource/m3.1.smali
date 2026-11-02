.class public abstract Lcom/ironsource/m3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/p7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/m3$a;,
        Lcom/ironsource/m3$b;,
        Lcom/ironsource/m3$c;,
        Lcom/ironsource/m3$d;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ironsource/m3;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/ironsource/m3$a;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/ironsource/m3$a;

    invoke-virtual {v0}, Lcom/ironsource/m3$a;->e()Lcom/ironsource/m3$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/m3$b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2
    :cond_0
    instance-of v0, p0, Lcom/ironsource/m3$c;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/ironsource/m3$c;

    invoke-virtual {v0}, Lcom/ironsource/m3$c;->f()Lcom/ironsource/m3$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/m3$d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public final b()J
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/ironsource/m3$a;

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 2
    :cond_0
    instance-of v0, p0, Lcom/ironsource/m3$c;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/ironsource/m3$c;

    invoke-virtual {v0}, Lcom/ironsource/m3$c;->f()Lcom/ironsource/m3$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/m3$d;->b()J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public final c()J
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/ironsource/m3$a;

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 2
    :cond_0
    instance-of v0, p0, Lcom/ironsource/m3$c;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/ironsource/m3$c;

    invoke-virtual {v0}, Lcom/ironsource/m3$c;->g()J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method
