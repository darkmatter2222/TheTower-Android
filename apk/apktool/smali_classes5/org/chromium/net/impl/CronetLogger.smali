.class public abstract Lorg/chromium/net/impl/CronetLogger;
.super Ljava/lang/Object;
.source "CronetLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/impl/CronetLogger$CronetVersion;,
        Lorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;,
        Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;,
        Lorg/chromium/net/impl/CronetLogger$CronetInitializedInfo;,
        Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;,
        Lorg/chromium/net/impl/CronetLogger$CronetSource;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract generateId()J
.end method

.method public abstract logCronetEngineBuilderInitializedInfo(Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation
.end method

.method public abstract logCronetEngineCreation(JLorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;Lorg/chromium/net/impl/CronetLogger$CronetVersion;Lorg/chromium/net/impl/CronetLogger$CronetSource;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cronetEngineId",
            "engineBuilderInfo",
            "version",
            "source"
        }
    .end annotation
.end method

.method public abstract logCronetInitializedInfo(Lorg/chromium/net/impl/CronetLogger$CronetInitializedInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation
.end method

.method public abstract logCronetTrafficInfo(JLorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cronetEngineId",
            "trafficInfo"
        }
    .end annotation
.end method
