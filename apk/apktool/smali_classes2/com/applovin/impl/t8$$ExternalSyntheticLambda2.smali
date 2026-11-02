.class public final synthetic Lcom/applovin/impl/t8$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic f$0:Lcom/applovin/impl/x4;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/x4;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/t8$$ExternalSyntheticLambda2;->f$0:Lcom/applovin/impl/x4;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/applovin/impl/t8$$ExternalSyntheticLambda2;->f$0:Lcom/applovin/impl/x4;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/x4;->b(Ljava/lang/Object;)Lcom/applovin/impl/x4;

    return-void
.end method
