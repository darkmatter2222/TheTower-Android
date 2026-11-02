.class Lcom/ironsource/r3$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/G7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/r3;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/r3;


# direct methods
.method public static synthetic $r8$lambda$zXr4oBg84DLood6MlvBJUI1pKWg(Lcom/ironsource/r3$c;Lcom/ironsource/G7$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ironsource/r3$c;->b(Lcom/ironsource/G7$a;)V

    return-void
.end method

.method constructor <init>(Lcom/ironsource/r3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/r3$c;->a:Lcom/ironsource/r3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic b(Lcom/ironsource/G7$a;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/ironsource/G7$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ironsource/r3$c;->a:Lcom/ironsource/r3;

    invoke-static {v0}, Lcom/ironsource/r3;->-$$Nest$fgetp(Lcom/ironsource/r3;)Lcom/ironsource/G4;

    move-result-object v1

    iget-object v0, v0, Lcom/ironsource/r3;->I:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/ironsource/G4;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/ironsource/r3$c;->a:Lcom/ironsource/r3;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/ironsource/r3$c;->a:Lcom/ironsource/r3;

    invoke-static {v2}, Lcom/ironsource/r3;->-$$Nest$fgetr(Lcom/ironsource/r3;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Lcom/ironsource/r3;->-$$Nest$fputt(Lcom/ironsource/r3;I)V

    goto :goto_0

    .line 9
    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "Failed to send events. Saving them back to storage."

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/ironsource/r3$c;->a:Lcom/ironsource/r3;

    .line 14
    invoke-virtual {p1}, Lcom/ironsource/G7$a;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ironsource/G7$a;->a()Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-static {v0, v1, v2}, Lcom/ironsource/r3;->-$$Nest$ma(Lcom/ironsource/r3;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/ironsource/r3$c;->a:Lcom/ironsource/r3;

    invoke-virtual {v1, v0}, Lcom/ironsource/r3;->a(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 20
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 22
    :goto_0
    invoke-virtual {p1}, Lcom/ironsource/G7$a;->b()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ironsource/r3$c;->a(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/ironsource/G7$a;)V
    .locals 2

    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/r3$c;->a:Lcom/ironsource/r3;

    invoke-static {v0}, Lcom/ironsource/r3;->-$$Nest$fgetK(Lcom/ironsource/r3;)Lcom/ironsource/F5;

    move-result-object v0

    new-instance v1, Lcom/ironsource/r3$c$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/r3$c$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/r3$c;Lcom/ironsource/G7$a;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/F5;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/C5;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 5
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "clearData exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
