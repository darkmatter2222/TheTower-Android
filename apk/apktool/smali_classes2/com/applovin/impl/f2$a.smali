.class Lcom/applovin/impl/f2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/c1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/f2;-><init>(Lcom/applovin/impl/sdk/ad/b;Landroid/app/Activity;Ljava/util/Map;Lcom/applovin/impl/sdk/l;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/applovin/impl/f2;


# direct methods
.method constructor <init>(Lcom/applovin/impl/f2;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/f2$a;->b:Lcom/applovin/impl/f2;

    iput p2, p0, Lcom/applovin/impl/f2$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/f2$a;->b:Lcom/applovin/impl/f2;

    iget-object v1, v0, Lcom/applovin/impl/f2;->S:Lcom/applovin/impl/k0;

    if-eqz v1, :cond_1

    .line 3
    iget v1, p0, Lcom/applovin/impl/f2$a;->a:I

    int-to-float v1, v1

    iget-object v0, v0, Lcom/applovin/impl/f2;->P:Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->getCurrentPosition()F

    move-result v0

    sub-float/2addr v1, v0

    const/4 v0, 0x0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/applovin/impl/f2$a;->b:Lcom/applovin/impl/f2;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/applovin/impl/y1;->w:Z

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/f2$a;->b:Lcom/applovin/impl/f2;

    invoke-virtual {v0}, Lcom/applovin/impl/f2;->Q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/applovin/impl/f2$a;->b:Lcom/applovin/impl/f2;

    iget-object v0, v0, Lcom/applovin/impl/f2;->S:Lcom/applovin/impl/k0;

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/k0;->setProgress(I)V

    :cond_1
    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/f2$a;->b:Lcom/applovin/impl/f2;

    invoke-virtual {v0}, Lcom/applovin/impl/f2;->Q()Z

    move-result v0

    return v0
.end method
