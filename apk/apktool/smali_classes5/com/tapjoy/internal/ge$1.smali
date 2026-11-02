.class final Lcom/tapjoy/internal/ge$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/ge;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/ge;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/tapjoy/internal/ge$1;->a:Lcom/tapjoy/internal/ge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    .line 145
    sget-object p1, Lcom/tapjoy/internal/fu;->b:Lcom/tapjoy/internal/fu$a;

    invoke-virtual {p1, p0}, Lcom/tapjoy/internal/fu$a;->deleteObserver(Ljava/util/Observer;)V

    .line 146
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 147
    iget-object p1, p0, Lcom/tapjoy/internal/ge$1;->a:Lcom/tapjoy/internal/ge;

    .line 1031
    iget-object p1, p1, Lcom/tapjoy/internal/ge;->e:Lcom/tapjoy/internal/ge$a;

    if-eqz p1, :cond_0

    .line 147
    iget-object p1, p0, Lcom/tapjoy/internal/ge$1;->a:Lcom/tapjoy/internal/ge;

    .line 2031
    iget-object p1, p1, Lcom/tapjoy/internal/ge;->e:Lcom/tapjoy/internal/ge$a;

    .line 147
    iget-object p1, p1, Lcom/tapjoy/internal/ge$a;->a:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 148
    iget-object p1, p0, Lcom/tapjoy/internal/ge$1;->a:Lcom/tapjoy/internal/ge;

    new-instance p2, Lcom/tapjoy/internal/ge$b;

    iget-object v0, p0, Lcom/tapjoy/internal/ge$1;->a:Lcom/tapjoy/internal/ge;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lcom/tapjoy/internal/ge$b;-><init>(Lcom/tapjoy/internal/ge;B)V

    .line 3031
    iput-object p2, p1, Lcom/tapjoy/internal/ge;->c:Lcom/tapjoy/internal/ge$b;

    .line 149
    new-instance p1, Ljava/lang/Thread;

    iget-object p2, p0, Lcom/tapjoy/internal/ge$1;->a:Lcom/tapjoy/internal/ge;

    .line 4031
    iget-object p2, p2, Lcom/tapjoy/internal/ge;->c:Lcom/tapjoy/internal/ge$b;

    .line 149
    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
