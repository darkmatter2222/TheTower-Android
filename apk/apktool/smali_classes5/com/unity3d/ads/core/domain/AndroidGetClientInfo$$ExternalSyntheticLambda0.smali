.class public final synthetic Lcom/unity3d/ads/core/domain/AndroidGetClientInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/domain/AndroidGetClientInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/domain/AndroidGetClientInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidGetClientInfo$$ExternalSyntheticLambda0;->f$0:Lcom/unity3d/ads/core/domain/AndroidGetClientInfo;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidGetClientInfo$$ExternalSyntheticLambda0;->f$0:Lcom/unity3d/ads/core/domain/AndroidGetClientInfo;

    invoke-static {v0}, Lcom/unity3d/ads/core/domain/AndroidGetClientInfo;->$r8$lambda$4WijqN2vX-h9mpZ396af7Cwj364(Lcom/unity3d/ads/core/domain/AndroidGetClientInfo;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    move-result-object v0

    return-object v0
.end method
