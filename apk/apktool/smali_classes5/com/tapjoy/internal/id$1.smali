.class final Lcom/tapjoy/internal/id$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/id;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/id;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/id;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/tapjoy/internal/id$1;->a:Lcom/tapjoy/internal/id;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/tapjoy/internal/id$1;->a:Lcom/tapjoy/internal/id;

    invoke-static {v0}, Lcom/tapjoy/internal/id;->a(Lcom/tapjoy/internal/id;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/id$1;->a:Lcom/tapjoy/internal/id;

    invoke-static {v0}, Lcom/tapjoy/internal/id;->b(Lcom/tapjoy/internal/id;)V

    return-void
.end method
