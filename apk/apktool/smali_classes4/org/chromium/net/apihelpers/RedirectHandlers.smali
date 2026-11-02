.class public Lorg/chromium/net/apihelpers/RedirectHandlers;
.super Ljava/lang/Object;
.source "RedirectHandlers.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alwaysFollow()Lorg/chromium/net/apihelpers/RedirectHandler;
    .locals 1

    .line 21
    new-instance v0, Lorg/chromium/net/apihelpers/RedirectHandlers$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/chromium/net/apihelpers/RedirectHandlers$$ExternalSyntheticLambda1;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$alwaysFollow$1(Lorg/chromium/net/UrlResponseInfo;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$neverFollow$0(Lorg/chromium/net/UrlResponseInfo;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public static neverFollow()Lorg/chromium/net/apihelpers/RedirectHandler;
    .locals 1

    .line 11
    new-instance v0, Lorg/chromium/net/apihelpers/RedirectHandlers$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/chromium/net/apihelpers/RedirectHandlers$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method
