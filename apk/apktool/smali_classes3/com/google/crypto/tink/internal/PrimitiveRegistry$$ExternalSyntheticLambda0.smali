.class public final synthetic Lcom/google/crypto/tink/internal/PrimitiveRegistry$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/crypto/tink/internal/PrimitiveWrapper$PrimitiveFactory;


# instance fields
.field public final synthetic f$0:Lcom/google/crypto/tink/internal/PrimitiveRegistry;

.field public final synthetic f$1:Lcom/google/crypto/tink/internal/PrimitiveWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/google/crypto/tink/internal/PrimitiveRegistry;Lcom/google/crypto/tink/internal/PrimitiveWrapper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/internal/PrimitiveRegistry$$ExternalSyntheticLambda0;->f$0:Lcom/google/crypto/tink/internal/PrimitiveRegistry;

    iput-object p2, p0, Lcom/google/crypto/tink/internal/PrimitiveRegistry$$ExternalSyntheticLambda0;->f$1:Lcom/google/crypto/tink/internal/PrimitiveWrapper;

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/crypto/tink/internal/KeysetHandleInterface$Entry;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/crypto/tink/internal/PrimitiveRegistry$$ExternalSyntheticLambda0;->f$0:Lcom/google/crypto/tink/internal/PrimitiveRegistry;

    iget-object v1, p0, Lcom/google/crypto/tink/internal/PrimitiveRegistry$$ExternalSyntheticLambda0;->f$1:Lcom/google/crypto/tink/internal/PrimitiveWrapper;

    invoke-virtual {v0, v1, p1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry;->lambda$wrapWithPrimitiveWrapper$0$com-google-crypto-tink-internal-PrimitiveRegistry(Lcom/google/crypto/tink/internal/PrimitiveWrapper;Lcom/google/crypto/tink/internal/KeysetHandleInterface$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
