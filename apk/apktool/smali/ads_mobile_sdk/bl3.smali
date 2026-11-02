.class Lads_mobile_sdk/bl3;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lads_mobile_sdk/bl3$a;,
        Lads_mobile_sdk/bl3$c;,
        Lads_mobile_sdk/bl3$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Lads_mobile_sdk/qr0$b<",
        "TK;>;>",
        "Ljava/util/AbstractMap<",
        "TK;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private a:[Ljava/lang/Object;

.field private b:I

.field private c:Z

.field private volatile d:Lads_mobile_sdk/bl3$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/bl3<",
            "TK;>.c;"
        }
    .end annotation
.end field

.field private volatile e:Z


# direct methods
.method static bridge synthetic -$$Nest$fgeta(Lads_mobile_sdk/bl3;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetb(Lads_mobile_sdk/bl3;)I
    .locals 0

    iget p0, p0, Lads_mobile_sdk/bl3;->b:I

    return p0
.end method

.method static bridge synthetic -$$Nest$ma(Lads_mobile_sdk/bl3;)V
    .locals 0

    invoke-direct {p0}, Lads_mobile_sdk/bl3;->a()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mb(Lads_mobile_sdk/bl3;)V
    .locals 0

    invoke-direct {p0}, Lads_mobile_sdk/bl3;->b()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lads_mobile_sdk/bl3;->c:Z

    const/4 v1, 0x0

    .line 84
    iput-object v1, p0, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    .line 85
    iput v0, p0, Lads_mobile_sdk/bl3;->b:I

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lads_mobile_sdk/bl3;->e:Z

    return-void
.end method

.method private a(Lads_mobile_sdk/qr0$b;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 347
    iget p1, p0, Lads_mobile_sdk/bl3;->b:I

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    ushr-int/lit8 p1, p1, 0x1

    .line 350
    iget-object v0, p0, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    aget-object p1, v0, p1

    check-cast p1, Lads_mobile_sdk/bl3$a;

    invoke-virtual {p1}, Lads_mobile_sdk/bl3$a;->d()Lads_mobile_sdk/qr0$b;

    const/4 p1, 0x0

    .line 351
    throw p1
.end method

.method private a()V
    .locals 1

    .line 734
    iget-boolean v0, p0, Lads_mobile_sdk/bl3;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 735
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private a(I)V
    .locals 3

    .line 1003
    iget-object v0, p0, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    if-eqz v0, :cond_5

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_2

    .line 1007
    :cond_0
    array-length v0, v0

    if-le p1, v0, :cond_4

    .line 1010
    iget-boolean v0, p0, Lads_mobile_sdk/bl3;->e:Z

    if-nez v0, :cond_1

    .line 1011
    invoke-direct {p0}, Lads_mobile_sdk/bl3;->b()V

    .line 1014
    iget-object v0, p0, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    array-length v0, v0

    if-gt p1, v0, :cond_1

    goto :goto_1

    .line 1019
    :cond_1
    iget-object v0, p0, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    array-length v1, v0

    shr-int/lit8 v2, v1, 0x1

    add-int/2addr v1, v2

    sub-int v2, v1, p1

    if-gez v2, :cond_2

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    const v1, 0x7ffffff7

    sub-int v2, p1, v1

    if-lez v2, :cond_3

    move p1, v1

    .line 1028
    :cond_3
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    :cond_4
    :goto_1
    return-void

    :cond_5
    :goto_2
    const/16 v0, 0x10

    .line 1029
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    return-void
.end method

.method private b()V
    .locals 6

    .line 303
    iget-boolean v0, p0, Lads_mobile_sdk/bl3;->c:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 306
    :cond_0
    iget-boolean v0, p0, Lads_mobile_sdk/bl3;->e:Z

    if-nez v0, :cond_6

    .line 310
    monitor-enter p0

    .line 311
    :try_start_0
    iget-boolean v0, p0, Lads_mobile_sdk/bl3;->e:Z

    if-eqz v0, :cond_1

    .line 312
    monitor-exit p0

    return-void

    .line 314
    :cond_1
    iget v0, p0, Lads_mobile_sdk/bl3;->b:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    .line 315
    monitor-exit p0

    return-void

    .line 317
    :cond_2
    iget-object v2, p0, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    move v0, v3

    .line 321
    :goto_0
    iget v2, p0, Lads_mobile_sdk/bl3;->b:I

    const/4 v4, 0x0

    if-ge v3, v2, :cond_4

    .line 322
    iget-object v2, p0, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    aget-object v5, v2, v3

    check-cast v5, Lads_mobile_sdk/bl3$a;

    if-gtz v0, :cond_3

    .line 326
    aput-object v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    sub-int/2addr v0, v1

    .line 327
    aget-object v0, v2, v0

    check-cast v0, Lads_mobile_sdk/bl3$a;

    invoke-virtual {v0}, Lads_mobile_sdk/bl3$a;->d()Lads_mobile_sdk/qr0$b;

    invoke-virtual {v5}, Lads_mobile_sdk/bl3$a;->d()Lads_mobile_sdk/qr0$b;

    throw v4

    :cond_4
    if-ge v0, v2, :cond_5

    .line 335
    iput v0, p0, Lads_mobile_sdk/bl3;->b:I

    .line 337
    iget-object v2, p0, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    array-length v3, v2

    invoke-static {v2, v0, v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 339
    :cond_5
    iput-boolean v1, p0, Lads_mobile_sdk/bl3;->e:Z

    .line 340
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public b(I)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 467
    invoke-direct {p0}, Lads_mobile_sdk/bl3;->b()V

    .line 468
    iget v0, p0, Lads_mobile_sdk/bl3;->b:I

    if-ge p1, v0, :cond_0

    .line 471
    iget-object v0, p0, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    aget-object p1, v0, p1

    check-cast p1, Lads_mobile_sdk/bl3$a;

    return-object p1

    .line 472
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public c()V
    .locals 2

    .line 101
    iget-boolean v0, p0, Lads_mobile_sdk/bl3;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 104
    :cond_0
    invoke-direct {p0}, Lads_mobile_sdk/bl3;->b()V

    .line 105
    iget-object v0, p0, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 106
    iget v1, p0, Lads_mobile_sdk/bl3;->b:I

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 107
    aget-object v0, v0, v1

    check-cast v0, Lads_mobile_sdk/bl3$a;

    .line 108
    invoke-virtual {v0}, Lads_mobile_sdk/bl3$a;->d()Lads_mobile_sdk/qr0$b;

    const/4 v0, 0x0

    throw v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lads_mobile_sdk/bl3;->c:Z

    return-void
.end method

.method public clear()V
    .locals 1

    .line 234
    invoke-direct {p0}, Lads_mobile_sdk/bl3;->a()V

    .line 235
    iget v0, p0, Lads_mobile_sdk/bl3;->b:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 236
    iput-object v0, p0, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 237
    iput v0, p0, Lads_mobile_sdk/bl3;->b:I

    const/4 v0, 0x1

    .line 238
    iput-boolean v0, p0, Lads_mobile_sdk/bl3;->e:Z

    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 152
    invoke-static {p1}, Lads_mobile_sdk/dr0;->a(Ljava/lang/Object;)V

    .line 153
    invoke-direct {p0}, Lads_mobile_sdk/bl3;->b()V

    const/4 p1, 0x0

    .line 154
    invoke-direct {p0, p1}, Lads_mobile_sdk/bl3;->a(Lads_mobile_sdk/qr0$b;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 372
    invoke-direct {p0}, Lads_mobile_sdk/bl3;->b()V

    .line 373
    iget-object v0, p0, Lads_mobile_sdk/bl3;->d:Lads_mobile_sdk/bl3$c;

    if-nez v0, :cond_0

    .line 374
    new-instance v0, Lads_mobile_sdk/bl3$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lads_mobile_sdk/bl3$c;-><init>(Lads_mobile_sdk/bl3;Lads_mobile_sdk/bl3-IA;)V

    iput-object v0, p0, Lads_mobile_sdk/bl3;->d:Lads_mobile_sdk/bl3$c;

    .line 376
    :cond_0
    iget-object v0, p0, Lads_mobile_sdk/bl3;->d:Lads_mobile_sdk/bl3$c;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 527
    :cond_0
    instance-of v1, p1, Lads_mobile_sdk/bl3;

    if-nez v1, :cond_1

    .line 528
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 531
    :cond_1
    check-cast p1, Lads_mobile_sdk/bl3;

    .line 532
    invoke-virtual {p0}, Lads_mobile_sdk/bl3;->size()I

    move-result v1

    .line 533
    invoke-virtual {p1}, Lads_mobile_sdk/bl3;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 537
    :cond_2
    iget-object v2, p0, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    .line 538
    iget-object p1, p1, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_4

    .line 540
    aget-object v5, v2, v4

    aget-object v6, p1, v4

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    return v3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 167
    invoke-static {p1}, Lads_mobile_sdk/dr0;->a(Ljava/lang/Object;)V

    .line 168
    invoke-direct {p0}, Lads_mobile_sdk/bl3;->b()V

    const/4 p1, 0x0

    .line 169
    invoke-direct {p0, p1}, Lads_mobile_sdk/bl3;->a(Lads_mobile_sdk/qr0$b;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 171
    iget-object p1, p0, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    aget-object p1, p1, v0

    check-cast p1, Lads_mobile_sdk/bl3$a;

    .line 172
    invoke-virtual {p1}, Lads_mobile_sdk/bl3$a;->getValue()Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public hashCode()I
    .locals 4

    .line 550
    invoke-virtual {p0}, Lads_mobile_sdk/bl3;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 552
    iget-object v3, p0, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public isEmpty()Z
    .locals 1

    .line 142
    iget v0, p0, Lads_mobile_sdk/bl3;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public put(Lads_mobile_sdk/qr0$b;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 207
    invoke-direct {p0}, Lads_mobile_sdk/bl3;->a()V

    .line 208
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-boolean v0, p0, Lads_mobile_sdk/bl3;->e:Z

    .line 214
    iget v1, p0, Lads_mobile_sdk/bl3;->b:I

    const/4 v2, 0x0

    if-lez v1, :cond_1

    .line 215
    iget-object v3, p0, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v3, v1

    check-cast v1, Lads_mobile_sdk/bl3$a;

    invoke-virtual {v1}, Lads_mobile_sdk/bl3$a;->d()Lads_mobile_sdk/qr0$b;

    invoke-interface {p1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 220
    iget-object p1, p0, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    iget v0, p0, Lads_mobile_sdk/bl3;->b:I

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    check-cast p1, Lads_mobile_sdk/bl3$a;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/bl3$a;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    .line 226
    :cond_1
    :goto_0
    iget v1, p0, Lads_mobile_sdk/bl3;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lads_mobile_sdk/bl3;->a(I)V

    .line 227
    iget-object v1, p0, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    iget v3, p0, Lads_mobile_sdk/bl3;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lads_mobile_sdk/bl3;->b:I

    new-instance v4, Lads_mobile_sdk/bl3$a;

    invoke-direct {v4, p0, p1, p2}, Lads_mobile_sdk/bl3$a;-><init>(Lads_mobile_sdk/bl3;Lads_mobile_sdk/qr0$b;Ljava/lang/Object;)V

    aput-object v4, v1, v3

    .line 228
    iput-boolean v0, p0, Lads_mobile_sdk/bl3;->e:Z

    return-object v2
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 284
    invoke-static {p1}, Lads_mobile_sdk/dr0;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/bl3;->put(Lads_mobile_sdk/qr0$b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;*>;)V"
        }
    .end annotation

    .line 179
    invoke-direct {p0}, Lads_mobile_sdk/bl3;->a()V

    .line 180
    instance-of v0, p1, Lads_mobile_sdk/bl3;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 182
    check-cast p1, Lads_mobile_sdk/bl3;

    .line 185
    iget v0, p0, Lads_mobile_sdk/bl3;->b:I

    iget v2, p1, Lads_mobile_sdk/bl3;->b:I

    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Lads_mobile_sdk/bl3;->a(I)V

    .line 186
    iget v0, p0, Lads_mobile_sdk/bl3;->b:I

    .line 187
    iget v2, p1, Lads_mobile_sdk/bl3;->b:I

    add-int/2addr v2, v0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 189
    iget-object v4, p1, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    sub-int v5, v3, v0

    aget-object v4, v4, v5

    check-cast v4, Lads_mobile_sdk/bl3$a;

    .line 190
    invoke-virtual {v4}, Lads_mobile_sdk/bl3$a;->d()Lads_mobile_sdk/qr0$b;

    invoke-virtual {v4}, Lads_mobile_sdk/bl3$a;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lads_mobile_sdk/bl3;->put(Lads_mobile_sdk/qr0$b;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 193
    :cond_0
    iget v0, p0, Lads_mobile_sdk/bl3;->b:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lads_mobile_sdk/bl3;->a(I)V

    .line 194
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 195
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lads_mobile_sdk/dr0;->a(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lads_mobile_sdk/bl3;->put(Lads_mobile_sdk/qr0$b;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 253
    invoke-direct {p0}, Lads_mobile_sdk/bl3;->a()V

    .line 254
    invoke-direct {p0}, Lads_mobile_sdk/bl3;->b()V

    .line 255
    invoke-static {p1}, Lads_mobile_sdk/dr0;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 256
    invoke-direct {p0, p1}, Lads_mobile_sdk/bl3;->a(Lads_mobile_sdk/qr0$b;)I

    move-result v0

    if-gez v0, :cond_0

    return-object p1

    .line 260
    :cond_0
    iget-object v1, p0, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Lads_mobile_sdk/bl3$a;

    invoke-virtual {v1}, Lads_mobile_sdk/bl3$a;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 261
    iget-object v2, p0, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lads_mobile_sdk/bl3;->b:I

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v3, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    iget-object v0, p0, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    iget v2, p0, Lads_mobile_sdk/bl3;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lads_mobile_sdk/bl3;->b:I

    aput-object p1, v0, v2

    return-object v1
.end method

.method public size()I
    .locals 1

    .line 136
    invoke-direct {p0}, Lads_mobile_sdk/bl3;->b()V

    .line 137
    iget v0, p0, Lads_mobile_sdk/bl3;->b:I

    return v0
.end method
