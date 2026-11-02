.class Lcom/ironsource/mediationsdk/p$a$a;
.super Lcom/ironsource/environment/thread/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/p$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/Boolean;

.field final synthetic c:Lcom/ironsource/mediationsdk/p$a;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/p$a;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/mediationsdk/p$a$a;->c:Lcom/ironsource/mediationsdk/p$a;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/p$a$a;->b:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/ironsource/environment/thread/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 1
    new-instance v0, Lcom/ironsource/Of;

    invoke-direct {v0}, Lcom/ironsource/Of;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/ironsource/mediationsdk/p$a$a;->c:Lcom/ironsource/mediationsdk/p$a;

    move-object v2, v1

    iget-object v1, v2, Lcom/ironsource/mediationsdk/p$a;->b:Landroid/content/Context;

    iget-object v2, v2, Lcom/ironsource/mediationsdk/p$a;->c:Lcom/ironsource/mediationsdk/p;

    .line 4
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/p;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/p$a$a;->c:Lcom/ironsource/mediationsdk/p$a;

    iget-object v3, v3, Lcom/ironsource/mediationsdk/p$a;->c:Lcom/ironsource/mediationsdk/p;

    invoke-static {v3}, Lcom/ironsource/mediationsdk/p;->-$$Nest$fgetl(Lcom/ironsource/mediationsdk/p;)Lcom/ironsource/Ue;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Lcom/ironsource/Ue;->j()Lorg/json/JSONObject;

    move-result-object v3

    .line 6
    invoke-static {}, Lcom/unity3d/mediation/LevelPlay;->getSdkVersion()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ironsource/mediationsdk/p$a$a;->c:Lcom/ironsource/mediationsdk/p$a;

    iget-object v5, v5, Lcom/ironsource/mediationsdk/p$a;->c:Lcom/ironsource/mediationsdk/p;

    invoke-static {v5}, Lcom/ironsource/mediationsdk/p;->-$$Nest$fgetl(Lcom/ironsource/mediationsdk/p;)Lcom/ironsource/Ue;

    move-result-object v5

    .line 8
    invoke-virtual {v5}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v5

    .line 9
    invoke-virtual {v5}, Lcom/ironsource/S3;->g()Lcom/ironsource/ag;

    move-result-object v5

    .line 10
    invoke-virtual {v5}, Lcom/ironsource/ag;->b()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ironsource/mediationsdk/p$a$a;->b:Ljava/lang/Boolean;

    iget-object v7, p0, Lcom/ironsource/mediationsdk/p$a$a;->c:Lcom/ironsource/mediationsdk/p$a;

    iget-object v7, v7, Lcom/ironsource/mediationsdk/p$a;->c:Lcom/ironsource/mediationsdk/p;

    invoke-static {v7}, Lcom/ironsource/mediationsdk/p;->-$$Nest$fgetJ(Lcom/ironsource/mediationsdk/p;)Z

    move-result v7

    .line 11
    invoke-virtual/range {v0 .. v7}, Lcom/ironsource/Of;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Z)V

    .line 22
    iget-object v0, p0, Lcom/ironsource/mediationsdk/p$a$a;->c:Lcom/ironsource/mediationsdk/p$a;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/p$a;->c:Lcom/ironsource/mediationsdk/p;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/p;->-$$Nest$fputV(Lcom/ironsource/mediationsdk/p;Z)V

    .line 23
    sget-object v0, Lcom/ironsource/Nf;->a:Lcom/ironsource/Nf;

    invoke-virtual {v0}, Lcom/ironsource/Nf;->c()V

    return-void
.end method
