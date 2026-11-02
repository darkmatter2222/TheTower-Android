.class public final Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/cb$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config$Builder;,
        Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config$Companion;


# instance fields
.field private final a:Ljava/lang/Double;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;->Companion:Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1, v0}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;-><init>(Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;->a:Ljava/lang/Double;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;-><init>(Ljava/lang/Double;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;Ljava/lang/Double;ILjava/lang/Object;)Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;->a:Ljava/lang/Double;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;->copy(Ljava/lang/Double;)Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;->a:Ljava/lang/Double;

    return-object v0
.end method

.method public final copy(Ljava/lang/Double;)Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;
    .locals 1

    new-instance v0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;

    invoke-direct {v0, p1}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;-><init>(Ljava/lang/Double;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;

    iget-object v1, p0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;->a:Ljava/lang/Double;

    iget-object p1, p1, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;->a:Ljava/lang/Double;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public getBidFloor()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;->a:Ljava/lang/Double;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;->a:Ljava/lang/Double;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;->a:Ljava/lang/Double;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Config(bidFloor="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
