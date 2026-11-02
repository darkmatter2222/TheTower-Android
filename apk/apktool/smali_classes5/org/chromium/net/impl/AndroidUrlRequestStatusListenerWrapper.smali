.class Lorg/chromium/net/impl/AndroidUrlRequestStatusListenerWrapper;
.super Ljava/lang/Object;
.source "AndroidUrlRequestStatusListenerWrapper.java"

# interfaces
.implements Landroid/net/http/UrlRequest$StatusListener;


# instance fields
.field private final mBackend:Lorg/chromium/net/UrlRequest$StatusListener;


# direct methods
.method public constructor <init>(Lorg/chromium/net/UrlRequest$StatusListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backend"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/chromium/net/impl/AndroidUrlRequestStatusListenerWrapper;->mBackend:Lorg/chromium/net/UrlRequest$StatusListener;

    return-void
.end method


# virtual methods
.method public onStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidUrlRequestStatusListenerWrapper;->mBackend:Lorg/chromium/net/UrlRequest$StatusListener;

    invoke-virtual {v0, p1}, Lorg/chromium/net/UrlRequest$StatusListener;->onStatus(I)V

    return-void
.end method
