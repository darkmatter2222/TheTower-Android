.class public final Lcom/ironsource/V9$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/xe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/V9;->a(Landroid/content/Context;Lcom/unity3d/ironsourceads/InitRequest;Lcom/unity3d/ironsourceads/InitListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/ironsource/l5;

.field final synthetic c:Lcom/unity3d/ironsourceads/InitListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/ironsource/l5;Lcom/unity3d/ironsourceads/InitListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/V9$b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/ironsource/V9$b;->b:Lcom/ironsource/l5;

    iput-object p3, p0, Lcom/ironsource/V9$b;->c:Lcom/unity3d/ironsourceads/InitListener;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/qe;)V
    .locals 4

    const-string v0, "sdkConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/ironsource/V9;->a:Lcom/ironsource/V9;

    .line 2
    iget-object v1, p0, Lcom/ironsource/V9$b;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/ironsource/qe;->d()Lcom/ironsource/Ue;

    move-result-object p1

    iget-object v2, p0, Lcom/ironsource/V9$b;->b:Lcom/ironsource/l5;

    iget-object v3, p0, Lcom/ironsource/V9$b;->c:Lcom/unity3d/ironsourceads/InitListener;

    .line 3
    invoke-static {v0, v1, p1, v2, v3}, Lcom/ironsource/V9;->a(Lcom/ironsource/V9;Landroid/content/Context;Lcom/ironsource/Ue;Lcom/ironsource/l5;Lcom/unity3d/ironsourceads/InitListener;)V

    return-void
.end method

.method public a(Lcom/ironsource/se;)V
    .locals 3

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/ironsource/V9;->a:Lcom/ironsource/V9;

    iget-object v1, p0, Lcom/ironsource/V9$b;->c:Lcom/unity3d/ironsourceads/InitListener;

    iget-object v2, p0, Lcom/ironsource/V9$b;->b:Lcom/ironsource/l5;

    invoke-static {v0, v1, v2, p1}, Lcom/ironsource/V9;->a(Lcom/ironsource/V9;Lcom/unity3d/ironsourceads/InitListener;Lcom/ironsource/l5;Lcom/ironsource/se;)V

    return-void
.end method
