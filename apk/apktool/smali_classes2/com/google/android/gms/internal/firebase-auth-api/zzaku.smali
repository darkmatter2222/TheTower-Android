.class final Lcom/google/android/gms/internal/firebase-auth-api/zzaku;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzakn;
.source "com.google.firebase:firebase-auth@@24.2.0"


# instance fields
.field private final zze:Ljava/io/InputStream;

.field private final zzf:[B

.field private zzg:I

.field private zzh:I

.field private zzi:I

.field private zzj:I

.field private zzk:I

.field private zzl:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    const/4 p2, 0x0

    .line 199
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzakt;)V

    const p2, 0x7fffffff

    .line 200
    iput p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzl:I

    .line 201
    const-string p2, "input"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzalw;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 202
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zze:Ljava/io/InputStream;

    const/16 p1, 0x1000

    .line 203
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzf:[B

    const/4 p1, 0x0

    .line 204
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzg:I

    .line 205
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    .line 206
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzk:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;ILcom/google/android/gms/internal/firebase-auth-api/zzakt;)V
    .locals 0

    const/16 p2, 0x1000

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method private static zza(Ljava/io/InputStream;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzamd; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzk()V

    .line 9
    throw p0
.end method

.method private static zza(Ljava/io/InputStream;[BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzamd; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzk()V

    .line 25
    throw p0
.end method

.method private static zza(Ljava/io/InputStream;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzamd; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 118
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzk()V

    .line 119
    throw p0
.end method

.method private static zza(III)Z
    .locals 0

    if-lt p2, p0, :cond_1

    sub-int/2addr p2, p0

    if-le p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private final zza(IZ)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzj(I)[B

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    .line 331
    :cond_0
    iget p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    .line 332
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzg:I

    sub-int v1, v0, p2

    .line 333
    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzk:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzk:I

    const/4 v0, 0x0

    .line 334
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    .line 335
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzg:I

    sub-int v2, p1, v1

    .line 337
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzf(I)Ljava/util/List;

    move-result-object v2

    .line 338
    new-array p1, p1, [B

    .line 339
    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzf:[B

    invoke-static {v3, p2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 341
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 342
    array-length v3, v2

    invoke-static {v2, v0, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 343
    array-length v2, v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private final zzaa()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    .line 37
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzg:I

    if-eq v1, v0, :cond_6

    .line 38
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzf:[B

    add-int/lit8 v3, v0, 0x1

    .line 39
    aget-byte v4, v2, v0

    if-ltz v4, :cond_0

    .line 40
    iput v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    return v4

    :cond_0
    sub-int/2addr v1, v3

    const/16 v5, 0x9

    if-lt v1, v5, :cond_6

    add-int/lit8 v1, v0, 0x2

    .line 43
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v3, v4

    if-gez v3, :cond_1

    xor-int/lit8 v0, v3, -0x80

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v0, 0x3

    .line 45
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v1, v3

    if-ltz v1, :cond_2

    xor-int/lit16 v0, v1, 0x3f80

    :goto_0
    move v1, v4

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v0, 0x4

    .line 47
    aget-byte v4, v2, v4

    shl-int/lit8 v4, v4, 0x15

    xor-int/2addr v1, v4

    if-gez v1, :cond_3

    const v0, -0x1fc080

    xor-int/2addr v0, v1

    :goto_1
    move v1, v3

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v0, 0x5

    .line 49
    aget-byte v3, v2, v3

    shl-int/lit8 v5, v3, 0x1c

    xor-int/2addr v1, v5

    const v5, 0xfe03f80

    xor-int/2addr v1, v5

    if-gez v3, :cond_5

    add-int/lit8 v3, v0, 0x6

    .line 52
    aget-byte v4, v2, v4

    if-gez v4, :cond_4

    add-int/lit8 v4, v0, 0x7

    aget-byte v3, v2, v3

    if-gez v3, :cond_5

    add-int/lit8 v3, v0, 0x8

    aget-byte v4, v2, v4

    if-gez v4, :cond_4

    add-int/lit8 v4, v0, 0x9

    aget-byte v3, v2, v3

    if-gez v3, :cond_5

    add-int/lit8 v0, v0, 0xa

    aget-byte v2, v2, v4

    if-ltz v2, :cond_6

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_0

    .line 53
    :goto_2
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    return v0

    .line 55
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzm()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private final zzab()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    .line 71
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzg:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 72
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzg(I)V

    .line 73
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzf:[B

    add-int/lit8 v3, v0, 0x8

    .line 75
    iput v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    .line 76
    aget-byte v3, v1, v0

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x10

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x18

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x20

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x28

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x30

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private final zzac()J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    .line 78
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzg:I

    if-eq v1, v0, :cond_9

    .line 79
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzf:[B

    add-int/lit8 v3, v0, 0x1

    .line 80
    aget-byte v4, v2, v0

    if-ltz v4, :cond_0

    .line 81
    iput v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    int-to-long v0, v4

    return-wide v0

    :cond_0
    sub-int/2addr v1, v3

    const/16 v5, 0x9

    if-lt v1, v5, :cond_9

    add-int/lit8 v1, v0, 0x2

    .line 84
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v3, v4

    if-gez v3, :cond_1

    xor-int/lit8 v0, v3, -0x80

    int-to-long v2, v0

    goto/16 :goto_2

    :cond_1
    add-int/lit8 v4, v0, 0x3

    .line 86
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v1, v3

    if-ltz v1, :cond_2

    xor-int/lit16 v0, v1, 0x3f80

    int-to-long v2, v0

    move v1, v4

    goto/16 :goto_2

    :cond_2
    add-int/lit8 v3, v0, 0x4

    .line 88
    aget-byte v4, v2, v4

    shl-int/lit8 v4, v4, 0x15

    xor-int/2addr v1, v4

    if-gez v1, :cond_3

    const v0, -0x1fc080

    xor-int/2addr v0, v1

    int-to-long v0, v0

    move-wide v10, v0

    move v1, v3

    move-wide v2, v10

    goto/16 :goto_2

    :cond_3
    int-to-long v4, v1

    add-int/lit8 v1, v0, 0x5

    .line 90
    aget-byte v3, v2, v3

    int-to-long v6, v3

    const/16 v3, 0x1c

    shl-long/2addr v6, v3

    xor-long v3, v4, v6

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_4

    const-wide/32 v5, 0xfe03f80

    :goto_0
    xor-long v2, v3, v5

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v0, 0x6

    .line 92
    aget-byte v1, v2, v1

    int-to-long v8, v1

    const/16 v1, 0x23

    shl-long/2addr v8, v1

    xor-long/2addr v3, v8

    cmp-long v1, v3, v5

    if-gez v1, :cond_5

    const-wide v0, -0x7f01fc080L

    :goto_1
    xor-long v2, v3, v0

    move v1, v7

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v0, 0x7

    .line 94
    aget-byte v7, v2, v7

    int-to-long v7, v7

    const/16 v9, 0x2a

    shl-long/2addr v7, v9

    xor-long/2addr v3, v7

    cmp-long v7, v3, v5

    if-ltz v7, :cond_6

    const-wide v5, 0x3f80fe03f80L

    goto :goto_0

    :cond_6
    add-int/lit8 v7, v0, 0x8

    .line 96
    aget-byte v1, v2, v1

    int-to-long v8, v1

    const/16 v1, 0x31

    shl-long/2addr v8, v1

    xor-long/2addr v3, v8

    cmp-long v1, v3, v5

    if-gez v1, :cond_7

    const-wide v0, -0x1fc07f01fc080L

    goto :goto_1

    :cond_7
    add-int/lit8 v1, v0, 0x9

    .line 98
    aget-byte v7, v2, v7

    int-to-long v7, v7

    const/16 v9, 0x38

    shl-long/2addr v7, v9

    xor-long/2addr v3, v7

    cmp-long v7, v3, v5

    if-ltz v7, :cond_8

    const-wide v5, 0xfe03f80fe03f80L

    goto :goto_0

    :cond_8
    add-int/lit8 v0, v0, 0xa

    .line 100
    aget-byte v1, v2, v1

    int-to-long v1, v1

    const/16 v7, 0x3f

    shl-long/2addr v1, v7

    xor-long/2addr v1, v3

    cmp-long v3, v1, v5

    if-ltz v3, :cond_9

    const-wide v3, -0x7f01fc07f01fc080L    # -6.838959413692434E-304

    xor-long v2, v1, v3

    move v1, v0

    .line 102
    :goto_2
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    return-wide v2

    .line 104
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzm()J

    move-result-wide v0

    return-wide v0
.end method

.method private final zzad()V
    .locals 3

    .line 214
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzg:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzh:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzg:I

    .line 215
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzk:I

    add-int/2addr v1, v0

    .line 216
    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzl:I

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    .line 217
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzh:I

    sub-int/2addr v0, v1

    .line 218
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzg:I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 219
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzh:I

    return-void
.end method

.method private final zzf(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-lez p1, :cond_2

    const/16 v1, 0x1000

    .line 186
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    .line 189
    iget-object v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zze:Ljava/io/InputStream;

    sub-int v5, v1, v3

    invoke-static {v4, v2, v3, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zza(Ljava/io/InputStream;[BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 192
    iget v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzk:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzk:I

    add-int/2addr v3, v4

    goto :goto_1

    .line 191
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzj()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object p1

    throw p1

    :cond_1
    sub-int/2addr p1, v1

    .line 196
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private final zzg(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzc:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzk:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    .line 223
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzi()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object p1

    throw p1

    .line 224
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzj()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object p1

    throw p1

    :cond_1
    return-void
.end method

.method private final zzh(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzg:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    add-int/2addr v1, p1

    .line 227
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    return-void

    :cond_0
    if-ltz p1, :cond_8

    .line 231
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzk:I

    add-int/2addr v0, v1

    .line 232
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzc:I

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zza(III)Z

    move-result v1

    if-nez v1, :cond_7

    .line 234
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzl:I

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zza(III)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 235
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzl:I

    if-lt p1, v0, :cond_1

    sub-int/2addr p1, v0

    .line 236
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzh(I)V

    .line 237
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzj()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object p1

    throw p1

    .line 239
    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzk:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzk:I

    .line 240
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzg:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 241
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzg:I

    .line 242
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    :goto_0
    if-ge v0, p1, :cond_4

    sub-int v1, p1, v0

    .line 245
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zze:Ljava/io/InputStream;

    int-to-long v3, v1

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zza(Ljava/io/InputStream;J)J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-ltz v5, :cond_3

    cmp-long v3, v1, v3

    if-gtz v3, :cond_3

    if-eqz v5, :cond_4

    long-to-int v1, v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 247
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zze:Ljava/io/InputStream;

    .line 248
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#skip returned invalid result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nThe InputStream implementation is buggy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 255
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzk:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzk:I

    .line 256
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzad()V

    .line 257
    throw p1

    .line 252
    :cond_4
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzk:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzk:I

    .line 253
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzad()V

    if-ge v0, p1, :cond_6

    .line 259
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzg:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    sub-int v1, v0, v1

    .line 260
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    const/4 v0, 0x1

    .line 261
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzg(I)V

    :goto_1
    sub-int v2, p1, v1

    .line 262
    iget v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzg:I

    if-le v2, v3, :cond_5

    add-int/2addr v1, v3

    .line 264
    iput v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    .line 265
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzg(I)V

    goto :goto_1

    .line 266
    :cond_5
    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    :cond_6
    return-void

    .line 233
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzi()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object p1

    throw p1

    .line 230
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object p1

    throw p1
.end method

.method private final zzi(I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    add-int v1, v0, p1

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzg:I

    if-le v1, v2, :cond_8

    .line 305
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzk:I

    add-int/2addr v1, v0

    .line 306
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzc:I

    invoke-static {v1, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zza(III)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    .line 308
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzl:I

    invoke-static {v1, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zza(III)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 310
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    if-lez v0, :cond_3

    .line 312
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzg:I

    if-le v1, v0, :cond_2

    .line 313
    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzf:[B

    sub-int/2addr v1, v0

    invoke-static {v3, v0, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 314
    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzk:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzk:I

    .line 315
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzg:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzg:I

    .line 316
    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    .line 317
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zze:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzf:[B

    iget v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzg:I

    array-length v4, v1

    sub-int/2addr v4, v3

    iget v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzc:I

    iget v6, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzk:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzg:I

    sub-int/2addr v5, v6

    .line 318
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 319
    invoke-static {v0, v1, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zza(Ljava/io/InputStream;[BII)I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, -0x1

    if-lt v0, v1, :cond_7

    .line 320
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzf:[B

    array-length v1, v1

    if-gt v0, v1, :cond_7

    if-lez v0, :cond_6

    .line 324
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzg:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzg:I

    .line 325
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzad()V

    .line 326
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzg:I

    if-ge v0, p1, :cond_5

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi(I)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    return v2

    :cond_5
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_6
    return v2

    .line 321
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zze:Ljava/io/InputStream;

    .line 322
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#read(byte[]) returned invalid result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nThe InputStream implementation is buggy."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 304
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "refillBuffer() called when "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " bytes were already available in buffer"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzj(I)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 347
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzalw;->zza:[B

    return-object p1

    :cond_0
    if-ltz p1, :cond_8

    .line 350
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzk:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    add-int/2addr v0, v1

    .line 351
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzc:I

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zza(III)Z

    move-result v1

    if-nez v1, :cond_7

    .line 353
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzl:I

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zza(III)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 354
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzl:I

    if-lt p1, v0, :cond_1

    sub-int/2addr p1, v0

    .line 355
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzh(I)V

    .line 356
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzj()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object p1

    throw p1

    .line 357
    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzg:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    sub-int/2addr v0, v1

    sub-int v1, p1, v0

    const/16 v2, 0x1000

    if-lt v1, v2, :cond_4

    .line 359
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zze:Ljava/io/InputStream;

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zza(Ljava/io/InputStream;)I

    move-result v2

    if-gt v1, v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1

    .line 360
    :cond_4
    :goto_0
    new-array v1, p1, [B

    .line 361
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzf:[B

    iget v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 362
    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzk:I

    iget v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzg:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzk:I

    .line 363
    iput v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    .line 364
    iput v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzg:I

    :goto_1
    if-ge v0, p1, :cond_6

    .line 367
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zze:Ljava/io/InputStream;

    sub-int v3, p1, v0

    invoke-static {v2, v1, v0, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zza(Ljava/io/InputStream;[BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    .line 370
    iget v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzk:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzk:I

    add-int/2addr v0, v2

    goto :goto_1

    .line 369
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzj()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object p1

    throw p1

    :cond_6
    return-object v1

    .line 352
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzi()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object p1

    throw p1

    .line 349
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object p1

    throw p1
.end method

.method private final zzy()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzg:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzg(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzf:[B

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    aget-byte v0, v0, v1

    return v0
.end method

.method private final zzz()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    .line 30
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzg:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 31
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzg(I)V

    .line 32
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzf:[B

    add-int/lit8 v2, v0, 0x4

    .line 34
    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    .line 35
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0
.end method


# virtual methods
.method public final zza()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzab()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final zzb()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzz()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final zzb(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzamd;
        }
    .end annotation

    if-ltz p1, :cond_2

    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzk:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    add-int/2addr v0, v1

    const v1, 0x7fffffff

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_1

    .line 16
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzl:I

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zza(III)Z

    move-result v1

    if-nez v1, :cond_0

    .line 18
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzl:I

    add-int/2addr v0, p1

    .line 19
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzl:I

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzad()V

    return v1

    .line 17
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzj()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object p1

    throw p1

    .line 15
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzi()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object p1

    throw p1

    .line 12
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object p1

    throw p1
.end method

.method public final zzc()I
    .locals 2

    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzk:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final zzc(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzamd;
        }
    .end annotation

    .line 208
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzj:I

    if-ne v0, p1, :cond_0

    return-void

    .line 209
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object p1

    throw p1
.end method

.method public final zzd()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzaa()I

    move-result v0

    return v0
.end method

.method public final zzd(I)V
    .locals 0

    .line 211
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzl:I

    .line 212
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzad()V

    return-void
.end method

.method public final zze()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzz()I

    move-result v0

    return v0
.end method

.method public final zze(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x5

    if-ne v0, p1, :cond_0

    .line 300
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzh(I)V

    return v2

    .line 302
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzamg;

    move-result-object p1

    throw p1

    .line 298
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzu()V

    return v1

    .line 292
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzv()V

    ushr-int/2addr p1, v4

    shl-int/2addr p1, v4

    or-int/2addr p1, v3

    .line 296
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc(I)V

    return v2

    .line 290
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzaa()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzh(I)V

    return v2

    :cond_4
    const/16 p1, 0x8

    .line 288
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzh(I)V

    return v2

    .line 275
    :cond_5
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzg:I

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    sub-int/2addr p1, v0

    const/16 v0, 0xa

    if-lt p1, v0, :cond_7

    :goto_0
    if-ge v1, v0, :cond_6

    .line 278
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzf:[B

    iget v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    aget-byte p1, p1, v3

    if-gez p1, :cond_8

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 280
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object p1

    throw p1

    :cond_7
    :goto_1
    if-ge v1, v0, :cond_9

    .line 284
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzy()B

    move-result p1

    if-gez p1, :cond_8

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    return v2

    .line 286
    :cond_9
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object p1

    throw p1
.end method

.method public final zzf()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzaa()I

    move-result v0

    return v0
.end method

.method public final zzg()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzz()I

    move-result v0

    return v0
.end method

.method public final zzh()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzaa()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zza(I)I

    move-result v0

    return v0
.end method

.method public final zzi()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzj:I

    return v0

    .line 61
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzaa()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzj:I

    ushr-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_1

    return v0

    .line 65
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v0

    throw v0
.end method

.method public final zzj()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzaa()I

    move-result v0

    return v0
.end method

.method public final zzk()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzab()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzl()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzac()J

    move-result-wide v0

    return-wide v0
.end method

.method final zzm()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    .line 107
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzy()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    .line 112
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v0

    throw v0
.end method

.method public final zzn()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzab()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzo()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzac()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zza(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzp()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzac()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzq()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzaa()I

    move-result v0

    .line 122
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzg:I

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    .line 123
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzf:[B

    invoke-static {v1, v2, v0, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza([BIIZ)Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v1

    .line 124
    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    .line 127
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    return-object v0

    :cond_1
    if-ltz v0, :cond_4

    .line 131
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzj(I)[B

    move-result-object v1

    if-eqz v1, :cond_2

    .line 133
    array-length v0, v1

    invoke-static {v1, v3, v0, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza([BIIZ)Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v0

    return-object v0

    .line 134
    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    .line 135
    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzg:I

    sub-int v4, v2, v1

    .line 136
    iget v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzk:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzk:I

    .line 137
    iput v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    .line 138
    iput v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzg:I

    sub-int v2, v0, v4

    .line 140
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzf(I)Ljava/util/List;

    move-result-object v2

    .line 141
    new-array v0, v0, [B

    .line 142
    iget-object v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzf:[B

    invoke-static {v5, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 145
    array-length v5, v2

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    array-length v2, v2

    add-int/2addr v4, v2

    goto :goto_0

    .line 149
    :cond_3
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zzb([B)Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v0

    return-object v0

    .line 129
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v0

    throw v0
.end method

.method public final zzr()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzaa()I

    move-result v0

    if-lez v0, :cond_0

    .line 152
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzg:I

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 153
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzf:[B

    iget v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 154
    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    .line 157
    const-string v0, ""

    return-object v0

    :cond_1
    if-ltz v0, :cond_3

    .line 160
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzg:I

    if-gt v0, v1, :cond_2

    .line 161
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzg(I)V

    .line 162
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzf:[B

    iget v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 163
    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    return-object v1

    .line 165
    :cond_2
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zza(IZ)[B

    move-result-object v0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    .line 159
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v0

    throw v0
.end method

.method public final zzs()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzaa()I

    move-result v0

    .line 167
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    .line 168
    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzg:I

    sub-int v3, v2, v1

    if-gt v0, v3, :cond_0

    if-lez v0, :cond_0

    .line 169
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzf:[B

    add-int v3, v1, v0

    .line 170
    iput v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 173
    const-string v0, ""

    return-object v0

    :cond_1
    if-ltz v0, :cond_3

    const/4 v1, 0x0

    if-gt v0, v2, :cond_2

    .line 177
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzg(I)V

    .line 178
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzf:[B

    .line 180
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    goto :goto_0

    .line 181
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zza(IZ)[B

    move-result-object v2

    .line 183
    :goto_0
    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaog;->zza([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 175
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v0

    throw v0
.end method

.method public final zzw()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzg:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzi(I)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzx()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaku;->zzac()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
