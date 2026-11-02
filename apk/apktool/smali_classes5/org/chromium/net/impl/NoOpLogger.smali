.class public final Lorg/chromium/net/impl/NoOpLogger;
.super Lorg/chromium/net/impl/CronetLogger;
.source "NoOpLogger.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetLogger;-><init>()V

    return-void
.end method


# virtual methods
.method public generateId()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public logCronetEngineBuilderInitializedInfo(Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    return-void
.end method

.method public logCronetEngineCreation(JLorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;Lorg/chromium/net/impl/CronetLogger$CronetVersion;Lorg/chromium/net/impl/CronetLogger$CronetSource;)V
    .locals 0
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

    return-void
.end method

.method public logCronetInitializedInfo(Lorg/chromium/net/impl/CronetLogger$CronetInitializedInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    return-void
.end method

.method public logCronetTrafficInfo(JLorg/chromium/net/impl/CronetLogger$CronetTrafficInfo;)V
    .locals 0
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

    return-void
.end method
