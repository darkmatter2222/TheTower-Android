.class public final Lcom/tapjoy/internal/gt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1

    .line 39
    invoke-static {p0}, Lcom/tapjoy/internal/gr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/tapjoy/internal/gt;->b(Ljava/lang/Throwable;)V

    .line 40
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static a(Ljava/lang/Throwable;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "TX;>;)V^TX;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 13
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static b(Ljava/lang/Throwable;)V
    .locals 1

    .line 23
    const-class v0, Ljava/lang/Error;

    invoke-static {p0, v0}, Lcom/tapjoy/internal/gt;->a(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 24
    const-class v0, Ljava/lang/RuntimeException;

    invoke-static {p0, v0}, Lcom/tapjoy/internal/gt;->a(Ljava/lang/Throwable;Ljava/lang/Class;)V

    return-void
.end method
