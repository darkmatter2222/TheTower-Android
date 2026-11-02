.class public final synthetic Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/crypto/tink/jwt/JwtPublicKeySign;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;

.field public final synthetic f$2:Lcom/google/crypto/tink/PublicKeySign;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;Lcom/google/crypto/tink/PublicKeySign;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0$$ExternalSyntheticLambda11;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0$$ExternalSyntheticLambda11;->f$1:Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;

    iput-object p3, p0, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0$$ExternalSyntheticLambda11;->f$2:Lcom/google/crypto/tink/PublicKeySign;

    return-void
.end method


# virtual methods
.method public final signAndEncode(Lcom/google/crypto/tink/jwt/RawJwt;)Ljava/lang/String;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0$$ExternalSyntheticLambda11;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0$$ExternalSyntheticLambda11;->f$1:Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;

    iget-object v2, p0, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0$$ExternalSyntheticLambda11;->f$2:Lcom/google/crypto/tink/PublicKeySign;

    invoke-static {v0, v1, v2, p1}, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0;->lambda$createJwtEcdsaSign$0(Ljava/lang/String;Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;Lcom/google/crypto/tink/PublicKeySign;Lcom/google/crypto/tink/jwt/RawJwt;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
