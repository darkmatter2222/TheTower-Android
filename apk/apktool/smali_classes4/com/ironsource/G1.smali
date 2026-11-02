.class public final Lcom/ironsource/G1;
.super Lcom/ironsource/r3;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ironsource/r3;-><init>()V

    .line 4
    const-string v0, "outcome"

    iput-object v0, p0, Lcom/ironsource/r3;->H:Ljava/lang/String;

    const/4 v0, 0x4

    .line 5
    iput v0, p0, Lcom/ironsource/r3;->G:I

    .line 6
    const-string v0, "APP"

    iput-object v0, p0, Lcom/ironsource/r3;->I:Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, Lcom/ironsource/r3;->e()V

    return-void
.end method


# virtual methods
.method protected c(Lcom/ironsource/C5;)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected d()V
    .locals 0

    return-void
.end method

.method protected d(Lcom/ironsource/C5;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/ironsource/C5;->c()I

    move-result p1

    .line 3
    sget-object v0, Lcom/ironsource/D5;->b:Lcom/ironsource/D5;

    invoke-virtual {v0}, Lcom/ironsource/D5;->c()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 4
    sget-object v0, Lcom/ironsource/D5;->Q:Lcom/ironsource/D5;

    invoke-virtual {v0}, Lcom/ironsource/D5;->c()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 5
    sget-object v0, Lcom/ironsource/D5;->R:Lcom/ironsource/D5;

    invoke-virtual {v0}, Lcom/ironsource/D5;->c()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 6
    sget-object v0, Lcom/ironsource/D5;->S:Lcom/ironsource/D5;

    invoke-virtual {v0}, Lcom/ironsource/D5;->c()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected e(I)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p1, ""

    return-object p1
.end method

.method protected f(Lcom/ironsource/C5;)V
    .locals 0

    return-void
.end method

.method protected h(Lcom/ironsource/C5;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected j(Lcom/ironsource/C5;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
