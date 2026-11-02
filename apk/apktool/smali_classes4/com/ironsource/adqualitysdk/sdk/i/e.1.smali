.class public final Lcom/ironsource/adqualitysdk/sdk/i/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ϯ;


# instance fields
.field public final synthetic ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/m;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/e;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ(Ljava/util/ArrayList;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/e;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/m;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getGameId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
