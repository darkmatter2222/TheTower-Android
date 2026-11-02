.class final Lcom/tapjoy/internal/ge$b$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ge$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/ge$b;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/ge$b;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/tapjoy/internal/ge$b$2;->a:Lcom/tapjoy/internal/ge$b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 343
    iget-object p1, p0, Lcom/tapjoy/internal/ge$b$2;->a:Lcom/tapjoy/internal/ge$b;

    iget-object p1, p1, Lcom/tapjoy/internal/ge$b;->a:Lcom/tapjoy/internal/ge;

    invoke-virtual {p1}, Lcom/tapjoy/internal/ge;->b()V

    return-void
.end method
