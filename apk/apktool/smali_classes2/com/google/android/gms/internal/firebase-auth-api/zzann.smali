.class Lcom/google/android/gms/internal/firebase-auth-api/zzann;
.super Ljava/util/AbstractMap;
.source "com.google.firebase:firebase-auth@@24.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzalo<",
        "TK;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private zza:[Ljava/lang/Object;

.field private zzb:I

.field private zzc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private zzd:Z

.field private volatile zze:Lcom/google/android/gms/internal/firebase-auth-api/zzanr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzanr;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 90
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzc:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzanu;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;-><init>()V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzalo;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzb:I

    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_1

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zza:[Ljava/lang/Object;

    aget-object v2, v2, v1

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzanp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzanp;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzalo;

    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzalo;->compareTo(Ljava/lang/Object;)I

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

    .line 10
    div-int/lit8 v2, v2, 0x2

    .line 11
    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zza:[Ljava/lang/Object;

    aget-object v3, v3, v2

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/zzanp;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzanp;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/zzalo;

    invoke-interface {p1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzalo;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_2

    add-int/lit8 v1, v2, -0x1

    goto :goto_1

    :cond_2
    if-lez v3, :cond_3

    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    :cond_3
    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzann;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzb:I

    return p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzann;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzb(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final zzb(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzf()V

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zza:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzanp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzanp;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zza:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzb:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v1, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzb:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzb:I

    .line 72
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzc:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zze()Ljava/util/SortedMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 74
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zza:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzb:I

    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/zzanp;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-direct {v3, p0, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzanp;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzann;Ljava/util/Map$Entry;)V

    aput-object v3, v1, v2

    .line 75
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzb:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzb:I

    .line 76
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    :cond_0
    return-object v0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzann;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzc:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzann;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzf()V

    return-void
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/firebase-auth-api/zzann;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zza:[Ljava/lang/Object;

    return-object p0
.end method

.method private final zze()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzf()V

    .line 86
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzc:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/TreeMap;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzc:Ljava/util/Map;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzc:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method private final zzf()V
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzd:Z

    if-nez v0, :cond_0

    return-void

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 95
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzf()V

    .line 96
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzb:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zza:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 98
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzb:I

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 109
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzalo;

    .line 110
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzalo;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzc:Ljava/util/Map;

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

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzanr;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzanr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzanr;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzann;Lcom/google/android/gms/internal/firebase-auth-api/zzanu;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzanr;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzanr;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 113
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzann;

    if-nez v1, :cond_1

    .line 114
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 115
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzann;

    .line 116
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->size()I

    move-result v1

    .line 117
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 120
    :cond_2
    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzb:I

    .line 123
    iget v4, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzb:I

    if-eq v2, v4, :cond_3

    .line 125
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_5

    .line 127
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zza(I)Ljava/util/Map$Entry;

    move-result-object v5

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zza(I)Ljava/util/Map$Entry;

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

    .line 131
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzc:Ljava/util/Map;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzc:Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_6
    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 33
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzalo;

    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzalo;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 36
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zza:[Ljava/lang/Object;

    aget-object p1, p1, v0

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzanp;

    .line 37
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzanp;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzc:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 4

    .line 21
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzb:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 24
    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zza:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzc:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    :cond_1
    return v2
.end method

.method public synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 59
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzalo;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzalo;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzf()V

    .line 61
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzalo;

    .line 62
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzalo;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 64
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzb(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzc:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 2

    .line 31
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzc:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final zza()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzb:I

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzalo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzf()V

    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzalo;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 42
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zza:[Ljava/lang/Object;

    aget-object p1, p1, v0

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzanp;

    .line 43
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzanp;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 45
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzf()V

    .line 46
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zza:[Ljava/lang/Object;

    const/16 v2, 0x10

    if-nez v1, :cond_1

    .line 47
    new-array v1, v2, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zza:[Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    if-lt v0, v2, :cond_2

    .line 50
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zze()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 51
    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzb:I

    if-ne v1, v2, :cond_3

    .line 52
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zza:[Ljava/lang/Object;

    const/16 v3, 0xf

    aget-object v2, v2, v3

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzanp;

    add-int/lit8 v1, v1, -0x1

    .line 53
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzb:I

    .line 54
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zze()Ljava/util/SortedMap;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzanp;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/zzalo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzanp;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zza:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    array-length v3, v1

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zza:[Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzanp;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzanp;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzann;Lcom/google/android/gms/internal/firebase-auth-api/zzalo;Ljava/lang/Object;)V

    aput-object v2, v1, v0

    .line 57
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzb:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzb:I

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zza(I)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 78
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzb:I

    if-ge p1, v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zza:[Ljava/lang/Object;

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzanp;

    return-object p1

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public final zzb()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public zzc()V
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzd:Z

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzc:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzc:Ljava/util/Map;

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzd:Z

    :cond_1
    return-void
.end method

.method public final zzd()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzd:Z

    return v0
.end method
