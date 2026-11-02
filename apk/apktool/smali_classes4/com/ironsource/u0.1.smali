.class public final Lcom/ironsource/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/ironsource/q0;

.field private final b:Lcom/unity3d/mediation/LevelPlayAdInfo;


# direct methods
.method public constructor <init>(Lcom/ironsource/q0;Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .locals 1

    const-string v0, "adUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/u0;->a:Lcom/ironsource/q0;

    iput-object p2, p0, Lcom/ironsource/u0;->b:Lcom/unity3d/mediation/LevelPlayAdInfo;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ironsource/q0;Lcom/unity3d/mediation/LevelPlayAdInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ironsource/u0;-><init>(Lcom/ironsource/q0;Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    return-void
.end method

.method public static synthetic a(Lcom/ironsource/u0;Lcom/ironsource/q0;Lcom/unity3d/mediation/LevelPlayAdInfo;ILjava/lang/Object;)Lcom/ironsource/u0;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 3
    iget-object p1, p0, Lcom/ironsource/u0;->a:Lcom/ironsource/q0;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/ironsource/u0;->b:Lcom/unity3d/mediation/LevelPlayAdInfo;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/ironsource/u0;->a(Lcom/ironsource/q0;Lcom/unity3d/mediation/LevelPlayAdInfo;)Lcom/ironsource/u0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/ironsource/q0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/u0;->a:Lcom/ironsource/q0;

    return-object v0
.end method

.method public final a(Lcom/ironsource/q0;Lcom/unity3d/mediation/LevelPlayAdInfo;)Lcom/ironsource/u0;
    .locals 1

    .line 2
    const-string v0, "adUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/ironsource/u0;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/u0;-><init>(Lcom/ironsource/q0;Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    return-object v0
.end method

.method public final b()Lcom/unity3d/mediation/LevelPlayAdInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/u0;->b:Lcom/unity3d/mediation/LevelPlayAdInfo;

    return-object v0
.end method

.method public final c()Lcom/unity3d/mediation/LevelPlayAdInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/u0;->b:Lcom/unity3d/mediation/LevelPlayAdInfo;

    return-object v0
.end method

.method public final d()Lcom/ironsource/q0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/u0;->a:Lcom/ironsource/q0;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/ironsource/u0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/ironsource/u0;

    iget-object v1, p0, Lcom/ironsource/u0;->a:Lcom/ironsource/q0;

    iget-object v3, p1, Lcom/ironsource/u0;->a:Lcom/ironsource/q0;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/ironsource/u0;->b:Lcom/unity3d/mediation/LevelPlayAdInfo;

    iget-object p1, p1, Lcom/ironsource/u0;->b:Lcom/unity3d/mediation/LevelPlayAdInfo;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/u0;->a:Lcom/ironsource/q0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/u0;->b:Lcom/unity3d/mediation/LevelPlayAdInfo;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/unity3d/mediation/LevelPlayAdInfo;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/u0;->a:Lcom/ironsource/q0;

    iget-object v1, p0, Lcom/ironsource/u0;->b:Lcom/unity3d/mediation/LevelPlayAdInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AdUnitCallback(adUnit="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", adInfo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
