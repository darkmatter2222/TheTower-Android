.class Lcom/google/crypto/tink/aead/AeadWrapper$AeadWithId;
.super Ljava/lang/Object;
.source "AeadWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/aead/AeadWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AeadWithId"
.end annotation


# instance fields
.field public final aead:Lcom/google/crypto/tink/Aead;

.field public final id:I


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/Aead;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "aead",
            "id"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/crypto/tink/aead/AeadWrapper$AeadWithId;->aead:Lcom/google/crypto/tink/Aead;

    .line 49
    iput p2, p0, Lcom/google/crypto/tink/aead/AeadWrapper$AeadWithId;->id:I

    return-void
.end method
