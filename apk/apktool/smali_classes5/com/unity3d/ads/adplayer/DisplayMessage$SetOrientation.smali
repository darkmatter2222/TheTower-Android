.class public final Lcom/unity3d/ads/adplayer/DisplayMessage$SetOrientation;
.super Lcom/unity3d/ads/adplayer/DisplayMessage;
.source "DisplayMessage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/adplayer/DisplayMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetOrientation"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/unity3d/ads/adplayer/DisplayMessage$SetOrientation;",
        "Lcom/unity3d/ads/adplayer/DisplayMessage;",
        "opportunityId",
        "",
        "orientation",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "getOrientation",
        "()I",
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
.field private final orientation:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "opportunityId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, p1, v0}, Lcom/unity3d/ads/adplayer/DisplayMessage;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p2, p0, Lcom/unity3d/ads/adplayer/DisplayMessage$SetOrientation;->orientation:I

    return-void
.end method


# virtual methods
.method public final getOrientation()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/unity3d/ads/adplayer/DisplayMessage$SetOrientation;->orientation:I

    return v0
.end method
