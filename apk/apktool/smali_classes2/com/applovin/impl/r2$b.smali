.class Lcom/applovin/impl/r2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/y1$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/r2;->a(Lcom/applovin/impl/sdk/ad/b;Landroid/view/ViewGroup;Lcom/applovin/adview/AppLovinFullscreenAdViewObserver;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/applovin/adview/AppLovinFullscreenAdViewObserver;

.field final synthetic c:Landroid/view/ViewGroup;

.field final synthetic d:Lcom/applovin/impl/r2;


# direct methods
.method constructor <init>(Lcom/applovin/impl/r2;Landroid/app/Activity;Lcom/applovin/adview/AppLovinFullscreenAdViewObserver;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/r2$b;->d:Lcom/applovin/impl/r2;

    iput-object p2, p0, Lcom/applovin/impl/r2$b;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/applovin/impl/r2$b;->b:Lcom/applovin/adview/AppLovinFullscreenAdViewObserver;

    iput-object p4, p0, Lcom/applovin/impl/r2$b;->c:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/y1;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/r2$b;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/applovin/impl/d;->d(Landroid/app/Activity;)Z

    move-result v0

    const-string v1, "error_message"

    const-string v2, "source"

    const-string v3, "InterstitialAdDialogWrapper"

    if-eqz v0, :cond_0

    .line 4
    const-string p1, "Failed to show interstitial: attempting to show ad when parent activity is finishing"

    invoke-static {v3, p1}, Lcom/applovin/impl/sdk/p;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/applovin/impl/r2$b;->d:Lcom/applovin/impl/r2;

    invoke-static {v0}, Lcom/applovin/impl/r2;->a(Lcom/applovin/impl/r2;)Lcom/applovin/impl/sdk/ad/b;

    move-result-object v0

    iget-object v3, p0, Lcom/applovin/impl/r2$b;->d:Lcom/applovin/impl/r2;

    invoke-static {v3}, Lcom/applovin/impl/r2;->b(Lcom/applovin/impl/r2;)Lcom/applovin/sdk/AppLovinAdDisplayListener;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/impl/r2$b;->b:Lcom/applovin/adview/AppLovinFullscreenAdViewObserver;

    const/4 v5, 0x0

    invoke-static {v0, v3, p1, v5, v4}, Lcom/applovin/impl/r2;->a(Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/sdk/AppLovinAdDisplayListener;Ljava/lang/String;Ljava/lang/Throwable;Lcom/applovin/adview/AppLovinFullscreenAdViewObserver;)V

    .line 7
    const-string v0, "invalidActivity"

    invoke-static {v2, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 8
    invoke-static {v1, p1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 9
    iget-object p1, p0, Lcom/applovin/impl/r2$b;->d:Lcom/applovin/impl/r2;

    iget-object p1, p1, Lcom/applovin/impl/r2;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->g()Lcom/applovin/impl/f;

    move-result-object p1

    sget-object v1, Lcom/applovin/impl/h2;->I:Lcom/applovin/impl/h2;

    iget-object v2, p0, Lcom/applovin/impl/r2$b;->d:Lcom/applovin/impl/r2;

    invoke-static {v2}, Lcom/applovin/impl/r2;->a(Lcom/applovin/impl/r2;)Lcom/applovin/impl/sdk/ad/b;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Lcom/applovin/impl/f;->a(Lcom/applovin/impl/h2;Lcom/applovin/impl/sdk/ad/b;Ljava/util/Map;)V

    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/r2$b;->b:Lcom/applovin/adview/AppLovinFullscreenAdViewObserver;

    invoke-virtual {v0, p1}, Lcom/applovin/adview/AppLovinFullscreenAdViewObserver;->setPresenter(Lcom/applovin/impl/y1;)V

    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/r2$b;->c:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/y1;->a(Landroid/view/ViewGroup;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Failed to show interstitial: presenter threw exception "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-static {v3, v0}, Lcom/applovin/impl/sdk/p;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v3, p0, Lcom/applovin/impl/r2$b;->d:Lcom/applovin/impl/r2;

    invoke-static {v3}, Lcom/applovin/impl/r2;->a(Lcom/applovin/impl/r2;)Lcom/applovin/impl/sdk/ad/b;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/impl/r2$b;->d:Lcom/applovin/impl/r2;

    invoke-static {v4}, Lcom/applovin/impl/r2;->b(Lcom/applovin/impl/r2;)Lcom/applovin/sdk/AppLovinAdDisplayListener;

    move-result-object v4

    iget-object v5, p0, Lcom/applovin/impl/r2$b;->b:Lcom/applovin/adview/AppLovinFullscreenAdViewObserver;

    invoke-static {v3, v4, v0, p1, v5}, Lcom/applovin/impl/r2;->a(Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/sdk/AppLovinAdDisplayListener;Ljava/lang/String;Ljava/lang/Throwable;Lcom/applovin/adview/AppLovinFullscreenAdViewObserver;)V

    .line 26
    const-string v3, "presentContainerView"

    invoke-static {v2, v3}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 27
    invoke-static {v1, v0, v2}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 28
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "top_main_method"

    invoke-static {v0, p1, v2}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 29
    iget-object p1, p0, Lcom/applovin/impl/r2$b;->d:Lcom/applovin/impl/r2;

    iget-object p1, p1, Lcom/applovin/impl/r2;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->g()Lcom/applovin/impl/f;

    move-result-object p1

    sget-object v0, Lcom/applovin/impl/h2;->I:Lcom/applovin/impl/h2;

    iget-object v1, p0, Lcom/applovin/impl/r2$b;->d:Lcom/applovin/impl/r2;

    invoke-static {v1}, Lcom/applovin/impl/r2;->a(Lcom/applovin/impl/r2;)Lcom/applovin/impl/sdk/ad/b;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/applovin/impl/f;->a(Lcom/applovin/impl/h2;Lcom/applovin/impl/sdk/ad/b;Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/applovin/impl/r2$b;->d:Lcom/applovin/impl/r2;

    invoke-static {v0}, Lcom/applovin/impl/r2;->a(Lcom/applovin/impl/r2;)Lcom/applovin/impl/sdk/ad/b;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/r2$b;->d:Lcom/applovin/impl/r2;

    invoke-static {v1}, Lcom/applovin/impl/r2;->b(Lcom/applovin/impl/r2;)Lcom/applovin/sdk/AppLovinAdDisplayListener;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/r2$b;->b:Lcom/applovin/adview/AppLovinFullscreenAdViewObserver;

    invoke-static {v0, v1, p1, p2, v2}, Lcom/applovin/impl/r2;->a(Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/sdk/AppLovinAdDisplayListener;Ljava/lang/String;Ljava/lang/Throwable;Lcom/applovin/adview/AppLovinFullscreenAdViewObserver;)V

    .line 32
    const-string v0, "source"

    const-string v1, "renderInterstitialAdView"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 33
    const-string v1, "error_message"

    invoke-static {v1, p1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 34
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "top_main_method"

    invoke-static {p2, p1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 35
    iget-object p1, p0, Lcom/applovin/impl/r2$b;->d:Lcom/applovin/impl/r2;

    iget-object p1, p1, Lcom/applovin/impl/r2;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->g()Lcom/applovin/impl/f;

    move-result-object p1

    sget-object p2, Lcom/applovin/impl/h2;->I:Lcom/applovin/impl/h2;

    iget-object v1, p0, Lcom/applovin/impl/r2$b;->d:Lcom/applovin/impl/r2;

    invoke-static {v1}, Lcom/applovin/impl/r2;->a(Lcom/applovin/impl/r2;)Lcom/applovin/impl/sdk/ad/b;

    move-result-object v1

    invoke-virtual {p1, p2, v1, v0}, Lcom/applovin/impl/f;->a(Lcom/applovin/impl/h2;Lcom/applovin/impl/sdk/ad/b;Ljava/util/Map;)V

    return-void
.end method
