.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzme;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"


# static fields
.field private static final zza:[B


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzmf;

.field private final zzc:Ljava/math/BigInteger;

.field private final zzd:[B

.field private final zze:[B

.field private final zzf:[B

.field private zzg:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 19
    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzme;->zza:[B

    return-void
.end method

.method private constructor <init>([B[B[BLjava/math/BigInteger;Lcom/google/android/gms/internal/firebase-auth-api/zzmf;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzme;->zzf:[B

    .line 22
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzme;->zzd:[B

    .line 23
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzme;->zze:[B

    .line 24
    sget-object p1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzme;->zzg:Ljava/math/BigInteger;

    .line 25
    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzme;->zzc:Ljava/math/BigInteger;

    .line 26
    iput-object p5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzme;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzmf;

    return-void
.end method

.method static zza([BLcom/google/android/gms/internal/firebase-auth-api/zzmi;Lcom/google/android/gms/internal/firebase-auth-api/zzmj;Lcom/google/android/gms/internal/firebase-auth-api/zzmf;[B)Lcom/google/android/gms/internal/firebase-auth-api/zzme;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 15
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzmi;->zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzml;

    move-result-object p0

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zza()[B

    move-result-object v1

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzml;->zzb()[B

    move-result-object v2

    .line 18
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zza:[B

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzme;->zza([B[B[BLcom/google/android/gms/internal/firebase-auth-api/zzmi;Lcom/google/android/gms/internal/firebase-auth-api/zzmj;Lcom/google/android/gms/internal/firebase-auth-api/zzmf;[B)Lcom/google/android/gms/internal/firebase-auth-api/zzme;

    move-result-object p0

    return-object p0
.end method

.method public static zza([BLcom/google/android/gms/internal/firebase-auth-api/zzmk;Lcom/google/android/gms/internal/firebase-auth-api/zzmi;Lcom/google/android/gms/internal/firebase-auth-api/zzmj;Lcom/google/android/gms/internal/firebase-auth-api/zzmf;[B)Lcom/google/android/gms/internal/firebase-auth-api/zzme;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 13
    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzmi;->zza([BLcom/google/android/gms/internal/firebase-auth-api/zzmk;)[B

    move-result-object v2

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zza:[B

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzme;->zza([B[B[BLcom/google/android/gms/internal/firebase-auth-api/zzmi;Lcom/google/android/gms/internal/firebase-auth-api/zzmj;Lcom/google/android/gms/internal/firebase-auth-api/zzmf;[B)Lcom/google/android/gms/internal/firebase-auth-api/zzme;

    move-result-object p0

    return-object p0
.end method

.method private static zza([B[B[BLcom/google/android/gms/internal/firebase-auth-api/zzmi;Lcom/google/android/gms/internal/firebase-auth-api/zzmj;Lcom/google/android/gms/internal/firebase-auth-api/zzmf;[B)Lcom/google/android/gms/internal/firebase-auth-api/zzme;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzmi;->zza()[B

    move-result-object p3

    invoke-interface {p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzmj;->zzb()[B

    move-result-object v0

    invoke-interface {p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzmf;->zzc()[B

    move-result-object v1

    invoke-static {p3, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zza([B[B[B)[B

    move-result-object v6

    .line 2
    sget-object p3, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zzl:[B

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzme;->zza:[B

    const-string v1, "psk_id_hash"

    invoke-interface {p4, p3, v0, v1, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzmj;->zza([B[BLjava/lang/String;[B)[B

    move-result-object p3

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zzl:[B

    const-string v2, "info_hash"

    invoke-interface {p4, v1, p6, v2, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzmj;->zza([B[BLjava/lang/String;[B)[B

    move-result-object p6

    .line 4
    filled-new-array {p0, p3, p6}, [[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzi;->zza([[B)[B

    move-result-object v4

    .line 5
    const-string p0, "secret"

    invoke-interface {p4, p2, v0, p0, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzmj;->zza([B[BLjava/lang/String;[B)[B

    move-result-object v3

    .line 6
    const-string v5, "key"

    invoke-interface {p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzmf;->zza()I

    move-result v7

    move-object v2, p4

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzmj;->zza([B[BLjava/lang/String;[BI)[B

    move-result-object p2

    .line 7
    const-string v5, "base_nonce"

    .line 8
    invoke-interface {p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzmf;->zzb()I

    move-result v7

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzmj;->zza([B[BLjava/lang/String;[BI)[B

    move-result-object p3

    .line 9
    invoke-interface {p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzmf;->zzb()I

    .line 10
    sget-object p0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/16 p4, 0x60

    invoke-virtual {p0, p4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p0

    sget-object p4, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, p4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p4

    .line 12
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/zzme;

    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzme;-><init>([B[B[BLjava/math/BigInteger;Lcom/google/android/gms/internal/firebase-auth-api/zzmf;)V

    return-object p0
.end method

.method private final declared-synchronized zzb()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzme;->zze:[B

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzme;->zzg:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzme;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzmf;

    .line 30
    invoke-interface {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzmf;->zzb()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zznu;->zza(Ljava/math/BigInteger;I)[B

    move-result-object v1

    .line 31
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzi;->zza([B[B)[B

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzme;->zzg:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzme;->zzc:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzme;->zzg:Ljava/math/BigInteger;

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzme;->zzg:Ljava/math/BigInteger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit p0

    return-object v0

    .line 35
    :cond_0
    :try_start_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "message limit reached"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final zza()[B
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzme;->zzf:[B

    return-object v0
.end method

.method final zza([BI[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzme;->zzb()[B

    move-result-object v2

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzme;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzmf;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzme;->zzd:[B

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzmf;->zza([B[B[BI[B)[B

    move-result-object p1

    return-object p1
.end method

.method final zzb([BI[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzme;->zzb()[B

    move-result-object v2

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzme;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzmf;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzme;->zzd:[B

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzmf;->zzb([B[B[BI[B)[B

    move-result-object p1

    return-object p1
.end method
