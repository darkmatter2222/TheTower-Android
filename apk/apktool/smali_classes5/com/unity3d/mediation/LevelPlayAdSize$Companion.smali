.class public final Lcom/unity3d/mediation/LevelPlayAdSize$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/mediation/LevelPlayAdSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/unity3d/mediation/LevelPlayAdSize$Companion;-><init>()V

    return-void
.end method

.method public static synthetic createAdaptiveAdSize$default(Lcom/unity3d/mediation/LevelPlayAdSize$Companion;Landroid/content/Context;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/unity3d/mediation/LevelPlayAdSize;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/mediation/LevelPlayAdSize$Companion;->createAdaptiveAdSize(Landroid/content/Context;Ljava/lang/Integer;)Lcom/unity3d/mediation/LevelPlayAdSize;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final createAdSize$mediationsdk_release(Ljava/lang/String;)Lcom/unity3d/mediation/LevelPlayAdSize;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "adSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x5c1d2fb

    if-eq v0, v1, :cond_2

    const v1, 0x44dc31b

    if-eq v0, v1, :cond_1

    const v1, 0x1aa2fb5d

    if-eq v0, v1, :cond_0

    const v1, 0x7458732c

    if-ne v0, v1, :cond_3

    const-string v0, "BANNER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2
    sget-object p1, Lcom/unity3d/mediation/LevelPlayAdSize;->BANNER:Lcom/unity3d/mediation/LevelPlayAdSize;

    return-object p1

    .line 3
    :cond_0
    const-string v0, "LEADERBOARD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6
    sget-object p1, Lcom/unity3d/mediation/LevelPlayAdSize;->LEADERBOARD:Lcom/unity3d/mediation/LevelPlayAdSize;

    return-object p1

    .line 7
    :cond_1
    const-string v0, "LARGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    sget-object p1, Lcom/unity3d/mediation/LevelPlayAdSize;->LARGE:Lcom/unity3d/mediation/LevelPlayAdSize;

    return-object p1

    .line 12
    :cond_2
    const-string v0, "MEDIUM_RECTANGLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 14
    sget-object p1, Lcom/unity3d/mediation/LevelPlayAdSize;->MEDIUM_RECTANGLE:Lcom/unity3d/mediation/LevelPlayAdSize;

    return-object p1

    .line 17
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong Ad Size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final createAdaptiveAdSize(Landroid/content/Context;)Lcom/unity3d/mediation/LevelPlayAdSize;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/unity3d/mediation/LevelPlayAdSize$Companion;->createAdaptiveAdSize$default(Lcom/unity3d/mediation/LevelPlayAdSize$Companion;Landroid/content/Context;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/unity3d/mediation/LevelPlayAdSize;

    move-result-object p1

    return-object p1
.end method

.method public final createAdaptiveAdSize(Landroid/content/Context;Ljava/lang/Integer;)Lcom/unity3d/mediation/LevelPlayAdSize;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/ironsource/g1;

    new-instance v1, Lcom/ironsource/m0;

    invoke-direct {v1}, Lcom/ironsource/m0;-><init>()V

    invoke-direct {v0, v1}, Lcom/ironsource/g1;-><init>(Lcom/ironsource/m0;)V

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/g1;->a(Landroid/content/Context;Ljava/lang/Integer;)Lcom/unity3d/mediation/LevelPlayAdSize;

    move-result-object p1

    return-object p1
.end method

.method public final createCustomSize(II)Lcom/unity3d/mediation/LevelPlayAdSize;
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    new-instance v0, Lcom/unity3d/mediation/LevelPlayAdSize;

    const/16 v6, 0x10

    const/4 v7, 0x0

    const-string v3, "CUSTOM"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/unity3d/mediation/LevelPlayAdSize;-><init>(IILjava/lang/String;ZLcom/unity3d/mediation/LevelPlayAdSize;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
