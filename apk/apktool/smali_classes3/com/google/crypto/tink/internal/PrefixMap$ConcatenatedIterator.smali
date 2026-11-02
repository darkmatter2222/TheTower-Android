.class Lcom/google/crypto/tink/internal/PrefixMap$ConcatenatedIterator;
.super Ljava/lang/Object;
.source "PrefixMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/internal/PrefixMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConcatenatedIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TP;>;"
    }
.end annotation


# instance fields
.field private final it0:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TP;>;"
        }
    .end annotation
.end field

.field private final it1:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TP;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Iterator;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "it0",
            "it1"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TP;>;",
            "Ljava/util/Iterator<",
            "TP;>;)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/google/crypto/tink/internal/PrefixMap$ConcatenatedIterator;->it0:Ljava/util/Iterator;

    .line 77
    iput-object p2, p0, Lcom/google/crypto/tink/internal/PrefixMap$ConcatenatedIterator;->it1:Ljava/util/Iterator;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Iterator;Ljava/util/Iterator;Lcom/google/crypto/tink/internal/PrefixMap$1;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/internal/PrefixMap$ConcatenatedIterator;-><init>(Ljava/util/Iterator;Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/google/crypto/tink/internal/PrefixMap$ConcatenatedIterator;->it0:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/internal/PrefixMap$ConcatenatedIterator;->it1:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/google/crypto/tink/internal/PrefixMap$ConcatenatedIterator;->it0:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/google/crypto/tink/internal/PrefixMap$ConcatenatedIterator;->it0:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/internal/PrefixMap$ConcatenatedIterator;->it1:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
