.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzaai;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"


# direct methods
.method public static zza([B[BLjava/lang/String;[B[BI)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    filled-new-array {p0, p1}, [[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzi;->zza([[B)[B

    move-result-object p0

    .line 3
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzzr;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzzr;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzzr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/crypto/Mac;

    .line 4
    invoke-virtual {p1}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v0

    mul-int/lit16 v0, v0, 0xff

    if-gt p5, v0, :cond_3

    if-eqz p3, :cond_1

    .line 6
    array-length v0, p3

    if-nez v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v0, p3, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v0

    new-array v0, v0, [B

    invoke-direct {p3, v0, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, p3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 9
    :goto_1
    invoke-virtual {p1, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0

    .line 10
    new-array p3, p5, [B

    .line 13
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v0, p0, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    const/4 p0, 0x0

    .line 14
    new-array p2, p0, [B

    const/4 v0, 0x1

    move v1, p0

    .line 15
    :goto_2
    invoke-virtual {p1, p2}, Ljavax/crypto/Mac;->update([B)V

    .line 16
    invoke-virtual {p1, p4}, Ljavax/crypto/Mac;->update([B)V

    int-to-byte p2, v0

    .line 17
    invoke-virtual {p1, p2}, Ljavax/crypto/Mac;->update(B)V

    .line 18
    invoke-virtual {p1}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p2

    .line 19
    array-length v2, p2

    add-int/2addr v2, v1

    if-ge v2, p5, :cond_2

    .line 20
    array-length v2, p2

    invoke-static {p2, p0, p3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    array-length v2, p2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    sub-int/2addr p5, v1

    .line 23
    invoke-static {p2, p0, p3, v1, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p3

    .line 5
    :cond_3
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "size too large"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
