.class Lcom/google/crypto/tink/signature/PublicKeyVerifyWrapper$PublicKeyVerifyWithId;
.super Ljava/lang/Object;
.source "PublicKeyVerifyWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/signature/PublicKeyVerifyWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PublicKeyVerifyWithId"
.end annotation


# instance fields
.field public final id:I

.field public final publicKeyVerify:Lcom/google/crypto/tink/PublicKeyVerify;


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/PublicKeyVerify;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "publicKeyVerify",
            "id"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/crypto/tink/signature/PublicKeyVerifyWrapper$PublicKeyVerifyWithId;->publicKeyVerify:Lcom/google/crypto/tink/PublicKeyVerify;

    .line 51
    iput p2, p0, Lcom/google/crypto/tink/signature/PublicKeyVerifyWrapper$PublicKeyVerifyWithId;->id:I

    return-void
.end method
