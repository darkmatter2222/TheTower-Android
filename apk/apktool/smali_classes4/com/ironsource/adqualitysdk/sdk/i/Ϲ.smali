.class public final Lcom/ironsource/adqualitysdk/sdk/i/Ϲ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ϯ;


# instance fields
.field public final synthetic ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ϲ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ(Ljava/util/ArrayList;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ϲ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;

    .line 2
    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;->ｋ:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
