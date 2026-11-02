.class final Lcom/google/android/gms/internal/firebase-auth-api/zzake;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzakg;
.source "com.google.firebase:firebase-auth@@24.2.0"


# instance fields
.field private zza:I

.field private final zzb:I

.field private final synthetic zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzakb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)V
    .locals 1

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzake;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakg;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzake;->zza:I

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzake;->zzb:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzake;->zza:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzake;->zzb:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zza()B
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzake;->zza:I

    .line 2
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzake;->zzb:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 4
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzake;->zza:I

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzake;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza(I)B

    move-result v0

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
