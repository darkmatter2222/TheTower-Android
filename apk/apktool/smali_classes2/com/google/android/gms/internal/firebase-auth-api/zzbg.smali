.class final Lcom/google/android/gms/internal/firebase-auth-api/zzbg;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzbd;
.source "com.google.firebase:firebase-auth@@24.2.0"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final zza:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbd;-><init>()V

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzu;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbg;->zza:[B

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbg;->zza:[B

    array-length v1, v0

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    array-length v2, v0

    if-eqz v1, :cond_1

    .line 4
    aget-byte v1, v0, v4

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, v0, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/4 v2, 0x3

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "HashCode#asInt() requires >= 4 bytes (it only has %s bytes)."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzac;->zza(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzbd;)Z
    .locals 6

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbg;->zza:[B

    array-length v0, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbd;->zzd()[B

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x1

    move v3, v0

    move v1, v2

    .line 12
    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbg;->zza:[B

    array-length v5, v4

    if-ge v1, v5, :cond_2

    .line 13
    aget-byte v4, v4, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbd;->zzd()[B

    move-result-object v5

    aget-byte v5, v5, v1

    if-ne v4, v5, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    and-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public final zzb()I
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbg;->zza:[B

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public final zzc()[B
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbg;->zza:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method final zzd()[B
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbg;->zza:[B

    return-object v0
.end method
