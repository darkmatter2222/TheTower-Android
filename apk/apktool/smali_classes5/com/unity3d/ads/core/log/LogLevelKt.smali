.class public final Lcom/unity3d/ads/core/log/LogLevelKt;
.super Ljava/lang/Object;
.source "LogLevel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/log/LogLevelKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "toLogLevelInternal",
        "Lcom/unity3d/ads/core/log/LogLevelInternal;",
        "Lcom/unity3d/ads/LogLevel;",
        "unity-ads_defaultRelease"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final toLogLevelInternal(Lcom/unity3d/ads/LogLevel;)Lcom/unity3d/ads/core/log/LogLevelInternal;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/unity3d/ads/core/log/LogLevelKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/unity3d/ads/LogLevel;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 25
    sget-object p0, Lcom/unity3d/ads/core/log/LogLevelInternal;->TRACE:Lcom/unity3d/ads/core/log/LogLevelInternal;

    return-object p0

    .line 20
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 24
    :cond_1
    sget-object p0, Lcom/unity3d/ads/core/log/LogLevelInternal;->DEBUG:Lcom/unity3d/ads/core/log/LogLevelInternal;

    return-object p0

    .line 23
    :cond_2
    sget-object p0, Lcom/unity3d/ads/core/log/LogLevelInternal;->INFO:Lcom/unity3d/ads/core/log/LogLevelInternal;

    return-object p0

    .line 22
    :cond_3
    sget-object p0, Lcom/unity3d/ads/core/log/LogLevelInternal;->ERROR:Lcom/unity3d/ads/core/log/LogLevelInternal;

    return-object p0

    .line 21
    :cond_4
    sget-object p0, Lcom/unity3d/ads/core/log/LogLevelInternal;->DISABLED:Lcom/unity3d/ads/core/log/LogLevelInternal;

    return-object p0
.end method
