.class final Lcom/tapjoy/internal/hk$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/hk;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/gv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/tapjoy/internal/gv;

.field final synthetic d:Lcom/tapjoy/internal/hk;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/hk;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/gv;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/tapjoy/internal/hk$7;->d:Lcom/tapjoy/internal/hk;

    iput-object p2, p0, Lcom/tapjoy/internal/hk$7;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tapjoy/internal/hk$7;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/tapjoy/internal/hk$7;->c:Lcom/tapjoy/internal/gv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 133
    iget-object v0, p0, Lcom/tapjoy/internal/hk$7;->d:Lcom/tapjoy/internal/hk;

    invoke-static {v0}, Lcom/tapjoy/internal/hk;->a(Lcom/tapjoy/internal/hk;)Lcom/tapjoy/internal/gy;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/hk$7;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/tapjoy/internal/hk$7;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/tapjoy/internal/hk$7;->c:Lcom/tapjoy/internal/gv;

    invoke-interface {v0, v1, v2, v3}, Lcom/tapjoy/internal/gy;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/gv;)V

    return-void
.end method
