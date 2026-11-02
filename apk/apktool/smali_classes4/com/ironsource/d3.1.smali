.class public final Lcom/ironsource/d3;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private final a:Lcom/ironsource/Bg;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance p1, Lcom/ironsource/d3$a;

    invoke-direct {p1, p0}, Lcom/ironsource/d3$a;-><init>(Lcom/ironsource/d3;)V

    iput-object p1, p0, Lcom/ironsource/d3;->a:Lcom/ironsource/Bg;

    return-void
.end method


# virtual methods
.method public final getViewBinder()Lcom/ironsource/Bg;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/d3;->a:Lcom/ironsource/Bg;

    return-object v0
.end method
