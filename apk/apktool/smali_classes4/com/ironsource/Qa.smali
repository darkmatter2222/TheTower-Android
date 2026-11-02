.class public final Lcom/ironsource/Qa;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a(Lcom/ironsource/qb;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ironsource/Qa;->b(Lcom/ironsource/qb;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final b(Lcom/ironsource/qb;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/qb<",
            "Lcom/unity3d/mediation/LevelPlayAdInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/ironsource/qb$b;

    if-eqz v0, :cond_0

    const-string p0, "success"

    return-object p0

    .line 2
    :cond_0
    instance-of p0, p0, Lcom/ironsource/qb$a;

    if-eqz p0, :cond_1

    const-string p0, "failure"

    return-object p0

    .line 3
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
