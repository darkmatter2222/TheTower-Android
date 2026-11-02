.class public final Lcom/unity3d/ads/adplayer/model/OnDownloadProgressEvent;
.super Ljava/lang/Object;
.source "WebViewEvent.kt"

# interfaces
.implements Lcom/unity3d/ads/adplayer/model/WebViewEvent;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u000c\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u0003X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u0003X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0011R\u001e\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u0015X\u0096\u0004\u00a2\u0006\n\n\u0002\u0010\u0019\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/unity3d/ads/adplayer/model/OnDownloadProgressEvent;",
        "Lcom/unity3d/ads/adplayer/model/WebViewEvent;",
        "downloadId",
        "",
        "percent",
        "",
        "bytesDownloaded",
        "",
        "totalBytes",
        "completed",
        "",
        "error",
        "source",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/Integer;JLjava/lang/Long;ZLjava/lang/String;Ljava/lang/String;)V",
        "category",
        "getCategory",
        "()Ljava/lang/String;",
        "name",
        "getName",
        "parameters",
        "",
        "",
        "getParameters",
        "()[Ljava/lang/Object;",
        "[Ljava/lang/Object;",
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
.field private final category:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final parameters:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;JLjava/lang/Long;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "downloadId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const-string v0, "ADVIEWER"

    iput-object v0, p0, Lcom/unity3d/ads/adplayer/model/OnDownloadProgressEvent;->category:Ljava/lang/String;

    .line 121
    const-string v0, "ON_DOWNLOAD_PROGRESS"

    iput-object v0, p0, Lcom/unity3d/ads/adplayer/model/OnDownloadProgressEvent;->name:Ljava/lang/String;

    .line 122
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    move-object p6, p5

    move-object p5, p4

    move-object p4, p6

    move-object p6, p7

    move-object p7, p8

    filled-new-array/range {p1 .. p7}, [Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/ads/adplayer/model/OnDownloadProgressEvent;->parameters:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/model/OnDownloadProgressEvent;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/model/OnDownloadProgressEvent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()[Ljava/lang/Object;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/model/OnDownloadProgressEvent;->parameters:[Ljava/lang/Object;

    return-object v0
.end method
