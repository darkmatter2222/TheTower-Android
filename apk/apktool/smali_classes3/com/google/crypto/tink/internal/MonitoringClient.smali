.class public interface abstract Lcom/google/crypto/tink/internal/MonitoringClient;
.super Ljava/lang/Object;
.source "MonitoringClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/internal/MonitoringClient$Logger;
    }
.end annotation


# virtual methods
.method public abstract createLogger(Lcom/google/crypto/tink/internal/KeysetHandleInterface;Lcom/google/crypto/tink/internal/MonitoringAnnotations;Ljava/lang/String;Ljava/lang/String;)Lcom/google/crypto/tink/internal/MonitoringClient$Logger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "keysetInfo",
            "annotations",
            "primitive",
            "api"
        }
    .end annotation
.end method
