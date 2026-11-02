.class public final Lcom/unity3d/ads/core/domain/WebViewScreenCaptureKt;
.super Ljava/lang/Object;
.source "WebViewScreenCapture.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0008\n\u0000\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "countBlackPixelRatio",
        "",
        "pixels",
        "",
        "threshold",
        "",
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
.method public static final countBlackPixelRatio([II)D
    .locals 6

    const-string v0, "pixels"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    array-length v0, p0

    if-nez v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 158
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    aget v3, p0, v1

    shr-int/lit8 v4, v3, 0x10

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 v3, v3, 0xff

    if-ge v4, p1, :cond_1

    if-ge v5, p1, :cond_1

    if-ge v3, p1, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    int-to-double v0, v2

    .line 164
    array-length p0, p0

    int-to-double p0, p0

    div-double/2addr v0, p0

    return-wide v0
.end method
