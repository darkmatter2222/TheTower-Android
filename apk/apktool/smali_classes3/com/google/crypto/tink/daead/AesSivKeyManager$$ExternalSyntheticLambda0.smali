.class public final synthetic Lcom/google/crypto/tink/daead/AesSivKeyManager$$ExternalSyntheticLambda0;
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
    check-cast p1, Lcom/google/crypto/tink/daead/AesSivKey;

    invoke-static {p1}, Lcom/google/crypto/tink/daead/AesSivKeyManager;->$r8$lambda$PP3V1bJJX1HlfqQJsmxJZGOvo5M(Lcom/google/crypto/tink/daead/AesSivKey;)Lcom/google/crypto/tink/DeterministicAead;

    move-result-object p1

    return-object p1
.end method
