.class Lcom/ironsource/S5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/S5;-><init>(ILcom/ironsource/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/S5;


# direct methods
.method constructor <init>(Lcom/ironsource/S5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/S5$a;->a:Lcom/ironsource/S5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "loaded ads are expired"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/S5$a;->a:Lcom/ironsource/S5;

    invoke-static {v0}, Lcom/ironsource/S5;->-$$Nest$fgetc(Lcom/ironsource/S5;)Lcom/ironsource/o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/ironsource/o;->a()V

    :cond_0
    return-void
.end method
