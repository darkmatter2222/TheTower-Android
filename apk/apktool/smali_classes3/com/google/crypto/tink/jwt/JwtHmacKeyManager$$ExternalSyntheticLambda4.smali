.class public final synthetic Lcom/google/crypto/tink/jwt/JwtHmacKeyManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/crypto/tink/internal/KeyCreator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createKey(Lcom/google/crypto/tink/Parameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/Key;
    .locals 0

    .line 0
    check-cast p1, Lcom/google/crypto/tink/jwt/JwtHmacParameters;

    invoke-static {p1, p2}, Lcom/google/crypto/tink/jwt/JwtHmacKeyManager;->$r8$lambda$xxzwKsECdWBZSo6KCCCSTJ_81_o(Lcom/google/crypto/tink/jwt/JwtHmacParameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/jwt/JwtHmacKey;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/Key;

    return-object p1
.end method
