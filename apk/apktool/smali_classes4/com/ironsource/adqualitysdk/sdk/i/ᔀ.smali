.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᔀ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ϯ;


# instance fields
.field public final synthetic ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᓶ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ᓶ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᔀ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᓶ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ(Ljava/util/ArrayList;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᔀ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᓶ;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v1, -0x60648229

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p2, v1, :cond_3

    const v1, -0x51d5b0d4

    if-eq p2, v1, :cond_2

    const v1, -0x3e8acd8

    if-eq p2, v1, :cond_1

    const v1, 0x205e3c0e

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "Gbk3gqot9cY=\n"

    const-string v1, "S/xgw/hpsII=\n"

    invoke-static {p2, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_1
    const-string p2, "3XjDbltIFAradtt4SEMZ\n"

    const-string v0, "kzeXMRIGXV4=\n"

    invoke-static {p2, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v0, v2

    goto :goto_1

    :cond_2
    const-string p2, "LNDaDj3IGeYx188H\n"

    const-string v0, "ZZ6OS2+bTa8=\n"

    invoke-static {p2, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v0, v4

    goto :goto_1

    :cond_3
    const-string p2, "6JT/3QKJgw==\n"

    const-string v0, "odqpnE7Ax8g=\n"

    invoke-static {p2, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v0, v3

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_8

    if-eq v0, v4, :cond_7

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_5

    const/4 p1, 0x0

    return-object p1

    .line 11
    :cond_5
    sget-object p1, Lcom/hyprmx/android/sdk/placement/PlacementType;->NOT_INITIALIZED:Lcom/hyprmx/android/sdk/placement/PlacementType;

    return-object p1

    .line 12
    :cond_6
    sget-object p1, Lcom/hyprmx/android/sdk/placement/PlacementType;->INVALID:Lcom/hyprmx/android/sdk/placement/PlacementType;

    return-object p1

    .line 13
    :cond_7
    sget-object p1, Lcom/hyprmx/android/sdk/placement/PlacementType;->INTERSTITIAL:Lcom/hyprmx/android/sdk/placement/PlacementType;

    return-object p1

    .line 14
    :cond_8
    sget-object p1, Lcom/hyprmx/android/sdk/placement/PlacementType;->REWARDED:Lcom/hyprmx/android/sdk/placement/PlacementType;

    return-object p1
.end method
