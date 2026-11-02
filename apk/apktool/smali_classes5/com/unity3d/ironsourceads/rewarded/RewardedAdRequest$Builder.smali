.class public final Lcom/unity3d/ironsourceads/rewarded/RewardedAdRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ironsourceads/rewarded/RewardedAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "instanceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adm"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ironsourceads/rewarded/RewardedAdRequest$Builder;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/unity3d/ironsourceads/rewarded/RewardedAdRequest$Builder;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final build()Lcom/unity3d/ironsourceads/rewarded/RewardedAdRequest;
    .locals 5

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v1, p0, Lcom/unity3d/ironsourceads/rewarded/RewardedAdRequest$Builder;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "instanceId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/unity3d/ironsourceads/rewarded/RewardedAdRequest;

    iget-object v1, p0, Lcom/unity3d/ironsourceads/rewarded/RewardedAdRequest$Builder;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/unity3d/ironsourceads/rewarded/RewardedAdRequest$Builder;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/unity3d/ironsourceads/rewarded/RewardedAdRequest$Builder;->c:Landroid/os/Bundle;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/unity3d/ironsourceads/rewarded/RewardedAdRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final getAdm()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/ironsourceads/rewarded/RewardedAdRequest$Builder;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getInstanceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/ironsourceads/rewarded/RewardedAdRequest$Builder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final withExtraParams(Landroid/os/Bundle;)Lcom/unity3d/ironsourceads/rewarded/RewardedAdRequest$Builder;
    .locals 1

    const-string v0, "extraParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/unity3d/ironsourceads/rewarded/RewardedAdRequest$Builder;->c:Landroid/os/Bundle;

    return-object p0
.end method
