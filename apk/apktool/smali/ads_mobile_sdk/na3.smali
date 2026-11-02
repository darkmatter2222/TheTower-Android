.class public final Lads_mobile_sdk/na3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/ib2;


# instance fields
.field public final a:Lads_mobile_sdk/ib2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/by3;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lads_mobile_sdk/na3;->a:Lads_mobile_sdk/ib2;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 3

    const/4 p1, 0x0

    .line 28
    invoke-static {p1, p1, p1, p1}, Lads_mobile_sdk/pe2;->a(IIII)Lorg/json/JSONObject;

    move-result-object v0

    .line 29
    invoke-static {}, Lads_mobile_sdk/sd2;->a()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    .line 32
    :cond_0
    sget v1, Lads_mobile_sdk/zf2;->a:I

    .line 33
    :goto_0
    invoke-static {v1}, Lads_mobile_sdk/yv2;->a(I)I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move p1, v2

    .line 34
    :goto_1
    :try_start_0
    const-string v1, "noOutputDevice"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 37
    const-string v1, "Error with setting output device status"

    .line 38
    const-string v2, "OMIDLIB"

    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public final a(Landroid/view/View;Lorg/json/JSONObject;Lads_mobile_sdk/hb2;ZZ)V
    .locals 5

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    sget-object p4, Lads_mobile_sdk/q9;->c:Lads_mobile_sdk/q9;

    if-eqz p4, :cond_2

    .line 41
    iget-object p4, p4, Lads_mobile_sdk/q9;->b:Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p4

    .line 42
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x3

    .line 43
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1, v0}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 44
    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/p9;

    .line 45
    iget-object v0, v0, Lads_mobile_sdk/p9;->c:Lads_mobile_sdk/ty3;

    .line 46
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 47
    invoke-static {v0}, Lads_mobile_sdk/jg2;->d(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v1, v0}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 50
    invoke-virtual {v1, v0, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-static {v0}, Lads_mobile_sdk/jg2;->b(Landroid/view/View;)F

    move-result v2

    .line 52
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_1
    if-lez v3, :cond_1

    add-int/lit8 v4, v3, -0x1

    .line 53
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-static {v4}, Lads_mobile_sdk/jg2;->b(Landroid/view/View;)F

    move-result v4

    cmpl-float v4, v4, v2

    if-lez v4, :cond_1

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {p1, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    .line 58
    iget-object v0, p0, Lads_mobile_sdk/na3;->a:Lads_mobile_sdk/ib2;

    move-object v1, p3

    check-cast v1, Lads_mobile_sdk/rt3;

    invoke-virtual {v1, p4, v0, p2, p5}, Lads_mobile_sdk/rt3;->a(Landroid/view/View;Lads_mobile_sdk/ib2;Lorg/json/JSONObject;Z)V

    goto :goto_2

    :cond_3
    return-void
.end method
