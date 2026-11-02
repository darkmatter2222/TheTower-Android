.class Lorg/chromium/net/apihelpers/UrlRequestCallbacks$3;
.super Lorg/chromium/net/apihelpers/JsonCronetCallback;
.source "UrlRequestCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/net/apihelpers/UrlRequestCallbacks;->newJsonCallback(Lorg/chromium/net/apihelpers/RedirectHandler;)Lorg/chromium/net/apihelpers/JsonCronetCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$redirectHandler:Lorg/chromium/net/apihelpers/RedirectHandler;


# direct methods
.method constructor <init>(Lorg/chromium/net/apihelpers/RedirectHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$redirectHandler"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lorg/chromium/net/apihelpers/UrlRequestCallbacks$3;->val$redirectHandler:Lorg/chromium/net/apihelpers/RedirectHandler;

    invoke-direct {p0}, Lorg/chromium/net/apihelpers/JsonCronetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected shouldFollowRedirect(Lorg/chromium/net/UrlResponseInfo;Ljava/lang/String;)Z
    .locals 1
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lorg/chromium/net/apihelpers/UrlRequestCallbacks$3;->val$redirectHandler:Lorg/chromium/net/apihelpers/RedirectHandler;

    invoke-interface {v0, p1, p2}, Lorg/chromium/net/apihelpers/RedirectHandler;->shouldFollowRedirect(Lorg/chromium/net/UrlResponseInfo;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
