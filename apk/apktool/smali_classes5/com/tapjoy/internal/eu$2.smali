.class final Lcom/tapjoy/internal/eu$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/TJConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/eu;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TJConnectListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/tapjoy/TJConnectListener;

.field final synthetic c:Lcom/tapjoy/internal/eu;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/eu;Landroid/content/Context;Lcom/tapjoy/TJConnectListener;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/tapjoy/internal/eu$2;->c:Lcom/tapjoy/internal/eu;

    iput-object p2, p0, Lcom/tapjoy/internal/eu$2;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/tapjoy/internal/eu$2;->b:Lcom/tapjoy/TJConnectListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectFailure()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/tapjoy/internal/eu$2;->b:Lcom/tapjoy/TJConnectListener;

    if-eqz v0, :cond_0

    .line 178
    invoke-interface {v0}, Lcom/tapjoy/TJConnectListener;->onConnectFailure()V

    :cond_0
    return-void
.end method

.method public final onConnectSuccess()V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/tapjoy/internal/eu$2;->c:Lcom/tapjoy/internal/eu;

    new-instance v1, Lcom/tapjoy/TapjoyCache;

    iget-object v2, p0, Lcom/tapjoy/internal/eu$2;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tapjoy/TapjoyCache;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/tapjoy/internal/eu;->a(Lcom/tapjoy/internal/eu;Lcom/tapjoy/TapjoyCache;)Lcom/tapjoy/TapjoyCache;

    .line 168
    iget-object v0, p0, Lcom/tapjoy/internal/eu$2;->c:Lcom/tapjoy/internal/eu;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tapjoy/internal/eu;->b:Z

    .line 170
    iget-object v0, p0, Lcom/tapjoy/internal/eu$2;->b:Lcom/tapjoy/TJConnectListener;

    if-eqz v0, :cond_0

    .line 171
    invoke-interface {v0}, Lcom/tapjoy/TJConnectListener;->onConnectSuccess()V

    :cond_0
    return-void
.end method
