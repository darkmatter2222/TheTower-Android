.class Lcom/google/crypto/tink/mac/MacWrapper$MacWithId;
.super Ljava/lang/Object;
.source "MacWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/mac/MacWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MacWithId"
.end annotation


# instance fields
.field public final id:I

.field public final mac:Lcom/google/crypto/tink/Mac;


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/Mac;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mac",
            "id"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/crypto/tink/mac/MacWrapper$MacWithId;->mac:Lcom/google/crypto/tink/Mac;

    .line 50
    iput p2, p0, Lcom/google/crypto/tink/mac/MacWrapper$MacWithId;->id:I

    return-void
.end method
