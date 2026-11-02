.class Lcom/google/crypto/tink/signature/PublicKeySignWrapper$PublicKeySignWithId;
.super Ljava/lang/Object;
.source "PublicKeySignWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/signature/PublicKeySignWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PublicKeySignWithId"
.end annotation


# instance fields
.field public final id:I

.field public final publicKeySign:Lcom/google/crypto/tink/PublicKeySign;


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/PublicKeySign;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "publicKeySign",
            "id"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/crypto/tink/signature/PublicKeySignWrapper$PublicKeySignWithId;->publicKeySign:Lcom/google/crypto/tink/PublicKeySign;

    .line 51
    iput p2, p0, Lcom/google/crypto/tink/signature/PublicKeySignWrapper$PublicKeySignWithId;->id:I

    return-void
.end method
