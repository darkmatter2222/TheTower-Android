.class public final Lcom/ironsource/p1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/q1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/p1$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/ironsource/mediationsdk/IronSource$a;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/IronSource$a;)V
    .locals 1

    const-string v0, "adFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/p1;->a:Lcom/ironsource/mediationsdk/IronSource$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/m1;)Lcom/ironsource/r1;
    .locals 3

    const-string v0, "eventBaseData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/p1;->a:Lcom/ironsource/mediationsdk/IronSource$a;

    sget-object v1, Lcom/ironsource/p1$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 4
    new-instance v0, Lcom/ironsource/Y2;

    invoke-direct {v0, p1}, Lcom/ironsource/Y2;-><init>(Lcom/ironsource/m1;)V

    return-object v0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object v0, p0, Lcom/ironsource/p1;->a:Lcom/ironsource/mediationsdk/IronSource$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported ad format: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance v0, Lcom/ironsource/he;

    invoke-direct {v0, p1}, Lcom/ironsource/he;-><init>(Lcom/ironsource/m1;)V

    return-object v0

    .line 8
    :cond_2
    new-instance v0, Lcom/ironsource/K9;

    invoke-direct {v0, p1}, Lcom/ironsource/K9;-><init>(Lcom/ironsource/m1;)V

    return-object v0
.end method
