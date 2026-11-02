.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzib;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjd$zza;


# instance fields
.field private final zzb:Ljavax/crypto/SecretKey;

.field private final zzc:Ljava/security/Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjd$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjd$zza;

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjd$zza;

    return-void
.end method

.method private constructor <init>([BLjava/security/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjd$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzjd$zza;->zza()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 9
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "ChaCha20"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzib;->zzb:Ljavax/crypto/SecretKey;

    .line 10
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzib;->zzc:Ljava/security/Provider;

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "The key length in bytes must be 32."

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Can not use ChaCha20Poly1305 in FIPS-mode."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzib;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzhp;->zza()Ljavax/crypto/Cipher;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzib;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzib;-><init>([BLjava/security/Provider;)V

    return-object v1
.end method

.method public static zza()Z
    .locals 1

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzhp;->zzb()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final zza([B[BI[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 15
    array-length v0, p1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 17
    array-length v0, p2

    add-int/lit8 v1, p3, 0x10

    if-lt v0, v1, :cond_1

    .line 19
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 20
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzib;->zzc:Ljava/security/Provider;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzhp;->zza(Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 v1, 0x2

    .line 21
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzib;->zzb:Ljavax/crypto/SecretKey;

    invoke-virtual {p1, v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p4, :cond_0

    .line 22
    array-length v0, p4

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p1, p4}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 24
    :cond_0
    array-length p4, p2

    sub-int/2addr p4, p3

    invoke-virtual {p1, p2, p3, p4}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p1

    return-object p1

    .line 18
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "ciphertext too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "nonce length must be 12 bytes."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ciphertext is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzb([B[BI[B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p2, :cond_4

    .line 27
    array-length v0, p1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    .line 29
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 30
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzib;->zzc:Ljava/security/Provider;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzhp;->zza(Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 p1, 0x1

    .line 31
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzib;->zzb:Ljavax/crypto/SecretKey;

    invoke-virtual {v1, p1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p4, :cond_0

    .line 32
    array-length p1, p4

    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {v1, p4}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 34
    :cond_0
    array-length p1, p2

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result p1

    const p4, 0x7fffffff

    sub-int/2addr p4, p3

    if-gt p1, p4, :cond_2

    add-int p4, p3, p1

    .line 38
    new-array v5, p4, [B

    const/4 v3, 0x0

    .line 39
    array-length v4, p2

    move-object v2, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-result p2

    if-ne p2, p1, :cond_1

    return-object v5

    .line 41
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "not enough data written"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "plaintext too long"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "nonce length must be 12 bytes."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "plaintext is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
