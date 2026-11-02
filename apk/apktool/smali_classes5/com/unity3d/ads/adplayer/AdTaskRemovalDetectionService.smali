.class public final Lcom/unity3d/ads/adplayer/AdTaskRemovalDetectionService;
.super Landroid/app/Service;
.source "AdTaskRemovalDetectionService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/adplayer/AdTaskRemovalDetectionService$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\"\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0005H\u0016J\u0012\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0007H\u0016J\u0014\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/unity3d/ads/adplayer/AdTaskRemovalDetectionService;",
        "Landroid/app/Service;",
        "<init>",
        "()V",
        "onStartCommand",
        "",
        "intent",
        "Landroid/content/Intent;",
        "flags",
        "startId",
        "onTaskRemoved",
        "",
        "rootIntent",
        "onBind",
        "Landroid/os/IBinder;",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/unity3d/ads/adplayer/AdTaskRemovalDetectionService$Companion;

.field private static final taskRemovedDuringShow:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/unity3d/ads/adplayer/AdTaskRemovalDetectionService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ads/adplayer/AdTaskRemovalDetectionService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/ads/adplayer/AdTaskRemovalDetectionService;->Companion:Lcom/unity3d/ads/adplayer/AdTaskRemovalDetectionService$Companion;

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/unity3d/ads/adplayer/AdTaskRemovalDetectionService;->taskRemovedDuringShow:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTaskRemovedDuringShow$cp()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 14
    sget-object v0, Lcom/unity3d/ads/adplayer/AdTaskRemovalDetectionService;->taskRemovedDuringShow:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 17
    sget-object p1, Lcom/unity3d/ads/adplayer/AdTaskRemovalDetectionService;->Companion:Lcom/unity3d/ads/adplayer/AdTaskRemovalDetectionService$Companion;

    invoke-virtual {p1}, Lcom/unity3d/ads/adplayer/AdTaskRemovalDetectionService$Companion;->arm()V

    const/4 p1, 0x2

    return p1
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 23
    sget-object p1, Lcom/unity3d/ads/adplayer/AdTaskRemovalDetectionService;->Companion:Lcom/unity3d/ads/adplayer/AdTaskRemovalDetectionService$Companion;

    invoke-virtual {p1}, Lcom/unity3d/ads/adplayer/AdTaskRemovalDetectionService$Companion;->markTaskRemoved()V

    .line 24
    invoke-virtual {p0}, Lcom/unity3d/ads/adplayer/AdTaskRemovalDetectionService;->stopSelf()V

    return-void
.end method
