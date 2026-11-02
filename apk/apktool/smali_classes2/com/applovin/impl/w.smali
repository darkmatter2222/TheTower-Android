.class public Lcom/applovin/impl/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/device/ads/DTBAdCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/w$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/mediation/MaxAdFormat;

.field private final b:Lcom/applovin/impl/w$a;

.field private c:Lcom/amazon/device/ads/DTBAdRequest;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/x;Lcom/applovin/mediation/MaxAdFormat;Landroid/content/Context;Lcom/applovin/impl/w$a;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/applovin/impl/x;->a()Lcom/amazon/device/ads/DTBAdSize;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/amazon/device/ads/DTBAdSize;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/applovin/impl/w;-><init>(Ljava/util/List;Lcom/applovin/mediation/MaxAdFormat;Landroid/content/Context;Lcom/applovin/impl/w$a;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/applovin/mediation/MaxAdFormat;Landroid/content/Context;Lcom/applovin/impl/w$a;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/applovin/impl/w;->a:Lcom/applovin/mediation/MaxAdFormat;

    .line 4
    iput-object p4, p0, Lcom/applovin/impl/w;->b:Lcom/applovin/impl/w$a;

    .line 9
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Lcom/amazon/device/ads/DTBAdSize;

    const/4 p4, 0x0

    move v0, p4

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 12
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 13
    instance-of v2, v1, Lcom/amazon/device/ads/DTBAdSize;

    if-eqz v2, :cond_0

    .line 15
    check-cast v1, Lcom/amazon/device/ads/DTBAdSize;

    aput-object v1, p2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 19
    :cond_1
    invoke-static {}, Lcom/amazon/aps/ads/Aps;->getSdkVersion()Ljava/lang/String;

    move-result-object p1

    const-string v0, "10.0.0"

    invoke-static {p1, v0}, Lcom/applovin/impl/u7;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_2

    .line 23
    const-string p1, "com.amazon.aps.ads.model.ApsAdNetwork"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 24
    const-string v0, "com.amazon.device.ads.DTBAdNetworkInfo"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 26
    const-string v1, "MAX"

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    .line 27
    new-array v3, v2, [Ljava/lang/Class;

    aput-object p1, v3, p4

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 28
    const-class v1, Lcom/amazon/device/ads/DTBAdRequest;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, p4

    aput-object v0, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p4

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    filled-new-array {p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/device/ads/DTBAdRequest;

    iput-object p1, p0, Lcom/applovin/impl/w;->c:Lcom/amazon/device/ads/DTBAdRequest;

    goto :goto_1

    .line 34
    :cond_2
    const-class p1, Lcom/amazon/device/ads/DTBAdRequest;

    new-array p3, p4, [Ljava/lang/Class;

    invoke-virtual {p1, p3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array p3, p4, [Ljava/lang/Object;

    invoke-virtual {p1, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/device/ads/DTBAdRequest;

    iput-object p1, p0, Lcom/applovin/impl/w;->c:Lcom/amazon/device/ads/DTBAdRequest;

    .line 37
    :goto_1
    iget-object p1, p0, Lcom/applovin/impl/w;->c:Lcom/amazon/device/ads/DTBAdRequest;

    invoke-virtual {p1, p2}, Lcom/amazon/device/ads/DTBAdRequest;->setSizes([Lcom/amazon/device/ads/DTBAdSize;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/w;->c:Lcom/amazon/device/ads/DTBAdRequest;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/applovin/impl/w;->b:Lcom/applovin/impl/w$a;

    iget-object v1, p0, Lcom/applovin/impl/w;->a:Lcom/applovin/mediation/MaxAdFormat;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/applovin/impl/w$a;->onAdLoadFailed(Lcom/amazon/device/ads/AdError;Lcom/applovin/mediation/MaxAdFormat;)V

    return-void

    .line 7
    :cond_0
    invoke-virtual {v0, p0}, Lcom/amazon/device/ads/DTBAdRequest;->loadAd(Lcom/amazon/device/ads/DTBAdCallback;)V

    return-void
.end method

.method public onFailure(Lcom/amazon/device/ads/AdError;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/w;->b:Lcom/applovin/impl/w$a;

    iget-object v1, p0, Lcom/applovin/impl/w;->a:Lcom/applovin/mediation/MaxAdFormat;

    invoke-interface {v0, p1, v1}, Lcom/applovin/impl/w$a;->onAdLoadFailed(Lcom/amazon/device/ads/AdError;Lcom/applovin/mediation/MaxAdFormat;)V

    return-void
.end method

.method public onSuccess(Lcom/amazon/device/ads/DTBAdResponse;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/w;->b:Lcom/applovin/impl/w$a;

    iget-object v1, p0, Lcom/applovin/impl/w;->a:Lcom/applovin/mediation/MaxAdFormat;

    invoke-interface {v0, p1, v1}, Lcom/applovin/impl/w$a;->onAdResponseLoaded(Lcom/amazon/device/ads/DTBAdResponse;Lcom/applovin/mediation/MaxAdFormat;)V

    return-void
.end method
