.class abstract Lcom/google/android/gms/internal/firebase-auth-api/zzakq;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzakn;
.source "com.google.firebase:firebase-auth@@24.2.0"


# instance fields
.field private final zze:[B

.field private final zzf:I

.field private zzg:I

.field private zzh:I

.field private zzi:I

.field private zzj:I

.field private zzk:I


# direct methods
.method private constructor <init>([BIIZ)V
    .locals 0

    const/4 p4, 0x0

    .line 175
    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzakt;)V

    const p4, 0x7fffffff

    .line 176
    iput p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzk:I

    .line 177
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zze:[B

    add-int/2addr p3, p2

    .line 178
    iput p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzf:I

    .line 179
    iput p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzg:I

    .line 180
    iput p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzh:I

    .line 181
    iput p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzi:I

    return-void
.end method

.method synthetic constructor <init>([BIIZLcom/google/android/gms/internal/firebase-auth-api/zzakt;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;-><init>([BIIZ)V

    return-void
.end method

.method private final zzac()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzh:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzg:I

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zze:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzh:I

    aget-byte v0, v1, v0

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzj()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v0

    throw v0
.end method

.method private final zzad()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzh:I

    .line 23
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzg:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 25
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zze:[B

    add-int/lit8 v2, v0, 0x4

    .line 26
    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzh:I

    .line 27
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

    .line 24
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzj()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v0

    throw v0
.end method

.method private final zzae()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzh:I

    .line 91
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzg:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 93
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zze:[B

    add-int/lit8 v3, v0, 0x8

    .line 94
    iput v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzh:I

    .line 95
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

    .line 92
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzj()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v0

    throw v0
.end method

.method private final zzaf()J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzh:I

    .line 97
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzg:I

    if-eq v1, v0, :cond_9

    .line 98
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zze:[B

    add-int/lit8 v3, v0, 0x1

    .line 99
    aget-byte v4, v2, v0

    if-ltz v4, :cond_0

    .line 100
    iput v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzh:I

    int-to-long v0, v4

    return-wide v0

    :cond_0
    sub-int/2addr v1, v3

    const/16 v5, 0x9

    if-lt v1, v5, :cond_9

    add-int/lit8 v1, v0, 0x2

    .line 103
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v3, v4

    if-gez v3, :cond_1

    xor-int/lit8 v0, v3, -0x80

    int-to-long v2, v0

    goto/16 :goto_2

    :cond_1
    add-int/lit8 v4, v0, 0x3

    .line 105
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

    .line 107
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

    .line 109
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

    .line 111
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

    .line 113
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

    .line 115
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

    .line 117
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

    .line 119
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

    .line 121
    :goto_2
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzh:I

    return-wide v2

    .line 123
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzm()J

    move-result-wide v0

    return-wide v0
.end method

.method private final zzf(I)V
    .locals 1

    .line 188
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzk:I

    .line 189
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzf:I

    if-gt p1, v0, :cond_0

    .line 190
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzg:I

    return-void

    .line 191
    :cond_0
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzg:I

    return-void
.end method

.method private final zzg(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 193
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzg:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzh:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    add-int/2addr v1, p1

    .line 194
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzh:I

    return-void

    :cond_0
    if-gez p1, :cond_1

    .line 197
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object p1

    throw p1

    .line 198
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzj()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object p1

    throw p1
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
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzae()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method protected final zzaa()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzh:I

    .line 30
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zze:[B

    add-int/lit8 v2, v0, 0x1

    .line 31
    aget-byte v3, v1, v0

    if-gez v3, :cond_6

    add-int/lit8 v4, v0, 0x2

    .line 33
    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v2, v3

    if-gez v2, :cond_0

    xor-int/lit8 v3, v2, -0x80

    :goto_0
    move v2, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v0, 0x3

    .line 35
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0xe

    xor-int/2addr v2, v4

    if-ltz v2, :cond_1

    xor-int/lit16 v0, v2, 0x3f80

    move v2, v3

    move v3, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v0, 0x4

    .line 37
    aget-byte v3, v1, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v2, v3

    if-gez v2, :cond_2

    const v0, -0x1fc080

    xor-int v3, v2, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v0, 0x5

    .line 39
    aget-byte v4, v1, v4

    shl-int/lit8 v5, v4, 0x1c

    xor-int/2addr v2, v5

    const v5, 0xfe03f80

    xor-int/2addr v2, v5

    if-gez v4, :cond_5

    add-int/lit8 v4, v0, 0x6

    .line 42
    aget-byte v3, v1, v3

    if-gez v3, :cond_4

    add-int/lit8 v3, v0, 0x7

    aget-byte v4, v1, v4

    if-gez v4, :cond_5

    add-int/lit8 v4, v0, 0x8

    aget-byte v3, v1, v3

    if-gez v3, :cond_4

    add-int/lit8 v3, v0, 0x9

    aget-byte v4, v1, v4

    if-gez v4, :cond_5

    add-int/lit8 v0, v0, 0xa

    aget-byte v1, v1, v3

    if-ltz v1, :cond_3

    move v3, v2

    move v2, v0

    goto :goto_1

    .line 43
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v0

    throw v0

    :cond_4
    move v3, v2

    goto :goto_0

    :cond_5
    move v6, v3

    move v3, v2

    move v2, v6

    .line 44
    :cond_6
    :goto_1
    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzh:I

    .line 47
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzg:I

    if-gt v2, v0, :cond_7

    return v3

    .line 48
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzj()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzamd; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 53
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzh:I

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzg:I

    if-le v1, v2, :cond_8

    .line 54
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzj()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v0

    throw v0

    .line 55
    :cond_8
    throw v0

    .line 51
    :catch_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzj()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v0

    throw v0
.end method

.method protected final zzab()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzh:I

    .line 57
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzg:I

    if-eq v1, v0, :cond_6

    .line 58
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zze:[B

    add-int/lit8 v3, v0, 0x1

    .line 59
    aget-byte v4, v2, v0

    if-ltz v4, :cond_0

    .line 60
    iput v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzh:I

    return v4

    :cond_0
    sub-int/2addr v1, v3

    const/16 v5, 0x9

    if-lt v1, v5, :cond_6

    add-int/lit8 v1, v0, 0x2

    .line 63
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v3, v4

    if-gez v3, :cond_1

    xor-int/lit8 v0, v3, -0x80

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v0, 0x3

    .line 65
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

    .line 67
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

    .line 69
    aget-byte v3, v2, v3

    shl-int/lit8 v5, v3, 0x1c

    xor-int/2addr v1, v5

    const v5, 0xfe03f80

    xor-int/2addr v1, v5

    if-gez v3, :cond_5

    add-int/lit8 v3, v0, 0x6

    .line 72
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

    .line 73
    :goto_2
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzh:I

    return v0

    .line 75
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzm()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final zzb()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzad()I

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

    if-ltz p1, :cond_3

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzh:I

    add-int v1, v0, p1

    if-gez v1, :cond_1

    .line 11
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzi:I

    sub-int/2addr v0, v1

    const v1, 0x7fffffff

    sub-int v0, v1, v0

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzi()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object p1

    throw p1

    .line 14
    :cond_1
    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzk:I

    if-gt v1, p1, :cond_2

    .line 17
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzf(I)V

    return p1

    .line 16
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzj()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object p1

    throw p1

    .line 8
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object p1

    throw p1
.end method

.method public final zzc()I
    .locals 2

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzh:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzi:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final zzc(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzamd;
        }
    .end annotation

    .line 183
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzj:I

    if-ne v0, p1, :cond_0

    return-void

    .line 184
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

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzy()I

    move-result v0

    return v0
.end method

.method public final zzd(I)V
    .locals 0

    .line 186
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzf(I)V

    return-void
.end method

.method public final zze()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzad()I

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

    .line 230
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzg(I)V

    return v2

    .line 232
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzamg;

    move-result-object p1

    throw p1

    .line 228
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzu()V

    return v1

    .line 222
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzv()V

    ushr-int/2addr p1, v4

    shl-int/2addr p1, v4

    or-int/2addr p1, v3

    .line 226
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc(I)V

    return v2

    .line 220
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzz()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzg(I)V

    return v2

    :cond_4
    const/16 p1, 0x8

    .line 218
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzg(I)V

    return v2

    .line 205
    :cond_5
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzg:I

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzh:I

    sub-int/2addr p1, v0

    const/16 v0, 0xa

    if-lt p1, v0, :cond_7

    :goto_0
    if-ge v1, v0, :cond_6

    .line 208
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zze:[B

    iget v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzh:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzh:I

    aget-byte p1, p1, v3

    if-gez p1, :cond_8

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object p1

    throw p1

    :cond_7
    :goto_1
    if-ge v1, v0, :cond_9

    .line 214
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzac()B

    move-result p1

    if-gez p1, :cond_8

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    return v2

    .line 216
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

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzy()I

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

    .line 76
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzad()I

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

    .line 77
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzz()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zza(I)I

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

    .line 78
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzj:I

    return v0

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzz()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzj:I

    ushr-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_1

    return v0

    .line 85
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

    .line 87
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzz()I

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

    .line 88
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzae()J

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

    .line 89
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzaf()J

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

    .line 126
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzac()B

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

    .line 131
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

    .line 132
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzae()J

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

    .line 133
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzaf()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zza(J)J

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

    .line 134
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzaf()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzq()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzz()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 137
    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzg:I

    iget v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzh:I

    sub-int/2addr v2, v3

    if-gt v0, v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zze:[B

    invoke-static {v2, v3, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza([BIIZ)Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v1

    .line 139
    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzh:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzh:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    .line 142
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    return-object v0

    :cond_1
    if-lez v0, :cond_2

    .line 144
    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzg:I

    iget v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzh:I

    sub-int/2addr v2, v3

    if-gt v0, v2, :cond_2

    add-int/2addr v0, v3

    .line 146
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzh:I

    .line 147
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zze:[B

    invoke-static {v2, v3, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    goto :goto_0

    :cond_2
    if-gtz v0, :cond_4

    if-nez v0, :cond_3

    .line 150
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzalw;->zza:[B

    .line 153
    :goto_0
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza([BZ)Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v0

    return-object v0

    .line 151
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v0

    throw v0

    .line 152
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzj()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

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

    .line 155
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzz()I

    move-result v0

    if-lez v0, :cond_0

    .line 156
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzg:I

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzh:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 157
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zze:[B

    iget v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzh:I

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 158
    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzh:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzh:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    .line 161
    const-string v0, ""

    return-object v0

    :cond_1
    if-gez v0, :cond_2

    .line 163
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v0

    throw v0

    .line 164
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzj()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v0

    throw v0
.end method

.method public final zzs()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzz()I

    move-result v0

    if-lez v0, :cond_0

    .line 166
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzg:I

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzh:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zze:[B

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaog;->zza([BII)Ljava/lang/String;

    move-result-object v1

    .line 168
    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzh:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzh:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    .line 171
    const-string v0, ""

    return-object v0

    :cond_1
    if-gtz v0, :cond_2

    .line 173
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v0

    throw v0

    .line 174
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzj()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

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

    .line 199
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzh:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzg:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

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

    .line 200
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzaf()J

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

.method protected abstract zzy()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract zzz()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
