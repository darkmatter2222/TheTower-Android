.class public interface abstract Lcom/google/crypto/tink/internal/MonitoringClient$Logger;
.super Ljava/lang/Object;
.source "MonitoringClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/internal/MonitoringClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Logger"
.end annotation


# virtual methods
.method public log(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyId",
            "numBytesAsInput"
        }
    .end annotation

    return-void
.end method

.method public logFailure()V
    .locals 0

    return-void
.end method

.method public logKeyExport(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyId"
        }
    .end annotation

    return-void
.end method
