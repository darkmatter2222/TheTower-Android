.class public final Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;
.super Lcom/google/android/libraries/ads/mobile/sdk/common/BaseError;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError$ErrorCode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/ads/mobile/sdk/common/BaseError<",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError$ErrorCode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\t\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0010B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0007\u001a\u00020\u00028\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u001a\u0010\r\u001a\u00020\u00088\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/BaseError;",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError$ErrorCode;",
        "a",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError$ErrorCode;",
        "getCode",
        "()Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError$ErrorCode;",
        "code",
        "",
        "b",
        "Ljava/lang/String;",
        "getMessage",
        "()Ljava/lang/String;",
        "message",
        "<init>",
        "(Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError$ErrorCode;Ljava/lang/String;)V",
        "ErrorCode",
        "ads-mobile-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError$ErrorCode;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError$ErrorCode;Ljava/lang/String;)V
    .locals 1

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseError;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError$ErrorCode;

    iput-object p2, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError$ErrorCode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError$ErrorCode;

    return-object v0
.end method

.method public final bridge synthetic getCode()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;->getCode()Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError$ErrorCode;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;->b:Ljava/lang/String;

    return-object v0
.end method
