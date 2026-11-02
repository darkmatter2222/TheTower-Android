.class final Lcom/google/android/gms/internal/firebase-auth-api/zzakm;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzakj;
.source "com.google.firebase:firebase-auth@@24.2.0"


# instance fields
.field private final zzb:[B


# direct methods
.method constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakj;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzako;)V

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakm;->zzb:[B

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakm;)[B
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakm;->zzb:[B

    return-object p0
.end method


# virtual methods
.method final zza(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakm;->zzb:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public final zza()I
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakm;->zzb:[B

    array-length v0, v0

    return v0
.end method

.method public final zza(II)Lcom/google/android/gms/internal/firebase-auth-api/zzakb;
    .locals 2

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakm;->zza(III)I

    move-result p2

    if-nez p2, :cond_0

    .line 6
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    return-object p1

    .line 7
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzakf;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakm;->zzb:[B

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakf;-><init>([BII)V

    return-object v0
.end method

.method final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakc;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakm;->zzb:[B

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakc;->zza([BII)V

    return-void
.end method

.method protected final zza([BIII)V
    .locals 0

    .line 14
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakm;->zzb:[B

    const/4 p3, 0x0

    invoke-static {p2, p3, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)Z
    .locals 2

    .line 18
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzakm;

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakm;->zzb:[B

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzakm;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzakm;->zzb:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    .line 20
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzakf;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakj;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;II)Z

    move-result p1

    return p1

    .line 22
    :cond_1
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)Z

    move-result p1

    return p1
.end method

.method final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;II)Z
    .locals 2

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza()I

    move-result p2

    if-gt p3, p2, :cond_3

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza()I

    move-result p2

    if-gt p3, p2, :cond_2

    .line 28
    instance-of p2, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzakm;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 29
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzakm;

    .line 30
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakm;->zzb:[B

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzakm;->zzb:[B

    invoke-static {p2, v0, p1, v0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza([BI[BII)Z

    move-result p1

    return p1

    .line 31
    :cond_0
    instance-of p2, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzakf;

    if-eqz p2, :cond_1

    .line 32
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzakf;

    .line 33
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakm;->zzb:[B

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakf;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzakf;)[B

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakf;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakf;)I

    move-result p1

    invoke-static {p2, v0, v1, p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza([BI[BII)Z

    move-result p1

    return p1

    .line 34
    :cond_1
    invoke-virtual {p1, v0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza(II)Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object p1

    invoke-virtual {p0, v0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza(II)Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 26
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ran off end of other: 0, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ", "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 24
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Length too large: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final zzb(III)I
    .locals 1

    .line 2
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakm;->zzb:[B

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzalw;->zza(I[BII)I

    move-result p1

    return p1
.end method

.method public final zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzakn;
    .locals 4

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakm;->zzb:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zza([BIIZ)Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    move-result-object v0

    return-object v0
.end method
