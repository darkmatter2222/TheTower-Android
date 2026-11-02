.class public final synthetic Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final constructPrimitive(Lcom/google/crypto/tink/Key;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;

    invoke-static {p1}, Lcom/google/crypto/tink/jwt/JwtSignatureConfigurationV0;->$r8$lambda$iHivKfsYnxxj6n1DyL8LAzlrHJE(Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;)Lcom/google/crypto/tink/jwt/JwtPublicKeyVerify;

    move-result-object p1

    return-object p1
.end method
