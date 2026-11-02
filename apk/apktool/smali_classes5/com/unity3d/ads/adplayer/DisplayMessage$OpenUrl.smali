.class public final Lcom/unity3d/ads/adplayer/DisplayMessage$OpenUrl;
.super Lcom/unity3d/ads/adplayer/DisplayMessage;
.source "DisplayMessage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/adplayer/DisplayMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpenUrl"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/unity3d/ads/adplayer/DisplayMessage$OpenUrl;",
        "Lcom/unity3d/ads/adplayer/DisplayMessage;",
        "opportunityId",
        "",
        "intent",
        "Landroid/content/Intent;",
        "useActivityForResult",
        "",
        "<init>",
        "(Ljava/lang/String;Landroid/content/Intent;Z)V",
        "getIntent",
        "()Landroid/content/Intent;",
        "getUseActivityForResult",
        "()Z",
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
.field private final intent:Landroid/content/Intent;

.field private final useActivityForResult:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;Z)V
    .locals 1

    const-string v0, "opportunityId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, p1, v0}, Lcom/unity3d/ads/adplayer/DisplayMessage;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/unity3d/ads/adplayer/DisplayMessage$OpenUrl;->intent:Landroid/content/Intent;

    iput-boolean p3, p0, Lcom/unity3d/ads/adplayer/DisplayMessage$OpenUrl;->useActivityForResult:Z

    return-void
.end method


# virtual methods
.method public final getIntent()Landroid/content/Intent;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/DisplayMessage$OpenUrl;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public final getUseActivityForResult()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/unity3d/ads/adplayer/DisplayMessage$OpenUrl;->useActivityForResult:Z

    return v0
.end method
