.class public Lcom/tapjoy/internal/gm;
.super Ljava/util/Observable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/gm$a;
    }
.end annotation


# instance fields
.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tapjoy/internal/gm$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/gm;->b:Ljava/util/List;

    return-void
.end method

.method private static a(Ljava/lang/Object;)J
    .locals 2

    .line 245
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 246
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 247
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 248
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 250
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Lcom/tapjoy/internal/gm$a;
    .locals 1

    .line 53
    new-instance v0, Lcom/tapjoy/internal/gm$a;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/internal/gm$a;-><init>(Lcom/tapjoy/internal/gm;Ljava/lang/String;)V

    .line 54
    iget-object p1, p0, Lcom/tapjoy/internal/gm;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final a(Ljava/lang/String;Z)Z
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/tapjoy/internal/gm;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/internal/gm$a;

    .line 148
    invoke-virtual {v1, p1}, Lcom/tapjoy/internal/gm$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 150
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 151
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 152
    :cond_1
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 153
    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x1

    return p1

    .line 155
    :cond_2
    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_3
    return p2
.end method

.method public final b(Ljava/lang/String;)J
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/tapjoy/internal/gm;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/internal/gm$a;

    .line 223
    invoke-virtual {v1, p1}, Lcom/tapjoy/internal/gm$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 225
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_1

    .line 226
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 227
    :cond_1
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 229
    :try_start_0
    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final c(Ljava/lang/String;)Lcom/tapjoy/internal/gl;
    .locals 11

    .line 331
    iget-object v0, p0, Lcom/tapjoy/internal/gm;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/internal/gm$a;

    .line 332
    invoke-virtual {v1, p1}, Lcom/tapjoy/internal/gm$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 333
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 334
    check-cast v1, Ljava/util/List;

    .line 336
    :try_start_0
    new-instance v2, Lcom/tapjoy/internal/gl;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/tapjoy/internal/gm;->a(Ljava/lang/Object;)J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/tapjoy/internal/gm;->a(Ljava/lang/Object;)J

    move-result-wide v5

    const/4 v7, 0x2

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/tapjoy/internal/gm;->a(Ljava/lang/Object;)J

    move-result-wide v7

    const/4 v9, 0x3

    .line 337
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1290
    instance-of v9, v1, Ljava/lang/Number;

    if-eqz v9, :cond_1

    .line 1291
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v9

    goto :goto_0

    .line 1292
    :cond_1
    instance-of v9, v1, Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 1293
    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    .line 337
    :goto_0
    invoke-direct/range {v2 .. v10}, Lcom/tapjoy/internal/gl;-><init>(JJJD)V

    return-object v2

    .line 1295
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :cond_3
    sget-object p1, Lcom/tapjoy/internal/gl;->a:Lcom/tapjoy/internal/gl;

    return-object p1
.end method

.method protected setChanged()V
    .locals 0

    .line 60
    invoke-super {p0}, Ljava/util/Observable;->setChanged()V

    .line 61
    invoke-virtual {p0}, Lcom/tapjoy/internal/gm;->notifyObservers()V

    return-void
.end method
