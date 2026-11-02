.class public final Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000f\u0018\u0000 \u00112\u00020\u0001:\u0002\u0012\u0013J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004R\u0017\u0010\n\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\tR\u0017\u0010\r\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0007\u001a\u0004\u0008\u000c\u0010\tR\u0017\u0010\u0010\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u0007\u001a\u0004\u0008\u000f\u0010\t\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;",
        "",
        "",
        "hashCode",
        "()I",
        "",
        "a",
        "Z",
        "getStartMuted",
        "()Z",
        "startMuted",
        "b",
        "getCustomControlsRequested",
        "customControlsRequested",
        "c",
        "getClickToExpandRequested",
        "clickToExpandRequested",
        "Companion",
        "Builder",
        "ads_mobile_sdk/xx3",
        "ads-mobile-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lads_mobile_sdk/xx3;

.field public static final DEFAULT_START_MUTED:Z = true


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lads_mobile_sdk/xx3;

    .line 1
    invoke-direct {v0}, Lads_mobile_sdk/xx3;-><init>()V

    .line 2
    sput-object v0, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;->Companion:Lads_mobile_sdk/xx3;

    return-void
.end method

.method private constructor <init>(ZZZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;->a:Z

    .line 5
    iput-boolean p2, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;->b:Z

    .line 6
    iput-boolean p3, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZZI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;-><init>(ZZZ)V

    return-void
.end method


# virtual methods
.method public final getClickToExpandRequested()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;->c:Z

    return v0
.end method

.method public final getCustomControlsRequested()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;->b:Z

    return v0
.end method

.method public final getStartMuted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;->a:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;->c:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
