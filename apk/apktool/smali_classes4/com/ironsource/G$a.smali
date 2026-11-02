.class public final Lcom/ironsource/G$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/G;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/G$a$a;
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
    invoke-direct {p0}, Lcom/ironsource/G$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ironsource/x0;Lcom/ironsource/Mg;)Lcom/ironsource/G;
    .locals 2

    const-string v0, "adUnitData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "waterfallInstances"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/ironsource/x0;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ironsource/Qg;->b:Lcom/ironsource/Qg;

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/ironsource/Qg;->a:Lcom/ironsource/Qg;

    .line 3
    :goto_0
    sget-object v1, Lcom/ironsource/G$a$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/ironsource/x0;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    new-instance v0, Lcom/ironsource/xf;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/xf;-><init>(Lcom/ironsource/x0;Lcom/ironsource/Mg;)V

    return-object v0

    .line 10
    :cond_1
    new-instance v0, Lcom/ironsource/K4;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/K4;-><init>(Lcom/ironsource/x0;Lcom/ironsource/Mg;)V

    return-object v0

    .line 11
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 13
    :cond_3
    new-instance v0, Lcom/ironsource/u3;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/u3;-><init>(Lcom/ironsource/x0;Lcom/ironsource/Mg;)V

    return-object v0
.end method
