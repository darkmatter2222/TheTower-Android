.class public Lcom/ironsource/R2;
.super Lcom/ironsource/p3;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;
.implements Lcom/ironsource/D0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ironsource/p3<",
        "Lcom/ironsource/t0;",
        ">;",
        "Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;",
        "Lcom/ironsource/D0;"
    }
.end annotation


# static fields
.field public static final t:Ljava/lang/String; = "bannerLayout"

.field public static final u:Ljava/lang/String; = "bannerSize"


# instance fields
.field private final r:Lcom/ironsource/mediationsdk/o;

.field private final s:Z


# direct methods
.method static bridge synthetic -$$Nest$mJ(Lcom/ironsource/R2;)V
    .locals 0

    invoke-direct {p0}, Lcom/ironsource/R2;->J()V

    return-void
.end method

.method static bridge synthetic -$$Nest$ma(Lcom/ironsource/R2;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ironsource/R2;->a(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/xd;Lcom/ironsource/n0;Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;Lcom/ironsource/mediationsdk/o;Lcom/ironsource/md;ZLcom/ironsource/y2;Lcom/ironsource/t0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/xd;",
            "Lcom/ironsource/n0;",
            "Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter<",
            "*",
            "Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdViewListener;",
            ">;",
            "Lcom/ironsource/mediationsdk/o;",
            "Lcom/ironsource/md;",
            "Z",
            "Lcom/ironsource/y2;",
            "Lcom/ironsource/t0;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v4, Lcom/ironsource/c1;

    .line 6
    invoke-virtual {p2}, Lcom/ironsource/n0;->g()Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v0

    .line 7
    invoke-virtual {p2}, Lcom/ironsource/n0;->g()Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/IronSource$a;->d:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-direct {v4, v0, v1, v2}, Lcom/ironsource/c1;-><init>(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/IronSource$a;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p7

    move-object v6, p8

    .line 8
    invoke-direct/range {v0 .. v6}, Lcom/ironsource/p3;-><init>(Lcom/ironsource/xd;Lcom/ironsource/n0;Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;Lcom/ironsource/c1;Lcom/ironsource/y2;Lcom/ironsource/P0;)V

    .line 18
    iput-object p4, v0, Lcom/ironsource/R2;->r:Lcom/ironsource/mediationsdk/o;

    .line 19
    iput-object p5, v0, Lcom/ironsource/p3;->g:Lcom/ironsource/md;

    .line 20
    iput-boolean p6, v0, Lcom/ironsource/R2;->s:Z

    return-void
.end method

.method private J()V
    .locals 3

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Lcom/ironsource/p3;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/ironsource/p3;->y()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-super {p0}, Lcom/ironsource/p3;->onAdOpened()V

    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/ironsource/p3;->e:Lcom/ironsource/p3$h;

    sget-object v2, Lcom/ironsource/p3$h;->g:Lcom/ironsource/p3$h;

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/ironsource/p3;->k()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/p3;->e:Lcom/ironsource/p3$h;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 13
    const-string v2, "unexpected onAdOpened for %s, state - %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/ironsource/p3;->d:Lcom/ironsource/E0;

    if-eqz v0, :cond_2

    .line 18
    iget-object v0, p0, Lcom/ironsource/p3;->e:Lcom/ironsource/p3$h;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "unexpected onAdOpened, state - %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/ironsource/p3;->d:Lcom/ironsource/E0;

    iget-object v1, v1, Lcom/ironsource/E0;->j:Lcom/ironsource/pg;

    invoke-virtual {v1, v0}, Lcom/ironsource/pg;->q(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1

    .line 11
    invoke-super {p0}, Lcom/ironsource/p3;->onAdLoadSuccess()V

    .line 12
    invoke-virtual {p0}, Lcom/ironsource/p3;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/p3;->b:Lcom/ironsource/P0;

    if-eqz v0, :cond_0

    .line 13
    check-cast v0, Lcom/ironsource/t0;

    invoke-interface {v0, p0, p1, p2}, Lcom/ironsource/t0;->a(Lcom/ironsource/p3;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected G()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/p3;->c:Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    instance-of v1, v0, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBannerInterface;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBannerInterface;

    iget-object v1, p0, Lcom/ironsource/p3;->k:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    .line 5
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/environment/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/R2;->r:Lcom/ironsource/mediationsdk/o;

    .line 6
    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/o;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v3

    .line 7
    invoke-interface {v0, v1, v2, v3, p0}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBannerInterface;->loadAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;)V

    return-void

    .line 13
    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "adapter not instance of AdapterBannerInterface"

    invoke-virtual {p0, v1}, Lcom/ironsource/p3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void
.end method

.method protected O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public P()V
    .locals 3

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Lcom/ironsource/p3;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 4
    sget-object v1, Lcom/ironsource/p3$h;->a:Lcom/ironsource/p3$h;

    invoke-virtual {p0, v1}, Lcom/ironsource/p3;->a(Lcom/ironsource/p3$h;)V

    .line 6
    iget-object v1, p0, Lcom/ironsource/p3;->c:Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    if-nez v1, :cond_0

    .line 7
    const-string v1, "mAdapter == null"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V

    return-void

    .line 13
    :cond_0
    :try_start_0
    instance-of v2, v1, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBannerInterface;

    if-eqz v2, :cond_1

    .line 14
    check-cast v1, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBannerInterface;

    iget-object v0, p0, Lcom/ironsource/p3;->k:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    invoke-interface {v1, v0}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBannerInterface;->destroyAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)V

    goto :goto_0

    .line 16
    :cond_1
    const-string v1, "adapter not instance of AdapterBannerInterface"

    invoke-virtual {p0, v1}, Lcom/ironsource/p3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 19
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "destroyBanner - exception = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/p3;->e:Lcom/ironsource/p3$h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 22
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, v0}, Lcom/ironsource/p3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Lcom/ironsource/p3;->d:Lcom/ironsource/E0;

    if-eqz v1, :cond_2

    .line 24
    iget-object v1, v1, Lcom/ironsource/E0;->j:Lcom/ironsource/pg;

    invoke-virtual {v1, v0}, Lcom/ironsource/pg;->g(Ljava/lang/String;)V

    .line 29
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/ironsource/p3;->d:Lcom/ironsource/E0;

    if-eqz v0, :cond_3

    .line 30
    iget-object v0, v0, Lcom/ironsource/E0;->f:Lcom/ironsource/Cb;

    invoke-virtual {p0}, Lcom/ironsource/p3;->r()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/Cb;->a(I)V

    :cond_3
    return-void
.end method

.method public Q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/p3;->c:Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    instance-of v1, v0, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBindAdViewInterface;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBindAdViewInterface;

    iget-object v1, p0, Lcom/ironsource/p3;->k:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBindAdViewInterface;->onAdViewBound(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)V

    :cond_0
    return-void
.end method

.method public R()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/p3;->c:Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    instance-of v1, v0, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBindAdViewInterface;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBindAdViewInterface;

    iget-object v1, p0, Lcom/ironsource/p3;->k:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBindAdViewInterface;->onAdViewWillBind(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)V

    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/util/Map;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/p3;->q()Ljava/util/Map;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p2}, Lcom/ironsource/R2;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    .line 4
    new-instance v1, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    invoke-direct {v1, p1, v0, p2}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-object v1
.end method

.method public a(Lcom/ironsource/B0;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/B0;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 14
    invoke-super {p0, p1}, Lcom/ironsource/p3;->a(Lcom/ironsource/B0;)Ljava/util/Map;

    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/ironsource/R2;->r:Lcom/ironsource/mediationsdk/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/o;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/ironsource/R2;->r:Lcom/ironsource/mediationsdk/o;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/o;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/j;->a(Ljava/util/Map;Lcom/ironsource/mediationsdk/ISBannerSize;)V

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/ironsource/p3;->g:Lcom/ironsource/md;

    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {p0}, Lcom/ironsource/p3;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "placement"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p1
.end method

.method protected a(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 5
    invoke-super {p0, p1}, Lcom/ironsource/p3;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/ironsource/p3;->a:Lcom/ironsource/n0;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ironsource/R2;->r:Lcom/ironsource/mediationsdk/o;

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v0}, Lcom/ironsource/n0;->g()Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getCustomNetwork()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/ironsource/R2;->r:Lcom/ironsource/mediationsdk/o;

    const-string v1, "bannerLayout"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public onAdLeftApplication()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/p3;->g:Lcom/ironsource/md;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ironsource/p3;->d:Lcom/ironsource/E0;

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, v1, Lcom/ironsource/E0;->i:Lcom/ironsource/N;

    invoke-virtual {v0}, Lcom/ironsource/t3;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ironsource/N;->f(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ironsource/p3;->b:Lcom/ironsource/P0;

    if-eqz v0, :cond_1

    .line 5
    check-cast v0, Lcom/ironsource/t0;

    invoke-interface {v0, p0}, Lcom/ironsource/S0;->c(Lcom/ironsource/p3;)V

    :cond_1
    return-void
.end method

.method public onAdLoadSuccess(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/p3;->u()Lcom/ironsource/xd;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/xd;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/ironsource/R2;->a(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/ironsource/p3;->u()Lcom/ironsource/xd;

    move-result-object v0

    new-instance v1, Lcom/ironsource/R2$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/R2$a;-><init>(Lcom/ironsource/R2;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 6
    invoke-interface {v0, v1}, Lcom/ironsource/xd;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdOpened()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/p3;->u()Lcom/ironsource/xd;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/xd;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/ironsource/R2;->J()V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/ironsource/p3;->u()Lcom/ironsource/xd;

    move-result-object v0

    new-instance v1, Lcom/ironsource/R2$b;

    invoke-direct {v1, p0}, Lcom/ironsource/R2$b;-><init>(Lcom/ironsource/R2;)V

    .line 6
    invoke-interface {v0, v1}, Lcom/ironsource/xd;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdScreenDismissed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/p3;->g:Lcom/ironsource/md;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ironsource/p3;->d:Lcom/ironsource/E0;

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, v1, Lcom/ironsource/E0;->i:Lcom/ironsource/N;

    invoke-virtual {v0}, Lcom/ironsource/t3;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ironsource/N;->c(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ironsource/p3;->b:Lcom/ironsource/P0;

    if-eqz v0, :cond_1

    .line 5
    check-cast v0, Lcom/ironsource/t0;

    invoke-interface {v0, p0}, Lcom/ironsource/S0;->b(Lcom/ironsource/p3;)V

    :cond_1
    return-void
.end method

.method public onAdScreenPresented()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/p3;->g:Lcom/ironsource/md;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ironsource/p3;->d:Lcom/ironsource/E0;

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, v1, Lcom/ironsource/E0;->i:Lcom/ironsource/N;

    invoke-virtual {v0}, Lcom/ironsource/t3;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ironsource/N;->h(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ironsource/p3;->b:Lcom/ironsource/P0;

    if-eqz v0, :cond_1

    .line 5
    check-cast v0, Lcom/ironsource/t0;

    invoke-interface {v0, p0}, Lcom/ironsource/S0;->f(Lcom/ironsource/p3;)V

    :cond_1
    return-void
.end method

.method public onAdShowFailed(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected v()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/R2;->s:Z

    return v0
.end method
