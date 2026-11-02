.class public final Lcom/unity3d/ads/core/domain/CommonShouldAllowInitialization;
.super Ljava/lang/Object;
.source "CommonShouldAllowInitialization.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/ShouldAllowInitialization;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/CommonShouldAllowInitialization$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0096\u0002R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/CommonShouldAllowInitialization;",
        "Lcom/unity3d/ads/core/domain/ShouldAllowInitialization;",
        "checkForGameIdAndTestModeChanges",
        "Lcom/unity3d/ads/core/domain/CheckForGameIdAndTestModeChanges;",
        "getInitializationState",
        "Lcom/unity3d/ads/core/domain/GetInitializationState;",
        "setInitializationState",
        "Lcom/unity3d/ads/core/domain/SetInitializationState;",
        "validateGameId",
        "Lcom/unity3d/ads/core/domain/ValidateGameId;",
        "<init>",
        "(Lcom/unity3d/ads/core/domain/CheckForGameIdAndTestModeChanges;Lcom/unity3d/ads/core/domain/GetInitializationState;Lcom/unity3d/ads/core/domain/SetInitializationState;Lcom/unity3d/ads/core/domain/ValidateGameId;)V",
        "getCheckForGameIdAndTestModeChanges",
        "()Lcom/unity3d/ads/core/domain/CheckForGameIdAndTestModeChanges;",
        "getGetInitializationState",
        "()Lcom/unity3d/ads/core/domain/GetInitializationState;",
        "getSetInitializationState",
        "()Lcom/unity3d/ads/core/domain/SetInitializationState;",
        "getValidateGameId",
        "()Lcom/unity3d/ads/core/domain/ValidateGameId;",
        "invoke",
        "",
        "gameId",
        "",
        "unity-ads_defaultRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final checkForGameIdAndTestModeChanges:Lcom/unity3d/ads/core/domain/CheckForGameIdAndTestModeChanges;

.field private final getInitializationState:Lcom/unity3d/ads/core/domain/GetInitializationState;

.field private final setInitializationState:Lcom/unity3d/ads/core/domain/SetInitializationState;

.field private final validateGameId:Lcom/unity3d/ads/core/domain/ValidateGameId;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/CheckForGameIdAndTestModeChanges;Lcom/unity3d/ads/core/domain/GetInitializationState;Lcom/unity3d/ads/core/domain/SetInitializationState;Lcom/unity3d/ads/core/domain/ValidateGameId;)V
    .locals 1

    const-string v0, "checkForGameIdAndTestModeChanges"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getInitializationState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setInitializationState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "validateGameId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/CommonShouldAllowInitialization;->checkForGameIdAndTestModeChanges:Lcom/unity3d/ads/core/domain/CheckForGameIdAndTestModeChanges;

    .line 11
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/CommonShouldAllowInitialization;->getInitializationState:Lcom/unity3d/ads/core/domain/GetInitializationState;

    .line 12
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/CommonShouldAllowInitialization;->setInitializationState:Lcom/unity3d/ads/core/domain/SetInitializationState;

    .line 13
    iput-object p4, p0, Lcom/unity3d/ads/core/domain/CommonShouldAllowInitialization;->validateGameId:Lcom/unity3d/ads/core/domain/ValidateGameId;

    return-void
.end method


# virtual methods
.method public final getCheckForGameIdAndTestModeChanges()Lcom/unity3d/ads/core/domain/CheckForGameIdAndTestModeChanges;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/CommonShouldAllowInitialization;->checkForGameIdAndTestModeChanges:Lcom/unity3d/ads/core/domain/CheckForGameIdAndTestModeChanges;

    return-object v0
.end method

.method public final getGetInitializationState()Lcom/unity3d/ads/core/domain/GetInitializationState;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/CommonShouldAllowInitialization;->getInitializationState:Lcom/unity3d/ads/core/domain/GetInitializationState;

    return-object v0
.end method

.method public final getSetInitializationState()Lcom/unity3d/ads/core/domain/SetInitializationState;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/CommonShouldAllowInitialization;->setInitializationState:Lcom/unity3d/ads/core/domain/SetInitializationState;

    return-object v0
.end method

.method public final getValidateGameId()Lcom/unity3d/ads/core/domain/ValidateGameId;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/CommonShouldAllowInitialization;->validateGameId:Lcom/unity3d/ads/core/domain/ValidateGameId;

    return-object v0
.end method

.method public invoke(Ljava/lang/String;)Z
    .locals 3

    .line 17
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/CommonShouldAllowInitialization;->validateGameId:Lcom/unity3d/ads/core/domain/ValidateGameId;

    invoke-interface {v0, p1}, Lcom/unity3d/ads/core/domain/ValidateGameId;->invoke(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/CommonShouldAllowInitialization;->getInitializationState:Lcom/unity3d/ads/core/domain/GetInitializationState;

    invoke-interface {p1, v0}, Lcom/unity3d/ads/core/domain/GetInitializationState;->invoke(Z)Lcom/unity3d/ads/core/data/model/InitializationState;

    move-result-object p1

    sget-object v1, Lcom/unity3d/ads/core/domain/CommonShouldAllowInitialization$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/InitializationState;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 26
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/CommonShouldAllowInitialization;->checkForGameIdAndTestModeChanges:Lcom/unity3d/ads/core/domain/CheckForGameIdAndTestModeChanges;

    invoke-interface {p1, v0}, Lcom/unity3d/ads/core/domain/CheckForGameIdAndTestModeChanges;->invoke(Z)V

    .line 27
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/CommonShouldAllowInitialization;->setInitializationState:Lcom/unity3d/ads/core/domain/SetInitializationState;

    sget-object v2, Lcom/unity3d/ads/core/data/model/InitializationState;->INITIALIZING:Lcom/unity3d/ads/core/data/model/InitializationState;

    invoke-interface {p1, v2, v0}, Lcom/unity3d/ads/core/domain/SetInitializationState;->invoke(Lcom/unity3d/ads/core/data/model/InitializationState;Z)V

    return v1

    .line 22
    :cond_3
    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->notifyInitializationComplete()V

    :cond_4
    return v0
.end method
