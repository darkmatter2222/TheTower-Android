.class Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;
.super Ljava/util/AbstractMap;
.source "SmallSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$Entry;,
        Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$EntrySet;,
        Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$DescendingEntrySet;,
        Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$DescendingEntryIterator;,
        Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$EntryIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable<",
        "TK;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field static final DEFAULT_FIELD_MAP_ARRAY_SIZE:I = 0x10


# instance fields
.field private entries:[Ljava/lang/Object;

.field private entriesSize:I

.field private isImmutable:Z

.field private volatile lazyEntrySet:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap<",
            "TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field private overflowEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private overflowEntriesDescending:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 113
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    .line 114
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->overflowEntriesDescending:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$1;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;)Ljava/util/Map;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->overflowEntriesDescending:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->checkMutable()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->entriesSize:I

    return p0
.end method

.method static synthetic access$700(Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;)Ljava/util/Map;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;)[Ljava/lang/Object;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->entries:[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$900(Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;I)Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->removeArrayEntryAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private binarySearchInArray(Ljava/lang/Comparable;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 294
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->entriesSize:I

    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_1

    .line 301
    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->entries:[Ljava/lang/Object;

    aget-object v2, v2, v1

    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$Entry;

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$Entry;->getKey()Ljava/lang/Comparable;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    neg-int p1, v0

    return p1

    :cond_0
    if-nez v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-gt v0, v1, :cond_4

    add-int v2, v0, v1

    .line 310
    div-int/lit8 v2, v2, 0x2

    .line 312
    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->entries:[Ljava/lang/Object;

    aget-object v3, v3, v2

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$Entry;

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$Entry;->getKey()Ljava/lang/Comparable;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_2

    add-int/lit8 v2, v2, -0x1

    move v1, v2

    goto :goto_1

    :cond_2
    if-lez v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    goto :goto_1

    :cond_3
    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private checkMutable()V
    .locals 1

    .line 350
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->isImmutable:Z

    if-nez v0, :cond_0

    return-void

    .line 351
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private ensureEntryArrayMutable()V
    .locals 1

    .line 372
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->checkMutable()V

    .line 373
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->entries:[Ljava/lang/Object;

    if-nez v0, :cond_0

    const/16 v0, 0x10

    .line 374
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->entries:[Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private getOverflowEntriesMutable()Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 360
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->checkMutable()V

    .line 361
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/TreeMap;

    if-nez v0, :cond_0

    .line 362
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    .line 363
    move-object v1, v0

    check-cast v1, Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->overflowEntriesDescending:Ljava/util/Map;

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method static newFieldMap()Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<FieldDescriptorT::",
            "Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite<",
            "TFieldDescriptorT;>;>()",
            "Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap<",
            "TFieldDescriptorT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$1;

    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$1;-><init>()V

    return-object v0
.end method

.method static newInstanceForTest()Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "TK;>;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 94
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;-><init>()V

    return-object v0
.end method

.method private removeArrayEntryAt(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 270
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->checkMutable()V

    .line 272
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->entries:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$Entry;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 274
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->entries:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->entriesSize:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v1, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 275
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->entriesSize:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->entriesSize:I

    .line 276
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 279
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->getOverflowEntriesMutable()Ljava/util/SortedMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 280
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->entries:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->entriesSize:I

    new-instance v3, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$Entry;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-direct {v3, p0, v4}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$Entry;-><init>(Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;Ljava/util/Map$Entry;)V

    aput-object v3, v1, v2

    .line 281
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->entriesSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->entriesSize:I

    .line 282
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 236
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->checkMutable()V

    .line 237
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->entriesSize:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 238
    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->entries:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 239
    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->entriesSize:I

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 181
    check-cast p1, Ljava/lang/Comparable;

    .line 182
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->binarySearchInArray(Ljava/lang/Comparable;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method descendingEntrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 345
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$DescendingEntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$DescendingEntrySet;-><init>(Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$1;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->lazyEntrySet:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$EntrySet;

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$EntrySet;-><init>(Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$1;)V

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->lazyEntrySet:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$EntrySet;

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->lazyEntrySet:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$EntrySet;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 621
    :cond_0
    instance-of v1, p1, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    if-nez v1, :cond_1

    .line 622
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 625
    :cond_1
    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    .line 626
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->size()I

    move-result v1

    .line 627
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 632
    :cond_2
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v2

    .line 633
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v4

    if-eq v2, v4, :cond_3

    .line 634
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_5

    .line 638
    invoke-virtual {p0, v4}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v5

    invoke-virtual {p1, v4}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    return v3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    if-eq v2, v1, :cond_6

    .line 644
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    iget-object p1, p1, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_6
    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 193
    check-cast p1, Ljava/lang/Comparable;

    .line 194
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->binarySearchInArray(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 197
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->entries:[Ljava/lang/Object;

    aget-object p1, p1, v0

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$Entry;

    .line 198
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getArrayEntryAt(I)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 148
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->entriesSize:I

    if-ge p1, v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->entries:[Ljava/lang/Object;

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$Entry;

    return-object p1

    .line 149
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public getNumArrayEntries()I
    .locals 1

    .line 143
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->entriesSize:I

    return v0
.end method

.method public getNumOverflowEntries()I
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getOverflowEntries()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 653
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 655
    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->entries:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 658
    :cond_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->getNumOverflowEntries()I

    move-result v0

    if-lez v0, :cond_1

    .line 659
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    :cond_1
    return v2
.end method

.method public isImmutable()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->isImmutable:Z

    return v0
.end method

.method public makeImmutable()V
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->isImmutable:Z

    if-nez v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    .line 129
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->overflowEntriesDescending:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->overflowEntriesDescending:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->overflowEntriesDescending:Ljava/util/Map;

    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->isImmutable:Z

    :cond_2
    return-void
.end method

.method public put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 205
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->checkMutable()V

    .line 206
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->binarySearchInArray(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 210
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->entries:[Ljava/lang/Object;

    aget-object p1, p1, v0

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$Entry;

    .line 211
    invoke-virtual {p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 213
    :cond_0
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->ensureEntryArrayMutable()V

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 217
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->getOverflowEntriesMutable()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 220
    :cond_1
    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->entriesSize:I

    if-ne v2, v1, :cond_2

    .line 223
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->entries:[Ljava/lang/Object;

    const/16 v3, 0xf

    aget-object v1, v1, v3

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$Entry;

    add-int/lit8 v2, v2, -0x1

    .line 224
    iput v2, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->entriesSize:I

    .line 225
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->getOverflowEntriesMutable()Ljava/util/SortedMap;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$Entry;->getKey()Ljava/lang/Comparable;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_2
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->entries:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    array-length v3, v1

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->entries:[Ljava/lang/Object;

    new-instance v2, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$Entry;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$Entry;-><init>(Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;Ljava/lang/Comparable;Ljava/lang/Object;)V

    aput-object v2, v1, v0

    .line 230
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->entriesSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->entriesSize:I

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 58
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 253
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->checkMutable()V

    .line 255
    check-cast p1, Ljava/lang/Comparable;

    .line 256
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->binarySearchInArray(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 258
    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->removeArrayEntryAt(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 2

    .line 170
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->entriesSize:I

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
