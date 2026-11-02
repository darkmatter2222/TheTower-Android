.class public final Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLevelPlayRewardedAd.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LevelPlayRewardedAd.kt\ncom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,186:1\n1#2:187\n*E\n"
.end annotation


# instance fields
.field private a:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;
    .locals 2

    .line 1
    new-instance v0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;

    iget-object v1, p0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config$Builder;->a:Ljava/lang/Double;

    invoke-direct {v0, v1}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;-><init>(Ljava/lang/Double;)V

    return-object v0
.end method

.method public final setBidFloor(D)Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config$Builder;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config$Builder;->a:Ljava/lang/Double;

    return-object p0
.end method
