.class public Lcom/ironsource/q9;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/q9$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/ironsource/q9$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ironsource/q9$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/q9$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/q9;->a:Lcom/ironsource/q9$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/ironsource/q9;->a:Lcom/ironsource/q9$a;

    invoke-virtual {v0, p0}, Lcom/ironsource/q9$a;->b(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static final b(Landroid/content/Context;)Lcom/ironsource/Ue;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/ironsource/q9;->a:Lcom/ironsource/q9$a;

    invoke-virtual {v0, p0}, Lcom/ironsource/q9$a;->c(Landroid/content/Context;)Lcom/ironsource/Ue;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Landroid/content/Context;)Lcom/ironsource/D3;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/ironsource/q9;->a:Lcom/ironsource/q9$a;

    invoke-virtual {v0, p0}, Lcom/ironsource/q9$a;->d(Landroid/content/Context;)Lcom/ironsource/D3;

    move-result-object p0

    return-object p0
.end method
