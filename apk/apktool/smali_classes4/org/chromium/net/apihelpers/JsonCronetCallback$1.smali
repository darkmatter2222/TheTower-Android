.class Lorg/chromium/net/apihelpers/JsonCronetCallback$1;
.super Lorg/chromium/net/apihelpers/StringCronetCallback;
.source "JsonCronetCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/apihelpers/JsonCronetCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lorg/chromium/net/apihelpers/StringCronetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected shouldFollowRedirect(Lorg/chromium/net/UrlResponseInfo;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "info",
            "newLocationUrl"
        }
    .end annotation

    .line 22
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
