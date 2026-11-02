.class final Lcom/google/android/gms/internal/firebase-auth-api/zzaog;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaoh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaoi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoi;-><init>()V

    .line 23
    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaog;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaoh;

    return-void
.end method

.method static zza(Ljava/lang/String;)I
    .locals 0

    .line 18
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoh;->zza(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic zza(Ljava/lang/String;I)I
    .locals 4

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge p1, v0, :cond_3

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x800

    if-ge v2, v3, :cond_0

    rsub-int/lit8 v2, v2, 0x7f

    ushr-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x2

    const v3, 0xd800

    if-gt v3, v2, :cond_2

    const v3, 0xdfff

    if-gt v2, v3, :cond_2

    .line 10
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    const/high16 v3, 0x10000

    if-lt v2, v3, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 12
    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaok;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaok;-><init>(II)V

    throw p0

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method static zza(Ljava/lang/String;[BII)I
    .locals 1

    .line 17
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaog;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaoh;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoh;->zza(Ljava/lang/String;[BII)I

    move-result p0

    return p0
.end method

.method static zza([BII)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzamd;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 20
    const-string p0, ""

    return-object p0

    .line 21
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaog;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaoh;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoh;->zza([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static zzb([BII)Z
    .locals 8

    :goto_0
    if-ge p1, p2, :cond_0

    .line 25
    aget-byte v0, p0, p1

    if-ltz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-lt p1, p2, :cond_1

    return v0

    :cond_1
    :goto_1
    if-lt p1, p2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, p1, 0x1

    .line 32
    aget-byte v2, p0, p1

    if-gez v2, :cond_d

    const/16 v3, -0x20

    const/16 v4, -0x41

    const/4 v5, 0x0

    if-ge v2, v3, :cond_5

    if-lt v1, p2, :cond_3

    return v5

    :cond_3
    const/16 v3, -0x3e

    if-lt v2, v3, :cond_4

    add-int/lit8 p1, p1, 0x2

    .line 36
    aget-byte v1, p0, v1

    if-le v1, v4, :cond_1

    :cond_4
    return v5

    :cond_5
    const/16 v6, -0x10

    if-ge v2, v6, :cond_a

    add-int/lit8 v6, p2, -0x1

    if-lt v1, v6, :cond_6

    return v5

    :cond_6
    add-int/lit8 v6, p1, 0x2

    .line 41
    aget-byte v1, p0, v1

    if-gt v1, v4, :cond_9

    const/16 v7, -0x60

    if-ne v2, v3, :cond_7

    if-lt v1, v7, :cond_9

    :cond_7
    const/16 v3, -0x13

    if-ne v2, v3, :cond_8

    if-ge v1, v7, :cond_9

    :cond_8
    add-int/lit8 p1, p1, 0x3

    aget-byte v1, p0, v6

    if-le v1, v4, :cond_1

    :cond_9
    return v5

    :cond_a
    add-int/lit8 v3, p2, -0x2

    if-lt v1, v3, :cond_b

    return v5

    :cond_b
    add-int/lit8 v3, p1, 0x2

    .line 45
    aget-byte v1, p0, v1

    if-gt v1, v4, :cond_c

    shl-int/lit8 v2, v2, 0x1c

    add-int/lit8 v1, v1, 0x70

    add-int/2addr v2, v1

    shr-int/lit8 v1, v2, 0x1e

    if-nez v1, :cond_c

    add-int/lit8 v1, p1, 0x3

    aget-byte v2, p0, v3

    if-gt v2, v4, :cond_c

    add-int/lit8 p1, p1, 0x4

    aget-byte v1, p0, v1

    if-le v1, v4, :cond_1

    :cond_c
    return v5

    :cond_d
    move p1, v1

    goto :goto_1
.end method
