.class Lcom/google/crypto/tink/hybrid/HybridEncryptWrapper$HybridEncryptWithId;
.super Ljava/lang/Object;
.source "HybridEncryptWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/hybrid/HybridEncryptWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HybridEncryptWithId"
.end annotation


# instance fields
.field public final hybridEncrypt:Lcom/google/crypto/tink/HybridEncrypt;

.field public final id:I


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/HybridEncrypt;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "hybridEncrypt",
            "id"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/HybridEncryptWrapper$HybridEncryptWithId;->hybridEncrypt:Lcom/google/crypto/tink/HybridEncrypt;

    .line 43
    iput p2, p0, Lcom/google/crypto/tink/hybrid/HybridEncryptWrapper$HybridEncryptWithId;->id:I

    return-void
.end method
