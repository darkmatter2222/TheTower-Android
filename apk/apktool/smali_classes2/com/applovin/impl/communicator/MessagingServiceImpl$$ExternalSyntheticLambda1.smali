.class public final synthetic Lcom/applovin/impl/communicator/MessagingServiceImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/applovin/impl/communicator/CommunicatorMessageImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/communicator/CommunicatorMessageImpl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/communicator/MessagingServiceImpl$$ExternalSyntheticLambda1;->f$0:Lcom/applovin/impl/communicator/CommunicatorMessageImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/applovin/impl/communicator/MessagingServiceImpl$$ExternalSyntheticLambda1;->f$0:Lcom/applovin/impl/communicator/CommunicatorMessageImpl;

    invoke-static {v0}, Lcom/applovin/impl/communicator/MessagingServiceImpl;->$r8$lambda$hOgiManhNbp85jWYmaHAAtqsDlY(Lcom/applovin/impl/communicator/CommunicatorMessageImpl;)V

    return-void
.end method
