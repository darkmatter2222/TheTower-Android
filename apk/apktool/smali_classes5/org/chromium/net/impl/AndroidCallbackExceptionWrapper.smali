.class Lorg/chromium/net/impl/AndroidCallbackExceptionWrapper;
.super Lorg/chromium/net/CallbackException;
.source "AndroidCallbackExceptionWrapper.java"


# direct methods
.method protected constructor <init>(Landroid/net/http/CallbackException;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 17
    invoke-virtual {p1}, Landroid/net/http/CallbackException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/http/CallbackException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/chromium/net/CallbackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
