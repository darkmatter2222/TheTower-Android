.class Lcom/google/crypto/tink/daead/DeterministicAeadWrapper$DeterministicAeadWithId;
.super Ljava/lang/Object;
.source "DeterministicAeadWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/daead/DeterministicAeadWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeterministicAeadWithId"
.end annotation


# instance fields
.field public final daead:Lcom/google/crypto/tink/DeterministicAead;

.field public final id:I


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/DeterministicAead;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "daead",
            "id"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/crypto/tink/daead/DeterministicAeadWrapper$DeterministicAeadWithId;->daead:Lcom/google/crypto/tink/DeterministicAead;

    .line 51
    iput p2, p0, Lcom/google/crypto/tink/daead/DeterministicAeadWrapper$DeterministicAeadWithId;->id:I

    return-void
.end method
