.class Lcom/google/crypto/tink/jwt/JwtPublicKeyVerifyWrapper$WrappedJwtPublicKeyVerify;
.super Ljava/lang/Object;
.source "JwtPublicKeyVerifyWrapper.java"

# interfaces
.implements Lcom/google/crypto/tink/jwt/JwtPublicKeyVerify;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/jwt/JwtPublicKeyVerifyWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrappedJwtPublicKeyVerify"
.end annotation


# instance fields
.field private final allVerifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/jwt/JwtPublicKeyVerifyWrapper$JwtPublicKeyVerifyWithId;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/internal/MonitoringClient$Logger;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "logger",
            "allVerifiers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/internal/MonitoringClient$Logger;",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/jwt/JwtPublicKeyVerifyWrapper$JwtPublicKeyVerifyWithId;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtPublicKeyVerifyWrapper$WrappedJwtPublicKeyVerify;->logger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    .line 60
    iput-object p2, p0, Lcom/google/crypto/tink/jwt/JwtPublicKeyVerifyWrapper$WrappedJwtPublicKeyVerify;->allVerifiers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public verifyAndDecode(Ljava/lang/String;Lcom/google/crypto/tink/jwt/JwtValidator;)Lcom/google/crypto/tink/jwt/VerifiedJwt;
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

    .line 67
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtPublicKeyVerifyWrapper$WrappedJwtPublicKeyVerify;->allVerifiers:Ljava/util/List;

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

    check-cast v2, Lcom/google/crypto/tink/jwt/JwtPublicKeyVerifyWrapper$JwtPublicKeyVerifyWithId;

    .line 69
    :try_start_0
    iget-object v3, v2, Lcom/google/crypto/tink/jwt/JwtPublicKeyVerifyWrapper$JwtPublicKeyVerifyWithId;->verify:Lcom/google/crypto/tink/jwt/JwtPublicKeyVerify;

    invoke-interface {v3, p1, p2}, Lcom/google/crypto/tink/jwt/JwtPublicKeyVerify;->verifyAndDecode(Ljava/lang/String;Lcom/google/crypto/tink/jwt/JwtValidator;)Lcom/google/crypto/tink/jwt/VerifiedJwt;

    move-result-object v3

    .line 70
    iget-object v4, p0, Lcom/google/crypto/tink/jwt/JwtPublicKeyVerifyWrapper$WrappedJwtPublicKeyVerify;->logger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    iget v2, v2, Lcom/google/crypto/tink/jwt/JwtPublicKeyVerifyWrapper$JwtPublicKeyVerifyWithId;->id:I

    const-wide/16 v5, 0x1

    invoke-interface {v4, v2, v5, v6}, Lcom/google/crypto/tink/internal/MonitoringClient$Logger;->log(IJ)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v2

    .line 73
    instance-of v3, v2, Lcom/google/crypto/tink/jwt/JwtInvalidException;

    if-eqz v3, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 80
    :cond_1
    iget-object p1, p0, Lcom/google/crypto/tink/jwt/JwtPublicKeyVerifyWrapper$WrappedJwtPublicKeyVerify;->logger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    invoke-interface {p1}, Lcom/google/crypto/tink/internal/MonitoringClient$Logger;->logFailure()V

    if-eqz v1, :cond_2

    .line 82
    throw v1

    .line 84
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "invalid JWT"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
