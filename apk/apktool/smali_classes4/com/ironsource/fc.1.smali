.class public final Lcom/ironsource/fc;
.super Lcom/ironsource/o3;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/P0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ironsource/o3<",
        "Lcom/ironsource/jc;",
        "Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;",
        ">;",
        "Lcom/ironsource/P0;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNativeAdManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NativeAdManager.kt\ncom/ironsource/mediationsdk/adunit/manager/NativeAdManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,176:1\n1#2:177\n*E\n"
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/ironsource/Wb;Ljava/lang/String;Lcom/ironsource/ta;Lcom/ironsource/ia;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;",
            "Lcom/ironsource/Wb;",
            "Ljava/lang/String;",
            "Lcom/ironsource/ta;",
            "Lcom/ironsource/ia;",
            ")V"
        }
    .end annotation

    const-string v0, "configs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publisherDataHolder"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/ironsource/gc;

    invoke-direct {v0, p3, p1, p2}, Lcom/ironsource/gc;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/ironsource/Wb;)V

    .line 2
    invoke-direct {p0, v0, p4, p5}, Lcom/ironsource/o3;-><init>(Lcom/ironsource/V;Lcom/ironsource/ta;Lcom/ironsource/ia;)V

    return-void
.end method


# virtual methods
.method protected D()V
    .locals 0

    return-void
.end method

.method protected E()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final J()V
    .locals 4

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/o3;->a:Lcom/ironsource/Ng;

    invoke-virtual {v0}, Lcom/ironsource/Ng;->d()Lcom/ironsource/p3;

    move-result-object v0

    check-cast v0, Lcom/ironsource/jc;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/ironsource/p3;->r()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/ironsource/o3;->D:Lcom/ironsource/Q8;

    iget-object v3, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {v3}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/ironsource/Q8;->a(Lcom/ironsource/mediationsdk/IronSource$a;)I

    move-result v2

    .line 11
    :goto_0
    iget-object v3, p0, Lcom/ironsource/o3;->t:Lcom/ironsource/E0;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/ironsource/E0;->f:Lcom/ironsource/Cb;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Lcom/ironsource/Cb;->a(I)V

    .line 12
    :cond_1
    invoke-virtual {v0}, Lcom/ironsource/jc;->P()V

    .line 13
    iget-object v0, p0, Lcom/ironsource/o3;->a:Lcom/ironsource/Ng;

    invoke-virtual {v0, v1}, Lcom/ironsource/Ng;->a(Lcom/ironsource/p3;)V

    .line 14
    iget-object v0, p0, Lcom/ironsource/o3;->a:Lcom/ironsource/Ng;

    invoke-virtual {v0, v1}, Lcom/ironsource/Ng;->b(Lcom/ironsource/p3;)V

    .line 17
    :cond_2
    iput-object v1, p0, Lcom/ironsource/o3;->j:Lcom/ironsource/md;

    .line 19
    sget-object v0, Lcom/ironsource/o3$f;->a:Lcom/ironsource/o3$f;

    invoke-virtual {p0, v0}, Lcom/ironsource/o3;->a(Lcom/ironsource/o3$f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 21
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "destroyNativeAd - exception = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, v0}, Lcom/ironsource/o3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 24
    iget-object v1, p0, Lcom/ironsource/o3;->t:Lcom/ironsource/E0;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/ironsource/E0;->j:Lcom/ironsource/pg;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Lcom/ironsource/pg;->g(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic a(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;ILjava/lang/String;Lcom/ironsource/y2;)Lcom/ironsource/p3;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Lcom/ironsource/fc;->b(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;ILjava/lang/String;Lcom/ironsource/y2;)Lcom/ironsource/jc;

    move-result-object p1

    return-object p1
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

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-super {p0, p1}, Lcom/ironsource/o3;->a(Lcom/ironsource/B0;)Ljava/util/Map;

    move-result-object p1

    .line 45
    iget-object v0, p0, Lcom/ironsource/o3;->j:Lcom/ironsource/md;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/ironsource/t3;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "placement"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/ironsource/o3;->x:Ljava/util/UUID;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "objectId"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final a(Lcom/ironsource/md;)V
    .locals 5

    .line 2
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "placement = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const-string v0, "format(...)"

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/ironsource/t3;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    iget-object v2, p0, Lcom/ironsource/o3;->F:Lcom/ironsource/Q7;

    .line 14
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {v4}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v4

    .line 15
    invoke-interface {v2, v3, p1, v4}, Lcom/ironsource/Q7;->c(Landroid/content/Context;Lcom/ironsource/t3;Lcom/ironsource/mediationsdk/IronSource$a;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 17
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual {p1}, Lcom/ironsource/t3;->c()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "placement %s is capped"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {v0}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/A0;->f(Lcom/ironsource/mediationsdk/IronSource$a;)I

    move-result v0

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    const/16 v0, 0x1fe

    goto :goto_2

    .line 19
    :cond_2
    :goto_0
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    if-nez p1, :cond_3

    .line 21
    const-string v2, "placement is null"

    goto :goto_1

    :cond_3
    const-string v2, "placement name is empty"

    :goto_1
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 22
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "can\'t load native ad - %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {v0}, Lcom/ironsource/V;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/A0;->b(Lcom/ironsource/mediationsdk/IronSource$a;)I

    move-result v0

    .line 33
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 35
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, v1}, Lcom/ironsource/o3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 36
    invoke-virtual {p0, v0, v1, p1}, Lcom/ironsource/o3;->a(ILjava/lang/String;Z)V

    return-void

    .line 38
    :cond_4
    iput-object p1, p0, Lcom/ironsource/o3;->j:Lcom/ironsource/md;

    .line 39
    invoke-virtual {p0}, Lcom/ironsource/o3;->x()V

    return-void
.end method

.method public final a(Lcom/ironsource/mediationsdk/ads/nativead/internal/InternalNativeAdListener;)V
    .locals 1

    const-string v0, "nativeAdListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v0, Lcom/ironsource/ec;

    invoke-direct {v0, p1}, Lcom/ironsource/ec;-><init>(Lcom/ironsource/mediationsdk/ads/nativead/internal/InternalNativeAdListener;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/o3;->a(Lcom/ironsource/K0;)V

    return-void
.end method

.method protected a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/ironsource/o3;->u:Lcom/ironsource/K0;

    invoke-virtual {v0, p1}, Lcom/ironsource/K0;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method protected a(Lcom/ironsource/p3;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/p3<",
            "*>;",
            "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;",
            ")V"
        }
    .end annotation

    .line 41
    instance-of v0, p1, Lcom/ironsource/jc;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/ironsource/o3;->u:Lcom/ironsource/K0;

    check-cast p1, Lcom/ironsource/jc;

    invoke-virtual {p1}, Lcom/ironsource/jc;->Q()Lcom/ironsource/mediationsdk/ads/nativead/AdapterNativeAdData;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ironsource/jc;->R()Lcom/ironsource/mediationsdk/adunit/adapter/internal/nativead/AdapterNativeAdViewBinder;

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2}, Lcom/ironsource/K0;->a(Lcom/ironsource/mediationsdk/ads/nativead/AdapterNativeAdData;Lcom/ironsource/mediationsdk/adunit/adapter/internal/nativead/AdapterNativeAdViewBinder;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    :cond_0
    return-void
.end method

.method protected b(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;ILjava/lang/String;Lcom/ironsource/y2;)Lcom/ironsource/jc;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            "Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter<",
            "*",
            "Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;",
            ">;I",
            "Ljava/lang/String;",
            "Lcom/ironsource/y2;",
            ")",
            "Lcom/ironsource/jc;"
        }
    .end annotation

    const-string v0, "providerSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    move-object/from16 v12, p2

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentAuctionId"

    move-object/from16 v7, p4

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    move-object/from16 v13, p5

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Lcom/ironsource/n0;

    .line 2
    sget-object v3, Lcom/ironsource/mediationsdk/IronSource$a;->e:Lcom/ironsource/mediationsdk/IronSource$a;

    .line 3
    iget-object v0, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {v0}, Lcom/ironsource/V;->o()Ljava/lang/String;

    move-result-object v4

    .line 5
    iget-object v6, p0, Lcom/ironsource/o3;->h:Lorg/json/JSONObject;

    .line 7
    iget v8, p0, Lcom/ironsource/o3;->f:I

    .line 8
    iget-object v9, p0, Lcom/ironsource/o3;->g:Ljava/lang/String;

    .line 10
    iget-object v0, p0, Lcom/ironsource/o3;->p:Lcom/ironsource/V;

    invoke-virtual {v0}, Lcom/ironsource/V;->n()I

    move-result v11

    move-object v10, p1

    move/from16 v5, p3

    .line 11
    invoke-direct/range {v2 .. v11}, Lcom/ironsource/n0;-><init>(Lcom/ironsource/mediationsdk/IronSource$a;Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;ILjava/lang/String;Lcom/ironsource/mediationsdk/model/NetworkSettings;I)V

    .line 21
    new-instance v0, Lcom/ironsource/jc;

    iget-object v4, p0, Lcom/ironsource/o3;->j:Lcom/ironsource/md;

    move-object v6, p0

    move-object v1, p0

    move-object v3, v12

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/ironsource/jc;-><init>(Lcom/ironsource/xd;Lcom/ironsource/n0;Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;Lcom/ironsource/md;Lcom/ironsource/y2;Lcom/ironsource/P0;)V

    return-object v0
.end method

.method protected c(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Lorg/json/JSONObject;
    .locals 1

    const-string v0, "providerSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getNativeAdSettings()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "getNativeAdSettings(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method protected d()Lcom/ironsource/K0;
    .locals 1

    .line 1
    new-instance v0, Lcom/ironsource/m5;

    invoke-direct {v0}, Lcom/ironsource/m5;-><init>()V

    return-object v0
.end method

.method protected i()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "NA"

    return-object v0
.end method

.method protected l()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "OPW_NT"

    return-object v0
.end method

.method protected s()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
