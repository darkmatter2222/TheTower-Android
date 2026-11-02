.class final Lcom/google/android/gms/internal/firebase-auth-api/zzans;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private zza:I

.field private zzb:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final synthetic zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzann;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzann;)V
    .locals 0

    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzans;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzann;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 11
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzans;->zza:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzann;Lcom/google/android/gms/internal/firebase-auth-api/zzanu;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzans;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzann;)V

    return-void
.end method

.method private final zza()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzans;->zzb:Ljava/util/Iterator;

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzans;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzann;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzann;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzans;->zzb:Ljava/util/Iterator;

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzans;->zzb:Ljava/util/Iterator;

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 3

    .line 18
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzans;->zza:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzans;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzann;

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzann;)I

    move-result v2

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzans;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzann;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzann;)Ljava/util/Map;

    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzans;->zza()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzans;->zza:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzans;->zza:I

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzans;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzann;

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzann;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzans;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzann;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzd(Lcom/google/android/gms/internal/firebase-auth-api/zzann;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzans;->zza:I

    aget-object v0, v0, v1

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzanp;

    return-object v0

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzans;->zza()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public final remove()V
    .locals 3

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzans;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzann;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzann;)V

    .line 14
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzans;->zza:I

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzans;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzann;

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzann;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzans;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzann;

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzans;->zza:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzans;->zza:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzann;I)Ljava/lang/Object;

    return-void

    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzans;->zza()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
