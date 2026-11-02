.class Lcom/google/crypto/tink/mac/MacWrapper$WrappedMac;
.super Ljava/lang/Object;
.source "MacWrapper.java"

# interfaces
.implements Lcom/google/crypto/tink/Mac;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/mac/MacWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrappedMac"
.end annotation


# instance fields
.field private final allMacs:Lcom/google/crypto/tink/internal/PrefixMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/PrefixMap<",
            "Lcom/google/crypto/tink/mac/MacWrapper$MacWithId;",
            ">;"
        }
    .end annotation
.end field

.field private final computeLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

.field private final primary:Lcom/google/crypto/tink/mac/MacWrapper$MacWithId;

.field private final verifyLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/mac/MacWrapper$MacWithId;Lcom/google/crypto/tink/internal/PrefixMap;Lcom/google/crypto/tink/internal/MonitoringClient$Logger;Lcom/google/crypto/tink/internal/MonitoringClient$Logger;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "primary",
            "allMacs",
            "computeLogger",
            "verifyLogger"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/mac/MacWrapper$MacWithId;",
            "Lcom/google/crypto/tink/internal/PrefixMap<",
            "Lcom/google/crypto/tink/mac/MacWrapper$MacWithId;",
            ">;",
            "Lcom/google/crypto/tink/internal/MonitoringClient$Logger;",
            "Lcom/google/crypto/tink/internal/MonitoringClient$Logger;",
            ")V"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/google/crypto/tink/mac/MacWrapper$WrappedMac;->primary:Lcom/google/crypto/tink/mac/MacWrapper$MacWithId;

    .line 88
    iput-object p2, p0, Lcom/google/crypto/tink/mac/MacWrapper$WrappedMac;->allMacs:Lcom/google/crypto/tink/internal/PrefixMap;

    .line 89
    iput-object p3, p0, Lcom/google/crypto/tink/mac/MacWrapper$WrappedMac;->computeLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    .line 90
    iput-object p4, p0, Lcom/google/crypto/tink/mac/MacWrapper$WrappedMac;->verifyLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/mac/MacWrapper$MacWithId;Lcom/google/crypto/tink/internal/PrefixMap;Lcom/google/crypto/tink/internal/MonitoringClient$Logger;Lcom/google/crypto/tink/internal/MonitoringClient$Logger;Lcom/google/crypto/tink/mac/MacWrapper$1;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/crypto/tink/mac/MacWrapper$WrappedMac;-><init>(Lcom/google/crypto/tink/mac/MacWrapper$MacWithId;Lcom/google/crypto/tink/internal/PrefixMap;Lcom/google/crypto/tink/internal/MonitoringClient$Logger;Lcom/google/crypto/tink/internal/MonitoringClient$Logger;)V

    return-void
.end method


# virtual methods
.method public computeMac([B)[B
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/google/crypto/tink/mac/MacWrapper$WrappedMac;->primary:Lcom/google/crypto/tink/mac/MacWrapper$MacWithId;

    iget-object v0, v0, Lcom/google/crypto/tink/mac/MacWrapper$MacWithId;->mac:Lcom/google/crypto/tink/Mac;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/Mac;->computeMac([B)[B

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/google/crypto/tink/mac/MacWrapper$WrappedMac;->computeLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    iget-object v2, p0, Lcom/google/crypto/tink/mac/MacWrapper$WrappedMac;->primary:Lcom/google/crypto/tink/mac/MacWrapper$MacWithId;

    iget v2, v2, Lcom/google/crypto/tink/mac/MacWrapper$MacWithId;->id:I

    array-length p1, p1

    int-to-long v3, p1

    invoke-interface {v1, v2, v3, v4}, Lcom/google/crypto/tink/internal/MonitoringClient$Logger;->log(IJ)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 100
    iget-object v0, p0, Lcom/google/crypto/tink/mac/MacWrapper$WrappedMac;->computeLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    invoke-interface {v0}, Lcom/google/crypto/tink/internal/MonitoringClient$Logger;->logFailure()V

    .line 101
    throw p1
.end method

.method public verifyMac([B[B)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "mac",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/google/crypto/tink/mac/MacWrapper$WrappedMac;->allMacs:Lcom/google/crypto/tink/internal/PrefixMap;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/internal/PrefixMap;->getAllWithMatchingPrefix([B)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/mac/MacWrapper$MacWithId;

    .line 109
    :try_start_0
    iget-object v2, v1, Lcom/google/crypto/tink/mac/MacWrapper$MacWithId;->mac:Lcom/google/crypto/tink/Mac;

    invoke-interface {v2, p1, p2}, Lcom/google/crypto/tink/Mac;->verifyMac([B[B)V

    .line 110
    iget-object v2, p0, Lcom/google/crypto/tink/mac/MacWrapper$WrappedMac;->verifyLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    iget v1, v1, Lcom/google/crypto/tink/mac/MacWrapper$MacWithId;->id:I

    array-length v3, p2

    int-to-long v3, v3

    invoke-interface {v2, v1, v3, v4}, Lcom/google/crypto/tink/internal/MonitoringClient$Logger;->log(IJ)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 117
    :cond_0
    iget-object p1, p0, Lcom/google/crypto/tink/mac/MacWrapper$WrappedMac;->verifyLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    invoke-interface {p1}, Lcom/google/crypto/tink/internal/MonitoringClient$Logger;->logFailure()V

    .line 118
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "invalid MAC"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
