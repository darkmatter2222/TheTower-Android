.class public final Lorg/chromium/net/impl/CronetLoggerFactory$SwapLoggerForTesting;
.super Ljava/lang/Object;
.source "CronetLoggerFactory.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/CronetLoggerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SwapLoggerForTesting"
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/net/impl/CronetLogger;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "testLogger"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {p1}, Lorg/chromium/net/impl/CronetLoggerFactory;->-$$Nest$smsetLoggerForTesting(Lorg/chromium/net/impl/CronetLogger;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-static {v0}, Lorg/chromium/net/impl/CronetLoggerFactory;->-$$Nest$smsetLoggerForTesting(Lorg/chromium/net/impl/CronetLogger;)V

    return-void
.end method
