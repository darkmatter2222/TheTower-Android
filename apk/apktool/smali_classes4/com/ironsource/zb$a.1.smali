.class Lcom/ironsource/zb$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/qa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/zb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/zb;


# direct methods
.method constructor <init>(Lcom/ironsource/zb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/zb$a;->a:Lcom/ironsource/zb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/zb$a;->a:Lcom/ironsource/zb;

    invoke-static {v0}, Lcom/ironsource/zb;->-$$Nest$fgetc(Lcom/ironsource/zb;)Lcom/ironsource/jg;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/jg;->c(J)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/zb$a;->a:Lcom/ironsource/zb;

    invoke-static {v0}, Lcom/ironsource/zb;->-$$Nest$mc(Lcom/ironsource/zb;)V

    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/zb$a;->a:Lcom/ironsource/zb;

    invoke-static {v0}, Lcom/ironsource/zb;->-$$Nest$fgetc(Lcom/ironsource/zb;)Lcom/ironsource/jg;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/jg;->b(J)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/zb$a;->a:Lcom/ironsource/zb;

    invoke-static {v0}, Lcom/ironsource/zb;->-$$Nest$fgetc(Lcom/ironsource/zb;)Lcom/ironsource/jg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/jg;->a()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/ironsource/zb;->-$$Nest$mb(Lcom/ironsource/zb;J)V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method
