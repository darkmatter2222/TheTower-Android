.class final Lcom/google/android/gms/internal/firebase-auth-api/zzakx;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzaky;
.source "com.google.firebase:firebase-auth@@24.2.0"


# instance fields
.field private final zzb:[B

.field private final zzc:I

.field private zzd:I


# direct methods
.method constructor <init>([BII)V
    .locals 1

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;-><init>([BIILcom/google/android/gms/internal/firebase-auth-api/zzala;)V

    return-void
.end method

.method private constructor <init>([BIILcom/google/android/gms/internal/firebase-auth-api/zzala;)V
    .locals 1

    const/4 p2, 0x0

    .line 4
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzalb;)V

    if-eqz p1, :cond_1

    .line 7
    array-length p2, p1

    sub-int/2addr p2, p3

    or-int/2addr p2, p3

    const/4 p4, 0x0

    if-ltz p2, :cond_0

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzb:[B

    .line 14
    iput p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzd:I

    .line 15
    iput p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzc:I

    return-void

    .line 8
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    array-length p1, p1

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 10
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 11
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p4, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 12
    const-string p3, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    invoke-static {v0, p3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "buffer"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zzc([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzd:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzd:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzd:I

    return-void

    :catch_0
    move-exception p1

    .line 28
    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/zzakz;

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzd:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzc:I

    invoke-direct {p2, v0, v1, p3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakz;-><init>(IIILjava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public final zza()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzc:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzd:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final zza(B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzd:I

    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzb:[B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v2, v0, 0x1

    :try_start_1
    aput-byte p1, v1, v0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 23
    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzd:I

    return-void

    :catch_0
    move-exception p1

    move v0, v2

    goto :goto_0

    :catch_1
    move-exception p1

    .line 22
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzakz;

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzc:I

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakz;-><init>(IIILjava/lang/Throwable;)V

    throw v1
.end method

.method public final zza(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzd:I

    const/4 v1, 0x4

    .line 47
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzb:[B

    int-to-byte v3, p1

    aput-byte v3, v2, v0

    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    .line 48
    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x2

    shr-int/lit8 v4, p1, 0x10

    int-to-byte v4, v4

    .line 49
    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x3

    shr-int/lit8 p1, p1, 0x18

    .line 50
    aput-byte p1, v2, v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v1

    .line 54
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzd:I

    return-void

    :catch_0
    move-exception p1

    .line 53
    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzakz;

    iget v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzc:I

    invoke-direct {v2, v0, v3, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakz;-><init>(IIILjava/lang/Throwable;)V

    throw v2
.end method

.method public final zza(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 43
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(II)V

    .line 44
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zza(I)V

    return-void
.end method

.method public final zza(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 56
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(II)V

    .line 57
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zza(J)V

    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/firebase-auth-api/zzakb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 37
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(II)V

    .line 38
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)V

    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/firebase-auth-api/zzamv;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 100
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(II)V

    const/4 v2, 0x2

    .line 101
    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(II)V

    .line 103
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(II)V

    .line 104
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzamv;)V

    const/4 p1, 0x4

    .line 105
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(II)V

    return-void
.end method

.method public final zza(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 112
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(II)V

    .line 113
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zza(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(II)V

    int-to-byte p1, p2

    .line 32
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zza(B)V

    return-void
.end method

.method public final zza(J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzd:I

    const/16 v1, 0x8

    .line 60
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzb:[B

    long-to-int v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v3, v0, 0x1

    shr-long v4, p1, v1

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 61
    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x2

    const/16 v4, 0x10

    shr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 62
    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x3

    const/16 v4, 0x18

    shr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 63
    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x4

    const/16 v4, 0x20

    shr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 64
    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x5

    const/16 v4, 0x28

    shr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 65
    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x6

    const/16 v4, 0x30

    shr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 66
    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x7

    const/16 v4, 0x38

    shr-long/2addr p1, v4

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 67
    aput-byte p1, v2, v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v1

    .line 71
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzd:I

    return-void

    :catch_0
    move-exception p1

    .line 70
    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/zzakz;

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzc:I

    invoke-direct {p2, v0, v2, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakz;-><init>(IIILjava/lang/Throwable;)V

    throw p2
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(I)V

    .line 41
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakc;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzamv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzamv;->zzl()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(I)V

    .line 98
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamv;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaky;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzd:I

    .line 116
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    .line 117
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzd(I)I

    move-result v1

    .line 118
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzd(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    add-int v1, v0, v2

    .line 120
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzd:I

    .line 121
    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzb:[B

    array-length v4, v3

    sub-int/2addr v4, v1

    invoke-static {p1, v3, v1, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaog;->zza(Ljava/lang/String;[BII)I

    move-result p1

    .line 122
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzd:I

    sub-int v0, p1, v0

    sub-int/2addr v0, v2

    .line 124
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(I)V

    .line 125
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzd:I

    return-void

    .line 127
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaog;->zza(Ljava/lang/String;)I

    move-result v0

    .line 128
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(I)V

    .line 129
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzd:I

    array-length v2, v0

    sub-int/2addr v2, v1

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaog;->zza(Ljava/lang/String;[BII)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzd:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 132
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzakz;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakz;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zza([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzc([BII)V

    return-void
.end method

.method public final zzb()V
    .locals 0

    return-void
.end method

.method public final zzb(I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 77
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    .line 79
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzd:I

    .line 80
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzb:[B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3

    add-int/lit8 v3, p1, 0x1

    long-to-int v4, v0

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    :try_start_1
    aput-byte v4, v2, p1
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    add-int/lit8 v4, p1, 0x2

    const/4 v5, 0x7

    ushr-long v5, v0, v5

    long-to-int v5, v5

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    .line 81
    :try_start_2
    aput-byte v5, v2, v3
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v3, p1, 0x3

    const/16 v5, 0xe

    ushr-long v5, v0, v5

    long-to-int v5, v5

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    .line 82
    :try_start_3
    aput-byte v5, v2, v4
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    add-int/lit8 v4, p1, 0x4

    const/16 v5, 0x15

    ushr-long v5, v0, v5

    long-to-int v5, v5

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    .line 83
    :try_start_4
    aput-byte v5, v2, v3
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    add-int/lit8 v3, p1, 0x5

    const/16 v5, 0x1c

    ushr-long/2addr v0, v5

    long-to-int v0, v0

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    .line 84
    :try_start_5
    aput-byte v0, v2, v4
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_2

    add-int/lit8 v0, p1, 0x6

    const/4 v1, -0x1

    .line 85
    :try_start_6
    aput-byte v1, v2, v3
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0

    add-int/lit8 v3, p1, 0x7

    .line 86
    :try_start_7
    aput-byte v1, v2, v0
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_2

    add-int/lit8 v0, p1, 0x8

    .line 87
    :try_start_8
    aput-byte v1, v2, v3
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_0

    add-int/lit8 v3, p1, 0x9

    .line 88
    :try_start_9
    aput-byte v1, v2, v0
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_2

    add-int/lit8 p1, p1, 0xa

    const/4 v0, 0x1

    .line 89
    :try_start_a
    aput-byte v0, v2, v3
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_3

    .line 93
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzd:I

    return-void

    :catch_0
    move-exception p1

    move v7, v0

    move-object v0, p1

    move p1, v7

    goto :goto_0

    :catch_1
    move-exception v0

    move p1, v4

    goto :goto_0

    :catch_2
    move-exception v0

    move p1, v3

    goto :goto_0

    :catch_3
    move-exception v0

    .line 92
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzakz;

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzc:I

    const/16 v3, 0xa

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakz;-><init>(IIILjava/lang/Throwable;)V

    throw v1
.end method

.method public final zzb(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(II)V

    .line 74
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzb(I)V

    return-void
.end method

.method public final zzb(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 170
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(II)V

    .line 171
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzb(J)V

    return-void
.end method

.method public final zzb(ILcom/google/android/gms/internal/firebase-auth-api/zzakb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 107
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(II)V

    const/4 v2, 0x2

    .line 108
    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(II)V

    .line 109
    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zza(ILcom/google/android/gms/internal/firebase-auth-api/zzakb;)V

    const/4 p1, 0x4

    .line 110
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(II)V

    return-void
.end method

.method public final zzb(J)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzd:I

    const-wide/16 v1, -0x80

    and-long v3, p1, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzb:[B

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    add-int/lit8 p1, v0, 0x1

    .line 176
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzd:I

    return-void

    .line 178
    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzb:[B

    long-to-int v4, p1

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    const/4 v4, 0x7

    ushr-long v7, p1, v4

    and-long v9, v7, v1

    cmp-long v4, v9, v5

    if-nez v4, :cond_1

    add-int/lit8 p1, v0, 0x1

    long-to-int p2, v7

    int-to-byte p2, p2

    .line 181
    aput-byte p2, v3, p1

    add-int/lit8 p1, v0, 0x2

    .line 182
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzd:I

    return-void

    :cond_1
    add-int/lit8 v4, v0, 0x1

    long-to-int v7, v7

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    .line 184
    aput-byte v7, v3, v4

    const/16 v4, 0xe

    ushr-long v7, p1, v4

    and-long v9, v7, v1

    cmp-long v4, v9, v5

    if-nez v4, :cond_2

    add-int/lit8 p1, v0, 0x2

    long-to-int p2, v7

    int-to-byte p2, p2

    .line 187
    aput-byte p2, v3, p1

    add-int/lit8 p1, v0, 0x3

    .line 188
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzd:I

    return-void

    :cond_2
    add-int/lit8 v4, v0, 0x2

    long-to-int v7, v7

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    .line 190
    aput-byte v7, v3, v4

    const/16 v4, 0x15

    ushr-long v7, p1, v4

    and-long v9, v7, v1

    cmp-long v4, v9, v5

    if-nez v4, :cond_3

    add-int/lit8 p1, v0, 0x3

    long-to-int p2, v7

    int-to-byte p2, p2

    .line 193
    aput-byte p2, v3, p1

    add-int/lit8 p1, v0, 0x4

    .line 194
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzd:I

    return-void

    :cond_3
    add-int/lit8 v4, v0, 0x3

    long-to-int v7, v7

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    .line 196
    aput-byte v7, v3, v4

    const/16 v4, 0x1c

    ushr-long v7, p1, v4

    and-long v9, v7, v1

    cmp-long v4, v9, v5

    if-nez v4, :cond_4

    add-int/lit8 p1, v0, 0x4

    long-to-int p2, v7

    int-to-byte p2, p2

    .line 199
    aput-byte p2, v3, p1

    add-int/lit8 p1, v0, 0x5

    .line 200
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzd:I

    return-void

    :cond_4
    add-int/lit8 v4, v0, 0x4

    long-to-int v7, v7

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    .line 202
    aput-byte v7, v3, v4

    const/16 v4, 0x23

    ushr-long v7, p1, v4

    and-long v9, v7, v1

    cmp-long v4, v9, v5

    if-nez v4, :cond_5

    add-int/lit8 p1, v0, 0x5

    long-to-int p2, v7

    int-to-byte p2, p2

    .line 205
    aput-byte p2, v3, p1

    add-int/lit8 p1, v0, 0x6

    .line 206
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzd:I

    return-void

    :cond_5
    add-int/lit8 v4, v0, 0x5

    long-to-int v7, v7

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    .line 208
    aput-byte v7, v3, v4

    const/16 v4, 0x2a

    ushr-long v7, p1, v4

    and-long v9, v7, v1

    cmp-long v4, v9, v5

    if-nez v4, :cond_6

    add-int/lit8 p1, v0, 0x6

    long-to-int p2, v7

    int-to-byte p2, p2

    .line 211
    aput-byte p2, v3, p1

    add-int/lit8 p1, v0, 0x7

    .line 212
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzd:I

    return-void

    :cond_6
    add-int/lit8 v4, v0, 0x6

    long-to-int v7, v7

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    .line 214
    aput-byte v7, v3, v4

    const/16 v4, 0x31

    ushr-long v7, p1, v4

    and-long v9, v7, v1

    cmp-long v4, v9, v5

    if-nez v4, :cond_7

    add-int/lit8 p1, v0, 0x7

    long-to-int p2, v7

    int-to-byte p2, p2

    .line 217
    aput-byte p2, v3, p1

    add-int/lit8 p1, v0, 0x8

    .line 218
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzd:I

    return-void

    :cond_7
    add-int/lit8 v4, v0, 0x7

    long-to-int v7, v7

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    .line 220
    aput-byte v7, v3, v4

    const/16 v4, 0x38

    ushr-long v7, p1, v4

    and-long/2addr v1, v7

    cmp-long v1, v1, v5

    if-nez v1, :cond_8

    add-int/lit8 p1, v0, 0x8

    long-to-int p2, v7

    int-to-byte p2, p2

    .line 223
    aput-byte p2, v3, p1

    add-int/lit8 p1, v0, 0x9

    .line 224
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzd:I

    return-void

    :cond_8
    add-int/lit8 v1, v0, 0x8

    long-to-int v2, v7

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    .line 226
    aput-byte v2, v3, v1

    add-int/lit8 v1, v0, 0x9

    const/16 v2, 0x3f

    ushr-long/2addr p1, v2

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 227
    aput-byte p1, v3, v1

    add-int/lit8 p1, v0, 0xa

    .line 228
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzd:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 231
    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/zzakz;

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzc:I

    const/4 v2, 0x1

    invoke-direct {p2, v0, v1, v2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakz;-><init>(IIILjava/lang/Throwable;)V

    throw p2
.end method

.method public final zzb([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(I)V

    const/4 p2, 0x0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzc([BII)V

    return-void
.end method

.method public final zzc(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzd:I

    and-int/lit8 v1, p1, -0x80

    if-nez v1, :cond_0

    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzb:[B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3

    add-int/lit8 v2, v0, 0x1

    int-to-byte p1, p1

    :try_start_1
    aput-byte p1, v1, v0

    .line 143
    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzd:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    return-void

    .line 145
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzb:[B
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3

    add-int/lit8 v2, v0, 0x1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    :try_start_3
    aput-byte v3, v1, v0
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    ushr-int/lit8 v3, p1, 0x7

    and-int/lit8 v4, v3, -0x80

    if-nez v4, :cond_1

    add-int/lit8 v0, v0, 0x2

    int-to-byte p1, v3

    .line 148
    :try_start_4
    aput-byte p1, v1, v2

    .line 149
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzd:I
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_3

    return-void

    :cond_1
    add-int/lit8 v4, v0, 0x2

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    .line 151
    :try_start_5
    aput-byte v3, v1, v2
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    ushr-int/lit8 v2, p1, 0xe

    and-int/lit8 v3, v2, -0x80

    if-nez v3, :cond_2

    add-int/lit8 v0, v0, 0x3

    int-to-byte p1, v2

    .line 154
    :try_start_6
    aput-byte p1, v1, v4

    .line 155
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzd:I
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_3

    return-void

    :cond_2
    add-int/lit8 v3, v0, 0x3

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    .line 157
    :try_start_7
    aput-byte v2, v1, v4
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_0

    ushr-int/lit8 v2, p1, 0x15

    and-int/lit8 v4, v2, -0x80

    if-nez v4, :cond_3

    add-int/lit8 v0, v0, 0x4

    int-to-byte p1, v2

    .line 160
    :try_start_8
    aput-byte p1, v1, v3

    .line 161
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzd:I
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_3

    return-void

    :cond_3
    add-int/lit8 v4, v0, 0x4

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    .line 163
    :try_start_9
    aput-byte v2, v1, v3
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_1

    ushr-int/lit8 p1, p1, 0x1c

    add-int/lit8 v0, v0, 0x5

    int-to-byte p1, p1

    .line 165
    :try_start_a
    aput-byte p1, v1, v4

    .line 166
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzd:I
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_3

    return-void

    :catch_0
    move-exception p1

    move v0, v3

    goto :goto_0

    :catch_1
    move-exception p1

    move v0, v4

    goto :goto_0

    :catch_2
    move-exception p1

    move v0, v2

    goto :goto_0

    :catch_3
    move-exception p1

    .line 169
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzakz;

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakx;->zzc:I

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakz;-><init>(IIILjava/lang/Throwable;)V

    throw v1
.end method

.method public final zzc(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    .line 135
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(I)V

    return-void
.end method

.method public final zzd(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 137
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(II)V

    .line 138
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(I)V

    return-void
.end method
