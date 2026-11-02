.class Lcom/applovin/impl/i6$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/i6$d;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/i6$d;


# direct methods
.method constructor <init>(Lcom/applovin/impl/i6$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/i6$d$a;->a:Lcom/applovin/impl/i6$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/applovin/impl/i6$d$a;->a:Lcom/applovin/impl/i6$d;

    iget-object p1, p1, Lcom/applovin/impl/i6$d;->b:Lcom/applovin/impl/i6;

    invoke-static {p1}, Lcom/applovin/impl/i6;->b(Lcom/applovin/impl/i6;)Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/i6$d$a;->a:Lcom/applovin/impl/i6$d;

    iget-object p1, p1, Lcom/applovin/impl/i6$d;->b:Lcom/applovin/impl/i6;

    invoke-static {p1}, Lcom/applovin/impl/i6;->b(Lcom/applovin/impl/i6;)Lcom/applovin/impl/sdk/p;

    move-result-object p1

    const-string v0, "TaskManager"

    const-string v1, "Caught unhandled exception"

    invoke-virtual {p1, v0, v1, p2}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
