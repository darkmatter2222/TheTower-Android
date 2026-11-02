.class Lorg/chromium/net/impl/JavaCronetEngine$2;
.super Ljava/lang/Object;
.source "JavaCronetEngine.java"

# interfaces
.implements Ljava/net/URLStreamHandlerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/net/impl/JavaCronetEngine;->createURLStreamHandlerFactory()Ljava/net/URLStreamHandlerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/net/impl/JavaCronetEngine;


# direct methods
.method constructor <init>(Lorg/chromium/net/impl/JavaCronetEngine;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 310
    iput-object p1, p0, Lorg/chromium/net/impl/JavaCronetEngine$2;->this$0:Lorg/chromium/net/impl/JavaCronetEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "protocol"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
