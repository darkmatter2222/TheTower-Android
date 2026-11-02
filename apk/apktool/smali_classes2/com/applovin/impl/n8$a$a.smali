.class Lcom/applovin/impl/n8$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/n8$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/n8$a;


# direct methods
.method constructor <init>(Lcom/applovin/impl/n8$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/n8$a$a;->a:Lcom/applovin/impl/n8$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Intent;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->unregisterReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;)V

    .line 2
    iget-object p1, p0, Lcom/applovin/impl/n8$a$a;->a:Lcom/applovin/impl/n8$a;

    iget-object p1, p1, Lcom/applovin/impl/n8$a;->a:Lcom/applovin/impl/n8;

    invoke-static {p1}, Lcom/applovin/impl/n8;->c(Lcom/applovin/impl/n8;)V

    return-void
.end method
