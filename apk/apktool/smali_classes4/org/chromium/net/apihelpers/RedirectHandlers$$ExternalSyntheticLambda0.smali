.class public final synthetic Lorg/chromium/net/apihelpers/RedirectHandlers$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/chromium/net/apihelpers/RedirectHandler;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final shouldFollowRedirect(Lorg/chromium/net/UrlResponseInfo;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-static {p1, p2}, Lorg/chromium/net/apihelpers/RedirectHandlers;->lambda$neverFollow$0(Lorg/chromium/net/UrlResponseInfo;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
