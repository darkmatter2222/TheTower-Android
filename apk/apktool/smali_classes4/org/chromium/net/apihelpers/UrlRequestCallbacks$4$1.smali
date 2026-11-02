.class Lorg/chromium/net/apihelpers/UrlRequestCallbacks$4$1;
.super Lorg/chromium/net/CronetException;
.source "UrlRequestCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/net/apihelpers/UrlRequestCallbacks$4;->onCanceled(Lorg/chromium/net/UrlResponseInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/net/apihelpers/UrlRequestCallbacks$4;


# direct methods
.method constructor <init>(Lorg/chromium/net/apihelpers/UrlRequestCallbacks$4;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "message",
            "cause"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lorg/chromium/net/apihelpers/UrlRequestCallbacks$4$1;->this$0:Lorg/chromium/net/apihelpers/UrlRequestCallbacks$4;

    invoke-direct {p0, p2, p3}, Lorg/chromium/net/CronetException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
