.class public final Lcom/tapjoy/internal/PluginSupport;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static trackUsage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 23
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 25
    invoke-static {p1}, Lcom/tapjoy/internal/bh;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bh;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :try_start_1
    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/bh;->a(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    :try_start_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->close()V

    .line 30
    throw p0

    :cond_0
    move-object v0, v1

    .line 34
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 35
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 36
    invoke-static {p2}, Lcom/tapjoy/internal/bh;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bh;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 38
    :try_start_3
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->h()V

    .line 39
    :goto_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->j()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 40
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->l()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->q()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->i()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 44
    :try_start_4
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->close()V

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->close()V

    .line 45
    throw p0

    .line 48
    :cond_2
    :goto_2
    invoke-static {p0, v0, v1}, Lcom/tapjoy/internal/gi;->a(Ljava/lang/String;Ljava/util/TreeMap;Ljava/util/Map;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return-void
.end method
