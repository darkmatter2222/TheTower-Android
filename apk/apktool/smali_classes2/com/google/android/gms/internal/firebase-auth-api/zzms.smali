.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzms;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"


# static fields
.field public static final zza:[B

.field public static final zzb:[B

.field public static final zzc:[B

.field public static final zzd:[B

.field public static final zze:[B

.field public static final zzf:[B

.field public static final zzg:[B

.field public static final zzh:[B

.field public static final zzi:[B

.field public static final zzj:[B

.field public static final zzk:[B

.field public static final zzl:[B

.field private static final zzm:[B

.field private static final zzn:[B

.field private static final zzo:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 41
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zza(II)[B

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zza:[B

    const/4 v2, 0x2

    .line 42
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zza(II)[B

    const/16 v3, 0x20

    .line 43
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zza(II)[B

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zzb:[B

    const/16 v3, 0x10

    .line 44
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zza(II)[B

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zzc:[B

    const/16 v3, 0x11

    .line 45
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zza(II)[B

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zzd:[B

    const/16 v3, 0x12

    .line 46
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zza(II)[B

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zze:[B

    const/16 v3, 0x647a

    .line 47
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zza(II)[B

    .line 48
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zza(II)[B

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zzf:[B

    .line 49
    invoke-static {v2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zza(II)[B

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zzg:[B

    const/4 v3, 0x3

    .line 50
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zza(II)[B

    move-result-object v4

    sput-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zzh:[B

    .line 51
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zza(II)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zzi:[B

    .line 52
    invoke-static {v2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zza(II)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zzj:[B

    .line 53
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zza(II)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zzk:[B

    .line 54
    new-array v0, v1, [B

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zzl:[B

    .line 55
    const-string v0, "KEM"

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzqu;->zza:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zzm:[B

    .line 56
    const-string v0, "HPKE"

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzqu;->zza:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zzn:[B

    .line 57
    const-string v0, "HPKE-v1"

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzqu;->zza:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zzo:[B

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    if-ne p0, v0, :cond_0

    const/16 p0, 0x20

    return p0

    .line 3
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    if-ne p0, v0, :cond_1

    const/16 p0, 0x41

    return p0

    .line 5
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    if-ne p0, v0, :cond_2

    const/16 p0, 0x61

    return p0

    .line 7
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    if-ne p0, v0, :cond_3

    const/16 p0, 0x85

    return p0

    .line 9
    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    if-ne p0, v0, :cond_4

    const/16 p0, 0x460

    return p0

    .line 11
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to determine KEM-encoding length for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static zza(II)[B
    .locals 4

    const/4 v0, 0x4

    if-gt p0, v0, :cond_3

    if-ltz p0, :cond_3

    if-ltz p1, :cond_2

    const/4 v1, 0x1

    if-ge p0, v0, :cond_0

    shl-int/lit8 v0, p0, 0x3

    shl-int v0, v1, v0

    if-ge p1, v0, :cond_2

    .line 63
    :cond_0
    new-array v0, p0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_1

    sub-int v3, p0, v2

    sub-int/2addr v3, v1

    mul-int/lit8 v3, v3, 0x8

    shr-int v3, p1, v3

    int-to-byte v3, v3

    .line 65
    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    .line 62
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "value too large"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 60
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "capacity must be between 0 and 4"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static zza(Ljava/lang/String;[B[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 69
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zzo:[B

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzqu;->zza:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    filled-new-array {v0, p2, p0, p1}, [[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzi;->zza([[B)[B

    move-result-object p0

    return-object p0
.end method

.method static zza(Ljava/lang/String;[B[BI)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 70
    invoke-static {v0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zza(II)[B

    move-result-object p3

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zzo:[B

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzqu;->zza:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    filled-new-array {p3, v0, p2, p0, p1}, [[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzi;->zza([[B)[B

    move-result-object p0

    return-object p0
.end method

.method static zza([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 68
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zzm:[B

    filled-new-array {v0, p0}, [[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzi;->zza([[B)[B

    move-result-object p0

    return-object p0
.end method

.method static zza([B[B[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 58
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zzn:[B

    filled-new-array {v0, p0, p1, p2}, [[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzi;->zza([[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    const/16 v1, 0x20

    if-ne p0, v0, :cond_0

    return v1

    .line 14
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    if-ne p0, v0, :cond_1

    return v1

    .line 16
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    if-ne p0, v0, :cond_2

    const/16 p0, 0x30

    return p0

    .line 18
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    if-ne p0, v0, :cond_3

    const/16 p0, 0x42

    return p0

    .line 20
    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    if-ne p0, v0, :cond_4

    return v1

    .line 22
    :cond_4
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Unrecognized HPKE KEM identifier"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    if-ne p0, v0, :cond_0

    const/16 p0, 0x20

    return p0

    .line 25
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    if-ne p0, v0, :cond_1

    const/16 p0, 0x41

    return p0

    .line 27
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    if-ne p0, v0, :cond_2

    const/16 p0, 0x61

    return p0

    .line 29
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    if-ne p0, v0, :cond_3

    const/16 p0, 0x85

    return p0

    .line 31
    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    if-ne p0, v0, :cond_4

    const/16 p0, 0x4c0

    return p0

    .line 33
    :cond_4
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Unrecognized HPKE KEM identifier"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static zzd(Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;)Lcom/google/android/gms/internal/firebase-auth-api/zzzq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    if-ne p0, v0, :cond_0

    .line 35
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzq;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzq;

    return-object p0

    .line 36
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    if-ne p0, v0, :cond_1

    .line 37
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzq;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzzq;

    return-object p0

    .line 38
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkq$zzf;

    if-ne p0, v0, :cond_2

    .line 39
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzzq;

    return-object p0

    .line 40
    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Unrecognized NIST HPKE KEM identifier"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
