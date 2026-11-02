.class public final Lcom/google/crypto/tink/internal/PrefixMap;
.super Ljava/lang/Object;
.source "PrefixMap.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/internal/PrefixMap$ConcatenatedIterator;,
        Lcom/google/crypto/tink/internal/PrefixMap$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final EMPTY_BYTES:Lcom/google/crypto/tink/util/Bytes;


# instance fields
.field private final entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/crypto/tink/util/Bytes;",
            "Ljava/util/List<",
            "TP;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 41
    new-array v0, v0, [B

    invoke-static {v0}, Lcom/google/crypto/tink/util/Bytes;->copyFrom([B)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/internal/PrefixMap;->EMPTY_BYTES:Lcom/google/crypto/tink/util/Bytes;

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/crypto/tink/util/Bytes;",
            "Ljava/util/List<",
            "TP;>;>;)V"
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/google/crypto/tink/internal/PrefixMap;->entries:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lcom/google/crypto/tink/internal/PrefixMap$1;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/internal/PrefixMap;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public getAllWithMatchingPrefix([B)Ljava/lang/Iterable;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/lang/Iterable<",
            "TP;>;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/google/crypto/tink/internal/PrefixMap;->entries:Ljava/util/Map;

    sget-object v1, Lcom/google/crypto/tink/internal/PrefixMap;->EMPTY_BYTES:Lcom/google/crypto/tink/util/Bytes;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 107
    array-length v1, p1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/crypto/tink/internal/PrefixMap;->entries:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-static {p1, v3, v2}, Lcom/google/crypto/tink/util/Bytes;->copyFrom([BII)Lcom/google/crypto/tink/util/Bytes;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 109
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_1
    if-nez v0, :cond_2

    return-object p1

    :cond_2
    if-nez p1, :cond_3

    return-object v0

    .line 117
    :cond_3
    new-instance v1, Lcom/google/crypto/tink/internal/PrefixMap$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/crypto/tink/internal/PrefixMap$1;-><init>(Lcom/google/crypto/tink/internal/PrefixMap;Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method
