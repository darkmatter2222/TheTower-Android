.class public final Lads_mobile_sdk/zy3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/j41;


# instance fields
.field public final synthetic a:Landroidx/webkit/WebViewStartUpResult;


# direct methods
.method public constructor <init>(Landroidx/webkit/WebViewStartUpResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/zy3;->a:Landroidx/webkit/WebViewStartUpResult;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 4

    const/4 v0, 0x0

    .line 120
    :try_start_0
    iget-object v1, p0, Lads_mobile_sdk/zy3;->a:Landroidx/webkit/WebViewStartUpResult;

    invoke-interface {v1}, Landroidx/webkit/WebViewStartUpResult;->getNonUiThreadBlockingStartUpLocations()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 277
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 286
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 287
    check-cast v3, Landroidx/webkit/StartUpLocation;

    .line 288
    invoke-interface {v3}, Landroidx/webkit/StartUpLocation;->getStackInformation()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v0

    :goto_1
    if-eqz v3, :cond_0

    .line 452
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    return-object v2

    :catchall_0
    :cond_3
    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 4

    const/4 v0, 0x0

    .line 110
    :try_start_0
    iget-object v1, p0, Lads_mobile_sdk/zy3;->a:Landroidx/webkit/WebViewStartUpResult;

    invoke-interface {v1}, Landroidx/webkit/WebViewStartUpResult;->getUiThreadBlockingStartUpLocations()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 264
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 273
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 274
    check-cast v3, Landroidx/webkit/StartUpLocation;

    .line 275
    invoke-interface {v3}, Landroidx/webkit/StartUpLocation;->getStackInformation()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v0

    :goto_1
    if-eqz v3, :cond_0

    .line 436
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    return-object v2

    :catchall_0
    :cond_3
    return-object v0
.end method

.method public final getMaxTimePerTaskInUiThreadMillis()Ljava/lang/Long;
    .locals 1

    .line 102
    :try_start_0
    iget-object v0, p0, Lads_mobile_sdk/zy3;->a:Landroidx/webkit/WebViewStartUpResult;

    invoke-interface {v0}, Landroidx/webkit/WebViewStartUpResult;->getMaxTimePerTaskInUiThreadMillis()Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTotalTimeInUiThreadMillis()Ljava/lang/Long;
    .locals 1

    .line 94
    :try_start_0
    iget-object v0, p0, Lads_mobile_sdk/zy3;->a:Landroidx/webkit/WebViewStartUpResult;

    invoke-interface {v0}, Landroidx/webkit/WebViewStartUpResult;->getTotalTimeInUiThreadMillis()Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method
