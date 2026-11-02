.class public interface abstract Lorg/chromium/net/apihelpers/RedirectHandler;
.super Ljava/lang/Object;
.source "RedirectHandler.java"


# virtual methods
.method public abstract shouldFollowRedirect(Lorg/chromium/net/UrlResponseInfo;Ljava/lang/String;)Z
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
.end method
