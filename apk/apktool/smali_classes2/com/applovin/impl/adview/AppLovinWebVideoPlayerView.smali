.class public Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$Listener;,
        Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/l;

.field private b:Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$Listener;

.field private c:Z

.field private final d:Ljava/util/List;

.field private e:Z

.field private f:F

.field private g:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/applovin/impl/sdk/l;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->d:Ljava/util/List;

    const/high16 p1, -0x40800000    # -1.0f

    .line 8
    iput p1, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->g:F

    .line 16
    iput-object p2, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->a:Lcom/applovin/impl/sdk/l;

    .line 18
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 19
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 20
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 21
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 22
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 24
    new-instance p1, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;-><init>(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$a;)V

    const-string v0, "AndroidBridge"

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance p1, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$a;

    invoke-direct {p1, p0, p2}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$a;-><init>(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;Lcom/applovin/impl/sdk/l;)V

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;F)F
    .locals 0

    .line 3
    iput p1, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->f:F

    return p1
.end method

.method private a(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 2

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id=\"video\" playsinline"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 12
    const-string p2, " autoplay"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p3, :cond_1

    .line 13
    const-string p2, " muted"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :cond_1
    iget-object p2, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->a:Lcom/applovin/impl/sdk/l;

    sget-object p3, Lcom/applovin/impl/c5;->G2:Lcom/applovin/impl/c5;

    invoke-virtual {p2, p3}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 16
    const-string p3, "{SOURCE}"

    invoke-virtual {p2, p3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "{ATTRS}"

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;)Ljava/util/List;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->d:Ljava/util/List;

    return-object p0
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->c:Z

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->a:Lcom/applovin/impl/sdk/l;

    invoke-static {p0, p1, v0}, Lcom/applovin/impl/t8;->a(Landroid/webkit/WebView;Ljava/lang/String;Lcom/applovin/impl/sdk/l;)Lcom/applovin/impl/x4;

    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;F)F
    .locals 0

    .line 2
    iput p1, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->g:F

    return p1
.end method

.method static synthetic b(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;)Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$Listener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->b:Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$Listener;

    return-object p0
.end method

.method static synthetic b(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->e:Z

    return p1
.end method

.method static synthetic c(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->g:F

    return p0
.end method


# virtual methods
.method public getCurrentPosition()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->f:F

    return v0
.end method

.method public getDuration()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->g:F

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->e:Z

    return v0
.end method

.method public loadVideo(Ljava/lang/String;ZZ)V
    .locals 7

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->c:Z

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->a(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    .line 4
    const-string v5, "UTF-8"

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-string v4, "text/html"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 1
    const-string v0, "video.pause()"

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->a(Ljava/lang/String;)V

    return-void
.end method

.method public play()V
    .locals 1

    .line 1
    const-string v0, "video.play()"

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->a(Ljava/lang/String;)V

    return-void
.end method

.method public seekTo(F)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "video.currentTime = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setListener(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$Listener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->b:Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$Listener;

    return-void
.end method

.method public setMuted(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "video.muted = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->a(Ljava/lang/String;)V

    return-void
.end method

.method public toggleMute()V
    .locals 1

    .line 1
    const-string v0, "video.muted = !video.muted"

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->a(Ljava/lang/String;)V

    return-void
.end method
