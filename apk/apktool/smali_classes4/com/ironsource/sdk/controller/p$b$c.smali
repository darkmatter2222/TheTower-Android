.class public final Lcom/ironsource/sdk/controller/p$b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/sdk/controller/p$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/p$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/ironsource/Zc;

.field private final b:Lcom/ironsource/h;


# direct methods
.method public constructor <init>(Lcom/ironsource/Zc;Lcom/ironsource/h;)V
    .locals 1

    const-string v0, "configurations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intentFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/sdk/controller/p$b$c;->a:Lcom/ironsource/Zc;

    .line 3
    iput-object p2, p0, Lcom/ironsource/sdk/controller/p$b$c;->b:Lcom/ironsource/h;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/ironsource/Yc;)Lcom/ironsource/sdk/controller/p$c;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "openUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/ironsource/sdk/controller/OpenUrlActivity$e;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/p$b$c;->b:Lcom/ironsource/h;

    invoke-direct {v0, v1}, Lcom/ironsource/sdk/controller/OpenUrlActivity$e;-><init>(Lcom/ironsource/h;)V

    .line 2
    iget-object v1, p0, Lcom/ironsource/sdk/controller/p$b$c;->a:Lcom/ironsource/Zc;

    invoke-virtual {v1}, Lcom/ironsource/Zc;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/OpenUrlActivity$e;->a(I)Lcom/ironsource/sdk/controller/OpenUrlActivity$e;

    move-result-object v0

    .line 3
    invoke-virtual {p2}, Lcom/ironsource/Yc;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/ironsource/sdk/controller/OpenUrlActivity$e;->a(Ljava/lang/String;)Lcom/ironsource/sdk/controller/OpenUrlActivity$e;

    move-result-object p2

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p2, v0}, Lcom/ironsource/sdk/controller/OpenUrlActivity$e;->b(Z)Lcom/ironsource/sdk/controller/OpenUrlActivity$e;

    move-result-object p2

    .line 5
    invoke-virtual {p2, v0}, Lcom/ironsource/sdk/controller/OpenUrlActivity$e;->c(Z)Lcom/ironsource/sdk/controller/OpenUrlActivity$e;

    move-result-object p2

    .line 6
    invoke-virtual {p2, p1}, Lcom/ironsource/sdk/controller/OpenUrlActivity$e;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 8
    sget-object p1, Lcom/ironsource/sdk/controller/p$c$b;->a:Lcom/ironsource/sdk/controller/p$c$b;

    return-object p1
.end method
