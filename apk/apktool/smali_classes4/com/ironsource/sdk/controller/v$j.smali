.class Lcom/ironsource/sdk/controller/v$j;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/v;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/ironsource/sdk/controller/v;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/v;JJII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/sdk/controller/v$j;->c:Lcom/ironsource/sdk/controller/v;

    iput p6, p0, Lcom/ironsource/sdk/controller/v$j;->a:I

    iput p7, p0, Lcom/ironsource/sdk/controller/v$j;->b:I

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v$j;->c:Lcom/ironsource/sdk/controller/v;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/v;->-$$Nest$fgetc(Lcom/ironsource/sdk/controller/v;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Loading Controller Timer Finish"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcom/ironsource/sdk/controller/v$j;->a:I

    iget v1, p0, Lcom/ironsource/sdk/controller/v$j;->b:I

    if-lt v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v$j;->c:Lcom/ironsource/sdk/controller/v;

    new-instance v1, Lcom/ironsource/sdk/controller/v$j$a;

    invoke-direct {v1, p0}, Lcom/ironsource/sdk/controller/v$j$a;-><init>(Lcom/ironsource/sdk/controller/v$j;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/v;->b(Ljava/lang/Runnable;)V

    return-void

    .line 15
    :cond_0
    invoke-static {}, Lcom/ironsource/sdk/controller/v;->-$$Nest$smB()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v$j;->c:Lcom/ironsource/sdk/controller/v;

    new-instance v1, Lcom/ironsource/sdk/controller/v$j$b;

    invoke-direct {v1, p0}, Lcom/ironsource/sdk/controller/v$j$b;-><init>(Lcom/ironsource/sdk/controller/v$j;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/v;->c(Ljava/lang/Runnable;)V

    return-void

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v$j;->c:Lcom/ironsource/sdk/controller/v;

    iget v1, p0, Lcom/ironsource/sdk/controller/v$j;->a:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/v;->a(I)V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
