.class Lcom/ironsource/O5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/O5;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/ironsource/O5;


# direct methods
.method constructor <init>(Lcom/ironsource/O5;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ironsource/O5$a;->b:Lcom/ironsource/O5;

    iput-object p2, p0, Lcom/ironsource/O5$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "response status code: "

    .line 1
    :try_start_0
    new-instance v1, Lcom/ironsource/Rd;

    invoke-direct {v1}, Lcom/ironsource/Rd;-><init>()V

    .line 2
    iget-object v2, p0, Lcom/ironsource/O5$a;->b:Lcom/ironsource/O5;

    invoke-static {v2}, Lcom/ironsource/O5;->-$$Nest$fgetb(Lcom/ironsource/O5;)Lcom/ironsource/I5;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/I5;->d()Ljava/util/ArrayList;

    move-result-object v2

    .line 3
    const-string v3, "POST"

    iget-object v4, p0, Lcom/ironsource/O5$a;->b:Lcom/ironsource/O5;

    invoke-static {v4}, Lcom/ironsource/O5;->-$$Nest$fgetb(Lcom/ironsource/O5;)Lcom/ironsource/I5;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/I5;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    iget-object v1, p0, Lcom/ironsource/O5$a;->b:Lcom/ironsource/O5;

    invoke-static {v1}, Lcom/ironsource/O5;->-$$Nest$fgetb(Lcom/ironsource/O5;)Lcom/ironsource/I5;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/ironsource/I5;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/ironsource/O5$a;->a:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Lcom/ironsource/g8;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/ironsource/Rd;

    move-result-object v1

    goto :goto_0

    .line 7
    :cond_0
    const-string v3, "GET"

    iget-object v4, p0, Lcom/ironsource/O5$a;->b:Lcom/ironsource/O5;

    invoke-static {v4}, Lcom/ironsource/O5;->-$$Nest$fgetb(Lcom/ironsource/O5;)Lcom/ironsource/I5;

    move-result-object v4

    .line 8
    invoke-virtual {v4}, Lcom/ironsource/I5;->e()Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 11
    iget-object v1, p0, Lcom/ironsource/O5$a;->b:Lcom/ironsource/O5;

    invoke-static {v1}, Lcom/ironsource/O5;->-$$Nest$fgetb(Lcom/ironsource/O5;)Lcom/ironsource/I5;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/ironsource/I5;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/ironsource/O5$a;->a:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Lcom/ironsource/g8;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/ironsource/Rd;

    move-result-object v1

    .line 15
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/ironsource/O5$a;->b:Lcom/ironsource/O5;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v1, Lcom/ironsource/Rd;->a:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ironsource/O5;->-$$Nest$ma(Lcom/ironsource/O5;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 17
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    return-void
.end method
