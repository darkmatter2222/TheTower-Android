.class public final Lcom/ironsource/U0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/U0$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/ironsource/U0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ironsource/U0;

    invoke-direct {v0}, Lcom/ironsource/U0;-><init>()V

    sput-object v0, Lcom/ironsource/U0;->a:Lcom/ironsource/U0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lcom/ironsource/mediationsdk/IronSource$a;)Lcom/ironsource/R6$a;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "adUnit"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/ironsource/U0$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 5
    sget-object p0, Lcom/ironsource/R6$a;->d:Lcom/ironsource/R6$a;

    return-object p0

    .line 1
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 6
    :cond_1
    sget-object p0, Lcom/ironsource/R6$a;->c:Lcom/ironsource/R6$a;

    return-object p0

    .line 7
    :cond_2
    sget-object p0, Lcom/ironsource/R6$a;->b:Lcom/ironsource/R6$a;

    return-object p0

    .line 8
    :cond_3
    sget-object p0, Lcom/ironsource/R6$a;->a:Lcom/ironsource/R6$a;

    return-object p0
.end method
