.class public abstract Lcom/tapjoy/internal/bh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/be;
.implements Lcom/tapjoy/internal/bj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/bh$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lcom/tapjoy/internal/bh;
    .locals 1

    .line 28
    invoke-static {}, Lcom/tapjoy/internal/bh$a;->a()Lcom/tapjoy/internal/bh$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/bh$a;->a(Ljava/io/InputStream;)Lcom/tapjoy/internal/bh;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/List;)V
    .locals 1

    .line 189
    invoke-virtual {p0}, Lcom/tapjoy/internal/bh;->f()V

    .line 190
    :goto_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/bh;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/tapjoy/internal/bh;->u()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/bh;->g()V

    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/tapjoy/internal/bh;
    .locals 1

    .line 36
    invoke-static {}, Lcom/tapjoy/internal/bh$a;->a()Lcom/tapjoy/internal/bh$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/bh$a;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bh;

    move-result-object p0

    return-object p0
.end method

.method private static d(Ljava/lang/String;)Ljava/net/URI;
    .locals 1

    .line 242
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 244
    new-instance v0, Lcom/tapjoy/internal/bp;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/bp;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private t()Z
    .locals 2

    .line 117
    invoke-virtual {p0}, Lcom/tapjoy/internal/bh;->k()Lcom/tapjoy/internal/bm;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/internal/bm;->i:Lcom/tapjoy/internal/bm;

    if-ne v0, v1, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/tapjoy/internal/bh;->o()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private u()Ljava/lang/Object;
    .locals 3

    .line 157
    invoke-virtual {p0}, Lcom/tapjoy/internal/bh;->k()Lcom/tapjoy/internal/bm;

    move-result-object v0

    .line 158
    sget-object v1, Lcom/tapjoy/internal/bh$1;->a:[I

    invoke-virtual {v0}, Lcom/tapjoy/internal/bm;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 173
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Expected a value but was "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 171
    :pswitch_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/bh;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1178
    :pswitch_1
    new-instance v0, Lcom/tapjoy/internal/cc;

    invoke-virtual {p0}, Lcom/tapjoy/internal/bh;->m()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/cc;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 167
    :pswitch_2
    invoke-virtual {p0}, Lcom/tapjoy/internal/bh;->n()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 164
    :pswitch_3
    invoke-virtual {p0}, Lcom/tapjoy/internal/bh;->o()V

    const/4 v0, 0x0

    return-object v0

    .line 162
    :pswitch_4
    invoke-virtual {p0}, Lcom/tapjoy/internal/bh;->d()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 160
    :pswitch_5
    invoke-virtual {p0}, Lcom/tapjoy/internal/bh;->c()Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/bc;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tapjoy/internal/bc<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 217
    invoke-direct {p0}, Lcom/tapjoy/internal/bh;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 220
    :cond_0
    invoke-interface {p1, p0}, Lcom/tapjoy/internal/bc;->a(Lcom/tapjoy/internal/bh;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/tapjoy/internal/bh;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/tapjoy/internal/bh;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/bh;->a:Ljava/util/HashMap;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/bh;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/util/List;Lcom/tapjoy/internal/bc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/tapjoy/internal/bc<",
            "TT;>;)V"
        }
    .end annotation

    .line 224
    invoke-virtual {p0}, Lcom/tapjoy/internal/bh;->f()V

    .line 225
    :goto_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/bh;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1212
    invoke-interface {p2, p0}, Lcom/tapjoy/internal/bc;->a(Lcom/tapjoy/internal/bh;)Ljava/lang/Object;

    move-result-object v0

    .line 226
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/bh;->g()V

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 2

    .line 204
    invoke-virtual {p0}, Lcom/tapjoy/internal/bh;->h()V

    .line 205
    :goto_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/bh;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/tapjoy/internal/bh;->l()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/tapjoy/internal/bh;->u()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/bh;->i()V

    return-void
.end method

.method public final a()Z
    .locals 2

    .line 92
    invoke-virtual {p0}, Lcom/tapjoy/internal/bh;->k()Lcom/tapjoy/internal/bm;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/internal/bm;->c:Lcom/tapjoy/internal/bm;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 133
    invoke-direct {p0}, Lcom/tapjoy/internal/bh;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/bh;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 150
    invoke-direct {p0}, Lcom/tapjoy/internal/bh;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/bh;->m()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 182
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 183
    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bh;->a(Ljava/util/List;)V

    return-object v0
.end method

.method public final d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 197
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 198
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/bh;->a(Ljava/util/Map;)V

    return-object v0
.end method

.method public final e()Ljava/net/URL;
    .locals 2

    .line 2016
    const-string v0, "BASE_URI"

    invoke-interface {p0, v0}, Lcom/tapjoy/internal/be;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URI;

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/tapjoy/internal/bh;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/internal/bh;->d(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    return-object v0

    .line 310
    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/tapjoy/internal/bh;->m()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
