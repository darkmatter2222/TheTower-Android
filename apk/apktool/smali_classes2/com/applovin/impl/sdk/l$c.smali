.class Lcom/applovin/impl/sdk/l$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/y5$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/l;->Q0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/l;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/sdk/l$c;->a:Lcom/applovin/impl/sdk/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/sdk/l$c;->a:Lcom/applovin/impl/sdk/l;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/sdk/l;Lorg/json/JSONObject;)V

    .line 3
    iget-object p1, p0, Lcom/applovin/impl/sdk/l$c;->a:Lcom/applovin/impl/sdk/l;

    invoke-static {p1}, Lcom/applovin/impl/sdk/l;->c(Lcom/applovin/impl/sdk/l;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    iget-object p1, p0, Lcom/applovin/impl/sdk/l$c;->a:Lcom/applovin/impl/sdk/l;

    invoke-static {p1}, Lcom/applovin/impl/sdk/l;->g(Lcom/applovin/impl/sdk/l;)V

    return-void
.end method
