.class Lcom/applovin/impl/adview/activity/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/activity/a;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/activity/a;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/activity/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/adview/activity/a$a;->a:Lcom/applovin/impl/adview/activity/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/a$a;->a:Lcom/applovin/impl/adview/activity/a;

    invoke-static {v0}, Lcom/applovin/impl/adview/activity/a;->a(Lcom/applovin/impl/adview/activity/a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/applovin/adview/AppLovinFullscreenActivity;

    const-string v0, "AppLovinFullscreenActivity"

    if-eqz v7, :cond_1

    .line 4
    iget-object v1, p0, Lcom/applovin/impl/adview/activity/a$a;->a:Lcom/applovin/impl/adview/activity/a;

    invoke-static {v1}, Lcom/applovin/impl/adview/activity/a;->b(Lcom/applovin/impl/adview/activity/a;)Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/a$a;->a:Lcom/applovin/impl/adview/activity/a;

    invoke-static {v1}, Lcom/applovin/impl/adview/activity/a;->b(Lcom/applovin/impl/adview/activity/a;)Lcom/applovin/impl/sdk/p;

    move-result-object v1

    const-string v2, "Presenting ad..."

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    new-instance v2, Lcom/applovin/impl/adview/activity/a$b;

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/a$a;->a:Lcom/applovin/impl/adview/activity/a;

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Lcom/applovin/impl/adview/activity/a$b;-><init>(Lcom/applovin/impl/adview/activity/a;Lcom/applovin/impl/adview/activity/a$a;)V

    .line 7
    move-object v1, p1

    check-cast v1, Lcom/applovin/impl/sdk/ad/b;

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/a$a;->a:Lcom/applovin/impl/adview/activity/a;

    invoke-static {v0}, Lcom/applovin/impl/adview/activity/a;->c(Lcom/applovin/impl/adview/activity/a;)Lcom/applovin/impl/sdk/l;

    move-result-object v6

    new-instance v8, Lcom/applovin/impl/adview/activity/a$a$a;

    invoke-direct {v8, p0, v7, p1, v2}, Lcom/applovin/impl/adview/activity/a$a$a;-><init>(Lcom/applovin/impl/adview/activity/a$a;Lcom/applovin/adview/AppLovinFullscreenActivity;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/impl/adview/activity/a$b;)V

    const/4 v5, 0x0

    move-object v3, v2

    move-object v4, v2

    invoke-static/range {v1 .. v8}, Lcom/applovin/impl/y1;->a(Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Ljava/util/Map;Lcom/applovin/impl/sdk/l;Landroid/app/Activity;Lcom/applovin/impl/y1$g;)V

    return-void

    .line 31
    :cond_1
    iget-object v1, p0, Lcom/applovin/impl/adview/activity/a$a;->a:Lcom/applovin/impl/adview/activity/a;

    invoke-static {v1}, Lcom/applovin/impl/adview/activity/a;->b(Lcom/applovin/impl/adview/activity/a;)Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/a$a;->a:Lcom/applovin/impl/adview/activity/a;

    invoke-static {v1}, Lcom/applovin/impl/adview/activity/a;->b(Lcom/applovin/impl/adview/activity/a;)Lcom/applovin/impl/sdk/p;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to present ad, parent activity has been GC\'d - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/a$a;->a:Lcom/applovin/impl/adview/activity/a;

    const-string v0, "failed_to_receive_ad"

    invoke-static {p1, v0}, Lcom/applovin/impl/adview/activity/a;->a(Lcom/applovin/impl/adview/activity/a;Ljava/lang/String;)V

    return-void
.end method
