.class Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;-><init>(Landroid/content/Context;Lcom/applovin/impl/sdk/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/l;

.field final synthetic b:Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;Lcom/applovin/impl/sdk/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$a;->b:Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;

    iput-object p2, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$a;->a:Lcom/applovin/impl/sdk/l;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$a;->b:Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->a(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;Z)Z

    .line 4
    iget-object p1, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$a;->b:Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;

    invoke-static {p1}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->a(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$a;->b:Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;

    iget-object v1, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$a;->a:Lcom/applovin/impl/sdk/l;

    invoke-static {v0, p2, v1}, Lcom/applovin/impl/t8;->a(Landroid/webkit/WebView;Ljava/lang/String;Lcom/applovin/impl/sdk/l;)Lcom/applovin/impl/x4;

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$a;->b:Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;

    invoke-static {p1}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->a(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method
