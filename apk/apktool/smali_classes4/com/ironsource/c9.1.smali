.class public final Lcom/ironsource/c9;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/c9$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/ironsource/c9$a;

.field public static final d:Ljava/lang/String; = "auctionId"

.field public static final e:Ljava/lang/String; = "adUnit"

.field public static final f:Ljava/lang/String; = "adFormat"

.field public static final g:Ljava/lang/String; = "mediationAdUnitName"

.field public static final h:Ljava/lang/String; = "mediationAdUnitId"

.field public static final i:Ljava/lang/String; = "country"

.field public static final j:Ljava/lang/String; = "ab"

.field public static final k:Ljava/lang/String; = "segmentName"

.field public static final l:Ljava/lang/String; = "placement"

.field public static final m:Ljava/lang/String; = "adNetwork"

.field public static final n:Ljava/lang/String; = "instanceName"

.field public static final o:Ljava/lang/String; = "instanceId"

.field public static final p:Ljava/lang/String; = "revenue"

.field public static final q:Ljava/lang/String; = "precision"

.field public static final r:Ljava/lang/String; = "encryptedCPM"

.field public static final s:Ljava/lang/String; = "creativeId"


# instance fields
.field private final a:Lcom/unity3d/mediation/LevelPlayAdInfo;

.field private final b:Ljava/text/DecimalFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ironsource/c9$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/c9$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/c9;->c:Lcom/ironsource/c9$a;

    return-void
.end method

.method public constructor <init>(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .locals 1

    const-string v0, "adInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/c9;->a:Lcom/unity3d/mediation/LevelPlayAdInfo;

    .line 2
    new-instance p1, Ljava/text/DecimalFormat;

    const-string v0, "#.#####"

    invoke-direct {p1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ironsource/c9;->b:Ljava/text/DecimalFormat;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/c9;->a:Lcom/unity3d/mediation/LevelPlayAdInfo;

    invoke-virtual {v0}, Lcom/unity3d/mediation/LevelPlayAdInfo;->getAb()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/c9;->a:Lcom/unity3d/mediation/LevelPlayAdInfo;

    invoke-virtual {v0}, Lcom/unity3d/mediation/LevelPlayAdInfo;->getAdFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/c9;->a:Lcom/unity3d/mediation/LevelPlayAdInfo;

    invoke-virtual {v0}, Lcom/unity3d/mediation/LevelPlayAdInfo;->getAdNetwork()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/c9;->a:Lcom/unity3d/mediation/LevelPlayAdInfo;

    invoke-virtual {v0}, Lcom/unity3d/mediation/LevelPlayAdInfo;->impressionData$mediationsdk_release()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/c9;->a:Lcom/unity3d/mediation/LevelPlayAdInfo;

    invoke-virtual {v0}, Lcom/unity3d/mediation/LevelPlayAdInfo;->getAuctionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/c9;->a:Lcom/unity3d/mediation/LevelPlayAdInfo;

    invoke-virtual {v0}, Lcom/unity3d/mediation/LevelPlayAdInfo;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/c9;->a:Lcom/unity3d/mediation/LevelPlayAdInfo;

    invoke-virtual {v0}, Lcom/unity3d/mediation/LevelPlayAdInfo;->getCreativeId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/c9;->a:Lcom/unity3d/mediation/LevelPlayAdInfo;

    invoke-virtual {v0}, Lcom/unity3d/mediation/LevelPlayAdInfo;->getEncryptedCPM()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/c9;->a:Lcom/unity3d/mediation/LevelPlayAdInfo;

    invoke-virtual {v0}, Lcom/unity3d/mediation/LevelPlayAdInfo;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/c9;->a:Lcom/unity3d/mediation/LevelPlayAdInfo;

    invoke-virtual {v0}, Lcom/unity3d/mediation/LevelPlayAdInfo;->getInstanceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/c9;->a:Lcom/unity3d/mediation/LevelPlayAdInfo;

    invoke-virtual {v0}, Lcom/unity3d/mediation/LevelPlayAdInfo;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/c9;->a:Lcom/unity3d/mediation/LevelPlayAdInfo;

    invoke-virtual {v0}, Lcom/unity3d/mediation/LevelPlayAdInfo;->getAdUnitName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/c9;->a:Lcom/unity3d/mediation/LevelPlayAdInfo;

    invoke-virtual {v0}, Lcom/unity3d/mediation/LevelPlayAdInfo;->getPlacementName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/c9;->a:Lcom/unity3d/mediation/LevelPlayAdInfo;

    invoke-virtual {v0}, Lcom/unity3d/mediation/LevelPlayAdInfo;->getImpressionPrecision$mediationsdk_release()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final o()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/c9;->a:Lcom/unity3d/mediation/LevelPlayAdInfo;

    invoke-virtual {v0}, Lcom/unity3d/mediation/LevelPlayAdInfo;->getImpressionRevenue$mediationsdk_release()D

    move-result-wide v0

    return-wide v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/c9;->a:Lcom/unity3d/mediation/LevelPlayAdInfo;

    invoke-virtual {v0}, Lcom/unity3d/mediation/LevelPlayAdInfo;->getSegmentName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 17

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/ironsource/c9;->e()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/ironsource/c9;->l()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/ironsource/c9;->k()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/ironsource/c9;->b()Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/ironsource/c9;->f()Ljava/lang/String;

    move-result-object v4

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/ironsource/c9;->a()Ljava/lang/String;

    move-result-object v5

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/ironsource/c9;->p()Ljava/lang/String;

    move-result-object v6

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/ironsource/c9;->m()Ljava/lang/String;

    move-result-object v7

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/ironsource/c9;->c()Ljava/lang/String;

    move-result-object v8

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/ironsource/c9;->j()Ljava/lang/String;

    move-result-object v9

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/ironsource/c9;->i()Ljava/lang/String;

    move-result-object v10

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/ironsource/c9;->o()D

    move-object/from16 v11, p0

    iget-object v12, v11, Lcom/ironsource/c9;->b:Ljava/text/DecimalFormat;

    invoke-virtual {v11}, Lcom/ironsource/c9;->o()D

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v12

    .line 36
    invoke-virtual {v11}, Lcom/ironsource/c9;->n()Ljava/lang/String;

    move-result-object v13

    .line 39
    invoke-virtual {v11}, Lcom/ironsource/c9;->h()Ljava/lang/String;

    move-result-object v14

    .line 42
    invoke-virtual {v11}, Lcom/ironsource/c9;->g()Ljava/lang/String;

    move-result-object v15

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v16, v15

    const-string v15, "auctionId: \'"

    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, "\', mediationAdUnitName: \'"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', mediationAdUnitId: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', adFormat: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', country: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', ab: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', segmentName: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', placement: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', adNetwork: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', instanceName: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', instanceId: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', revenue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", precision: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', encryptedCPM: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', creativeId: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
