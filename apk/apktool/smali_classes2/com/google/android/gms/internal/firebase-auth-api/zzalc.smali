.class final Lcom/google/android/gms/internal/firebase-auth-api/zzalc;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzaky;
.source "com.google.firebase:firebase-auth@@24.2.0"


# instance fields
.field private final zzb:[B

.field private final zzc:I

.field private zzd:I

.field private zze:I

.field private final zzf:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzalb;)V

    if-eqz p1, :cond_1

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzf:Ljava/io/OutputStream;

    if-ltz p2, :cond_0

    const/16 p1, 0x14

    .line 8
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzb:[B

    .line 9
    array-length p1, p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzc:I

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bufferSize must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "out"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zzb(B)V
    .locals 2

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzd:I

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzb:[B

    aput-byte p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 13
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzd:I

    .line 14
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zze:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zze:I

    return-void
.end method

.method private final zzc([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzc:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzd:I

    sub-int v2, v0, v1

    if-lt v2, p3, :cond_0

    .line 155
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzb:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzd:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzd:I

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v1

    .line 159
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzb:[B

    invoke-static {p1, p2, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 162
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzc:I

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzd:I

    .line 163
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zze:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zze:I

    .line 164
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzd()V

    .line 165
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzc:I

    if-gt p3, v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzb:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    iput p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzd:I

    goto :goto_0

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzf:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 169
    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zze:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zze:I

    return-void
.end method

.method private final zzd()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzf:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzb:[B

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzd:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 142
    iput v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzd:I

    return-void
.end method

.method private final zzf(J)V
    .locals 7

    .line 24
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzd:I

    .line 25
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzb:[B

    add-int/lit8 v2, v0, 0x1

    long-to-int v3, p1

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v3, v0, 0x2

    const/16 v4, 0x8

    shr-long v5, p1, v4

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 26
    aput-byte v5, v1, v2

    add-int/lit8 v2, v0, 0x3

    const/16 v5, 0x10

    shr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 27
    aput-byte v5, v1, v3

    add-int/lit8 v3, v0, 0x4

    const/16 v5, 0x18

    shr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 28
    aput-byte v5, v1, v2

    add-int/lit8 v2, v0, 0x5

    const/16 v5, 0x20

    shr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 29
    aput-byte v5, v1, v3

    add-int/lit8 v3, v0, 0x6

    const/16 v5, 0x28

    shr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 30
    aput-byte v5, v1, v2

    add-int/lit8 v2, v0, 0x7

    const/16 v5, 0x30

    shr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 31
    aput-byte v5, v1, v3

    add-int/2addr v0, v4

    const/16 v3, 0x38

    shr-long/2addr p1, v3

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 32
    aput-byte p1, v1, v2

    .line 33
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzd:I

    .line 34
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zze:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zze:I

    return-void
.end method

.method private final zzg(I)V
    .locals 5

    .line 16
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzd:I

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzb:[B

    add-int/lit8 v2, v0, 0x1

    int-to-byte v3, p1

    aput-byte v3, v1, v0

    add-int/lit8 v3, v0, 0x2

    shr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    .line 18
    aput-byte v4, v1, v2

    add-int/lit8 v2, v0, 0x3

    shr-int/lit8 v4, p1, 0x10

    int-to-byte v4, v4

    .line 19
    aput-byte v4, v1, v3

    add-int/lit8 v0, v0, 0x4

    shr-int/lit8 p1, p1, 0x18

    .line 20
    aput-byte p1, v1, v2

    .line 21
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzd:I

    .line 22
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zze:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zze:I

    return-void
.end method

.method private final zzg(J)V
    .locals 12

    .line 73
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzd:I

    .line 74
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zze:I

    const-wide/16 v2, -0x80

    and-long v4, p1, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 76
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzb:[B

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v2, v0

    add-int/lit8 v0, v0, 0x1

    .line 77
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzd:I

    add-int/lit8 v1, v1, 0x1

    .line 78
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zze:I

    return-void

    .line 80
    :cond_0
    iget-object v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzb:[B

    long-to-int v5, p1

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    const/4 v5, 0x7

    ushr-long v8, p1, v5

    and-long v10, v8, v2

    cmp-long v10, v10, v6

    if-nez v10, :cond_1

    add-int/lit8 p1, v0, 0x1

    long-to-int p2, v8

    int-to-byte p2, p2

    .line 83
    aput-byte p2, v4, p1

    add-int/lit8 v0, v0, 0x2

    .line 84
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzd:I

    add-int/lit8 v1, v1, 0x2

    .line 85
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zze:I

    return-void

    :cond_1
    add-int/lit8 v10, v0, 0x1

    long-to-int v8, v8

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 87
    aput-byte v8, v4, v10

    const/16 v8, 0xe

    ushr-long v8, p1, v8

    and-long v10, v8, v2

    cmp-long v10, v10, v6

    if-nez v10, :cond_2

    add-int/lit8 p1, v0, 0x2

    long-to-int p2, v8

    int-to-byte p2, p2

    .line 90
    aput-byte p2, v4, p1

    add-int/lit8 v0, v0, 0x3

    .line 91
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzd:I

    add-int/lit8 v1, v1, 0x3

    .line 92
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zze:I

    return-void

    :cond_2
    add-int/lit8 v10, v0, 0x2

    long-to-int v8, v8

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 94
    aput-byte v8, v4, v10

    const/16 v8, 0x15

    ushr-long v8, p1, v8

    and-long v10, v8, v2

    cmp-long v10, v10, v6

    if-nez v10, :cond_3

    add-int/lit8 p1, v0, 0x3

    long-to-int p2, v8

    int-to-byte p2, p2

    .line 97
    aput-byte p2, v4, p1

    add-int/lit8 v0, v0, 0x4

    .line 98
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzd:I

    add-int/lit8 v1, v1, 0x4

    .line 99
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zze:I

    return-void

    :cond_3
    add-int/lit8 v10, v0, 0x3

    long-to-int v8, v8

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 101
    aput-byte v8, v4, v10

    const/16 v8, 0x1c

    ushr-long v8, p1, v8

    and-long v10, v8, v2

    cmp-long v10, v10, v6

    if-nez v10, :cond_4

    add-int/lit8 p1, v0, 0x4

    long-to-int p2, v8

    int-to-byte p2, p2

    .line 104
    aput-byte p2, v4, p1

    add-int/lit8 v0, v0, 0x5

    .line 105
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzd:I

    add-int/lit8 v1, v1, 0x5

    .line 106
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zze:I

    return-void

    :cond_4
    add-int/lit8 v10, v0, 0x4

    long-to-int v8, v8

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 108
    aput-byte v8, v4, v10

    const/16 v8, 0x23

    ushr-long v8, p1, v8

    and-long v10, v8, v2

    cmp-long v10, v10, v6

    if-nez v10, :cond_5

    add-int/lit8 p1, v0, 0x5

    long-to-int p2, v8

    int-to-byte p2, p2

    .line 111
    aput-byte p2, v4, p1

    add-int/lit8 v0, v0, 0x6

    .line 112
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzd:I

    add-int/lit8 v1, v1, 0x6

    .line 113
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zze:I

    return-void

    :cond_5
    add-int/lit8 v10, v0, 0x5

    long-to-int v8, v8

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 115
    aput-byte v8, v4, v10

    const/16 v8, 0x2a

    ushr-long v8, p1, v8

    and-long v10, v8, v2

    cmp-long v10, v10, v6

    if-nez v10, :cond_6

    add-int/lit8 p1, v0, 0x6

    long-to-int p2, v8

    int-to-byte p2, p2

    .line 118
    aput-byte p2, v4, p1

    add-int/2addr v0, v5

    .line 119
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzd:I

    add-int/2addr v1, v5

    .line 120
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zze:I

    return-void

    :cond_6
    add-int/lit8 v5, v0, 0x6

    long-to-int v8, v8

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 122
    aput-byte v8, v4, v5

    const/16 v5, 0x31

    ushr-long v8, p1, v5

    and-long v10, v8, v2

    cmp-long v5, v10, v6

    if-nez v5, :cond_7

    add-int/lit8 p1, v0, 0x7

    long-to-int p2, v8

    int-to-byte p2, p2

    .line 125
    aput-byte p2, v4, p1

    add-int/lit8 v0, v0, 0x8

    .line 126
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzd:I

    add-int/lit8 v1, v1, 0x8

    .line 127
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zze:I

    return-void

    :cond_7
    add-int/lit8 v5, v0, 0x7

    long-to-int v8, v8

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 129
    aput-byte v8, v4, v5

    const/16 v5, 0x38

    ushr-long v8, p1, v5

    and-long/2addr v2, v8

    cmp-long v2, v2, v6

    if-nez v2, :cond_8

    add-int/lit8 p1, v0, 0x8

    long-to-int p2, v8

    int-to-byte p2, p2

    .line 132
    aput-byte p2, v4, p1

    add-int/lit8 v0, v0, 0x9

    .line 133
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzd:I

    add-int/lit8 v1, v1, 0x9

    .line 134
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zze:I

    return-void

    :cond_8
    add-int/lit8 v2, v0, 0x8

    long-to-int v3, v8

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    .line 136
    aput-byte v3, v4, v2

    add-int/lit8 v2, v0, 0x9

    const/16 v3, 0x3f

    ushr-long/2addr p1, v3

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 137
    aput-byte p1, v4, v2

    add-int/lit8 v0, v0, 0xa

    .line 138
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzd:I

    add-int/lit8 v1, v1, 0xa

    .line 139
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zze:I

    return-void
.end method

.method private final zzh(I)V
    .locals 5

    .line 40
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzd:I

    .line 41
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zze:I

    and-int/lit8 v2, p1, -0x80

    if-nez v2, :cond_0

    .line 43
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzb:[B

    int-to-byte p1, p1

    aput-byte p1, v2, v0

    add-int/lit8 v0, v0, 0x1

    .line 44
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzd:I

    add-int/lit8 v1, v1, 0x1

    .line 45
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zze:I

    return-void

    .line 47
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzb:[B

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    ushr-int/lit8 v3, p1, 0x7

    and-int/lit8 v4, v3, -0x80

    if-nez v4, :cond_1

    add-int/lit8 p1, v0, 0x1

    int-to-byte v3, v3

    .line 50
    aput-byte v3, v2, p1

    add-int/lit8 v0, v0, 0x2

    .line 51
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzd:I

    add-int/lit8 v1, v1, 0x2

    .line 52
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zze:I

    return-void

    :cond_1
    add-int/lit8 v4, v0, 0x1

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    .line 54
    aput-byte v3, v2, v4

    ushr-int/lit8 v3, p1, 0xe

    and-int/lit8 v4, v3, -0x80

    if-nez v4, :cond_2

    add-int/lit8 p1, v0, 0x2

    int-to-byte v3, v3

    .line 57
    aput-byte v3, v2, p1

    add-int/lit8 v0, v0, 0x3

    .line 58
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzd:I

    add-int/lit8 v1, v1, 0x3

    .line 59
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zze:I

    return-void

    :cond_2
    add-int/lit8 v4, v0, 0x2

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    .line 61
    aput-byte v3, v2, v4

    ushr-int/lit8 v3, p1, 0x15

    and-int/lit8 v4, v3, -0x80

    if-nez v4, :cond_3

    add-int/lit8 p1, v0, 0x3

    int-to-byte v3, v3

    .line 64
    aput-byte v3, v2, p1

    add-int/lit8 v0, v0, 0x4

    .line 65
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzd:I

    add-int/lit8 v1, v1, 0x4

    .line 66
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zze:I

    return-void

    :cond_3
    add-int/lit8 v4, v0, 0x3

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    .line 68
    aput-byte v3, v2, v4

    add-int/lit8 v3, v0, 0x4

    ushr-int/lit8 p1, p1, 0x1c

    int-to-byte p1, p1

    .line 69
    aput-byte p1, v2, v3

    add-int/lit8 v0, v0, 0x5

    .line 70
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzd:I

    add-int/lit8 v1, v1, 0x5

    .line 71
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zze:I

    return-void
.end method

.method private final zzi(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzc:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzd:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzd()V

    :cond_0
    return-void
.end method

.method private final zzj(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzh(I)V

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array or ByteBuffer."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zza(B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzd:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzc:I

    if-ne v0, v1, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzd()V

    .line 152
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzb(B)V

    return-void
.end method

.method public final zza(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 188
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzi(I)V

    .line 189
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzg(I)V

    return-void
.end method

.method public final zza(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xe

    .line 184
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzi(I)V

    const/4 v0, 0x5

    .line 185
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzj(II)V

    .line 186
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzg(I)V

    return-void
.end method

.method public final zza(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x12

    .line 191
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzi(I)V

    const/4 v0, 0x1

    .line 192
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzj(II)V

    .line 193
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzf(J)V

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

    .line 178
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(II)V

    .line 179
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

    .line 214
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(II)V

    const/4 v2, 0x2

    .line 215
    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(II)V

    .line 217
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(II)V

    .line 218
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzamv;)V

    const/4 p1, 0x4

    .line 219
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

    .line 226
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(II)V

    .line 227
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

    const/16 v0, 0xb

    .line 171
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzi(I)V

    const/4 v0, 0x0

    .line 172
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzj(II)V

    int-to-byte p1, p2

    .line 173
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzb(B)V

    return-void
.end method

.method public final zza(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 195
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzi(I)V

    .line 196
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzf(J)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(I)V

    .line 182
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

    .line 211
    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzamv;->zzl()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(I)V

    .line 212
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

    .line 229
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    .line 230
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzd(I)I

    move-result v1

    add-int v2, v1, v0

    .line 231
    iget v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzc:I

    if-le v2, v3, :cond_0

    .line 232
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 233
    invoke-static {p1, v1, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaog;->zza(Ljava/lang/String;[BII)I

    move-result p1

    .line 234
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(I)V

    .line 235
    invoke-virtual {p0, v1, v2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakc;->zza([BII)V

    return-void

    .line 237
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzd:I

    sub-int/2addr v3, v0

    if-le v2, v3, :cond_1

    .line 238
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzd()V

    .line 239
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzd(I)I

    move-result v0

    .line 240
    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzd:I

    if-ne v0, v1, :cond_2

    add-int v1, v2, v0

    .line 242
    :try_start_0
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzd:I

    .line 243
    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzb:[B

    iget v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzc:I

    sub-int/2addr v4, v1

    invoke-static {p1, v3, v1, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaog;->zza(Ljava/lang/String;[BII)I

    move-result p1

    .line 244
    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzd:I

    sub-int v1, p1, v2

    sub-int/2addr v1, v0

    .line 246
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzh(I)V

    .line 247
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzd:I

    goto :goto_0

    .line 249
    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaog;->zza(Ljava/lang/String;)I

    move-result v1

    .line 250
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzh(I)V

    .line 251
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzb:[B

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzd:I

    invoke-static {p1, v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaog;->zza(Ljava/lang/String;[BII)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzd:I

    .line 252
    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zze:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zze:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 255
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

    .line 209
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzc([BII)V

    return-void
.end method

.method public final zzb()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzd:I

    if-lez v0, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzd()V

    :cond_0
    return-void
.end method

.method public final zzb(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 206
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    .line 207
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzb(J)V

    return-void
.end method

.method public final zzb(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    .line 198
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzi(I)V

    const/4 v0, 0x0

    .line 199
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzj(II)V

    if-ltz p2, :cond_0

    .line 202
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzh(I)V

    return-void

    :cond_0
    int-to-long p1, p2

    .line 203
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzg(J)V

    return-void
.end method

.method public final zzb(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    .line 267
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzi(I)V

    const/4 v0, 0x0

    .line 268
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzj(II)V

    .line 269
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzg(J)V

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

    .line 221
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(II)V

    const/4 v2, 0x2

    .line 222
    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(II)V

    .line 223
    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zza(ILcom/google/android/gms/internal/firebase-auth-api/zzakb;)V

    const/4 p1, 0x4

    .line 224
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(II)V

    return-void
.end method

.method public final zzb(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 271
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzi(I)V

    .line 272
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzg(J)V

    return-void
.end method

.method public final zzb([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(I)V

    const/4 p2, 0x0

    .line 176
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzc([BII)V

    return-void
.end method

.method public final zzc(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 264
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzi(I)V

    .line 265
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzh(I)V

    return-void
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

    .line 258
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

    const/16 v0, 0x14

    .line 260
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzi(I)V

    const/4 v0, 0x0

    .line 261
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzj(II)V

    .line 262
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzalc;->zzh(I)V

    return-void
.end method
