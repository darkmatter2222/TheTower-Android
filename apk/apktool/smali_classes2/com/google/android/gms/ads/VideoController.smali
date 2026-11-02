.class public final Lcom/google/android/gms/ads/VideoController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/VideoController$Companion;,
        Lcom/google/android/gms/ads/VideoController$PlaybackState;,
        Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0018\u0000 \u00102\u00020\u0001:\u0003\u0010\u0011\u0012B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0006\u001a\u00020\u0007J\u0006\u0010\u0008\u001a\u00020\u0007J\u0006\u0010\t\u001a\u00020\u0007J\u0006\u0010\n\u001a\u00020\u0007J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u0007J\u0006\u0010\r\u001a\u00020\u000cJ\u0006\u0010\u000e\u001a\u00020\u000cJ\u0006\u0010\u000f\u001a\u00020\u000c\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/google/android/gms/ads/VideoController;",
        "",
        "()V",
        "getVideoCurrentTime",
        "",
        "getVideoDuration",
        "hasVideoContent",
        "",
        "isClickToExpandEnabled",
        "isCustomControlsEnabled",
        "isMuted",
        "mute",
        "",
        "pause",
        "play",
        "stop",
        "Companion",
        "PlaybackState",
        "VideoLifecycleCallbacks",
        "ads-mobile-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/gms/ads/VideoController$Companion;

.field public static final PLAYBACK_STATE_ENDED:I = 0x3

.field public static final PLAYBACK_STATE_PAUSED:I = 0x2

.field public static final PLAYBACK_STATE_PLAYING:I = 0x1

.field public static final PLAYBACK_STATE_READY:I = 0x5

.field public static final PLAYBACK_STATE_UNKNOWN:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/ads/VideoController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/VideoController$Companion;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/ads/VideoController;->Companion:Lcom/google/android/gms/ads/VideoController$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getVideoCurrentTime()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getVideoDuration()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final hasVideoContent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isClickToExpandEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isCustomControlsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isMuted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final mute(Z)V
    .locals 0

    return-void
.end method

.method public final pause()V
    .locals 0

    return-void
.end method

.method public final play()V
    .locals 0

    return-void
.end method

.method public final stop()V
    .locals 0

    return-void
.end method
