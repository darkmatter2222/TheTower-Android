.class final Lcom/google/android/gms/internal/firebase-auth-api/zzbj;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzbe;
.source "com.google.firebase:firebase-auth@@24.2.0"


# instance fields
.field private zza:J

.field private zzb:J

.field private zzc:I


# direct methods
.method constructor <init>(I)V
    .locals 2

    const/16 v0, 0x10

    .line 30
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbe;-><init>(I)V

    int-to-long v0, p1

    .line 31
    iput-wide v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbj;->zza:J

    .line 32
    iput-wide v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbj;->zzb:J

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbj;->zzc:I

    return-void
.end method

.method private static zza(J)J
    .locals 3

    const/16 v0, 0x21

    ushr-long v1, p0, v0

    xor-long/2addr p0, v1

    const-wide v1, -0xae502812aa7333L

    mul-long/2addr p0, v1

    ushr-long v1, p0, v0

    xor-long/2addr p0, v1

    const-wide v1, -0x3b314601e57a13adL    # -2.902039044684214E23

    mul-long/2addr p0, v1

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method private static zzb(J)J
    .locals 2

    const-wide v0, -0x783c846eeebdac2bL

    mul-long/2addr p0, v0

    const/16 v0, 0x1f

    .line 8
    invoke-static {p0, p1, v0}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide p0

    const-wide v0, 0x4cf5ad432745937fL    # 5.573325460219186E62

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method private static zzc(J)J
    .locals 2

    const-wide v0, 0x4cf5ad432745937fL    # 5.573325460219186E62

    mul-long/2addr p0, v0

    const/16 v0, 0x21

    .line 12
    invoke-static {p0, p1, v0}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide p0

    const-wide v0, -0x783c846eeebdac2bL

    mul-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method protected final zza(Ljava/nio/ByteBuffer;)V
    .locals 10

    .line 35
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    .line 36
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    .line 38
    iget-wide v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbj;->zza:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbj;->zzb(J)J

    move-result-wide v0

    xor-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbj;->zza:J

    const/16 p1, 0x1b

    .line 39
    invoke-static {v0, v1, p1}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    .line 40
    iget-wide v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbj;->zzb:J

    add-long/2addr v0, v4

    const-wide/16 v6, 0x5

    mul-long/2addr v0, v6

    const-wide/32 v8, 0x52dce729

    add-long/2addr v0, v8

    .line 41
    iput-wide v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbj;->zza:J

    .line 42
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzbj;->zzc(J)J

    move-result-wide v0

    xor-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbj;->zzb:J

    const/16 p1, 0x1f

    .line 43
    invoke-static {v0, v1, p1}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    .line 44
    iget-wide v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbj;->zza:J

    add-long/2addr v0, v2

    mul-long/2addr v0, v6

    const-wide/32 v2, 0x38495ab5

    add-long/2addr v0, v2

    .line 45
    iput-wide v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbj;->zzb:J

    .line 46
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbj;->zzc:I

    add-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbj;->zzc:I

    return-void
.end method

.method protected final zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzbd;
    .locals 7

    .line 15
    iget-wide v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbj;->zza:J

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbj;->zzc:I

    int-to-long v3, v2

    xor-long/2addr v0, v3

    .line 16
    iget-wide v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbj;->zzb:J

    int-to-long v5, v2

    xor-long v2, v3, v5

    add-long/2addr v0, v2

    .line 17
    iput-wide v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbj;->zza:J

    add-long/2addr v2, v0

    .line 18
    iput-wide v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbj;->zzb:J

    .line 19
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbj;->zza(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbj;->zza:J

    .line 20
    iget-wide v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbj;->zzb:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbj;->zza(J)J

    move-result-wide v0

    .line 21
    iget-wide v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbj;->zza:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbj;->zza:J

    add-long/2addr v0, v2

    .line 22
    iput-wide v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbj;->zzb:J

    const/16 v0, 0x10

    .line 23
    new-array v0, v0, [B

    .line 24
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 25
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbj;->zza:J

    .line 26
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbj;->zzb:J

    .line 27
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbd;->zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzbd;

    move-result-object v0

    return-object v0
.end method

.method protected final zzb(Ljava/nio/ByteBuffer;)V
    .locals 11

    .line 50
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbj;->zzc:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbj;->zzc:I

    .line 51
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x30

    const/16 v2, 0x28

    const/16 v3, 0x20

    const/16 v4, 0x18

    const/16 v5, 0x10

    const/16 v6, 0x8

    const-wide/16 v7, 0x0

    packed-switch v0, :pswitch_data_0

    .line 97
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Should never get here."

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_0
    const/16 v0, 0xe

    .line 52
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v7, v0

    shl-long/2addr v7, v1

    :pswitch_1
    const/16 v0, 0xd

    .line 55
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    shl-long/2addr v0, v2

    xor-long/2addr v7, v0

    :pswitch_2
    const/16 v0, 0xc

    .line 58
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    shl-long/2addr v0, v3

    xor-long/2addr v7, v0

    :pswitch_3
    const/16 v0, 0xb

    .line 61
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    shl-long/2addr v0, v4

    xor-long/2addr v7, v0

    :pswitch_4
    const/16 v0, 0xa

    .line 64
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    shl-long/2addr v0, v5

    xor-long/2addr v7, v0

    :pswitch_5
    const/16 v0, 0x9

    .line 67
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    shl-long/2addr v0, v6

    xor-long/2addr v7, v0

    .line 70
    :pswitch_6
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    xor-long/2addr v7, v0

    .line 73
    :pswitch_7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    goto :goto_6

    :pswitch_8
    const/4 v0, 0x6

    .line 75
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v9, v0

    shl-long v0, v9, v1

    goto :goto_0

    :pswitch_9
    move-wide v0, v7

    :goto_0
    const/4 v9, 0x5

    .line 78
    invoke-virtual {p1, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    int-to-long v9, v9

    shl-long/2addr v9, v2

    xor-long/2addr v0, v9

    goto :goto_1

    :pswitch_a
    move-wide v0, v7

    :goto_1
    const/4 v2, 0x4

    .line 81
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v9, v2

    shl-long v2, v9, v3

    xor-long/2addr v0, v2

    goto :goto_2

    :pswitch_b
    move-wide v0, v7

    :goto_2
    const/4 v2, 0x3

    .line 84
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    goto :goto_3

    :pswitch_c
    move-wide v0, v7

    :goto_3
    const/4 v2, 0x2

    .line 87
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    shl-long/2addr v2, v5

    xor-long/2addr v0, v2

    goto :goto_4

    :pswitch_d
    move-wide v0, v7

    :goto_4
    const/4 v2, 0x1

    .line 90
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    shl-long/2addr v2, v6

    xor-long/2addr v0, v2

    goto :goto_5

    :pswitch_e
    move-wide v0, v7

    :goto_5
    const/4 v2, 0x0

    .line 93
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-long v2, p1

    xor-long/2addr v0, v2

    .line 98
    :goto_6
    iget-wide v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbj;->zza:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbj;->zzb(J)J

    move-result-wide v0

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbj;->zza:J

    .line 99
    iget-wide v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbj;->zzb:J

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzbj;->zzc(J)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbj;->zzb:J

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
