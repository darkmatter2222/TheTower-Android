.class Lorg/chromium/net/impl/JavaCronetEngine$1;
.super Ljava/lang/Object;
.source "JavaCronetEngine.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/net/impl/JavaCronetEngine;-><init>(Lorg/chromium/net/impl/CronetEngineBuilderImpl;)V
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

    .line 77
    iput-object p1, p0, Lorg/chromium/net/impl/JavaCronetEngine$1;->this$0:Lorg/chromium/net/impl/JavaCronetEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "r"
        }
    .end annotation

    .line 80
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    new-instance v1, Lorg/chromium/net/impl/JavaCronetEngine$1$1;

    invoke-direct {v1, p0, p1}, Lorg/chromium/net/impl/JavaCronetEngine$1$1;-><init>(Lorg/chromium/net/impl/JavaCronetEngine$1;Ljava/lang/Runnable;)V

    .line 81
    invoke-interface {v0, v1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method
