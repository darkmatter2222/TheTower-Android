.class public final synthetic Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/crypto/tink/jwt/JwtPublicKeyVerify;


# instance fields
.field public final synthetic f$0:Lcom/google/crypto/tink/PublicKeyVerify;

.field public final synthetic f$1:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;


# direct methods
.method public synthetic constructor <init>(Lcom/google/crypto/tink/PublicKeyVerify;Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0$$ExternalSyntheticLambda3;->f$0:Lcom/google/crypto/tink/PublicKeyVerify;

    iput-object p2, p0, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0$$ExternalSyntheticLambda3;->f$1:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;

    return-void
.end method


# virtual methods
.method public final verifyAndDecode(Ljava/lang/String;Lcom/google/crypto/tink/jwt/JwtValidator;)Lcom/google/crypto/tink/jwt/VerifiedJwt;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0$$ExternalSyntheticLambda3;->f$0:Lcom/google/crypto/tink/PublicKeyVerify;

    iget-object v1, p0, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0$$ExternalSyntheticLambda3;->f$1:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;

    invoke-static {v0, v1, p1, p2}, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0;->lambda$createJwtRsaSsaPssVerify$5(Lcom/google/crypto/tink/PublicKeyVerify;Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;Ljava/lang/String;Lcom/google/crypto/tink/jwt/JwtValidator;)Lcom/google/crypto/tink/jwt/VerifiedJwt;

    move-result-object p1

    return-object p1
.end method
