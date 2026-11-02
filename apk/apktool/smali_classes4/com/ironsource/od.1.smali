.class public final Lcom/ironsource/od;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/O7;
.implements Lcom/ironsource/O7$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/od$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/ironsource/J3;

.field private final b:Lcom/ironsource/R4;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 1
    invoke-direct {p0, v0, v0, v1, v0}, Lcom/ironsource/od;-><init>(Lcom/ironsource/J3;Lcom/ironsource/R4;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/J3;Lcom/ironsource/R4;)V
    .locals 1

    const-string v0, "cappingService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deliveryHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/ironsource/od;->a:Lcom/ironsource/J3;

    .line 4
    iput-object p2, p0, Lcom/ironsource/od;->b:Lcom/ironsource/R4;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ironsource/J3;Lcom/ironsource/R4;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 5
    new-instance v0, Lcom/ironsource/J3;

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/J3;-><init>(Lcom/ironsource/t4;Lcom/ironsource/N7;Lcom/ironsource/U8;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 6
    new-instance p2, Lcom/ironsource/R4;

    invoke-direct {p2}, Lcom/ironsource/R4;-><init>()V

    .line 7
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/ironsource/od;-><init>(Lcom/ironsource/J3;Lcom/ironsource/R4;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;)Lcom/ironsource/L3;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "placementName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adFormat"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/ironsource/td;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/td;-><init>(Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;)V

    invoke-virtual {v0}, Lcom/ironsource/td;->a()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/ironsource/od;->b:Lcom/ironsource/R4;

    invoke-virtual {p2, p1}, Lcom/ironsource/R4;->a(Ljava/lang/String;)Lcom/ironsource/L3;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Lcom/ironsource/L3;->d()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object p2

    .line 6
    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/ironsource/od;->a:Lcom/ironsource/J3;

    invoke-virtual {p2, p1}, Lcom/ironsource/J3;->a(Ljava/lang/String;)Lcom/ironsource/L3;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;Lcom/ironsource/N3;Lcom/ironsource/r7;)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "placementName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adFormat"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cappingType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cappingConfig"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/ironsource/td;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/td;-><init>(Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;)V

    invoke-virtual {v0}, Lcom/ironsource/td;->a()Ljava/lang/String;

    move-result-object p1

    .line 8
    sget-object p2, Lcom/ironsource/od$a;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 11
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/ironsource/od;->a:Lcom/ironsource/J3;

    invoke-virtual {p2, p1, p3, p4}, Lcom/ironsource/J3;->a(Ljava/lang/String;Lcom/ironsource/N3;Lcom/ironsource/r7;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 12
    :cond_2
    iget-object p2, p0, Lcom/ironsource/od;->b:Lcom/ironsource/R4;

    invoke-virtual {p2, p1, p3, p4}, Lcom/ironsource/R4;->a(Ljava/lang/String;Lcom/ironsource/N3;Lcom/ironsource/r7;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "placementName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adFormat"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/ironsource/td;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/td;-><init>(Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;)V

    invoke-virtual {v0}, Lcom/ironsource/td;->a()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/ironsource/od;->b:Lcom/ironsource/R4;

    invoke-virtual {p2, p1}, Lcom/ironsource/R4;->a(Ljava/lang/String;)Lcom/ironsource/L3;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Lcom/ironsource/L3;->d()Z

    move-result p2

    if-nez p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/ironsource/od;->a:Lcom/ironsource/J3;

    invoke-virtual {p2, p1}, Lcom/ironsource/J3;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
