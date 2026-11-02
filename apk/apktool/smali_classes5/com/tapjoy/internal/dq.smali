.class public final Lcom/tapjoy/internal/dq;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/tapjoy/internal/cx;)V
    .locals 1

    .line 1000
    iget-boolean p0, p0, Lcom/tapjoy/internal/cx;->e:Z

    if-nez p0, :cond_0

    return-void

    .line 0
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "AdSession is finished"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lcom/tapjoy/internal/cx;)V
    .locals 1

    .line 3000
    iget-boolean v0, p0, Lcom/tapjoy/internal/cx;->d:Z

    if-eqz v0, :cond_0

    .line 0
    invoke-static {p0}, Lcom/tapjoy/internal/dq;->a(Lcom/tapjoy/internal/cx;)V

    return-void

    .line 2000
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "AdSession is not started"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Lcom/tapjoy/internal/cx;)V
    .locals 1

    .line 4000
    iget-object p0, p0, Lcom/tapjoy/internal/cx;->a:Lcom/tapjoy/internal/cn;

    .line 5000
    sget-object v0, Lcom/tapjoy/internal/cu;->a:Lcom/tapjoy/internal/cu;

    iget-object p0, p0, Lcom/tapjoy/internal/cn;->a:Lcom/tapjoy/internal/cu;

    if-ne v0, p0, :cond_0

    return-void

    .line 0
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Impression event is not expected from the Native AdSession"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
