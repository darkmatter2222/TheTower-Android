.class public abstract Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseAdapter;
.super Lcom/ironsource/mediationsdk/adunit/adapter/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterMetaDataInterface;
.implements Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterAdaptiveInterface;
.implements Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterTestModeInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseAdapter$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseAdapter$Companion;


# instance fields
.field private mAdapterDebug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseAdapter;->Companion:Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseAdapter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/adunit/adapter/BaseAdapter;-><init>()V

    return-void
.end method

.method public static final networkAdapterVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseAdapter;->Companion:Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseAdapter$Companion;

    invoke-virtual {v0}, Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseAdapter$Companion;->networkAdapterVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAdaptiveHeight(I)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public isAdaptersDebugEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseAdapter;->mAdapterDebug:Z

    return v0
.end method

.method public setAdapterDebug(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseAdapter;->mAdapterDebug:Z

    return-void
.end method

.method public setMetaData(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setTestMode(Z)V
    .locals 0

    return-void
.end method
