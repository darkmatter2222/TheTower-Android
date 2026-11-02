.class Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;


# direct methods
.method public static synthetic $r8$lambda$BlR4i8mYIoc7GuLo5ngyLKBV3W8(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;->b()V

    return-void
.end method

.method public static synthetic $r8$lambda$FFcZYeuuKux3968fAkgywB03Cw4(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;->c()V

    return-void
.end method

.method public static synthetic $r8$lambda$FnLUmjzIb67gz8cMVGkcZLDIZrA(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;->a(FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$Jg8MiQZvCcUkEzmBKEzOesEHKzk(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;->a()V

    return-void
.end method

.method public static synthetic $r8$lambda$O-tJ1enp_1AK2-J143H35MlmCaA(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;->a(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$a8AkulNOZC1aRhP4mSoGIVPXsOk(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ikyhLYQI53Szu3eqr-csb-8uYCk(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;->a(F)V

    return-void
.end method

.method private constructor <init>(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;->a:Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;-><init>(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;)V

    return-void
.end method

.method private synthetic a()V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;->a:Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;

    invoke-static {v0}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->b(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;)Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;->a:Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;

    invoke-static {v0}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->b(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;)Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$Listener;->onVideoEnded()V

    :cond_0
    return-void
.end method

.method private synthetic a(F)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;->a:Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;

    invoke-static {v0, p1}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->b(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;F)F

    .line 3
    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;->a:Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;

    invoke-static {v0}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->b(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;)Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;->a:Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;

    invoke-static {v0}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->b(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;)Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$Listener;->onVideoLoaded(F)V

    :cond_0
    return-void
.end method

.method private synthetic a(FF)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;->a:Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;

    invoke-static {v0, p1}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->a(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;F)F

    .line 5
    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;->a:Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;

    invoke-static {v0, p2}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->b(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;F)F

    .line 6
    iget-object p2, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;->a:Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;

    invoke-static {p2}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->b(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;)Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$Listener;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;->a:Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;

    invoke-static {p2}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->b(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;)Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$Listener;

    move-result-object p2

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;->a:Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;

    invoke-static {v0}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->c(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;)F

    move-result v0

    invoke-interface {p2, p1, v0}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$Listener;->onTimeUpdate(FF)V

    :cond_0
    return-void
.end method

.method private synthetic a(Ljava/lang/String;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;->a:Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;

    invoke-static {v0}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->b(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;)Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;->a:Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;

    invoke-static {v0}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->b(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;)Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$Listener;->onError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic a(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;->a:Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;

    invoke-static {v0}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->b(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;)Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;->a:Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;

    invoke-static {v0}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->b(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;)Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$Listener;->onBuffering(Z)V

    :cond_0
    return-void
.end method

.method private synthetic b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;->a:Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->b(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;Z)Z

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;->a:Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;

    invoke-static {v0}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->b(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;)Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;->a:Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;

    invoke-static {v0}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->b(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;)Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$Listener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$Listener;->onPlaybackStateChanged(Z)V

    :cond_0
    return-void
.end method

.method private synthetic c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;->a:Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->b(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;Z)Z

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;->a:Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;

    invoke-static {v0}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->b(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;)Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;->a:Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;

    invoke-static {v0}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;->b(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;)Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$Listener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$Listener;->onPlaybackStateChanged(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBuffering(Z)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;->a:Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;

    new-instance v1, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b$$ExternalSyntheticLambda2;-><init>(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEnded()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;->a:Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;

    new-instance v1, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b$$ExternalSyntheticLambda6;-><init>(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;->a:Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;

    new-instance v1, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b$$ExternalSyntheticLambda0;-><init>(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLoaded(F)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;->a:Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;

    new-instance v1, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b$$ExternalSyntheticLambda1;-><init>(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPause()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;->a:Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;

    new-instance v1, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b$$ExternalSyntheticLambda4;-><init>(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPlay()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;->a:Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;

    new-instance v1, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b$$ExternalSyntheticLambda5;-><init>(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTimeUpdate(FF)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;->a:Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView;

    new-instance v1, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b$$ExternalSyntheticLambda3;-><init>(Lcom/applovin/impl/adview/AppLovinWebVideoPlayerView$b;FF)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
