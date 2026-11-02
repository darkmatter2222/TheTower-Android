.class Lcom/ironsource/k8$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/k8;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ironsource/k8;


# direct methods
.method constructor <init>(Lcom/ironsource/k8;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ironsource/k8$a;->c:Lcom/ironsource/k8;

    iput-object p2, p0, Lcom/ironsource/k8$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/k8$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/k8$a;->c:Lcom/ironsource/k8;

    invoke-static {v0}, Lcom/ironsource/k8;->-$$Nest$fgeta(Lcom/ironsource/k8;)Lcom/ironsource/p8;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/p8;->getPresentingView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/k8$a;->c:Lcom/ironsource/k8;

    invoke-static {v0}, Lcom/ironsource/k8;->-$$Nest$fgeta(Lcom/ironsource/k8;)Lcom/ironsource/p8;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/k8$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/k8$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/p8;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/k8$a;->c:Lcom/ironsource/k8;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ironsource/k8;->-$$Nest$fputa(Lcom/ironsource/k8;Lcom/ironsource/p8;)V

    return-void
.end method
