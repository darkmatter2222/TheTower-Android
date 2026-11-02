.class public final Lcom/ironsource/z6$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/z6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/z6$b$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ironsource/p0;Lcom/ironsource/z6$a;Lcom/ironsource/v6;Lcom/ironsource/x6;Lcom/ironsource/y6;)Lcom/ironsource/z6;
    .locals 6

    const-string v0, "adTools"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fullscreenAdUnitFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fullscreenAdUnitListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lcom/ironsource/z6$a;->b()Lcom/ironsource/z6$c;

    move-result-object v0

    sget-object v1, Lcom/ironsource/z6$b$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p2, 0x2

    if-eq v0, p2, :cond_1

    const/4 p2, 0x3

    if-ne v0, p2, :cond_0

    .line 9
    new-instance p2, Lcom/ironsource/A6;

    invoke-direct {p2, p1, p3, p4, p5}, Lcom/ironsource/A6;-><init>(Lcom/ironsource/p0;Lcom/ironsource/v6;Lcom/ironsource/x6;Lcom/ironsource/y6;)V

    return-object p2

    .line 10
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 15
    :cond_1
    new-instance p2, Lcom/ironsource/G6;

    invoke-direct {p2, p1, p3, p4, p5}, Lcom/ironsource/G6;-><init>(Lcom/ironsource/p0;Lcom/ironsource/v6;Lcom/ironsource/x6;Lcom/ironsource/y6;)V

    return-object p2

    .line 16
    :cond_2
    new-instance v0, Lcom/ironsource/N6;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/N6;-><init>(Lcom/ironsource/p0;Lcom/ironsource/z6$a;Lcom/ironsource/v6;Lcom/ironsource/x6;Lcom/ironsource/y6;)V

    return-object v0
.end method
