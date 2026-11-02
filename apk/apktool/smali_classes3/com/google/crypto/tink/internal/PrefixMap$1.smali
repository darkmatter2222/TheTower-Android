.class Lcom/google/crypto/tink/internal/PrefixMap$1;
.super Ljava/lang/Object;
.source "PrefixMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/crypto/tink/internal/PrefixMap;->getAllWithMatchingPrefix([B)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TP;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/crypto/tink/internal/PrefixMap;

.field final synthetic val$fiveByteEntriesOrNull:Ljava/util/List;

.field final synthetic val$zeroByteEntriesOrNull:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/crypto/tink/internal/PrefixMap;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$fiveByteEntriesOrNull",
            "val$zeroByteEntriesOrNull"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lcom/google/crypto/tink/internal/PrefixMap$1;->this$0:Lcom/google/crypto/tink/internal/PrefixMap;

    iput-object p2, p0, Lcom/google/crypto/tink/internal/PrefixMap$1;->val$fiveByteEntriesOrNull:Ljava/util/List;

    iput-object p3, p0, Lcom/google/crypto/tink/internal/PrefixMap$1;->val$zeroByteEntriesOrNull:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TP;>;"
        }
    .end annotation

    .line 120
    new-instance v0, Lcom/google/crypto/tink/internal/PrefixMap$ConcatenatedIterator;

    iget-object v1, p0, Lcom/google/crypto/tink/internal/PrefixMap$1;->val$fiveByteEntriesOrNull:Ljava/util/List;

    .line 121
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lcom/google/crypto/tink/internal/PrefixMap$1;->val$zeroByteEntriesOrNull:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/crypto/tink/internal/PrefixMap$ConcatenatedIterator;-><init>(Ljava/util/Iterator;Ljava/util/Iterator;Lcom/google/crypto/tink/internal/PrefixMap$1;)V

    return-object v0
.end method
