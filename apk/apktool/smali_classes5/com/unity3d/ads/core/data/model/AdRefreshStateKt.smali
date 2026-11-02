.class public final Lcom/unity3d/ads/core/data/model/AdRefreshStateKt;
.super Ljava/lang/Object;
.source "AdRefreshState.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/data/model/AdRefreshStateKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0005\u001a\u00020\u0001*\u00020\u0006\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "REUSE_RELOADED_INVALIDATION_REASON",
        "",
        "REUSE_NO_FILL_INVALIDATION_REASON",
        "REUSE_ERROR_INVALIDATION_REASON",
        "REUSE_DURING_RELOAD_INVALIDATION_REASON",
        "getInvalidationReason",
        "Lcom/unity3d/ads/core/data/model/AdRefreshState;",
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


# static fields
.field private static final REUSE_DURING_RELOAD_INVALIDATION_REASON:Ljava/lang/String; = "reuse_during_reload"

.field private static final REUSE_ERROR_INVALIDATION_REASON:Ljava/lang/String; = "reuse_error"

.field private static final REUSE_NO_FILL_INVALIDATION_REASON:Ljava/lang/String; = "reuse_no_fill"

.field private static final REUSE_RELOADED_INVALIDATION_REASON:Ljava/lang/String; = "reuse_reloaded"


# direct methods
.method public static final getInvalidationReason(Lcom/unity3d/ads/core/data/model/AdRefreshState;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object v0, Lcom/unity3d/ads/core/data/model/AdRefreshStateKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/unity3d/ads/core/data/model/AdRefreshState;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 17
    const-string p0, "reuse_during_reload"

    return-object p0

    .line 13
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 16
    :cond_1
    const-string p0, "reuse_error"

    return-object p0

    .line 15
    :cond_2
    const-string p0, "reuse_no_fill"

    return-object p0

    .line 14
    :cond_3
    const-string p0, "reuse_reloaded"

    return-object p0
.end method
