.class public Lcom/ironsource/sdk/controller/OpenUrlActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/OpenUrlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field private final a:Lcom/ironsource/h;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/ironsource/h;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$e;->d:Z

    .line 3
    iput-boolean v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$e;->e:Z

    .line 4
    iput-boolean v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$e;->f:Z

    .line 7
    iput-object p1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$e;->a:Lcom/ironsource/h;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$e;->a:Lcom/ironsource/h;

    invoke-interface {v0, p1}, Lcom/ironsource/h;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$e;->c:Ljava/lang/String;

    const-string v2, "external_url"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-boolean v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$e;->d:Z

    const-string v2, "secondary_web_view"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7
    iget-boolean v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$e;->e:Z

    const-string v2, "is_store"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8
    iget-boolean v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$e;->f:Z

    const-string v2, "immersive"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9
    instance-of p1, p1, Landroid/app/Activity;

    if-nez p1, :cond_0

    .line 10
    iget p1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$e;->b:I

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method a(I)Lcom/ironsource/sdk/controller/OpenUrlActivity$e;
    .locals 0

    .line 1
    iput p1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$e;->b:I

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/ironsource/sdk/controller/OpenUrlActivity$e;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$e;->c:Ljava/lang/String;

    return-object p0
.end method

.method a(Z)Lcom/ironsource/sdk/controller/OpenUrlActivity$e;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$e;->f:Z

    return-object p0
.end method

.method public b(Z)Lcom/ironsource/sdk/controller/OpenUrlActivity$e;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$e;->d:Z

    return-object p0
.end method

.method public c(Z)Lcom/ironsource/sdk/controller/OpenUrlActivity$e;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$e;->e:Z

    return-object p0
.end method
