.class public final Lcom/unity3d/mediation/rewarded/LevelPlayReward;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/mediation/rewarded/LevelPlayReward;->a:Ljava/lang/String;

    iput p2, p0, Lcom/unity3d/mediation/rewarded/LevelPlayReward;->b:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/unity3d/mediation/rewarded/LevelPlayReward;Ljava/lang/String;IILjava/lang/Object;)Lcom/unity3d/mediation/rewarded/LevelPlayReward;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/unity3d/mediation/rewarded/LevelPlayReward;->a:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/unity3d/mediation/rewarded/LevelPlayReward;->b:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/mediation/rewarded/LevelPlayReward;->copy(Ljava/lang/String;I)Lcom/unity3d/mediation/rewarded/LevelPlayReward;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/mediation/rewarded/LevelPlayReward;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/unity3d/mediation/rewarded/LevelPlayReward;->b:I

    return v0
.end method

.method public final copy(Ljava/lang/String;I)Lcom/unity3d/mediation/rewarded/LevelPlayReward;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/unity3d/mediation/rewarded/LevelPlayReward;

    invoke-direct {v0, p1, p2}, Lcom/unity3d/mediation/rewarded/LevelPlayReward;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/unity3d/mediation/rewarded/LevelPlayReward;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/unity3d/mediation/rewarded/LevelPlayReward;

    iget-object v1, p0, Lcom/unity3d/mediation/rewarded/LevelPlayReward;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/unity3d/mediation/rewarded/LevelPlayReward;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/unity3d/mediation/rewarded/LevelPlayReward;->b:I

    iget p1, p1, Lcom/unity3d/mediation/rewarded/LevelPlayReward;->b:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getAmount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/unity3d/mediation/rewarded/LevelPlayReward;->b:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/mediation/rewarded/LevelPlayReward;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/unity3d/mediation/rewarded/LevelPlayReward;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/unity3d/mediation/rewarded/LevelPlayReward;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/unity3d/mediation/rewarded/LevelPlayReward;->a:Ljava/lang/String;

    iget v1, p0, Lcom/unity3d/mediation/rewarded/LevelPlayReward;->b:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LevelPlayReward(name="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", amount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
