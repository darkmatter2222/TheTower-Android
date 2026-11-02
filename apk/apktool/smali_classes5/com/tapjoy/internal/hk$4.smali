.class final Lcom/tapjoy/internal/hk$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/hk;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tapjoy/internal/hk;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/hk;Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/tapjoy/internal/hk$4;->b:Lcom/tapjoy/internal/hk;

    iput-object p2, p0, Lcom/tapjoy/internal/hk$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/tapjoy/internal/hk$4;->b:Lcom/tapjoy/internal/hk;

    invoke-static {v0}, Lcom/tapjoy/internal/hk;->a(Lcom/tapjoy/internal/hk;)Lcom/tapjoy/internal/gy;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/hk$4;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/gy;->c(Ljava/lang/String;)V

    return-void
.end method
