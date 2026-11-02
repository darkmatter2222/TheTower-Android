.class public abstract Lcom/ironsource/m3$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/p7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/m3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/m3$d$a;,
        Lcom/ironsource/m3$d$b;,
        Lcom/ironsource/m3$d$c;,
        Lcom/ironsource/m3$d$d;,
        Lcom/ironsource/m3$d$e;,
        Lcom/ironsource/m3$d$f;,
        Lcom/ironsource/m3$d$g;,
        Lcom/ironsource/m3$d$h;
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
    invoke-direct {p0}, Lcom/ironsource/m3$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/ironsource/m3$d$f;

    if-eqz v0, :cond_0

    const-string v0, "ResumeVisibility"

    return-object v0

    .line 2
    :cond_0
    instance-of v0, p0, Lcom/ironsource/m3$d$a;

    if-eqz v0, :cond_1

    const-string v0, "PublisherLoadFail"

    return-object v0

    .line 3
    :cond_1
    instance-of v0, p0, Lcom/ironsource/m3$d$b;

    if-eqz v0, :cond_2

    const-string v0, "PublisherLoadSuccess"

    return-object v0

    .line 4
    :cond_2
    instance-of v0, p0, Lcom/ironsource/m3$d$e;

    if-eqz v0, :cond_3

    const-string v0, "ResumeAutoRefresh"

    return-object v0

    .line 5
    :cond_3
    instance-of v0, p0, Lcom/ironsource/m3$d$c;

    if-eqz v0, :cond_4

    const-string v0, "ReloadFailAfterTimer"

    return-object v0

    .line 6
    :cond_4
    instance-of v0, p0, Lcom/ironsource/m3$d$d;

    if-eqz v0, :cond_5

    const-string v0, "ReloadSuccessAfterTimer"

    return-object v0

    .line 7
    :cond_5
    instance-of v0, p0, Lcom/ironsource/m3$d$g;

    if-eqz v0, :cond_6

    const-string v0, "TimerAfterReloadFail"

    return-object v0

    .line 8
    :cond_6
    instance-of v0, p0, Lcom/ironsource/m3$d$h;

    if-eqz v0, :cond_7

    const-string v0, "TimerAfterReloadSuccess"

    return-object v0

    .line 9
    :cond_7
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public final b()J
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/ironsource/m3$d$f;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/ironsource/m3$d$f;

    invoke-virtual {v0}, Lcom/ironsource/m3$d$f;->d()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method
