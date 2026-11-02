.class final Lcom/tapjoy/internal/gc$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/TJPlacementListener;
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/gc;

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private final c:Lcom/tapjoy/internal/fk;

.field private volatile d:Z

.field private e:Lcom/tapjoy/TJPlacement;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/gc;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 121
    new-instance v0, Lcom/tapjoy/internal/fk;

    const-wide/16 v1, 0x2710

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/fk;-><init>(J)V

    invoke-direct {p0, p1, p2, v0}, Lcom/tapjoy/internal/gc$a;-><init>(Lcom/tapjoy/internal/gc;Ljava/lang/Object;Lcom/tapjoy/internal/fk;)V

    return-void
.end method

.method constructor <init>(Lcom/tapjoy/internal/gc;Ljava/lang/Object;Lcom/tapjoy/internal/fk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/tapjoy/internal/fk;",
            ")V"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/tapjoy/internal/gc$a;->a:Lcom/tapjoy/internal/gc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p2, p0, Lcom/tapjoy/internal/gc$a;->b:Ljava/lang/Object;

    .line 126
    iput-object p3, p0, Lcom/tapjoy/internal/gc$a;->c:Lcom/tapjoy/internal/fk;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .line 173
    monitor-enter p0

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/gc$a;->a:Lcom/tapjoy/internal/gc;

    iget-object v1, p0, Lcom/tapjoy/internal/gc$a;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gc;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    .line 176
    const-string p1, "SystemPlacement"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Placement "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is presented now"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_0
    const-string v1, "SystemPlacement"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot show placement "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " now ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    .line 181
    iput-boolean p1, p0, Lcom/tapjoy/internal/gc$a;->d:Z

    const/4 p1, 0x0

    .line 182
    iput-object p1, p0, Lcom/tapjoy/internal/gc$a;->e:Lcom/tapjoy/TJPlacement;

    .line 183
    sget-object p1, Lcom/tapjoy/internal/fu;->a:Lcom/tapjoy/internal/fu$a;

    invoke-virtual {p1, p0}, Lcom/tapjoy/internal/fu$a;->deleteObserver(Ljava/util/Observer;)V

    .line 184
    sget-object p1, Lcom/tapjoy/internal/fu;->e:Lcom/tapjoy/internal/fu$a;

    invoke-virtual {p1, p0}, Lcom/tapjoy/internal/fu$a;->deleteObserver(Ljava/util/Observer;)V

    .line 185
    sget-object p1, Lcom/tapjoy/internal/fu;->c:Lcom/tapjoy/internal/fu$a;

    invoke-virtual {p1, p0}, Lcom/tapjoy/internal/fu$a;->deleteObserver(Ljava/util/Observer;)V

    .line 186
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    iget-object p1, p0, Lcom/tapjoy/internal/gc$a;->a:Lcom/tapjoy/internal/gc;

    invoke-static {p1, p0}, Lcom/tapjoy/internal/gc;->a(Lcom/tapjoy/internal/gc;Lcom/tapjoy/internal/gc$a;)V

    return-void

    :catchall_0
    move-exception p1

    .line 186
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method final a()V
    .locals 3

    .line 130
    monitor-enter p0

    .line 131
    :try_start_0
    iget-boolean v0, p0, Lcom/tapjoy/internal/gc$a;->d:Z

    if-eqz v0, :cond_0

    .line 132
    monitor-exit p0

    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/gc$a;->c:Lcom/tapjoy/internal/fk;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fk;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    const-string v0, "Timed out"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/gc$a;->a(Ljava/lang/String;)V

    .line 137
    monitor-exit p0

    return-void

    .line 140
    :cond_1
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 141
    sget-object v0, Lcom/tapjoy/internal/fu;->a:Lcom/tapjoy/internal/fu$a;

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/fu$a;->addObserver(Ljava/util/Observer;)V

    .line 142
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 143
    monitor-exit p0

    return-void

    .line 145
    :cond_2
    sget-object v0, Lcom/tapjoy/internal/fu;->a:Lcom/tapjoy/internal/fu$a;

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/fu$a;->deleteObserver(Ljava/util/Observer;)V

    .line 148
    :cond_3
    iget-object v0, p0, Lcom/tapjoy/internal/gc$a;->e:Lcom/tapjoy/TJPlacement;

    if-nez v0, :cond_5

    .line 149
    iget-object v0, p0, Lcom/tapjoy/internal/gc$a;->a:Lcom/tapjoy/internal/gc;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gc;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 150
    const-string v0, "Cannot request"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/gc$a;->a(Ljava/lang/String;)V

    .line 151
    monitor-exit p0

    return-void

    .line 154
    :cond_4
    iget-object v0, p0, Lcom/tapjoy/internal/gc$a;->a:Lcom/tapjoy/internal/gc;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/gc$a;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p0, v2}, Lcom/tapjoy/internal/gc;->a(Landroid/content/Context;Lcom/tapjoy/TJPlacementListener;Ljava/lang/Object;)Lcom/tapjoy/TJPlacement;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gc$a;->e:Lcom/tapjoy/TJPlacement;

    .line 155
    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->requestContent()V

    .line 156
    monitor-exit p0

    return-void

    .line 159
    :cond_5
    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->isContentReady()Z

    move-result v0

    if-nez v0, :cond_6

    .line 160
    monitor-exit p0

    return-void

    .line 163
    :cond_6
    iget-object v0, p0, Lcom/tapjoy/internal/gc$a;->a:Lcom/tapjoy/internal/gc;

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/gc;->a(Ljava/util/Observer;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 164
    monitor-exit p0

    return-void

    .line 167
    :cond_7
    iget-object v0, p0, Lcom/tapjoy/internal/gc$a;->e:Lcom/tapjoy/TJPlacement;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->showContent()V

    const/4 v0, 0x0

    .line 168
    invoke-direct {p0, v0}, Lcom/tapjoy/internal/gc$a;->a(Ljava/lang/String;)V

    .line 169
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onClick(Lcom/tapjoy/TJPlacement;)V
    .locals 0

    return-void
.end method

.method public final onContentDismiss(Lcom/tapjoy/TJPlacement;)V
    .locals 0

    return-void
.end method

.method public final onContentReady(Lcom/tapjoy/TJPlacement;)V
    .locals 0

    .line 207
    invoke-virtual {p0}, Lcom/tapjoy/internal/gc$a;->a()V

    return-void
.end method

.method public final onContentShow(Lcom/tapjoy/TJPlacement;)V
    .locals 0

    return-void
.end method

.method public final onPurchaseRequest(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onRequestFailure(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJError;)V
    .locals 0

    .line 202
    iget-object p1, p2, Lcom/tapjoy/TJError;->message:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/tapjoy/internal/gc$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final onRequestSuccess(Lcom/tapjoy/TJPlacement;)V
    .locals 0

    return-void
.end method

.method public final onRewardRequest(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    .line 192
    invoke-virtual {p0}, Lcom/tapjoy/internal/gc$a;->a()V

    return-void
.end method
