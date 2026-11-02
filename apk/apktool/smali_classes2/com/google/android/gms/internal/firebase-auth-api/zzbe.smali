.class abstract Lcom/google/android/gms/internal/firebase-auth-api/zzbe;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzbb;
.source "com.google.firebase:firebase-auth@@24.2.0"


# instance fields
.field private final zza:Ljava/nio/ByteBuffer;

.field private final zzb:I

.field private final zzc:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    const/16 p1, 0x10

    .line 27
    invoke-direct {p0, p1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbe;-><init>(II)V

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbb;-><init>()V

    const/16 p1, 0x17

    .line 30
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object p2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbe;->zza:Ljava/nio/ByteBuffer;

    const/16 p1, 0x10

    .line 31
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbe;->zzb:I

    .line 32
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbe;->zzc:I

    return-void
.end method

.method private final zzc()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbe;->zza:Ljava/nio/ByteBuffer;

    .line 35
    invoke-virtual {v0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 36
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbe;->zza:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbe;->zzc:I

    if-lt v0, v1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbe;->zza:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbe;->zza(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbe;->zza:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    return-void
.end method

.method private final zzd()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbe;->zza:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 41
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbe;->zzc()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/firebase-auth-api/zzbd;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbe;->zzc()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbe;->zza:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbe;->zza:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbe;->zza:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbe;->zzb(Ljava/nio/ByteBuffer;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbe;->zza:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbe;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzbd;

    move-result-object v0

    return-object v0
.end method

.method public final zza(B)Lcom/google/android/gms/internal/firebase-auth-api/zzbi;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbe;->zza:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbe;->zzd()V

    return-object p0
.end method

.method public final zza([BII)Lcom/google/android/gms/internal/firebase-auth-api/zzbi;
    .locals 2

    const/4 p2, 0x0

    .line 12
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object p3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p3

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbe;->zza:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-gt p3, v0, :cond_0

    .line 14
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbe;->zza:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbe;->zzd()V

    return-object p0

    .line 17
    :cond_0
    iget p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbe;->zzb:I

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbe;->zza:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int/2addr p3, v0

    :goto_0
    if-ge p2, p3, :cond_1

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbe;->zza:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 21
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbe;->zzc()V

    .line 22
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    iget p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbe;->zzc:I

    if-lt p2, p3, :cond_2

    .line 23
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbe;->zza(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    .line 24
    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbe;->zza:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method protected abstract zza(Ljava/nio/ByteBuffer;)V
.end method

.method protected abstract zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzbd;
.end method

.method protected zzb(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 43
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 44
    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 45
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbe;->zzc:I

    add-int/lit8 v0, v0, 0x7

    .line 46
    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 47
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbe;->zzc:I

    if-ge v0, v1, :cond_0

    const-wide/16 v0, 0x0

    .line 48
    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p1, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 52
    invoke-virtual {p1}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 53
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbe;->zza(Ljava/nio/ByteBuffer;)V

    return-void
.end method
