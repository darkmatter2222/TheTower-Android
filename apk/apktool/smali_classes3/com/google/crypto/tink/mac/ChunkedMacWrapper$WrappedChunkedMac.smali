.class Lcom/google/crypto/tink/mac/ChunkedMacWrapper$WrappedChunkedMac;
.super Ljava/lang/Object;
.source "ChunkedMacWrapper.java"

# interfaces
.implements Lcom/google/crypto/tink/mac/ChunkedMac;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/mac/ChunkedMacWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrappedChunkedMac"
.end annotation


# instance fields
.field private final allChunkedMacs:Lcom/google/crypto/tink/internal/PrefixMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/PrefixMap<",
            "Lcom/google/crypto/tink/mac/ChunkedMac;",
            ">;"
        }
    .end annotation
.end field

.field private final primaryChunkedMac:Lcom/google/crypto/tink/mac/ChunkedMac;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/internal/PrefixMap;Lcom/google/crypto/tink/mac/ChunkedMac;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "allChunkedMacs",
            "primaryChunkedMac"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/internal/PrefixMap<",
            "Lcom/google/crypto/tink/mac/ChunkedMac;",
            ">;",
            "Lcom/google/crypto/tink/mac/ChunkedMac;",
            ")V"
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/google/crypto/tink/mac/ChunkedMacWrapper$WrappedChunkedMac;->allChunkedMacs:Lcom/google/crypto/tink/internal/PrefixMap;

    .line 113
    iput-object p2, p0, Lcom/google/crypto/tink/mac/ChunkedMacWrapper$WrappedChunkedMac;->primaryChunkedMac:Lcom/google/crypto/tink/mac/ChunkedMac;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/internal/PrefixMap;Lcom/google/crypto/tink/mac/ChunkedMac;Lcom/google/crypto/tink/mac/ChunkedMacWrapper$1;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/mac/ChunkedMacWrapper$WrappedChunkedMac;-><init>(Lcom/google/crypto/tink/internal/PrefixMap;Lcom/google/crypto/tink/mac/ChunkedMac;)V

    return-void
.end method


# virtual methods
.method public createComputation()Lcom/google/crypto/tink/mac/ChunkedMacComputation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/google/crypto/tink/mac/ChunkedMacWrapper$WrappedChunkedMac;->primaryChunkedMac:Lcom/google/crypto/tink/mac/ChunkedMac;

    invoke-interface {v0}, Lcom/google/crypto/tink/mac/ChunkedMac;->createComputation()Lcom/google/crypto/tink/mac/ChunkedMacComputation;

    move-result-object v0

    return-object v0
.end method

.method public createVerification([B)Lcom/google/crypto/tink/mac/ChunkedMacVerification;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    iget-object v1, p0, Lcom/google/crypto/tink/mac/ChunkedMacWrapper$WrappedChunkedMac;->allChunkedMacs:Lcom/google/crypto/tink/internal/PrefixMap;

    invoke-virtual {v1, p1}, Lcom/google/crypto/tink/internal/PrefixMap;->getAllWithMatchingPrefix([B)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/mac/ChunkedMac;

    .line 126
    invoke-interface {v2, p1}, Lcom/google/crypto/tink/mac/ChunkedMac;->createVerification([B)Lcom/google/crypto/tink/mac/ChunkedMacVerification;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    :cond_0
    new-instance p1, Lcom/google/crypto/tink/mac/ChunkedMacWrapper$WrappedChunkedMacVerification;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/crypto/tink/mac/ChunkedMacWrapper$WrappedChunkedMacVerification;-><init>(Ljava/util/List;Lcom/google/crypto/tink/mac/ChunkedMacWrapper$1;)V

    return-object p1
.end method
