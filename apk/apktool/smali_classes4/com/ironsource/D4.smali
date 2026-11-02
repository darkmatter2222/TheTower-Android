.class public final Lcom/ironsource/D4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/A7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/D4$a;
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
.method public a(Landroid/content/Context;Lcom/ironsource/z4;)Lcom/ironsource/F4;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/ironsource/D4$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 4
    :cond_1
    new-instance p2, Lcom/ironsource/C4;

    const-string v0, "unity3d_shrd_pref"

    invoke-direct {p2, p1, v0}, Lcom/ironsource/C4;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p2

    .line 5
    :cond_2
    new-instance p2, Lcom/ironsource/C4;

    const-string v0, "unityads-installinfo"

    invoke-direct {p2, p1, v0}, Lcom/ironsource/C4;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p2

    .line 6
    :cond_3
    new-instance p2, Lcom/ironsource/C4;

    const-string v0, "supersonic_shared_preferen"

    invoke-direct {p2, p1, v0}, Lcom/ironsource/C4;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p2
.end method
