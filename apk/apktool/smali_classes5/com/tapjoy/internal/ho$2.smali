.class final Lcom/tapjoy/internal/ho$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/ho;->a(Landroid/app/Activity;Lcom/tapjoy/internal/hk;Lcom/tapjoy/internal/fy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/hk;

.field final synthetic b:Lcom/tapjoy/internal/ho;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/ho;Lcom/tapjoy/internal/hk;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/tapjoy/internal/ho$2;->b:Lcom/tapjoy/internal/ho;

    iput-object p2, p0, Lcom/tapjoy/internal/ho$2;->a:Lcom/tapjoy/internal/hk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 179
    iget-object p1, p0, Lcom/tapjoy/internal/ho$2;->a:Lcom/tapjoy/internal/hk;

    iget-object v0, p0, Lcom/tapjoy/internal/ho$2;->b:Lcom/tapjoy/internal/ho;

    iget-object v0, v0, Lcom/tapjoy/internal/ho;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/hk;->d(Ljava/lang/String;)V

    return-void
.end method
