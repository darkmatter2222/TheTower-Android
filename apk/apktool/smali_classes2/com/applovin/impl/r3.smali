.class public abstract Lcom/applovin/impl/r3;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;


# instance fields
.field private a:Z

.field protected communicatorTopics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/r3;->communicatorTopics:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCommunicatorId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getSdk()Lcom/applovin/impl/sdk/l;
.end method

.method protected isInitialized()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/applovin/impl/r3;->a:Z

    return v0
.end method

.method protected markInitialized()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/applovin/impl/r3;->a:Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Lcom/applovin/impl/r3;->getSdk()Lcom/applovin/impl/sdk/l;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/applovin/impl/r3;->getSdk()Lcom/applovin/impl/sdk/l;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/impl/u7;->c(Lcom/applovin/impl/sdk/l;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    sget p1, Lcom/applovin/sdk/R$style;->com_applovin_mediation_MaxDebuggerActivity_Theme_Live:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->setTheme(I)V

    :cond_0
    const p1, 0x1020002

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 11
    invoke-virtual {p0}, Lcom/applovin/impl/r3;->getSdk()Lcom/applovin/impl/sdk/l;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applovin/impl/k8;->a(Landroid/view/View;Lcom/applovin/impl/sdk/l;)V

    .line 13
    iget-object p1, p0, Lcom/applovin/impl/r3;->communicatorTopics:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 15
    invoke-static {p0}, Lcom/applovin/communicator/AppLovinCommunicator;->getInstance(Landroid/content/Context;)Lcom/applovin/communicator/AppLovinCommunicator;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/r3;->communicatorTopics:Ljava/util/List;

    invoke-virtual {p1, p0, v0}, Lcom/applovin/communicator/AppLovinCommunicator;->subscribe(Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 3
    iget-object v0, p0, Lcom/applovin/impl/r3;->communicatorTopics:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 5
    invoke-static {p0}, Lcom/applovin/communicator/AppLovinCommunicator;->getInstance(Landroid/content/Context;)Lcom/applovin/communicator/AppLovinCommunicator;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/r3;->communicatorTopics:Ljava/util/List;

    invoke-virtual {v0, p0, v1}, Lcom/applovin/communicator/AppLovinCommunicator;->unsubscribe(Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onMessageReceived(Lcom/applovin/communicator/AppLovinCommunicatorMessage;)V
    .locals 0

    return-void
.end method
