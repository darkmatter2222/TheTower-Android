.class public final synthetic Lcom/applovin/impl/r8$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/applovin/impl/x4$b;


# instance fields
.field public final synthetic f$0:Lcom/applovin/impl/r8;

.field public final synthetic f$1:Lcom/applovin/sdk/AppLovinPostbackListener;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/r8;Lcom/applovin/sdk/AppLovinPostbackListener;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/r8$$ExternalSyntheticLambda5;->f$0:Lcom/applovin/impl/r8;

    iput-object p2, p0, Lcom/applovin/impl/r8$$ExternalSyntheticLambda5;->f$1:Lcom/applovin/sdk/AppLovinPostbackListener;

    iput-object p3, p0, Lcom/applovin/impl/r8$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/applovin/impl/r8$$ExternalSyntheticLambda5;->f$0:Lcom/applovin/impl/r8;

    iget-object v1, p0, Lcom/applovin/impl/r8$$ExternalSyntheticLambda5;->f$1:Lcom/applovin/sdk/AppLovinPostbackListener;

    iget-object v2, p0, Lcom/applovin/impl/r8$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    move v3, p1

    invoke-static/range {v0 .. v5}, Lcom/applovin/impl/r8;->$r8$lambda$9p25dwPOKcwbpRz8RnARI_WxZ4k(Lcom/applovin/impl/r8;Lcom/applovin/sdk/AppLovinPostbackListener;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
