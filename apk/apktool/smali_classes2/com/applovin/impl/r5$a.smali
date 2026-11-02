.class Lcom/applovin/impl/r5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/e0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/r5;->m()Lcom/applovin/impl/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/r5;


# direct methods
.method constructor <init>(Lcom/applovin/impl/r5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/r5$a;->a:Lcom/applovin/impl/r5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/r5$a;->a:Lcom/applovin/impl/r5;

    invoke-static {v0}, Lcom/applovin/impl/r5;->a(Lcom/applovin/impl/r5;)Lcom/applovin/impl/sdk/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/a;->q1()V

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/r5$a;->a:Lcom/applovin/impl/r5;

    invoke-static {v0}, Lcom/applovin/impl/r5;->a(Lcom/applovin/impl/r5;)Lcom/applovin/impl/sdk/ad/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/ad/a;->a(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method
