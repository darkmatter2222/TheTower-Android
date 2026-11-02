.class Lcom/google/crypto/tink/subtle/PrfAesCmac$PrfImplementation;
.super Ljava/lang/Object;
.source "PrfAesCmac.java"

# interfaces
.implements Lcom/google/crypto/tink/prf/Prf;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/subtle/PrfAesCmac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrfImplementation"
.end annotation


# static fields
.field private static final SMALL_DATA_SIZE:I = 0x40


# instance fields
.field final large:Lcom/google/crypto/tink/prf/Prf;

.field final small:Lcom/google/crypto/tink/prf/Prf;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/prf/Prf;Lcom/google/crypto/tink/prf/Prf;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "small",
            "large"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/google/crypto/tink/subtle/PrfAesCmac$PrfImplementation;->small:Lcom/google/crypto/tink/prf/Prf;

    .line 74
    iput-object p2, p0, Lcom/google/crypto/tink/subtle/PrfAesCmac$PrfImplementation;->large:Lcom/google/crypto/tink/prf/Prf;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/prf/Prf;Lcom/google/crypto/tink/prf/Prf;Lcom/google/crypto/tink/subtle/PrfAesCmac$1;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/subtle/PrfAesCmac$PrfImplementation;-><init>(Lcom/google/crypto/tink/prf/Prf;Lcom/google/crypto/tink/prf/Prf;)V

    return-void
.end method


# virtual methods
.method public compute([BI)[B
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "data",
            "outputLength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 66
    array-length v0, p1

    const/16 v1, 0x40

    if-gt v0, v1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/PrfAesCmac$PrfImplementation;->small:Lcom/google/crypto/tink/prf/Prf;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/prf/Prf;->compute([BI)[B

    move-result-object p1

    return-object p1

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/PrfAesCmac$PrfImplementation;->large:Lcom/google/crypto/tink/prf/Prf;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/prf/Prf;->compute([BI)[B

    move-result-object p1

    return-object p1
.end method
