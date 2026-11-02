.class Lcom/applovin/impl/y1$c;
.super Lcom/applovin/impl/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/y1;-><init>(Lcom/applovin/impl/sdk/ad/b;Landroid/app/Activity;Ljava/util/Map;Lcom/applovin/impl/sdk/l;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/l;

.field final synthetic b:Lcom/applovin/impl/y1;


# direct methods
.method constructor <init>(Lcom/applovin/impl/y1;Lcom/applovin/impl/sdk/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/y1$c;->b:Lcom/applovin/impl/y1;

    iput-object p2, p0, Lcom/applovin/impl/y1$c;->a:Lcom/applovin/impl/sdk/l;

    invoke-direct {p0}, Lcom/applovin/impl/b;-><init>()V

    return-void
.end method

.method private a(Landroid/app/Activity;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/y1$c;->a:Lcom/applovin/impl/sdk/l;

    const-string v2, "AppLovinFullscreenActivity"

    invoke-static {v0, v2, v1}, Lcom/applovin/impl/u7;->a(Landroid/content/Context;Ljava/lang/String;Lcom/applovin/impl/sdk/l;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/applovin/impl/y1$c;->b:Lcom/applovin/impl/y1;

    invoke-static {p2}, Lcom/applovin/impl/y1;->b(Lcom/applovin/impl/y1;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/y1$c;->a(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/applovin/impl/y1$c;->b:Lcom/applovin/impl/y1;

    invoke-static {p1}, Lcom/applovin/impl/y1;->c(Lcom/applovin/impl/y1;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/y1$c;->b:Lcom/applovin/impl/y1;

    invoke-static {v0}, Lcom/applovin/impl/y1;->b(Lcom/applovin/impl/y1;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/y1$c;->a(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/applovin/impl/y1$c;->b:Lcom/applovin/impl/y1;

    invoke-static {p1}, Lcom/applovin/impl/y1;->c(Lcom/applovin/impl/y1;)V

    :cond_1
    :goto_0
    return-void
.end method
