.class Lcom/applovin/impl/r2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/r2;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/r2;


# direct methods
.method constructor <init>(Lcom/applovin/impl/r2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/r2$a;->a:Lcom/applovin/impl/r2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/r2$a;->a:Lcom/applovin/impl/r2;

    invoke-static {v0, p1}, Lcom/applovin/impl/r2;->a(Lcom/applovin/impl/r2;Lcom/applovin/sdk/AppLovinAd;)V

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/r2$a;->a:Lcom/applovin/impl/r2;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/r2;->showAndRender(Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/r2$a;->a:Lcom/applovin/impl/r2;

    invoke-static {v0, p1}, Lcom/applovin/impl/r2;->a(Lcom/applovin/impl/r2;I)V

    return-void
.end method
