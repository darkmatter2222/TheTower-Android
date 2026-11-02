.class Lcom/google/crypto/tink/jwt/JwtMacWrapper$WrappedJwtMac;
.super Ljava/lang/Object;
.source "JwtMacWrapper.java"

# interfaces
.implements Lcom/google/crypto/tink/jwt/JwtMac;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/jwt/JwtMacWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrappedJwtMac"
.end annotation


# instance fields
.field private final allMacs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/jwt/JwtMacWrapper$JwtMacWithId;",
            ">;"
        }
    .end annotation
.end field

.field private final computeLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

.field private final primary:Lcom/google/crypto/tink/jwt/JwtMacWrapper$JwtMacWithId;

.field private final verifyLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/jwt/JwtMacWrapper$JwtMacWithId;Ljava/util/List;Lcom/google/crypto/tink/internal/MonitoringClient$Logger;Lcom/google/crypto/tink/internal/MonitoringClient$Logger;)V
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
            "Lcom/google/crypto/tink/jwt/JwtMacWrapper$JwtMacWithId;",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/jwt/JwtMacWrapper$JwtMacWithId;",
            ">;",
            "Lcom/google/crypto/tink/internal/MonitoringClient$Logger;",
            "Lcom/google/crypto/tink/internal/MonitoringClient$Logger;",
            ")V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtMacWrapper$WrappedJwtMac;->primary:Lcom/google/crypto/tink/jwt/JwtMacWrapper$JwtMacWithId;

    .line 74
    iput-object p2, p0, Lcom/google/crypto/tink/jwt/JwtMacWrapper$WrappedJwtMac;->allMacs:Ljava/util/List;

    .line 75
    iput-object p3, p0, Lcom/google/crypto/tink/jwt/JwtMacWrapper$WrappedJwtMac;->computeLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    .line 76
    iput-object p4, p0, Lcom/google/crypto/tink/jwt/JwtMacWrapper$WrappedJwtMac;->verifyLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/jwt/JwtMacWrapper$JwtMacWithId;Ljava/util/List;Lcom/google/crypto/tink/internal/MonitoringClient$Logger;Lcom/google/crypto/tink/internal/MonitoringClient$Logger;Lcom/google/crypto/tink/jwt/JwtMacWrapper$1;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/crypto/tink/jwt/JwtMacWrapper$WrappedJwtMac;-><init>(Lcom/google/crypto/tink/jwt/JwtMacWrapper$JwtMacWithId;Ljava/util/List;Lcom/google/crypto/tink/internal/MonitoringClient$Logger;Lcom/google/crypto/tink/internal/MonitoringClient$Logger;)V

    return-void
.end method


# virtual methods
.method public computeMacAndEncode(Lcom/google/crypto/tink/jwt/RawJwt;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtMacWrapper$WrappedJwtMac;->primary:Lcom/google/crypto/tink/jwt/JwtMacWrapper$JwtMacWithId;

    iget-object v0, v0, Lcom/google/crypto/tink/jwt/JwtMacWrapper$JwtMacWithId;->jwtMac:Lcom/google/crypto/tink/jwt/JwtMac;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/jwt/JwtMac;->computeMacAndEncode(Lcom/google/crypto/tink/jwt/RawJwt;)Ljava/lang/String;

    move-result-object p1

    .line 83
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtMacWrapper$WrappedJwtMac;->computeLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    iget-object v1, p0, Lcom/google/crypto/tink/jwt/JwtMacWrapper$WrappedJwtMac;->primary:Lcom/google/crypto/tink/jwt/JwtMacWrapper$JwtMacWithId;

    iget v1, v1, Lcom/google/crypto/tink/jwt/JwtMacWrapper$JwtMacWithId;->id:I

    const-wide/16 v2, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/google/crypto/tink/internal/MonitoringClient$Logger;->log(IJ)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 86
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtMacWrapper$WrappedJwtMac;->computeLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    invoke-interface {v0}, Lcom/google/crypto/tink/internal/MonitoringClient$Logger;->logFailure()V

    .line 87
    throw p1
.end method

.method public verifyMacAndDecode(Ljava/lang/String;Lcom/google/crypto/tink/jwt/JwtValidator;)Lcom/google/crypto/tink/jwt/VerifiedJwt;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "compact",
            "validator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtMacWrapper$WrappedJwtMac;->allMacs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/jwt/JwtMacWrapper$JwtMacWithId;

    .line 97
    :try_start_0
    iget-object v3, v2, Lcom/google/crypto/tink/jwt/JwtMacWrapper$JwtMacWithId;->jwtMac:Lcom/google/crypto/tink/jwt/JwtMac;

    invoke-interface {v3, p1, p2}, Lcom/google/crypto/tink/jwt/JwtMac;->verifyMacAndDecode(Ljava/lang/String;Lcom/google/crypto/tink/jwt/JwtValidator;)Lcom/google/crypto/tink/jwt/VerifiedJwt;

    move-result-object v3

    .line 98
    iget-object v4, p0, Lcom/google/crypto/tink/jwt/JwtMacWrapper$WrappedJwtMac;->verifyLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    iget v2, v2, Lcom/google/crypto/tink/jwt/JwtMacWrapper$JwtMacWithId;->id:I

    const-wide/16 v5, 0x1

    invoke-interface {v4, v2, v5, v6}, Lcom/google/crypto/tink/internal/MonitoringClient$Logger;->log(IJ)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v2

    .line 101
    instance-of v3, v2, Lcom/google/crypto/tink/jwt/JwtInvalidException;

    if-eqz v3, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 108
    :cond_1
    iget-object p1, p0, Lcom/google/crypto/tink/jwt/JwtMacWrapper$WrappedJwtMac;->verifyLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    invoke-interface {p1}, Lcom/google/crypto/tink/internal/MonitoringClient$Logger;->logFailure()V

    if-eqz v1, :cond_2

    .line 110
    throw v1

    .line 112
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "invalid MAC"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
