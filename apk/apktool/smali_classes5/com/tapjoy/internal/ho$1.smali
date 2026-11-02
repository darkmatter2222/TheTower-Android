.class final Lcom/tapjoy/internal/ho$1;
.super Lcom/tapjoy/TJContentActivity$AbstractContentProducer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/ho;->a(Lcom/tapjoy/internal/hk;Lcom/tapjoy/internal/fy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/hk;

.field final synthetic b:Lcom/tapjoy/internal/fy;

.field final synthetic c:Lcom/tapjoy/internal/ho;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/ho;Lcom/tapjoy/internal/hk;Lcom/tapjoy/internal/fy;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/tapjoy/internal/ho$1;->c:Lcom/tapjoy/internal/ho;

    iput-object p2, p0, Lcom/tapjoy/internal/ho$1;->a:Lcom/tapjoy/internal/hk;

    iput-object p3, p0, Lcom/tapjoy/internal/ho$1;->b:Lcom/tapjoy/internal/fy;

    invoke-direct {p0}, Lcom/tapjoy/TJContentActivity$AbstractContentProducer;-><init>()V

    return-void
.end method


# virtual methods
.method public final dismiss(Landroid/app/Activity;)V
    .locals 0

    .line 135
    iget-object p1, p0, Lcom/tapjoy/internal/ho$1;->c:Lcom/tapjoy/internal/ho;

    invoke-static {p1}, Lcom/tapjoy/internal/ho;->a(Lcom/tapjoy/internal/ho;)V

    return-void
.end method

.method public final show(Landroid/app/Activity;)V
    .locals 3

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/ho$1;->c:Lcom/tapjoy/internal/ho;

    iget-object v1, p0, Lcom/tapjoy/internal/ho$1;->a:Lcom/tapjoy/internal/hk;

    iget-object v2, p0, Lcom/tapjoy/internal/ho$1;->b:Lcom/tapjoy/internal/fy;

    invoke-static {v0, p1, v1, v2}, Lcom/tapjoy/internal/ho;->a(Lcom/tapjoy/internal/ho;Landroid/app/Activity;Lcom/tapjoy/internal/hk;Lcom/tapjoy/internal/fy;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 127
    :catch_0
    iget-object p1, p0, Lcom/tapjoy/internal/ho$1;->c:Lcom/tapjoy/internal/ho;

    iget-object p1, p1, Lcom/tapjoy/internal/ho;->a:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Failed to show the content for \"{}\" caused by invalid activity"

    invoke-static {v0, p1}, Lcom/tapjoy/internal/hg;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    iget-object p1, p0, Lcom/tapjoy/internal/ho$1;->a:Lcom/tapjoy/internal/hk;

    iget-object v0, p0, Lcom/tapjoy/internal/ho$1;->c:Lcom/tapjoy/internal/ho;

    iget-object v0, v0, Lcom/tapjoy/internal/ho;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/tapjoy/internal/ho$1;->c:Lcom/tapjoy/internal/ho;

    iget-object v1, v1, Lcom/tapjoy/internal/ho;->f:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/tapjoy/internal/hk;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/gv;)V

    return-void
.end method
