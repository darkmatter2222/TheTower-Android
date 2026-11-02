.class public final Lads_mobile_sdk/oo0;
.super Lads_mobile_sdk/jj3;
.source "SourceFile"


# instance fields
.field public final f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/xf;Lads_mobile_sdk/yw1;Landroid/content/Context;Lads_mobile_sdk/ts3;)V
    .locals 7

    .line 30
    sget-object v0, Lads_mobile_sdk/lq0;->t:Lads_mobile_sdk/lq0;

    .line 33
    invoke-virtual {p4, v0}, Lads_mobile_sdk/ts3;->a(Lads_mobile_sdk/lq0;)Lads_mobile_sdk/qr3;

    move-result-object v6

    .line 34
    const-string v2, "CzCPmDNIzbko9j27W4Y+FnVoo4mioliPgu3lHZfH7X37ZS9shhTEINdeW6qNrIwK"

    const-string v3, "kLU+LRtEwqUYExhIA2ie2CRIFLizPvlVLrV8UdO5R3c="

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lads_mobile_sdk/jj3;-><init>(Ljava/lang/String;Ljava/lang/String;Lads_mobile_sdk/xf;Lads_mobile_sdk/yw1;Lads_mobile_sdk/qr3;)V

    .line 40
    iput-object p3, v1, Lads_mobile_sdk/oo0;->f:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Method;Lads_mobile_sdk/xf;)V
    .locals 2

    .line 41
    iget-object v0, p0, Lads_mobile_sdk/oo0;->f:Landroid/content/Context;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 43
    monitor-enter p2

    const/4 v0, 0x0

    .line 44
    :try_start_0
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Lads_mobile_sdk/xf;->e(J)V

    const/4 v0, 0x1

    .line 45
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Lads_mobile_sdk/xf;->h(J)V

    const/4 v0, 0x2

    .line 46
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Lads_mobile_sdk/xf;->g(J)V

    const/4 v0, 0x3

    .line 48
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Lads_mobile_sdk/xf;->f(J)V

    const/4 v0, 0x4

    .line 50
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 52
    sget-object v0, Lads_mobile_sdk/rh;->d:Lads_mobile_sdk/rh;

    invoke-virtual {p2, v0}, Lads_mobile_sdk/xf;->a(Lads_mobile_sdk/rh;)V

    goto :goto_1

    .line 55
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lads_mobile_sdk/rh;->c:Lads_mobile_sdk/rh;

    goto :goto_0

    .line 56
    :cond_1
    sget-object v0, Lads_mobile_sdk/rh;->b:Lads_mobile_sdk/rh;

    .line 57
    :goto_0
    invoke-virtual {p2, v0}, Lads_mobile_sdk/xf;->a(Lads_mobile_sdk/rh;)V

    :goto_1
    const/4 v0, 0x5

    .line 61
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_2

    .line 63
    sget-object p1, Lads_mobile_sdk/rh;->d:Lads_mobile_sdk/rh;

    invoke-virtual {p2, p1}, Lads_mobile_sdk/xf;->e(Lads_mobile_sdk/rh;)V

    goto :goto_3

    .line 66
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lads_mobile_sdk/rh;->c:Lads_mobile_sdk/rh;

    goto :goto_2

    .line 67
    :cond_3
    sget-object p1, Lads_mobile_sdk/rh;->b:Lads_mobile_sdk/rh;

    .line 68
    :goto_2
    invoke-virtual {p2, p1}, Lads_mobile_sdk/xf;->e(Lads_mobile_sdk/rh;)V

    .line 71
    :goto_3
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    .line 72
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
