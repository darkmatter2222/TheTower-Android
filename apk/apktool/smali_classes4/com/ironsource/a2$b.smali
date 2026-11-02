.class public final Lcom/ironsource/a2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/x3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/a2;->b()Lcom/ironsource/a2$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/a2;


# direct methods
.method constructor <init>(Lcom/ironsource/a2;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/a2$b;->a:Lcom/ironsource/a2;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/a2$b;->a:Lcom/ironsource/a2;

    invoke-virtual {v0}, Lcom/ironsource/a2;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/ironsource/a2$b;->a:Lcom/ironsource/a2;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {v0, v2}, Lcom/ironsource/a2;->a(Lcom/ironsource/a2;Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;->getNetworkAdapter()Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object v1

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/ironsource/a2$b;->a:Lcom/ironsource/a2;

    invoke-static {v0, p1}, Lcom/ironsource/a2;->a(Lcom/ironsource/a2;Lcom/ironsource/mediationsdk/model/NetworkSettings;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object v1

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 7
    iget-object v0, p0, Lcom/ironsource/a2$b;->a:Lcom/ironsource/a2;

    invoke-static {v0, p1, v1}, Lcom/ironsource/a2;->a(Lcom/ironsource/a2;Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;)Ljava/util/Map;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/ironsource/a2$b;->a:Lcom/ironsource/a2;

    invoke-static {v0}, Lcom/ironsource/a2;->a(Lcom/ironsource/a2;)Lcom/ironsource/T0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/E5;->g()Lcom/ironsource/lg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/lg;->b(Ljava/util/Map;)V

    :cond_3
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/ironsource/a2$b;->a:Lcom/ironsource/a2;

    invoke-static {v0}, Lcom/ironsource/a2;->a(Lcom/ironsource/a2;)Lcom/ironsource/T0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/E5;->h()Lcom/ironsource/pg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/pg;->g(Ljava/lang/String;)V

    return-void
.end method
