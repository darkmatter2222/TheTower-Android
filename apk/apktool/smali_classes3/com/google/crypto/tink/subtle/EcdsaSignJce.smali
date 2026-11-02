.class public final Lcom/google/crypto/tink/subtle/EcdsaSignJce;
.super Ljava/lang/Object;
.source "EcdsaSignJce.java"

# interfaces
.implements Lcom/google/crypto/tink/PublicKeySign;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# instance fields
.field private final signer:Lcom/google/crypto/tink/PublicKeySign;


# direct methods
.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;Lcom/google/crypto/tink/subtle/Enums$HashType;Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "privateKey",
            "hash",
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/google/crypto/tink/signature/internal/EcdsaSignJce;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/crypto/tink/signature/internal/EcdsaSignJce;-><init>(Ljava/security/interfaces/ECPrivateKey;Lcom/google/crypto/tink/subtle/Enums$HashType;Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;)V

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/EcdsaSignJce;->signer:Lcom/google/crypto/tink/PublicKeySign;

    return-void
.end method

.method public static create(Lcom/google/crypto/tink/signature/EcdsaPrivateKey;)Lcom/google/crypto/tink/PublicKeySign;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 39
    invoke-static {p0}, Lcom/google/crypto/tink/signature/internal/EcdsaSignJce;->create(Lcom/google/crypto/tink/signature/EcdsaPrivateKey;)Lcom/google/crypto/tink/PublicKeySign;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public sign([B)[B
    .locals 1
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

    .line 50
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/EcdsaSignJce;->signer:Lcom/google/crypto/tink/PublicKeySign;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/PublicKeySign;->sign([B)[B

    move-result-object p1

    return-object p1
.end method
