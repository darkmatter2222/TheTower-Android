.class public abstract Lcom/google/android/gms/internal/firebase-auth-api/zzakb;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# static fields
.field public static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

.field private static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzaki;


# instance fields
.field private zzc:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzakm;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzalw;->zza:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakm;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    .line 52
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzakl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakl;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzako;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzaki;

    .line 53
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzakd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakd;-><init>()V

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zzc:I

    return-void
.end method

.method static synthetic zza(B)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method static zza(III)I
    .locals 3

    sub-int v0, p1, p0

    or-int v1, p0, p1

    or-int/2addr v1, v0

    sub-int v2, p2, p1

    or-int/2addr v1, v2

    if-gez v1, :cond_2

    if-ltz p0, :cond_1

    if-ge p1, p0, :cond_0

    .line 9
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Beginning index larger than ending index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "End index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " >= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Beginning index: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " < 0"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return v0
.end method

.method public static zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzakb;
    .locals 2

    const/4 v0, 0x0

    .line 21
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza([BII)Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object p0

    return-object p0
.end method

.method public static zza([BII)Lcom/google/android/gms/internal/firebase-auth-api/zzakb;
    .locals 1

    const/4 v0, 0x0

    .line 22
    :try_start_0
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza([BIIZ)Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzamd; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 24
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Expected no InvalidProtocolBufferException as data UTF8 validity is not checked."

    invoke-direct {p1, p2, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method static zza([BIIZ)Lcom/google/android/gms/internal/firebase-auth-api/zzakb;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzamd;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 26
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    return-object p0

    :cond_0
    add-int p3, p1, p2

    .line 27
    array-length v0, p0

    invoke-static {p1, p3, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza(III)I

    .line 28
    sget-object p3, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzaki;

    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaki;->zza([BII)[B

    move-result-object p0

    .line 29
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzakm;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakm;-><init>([B)V

    return-object p1
.end method

.method static zza([BZ)Lcom/google/android/gms/internal/firebase-auth-api/zzakb;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzamd;
        }
    .end annotation

    .line 33
    array-length p1, p0

    if-nez p1, :cond_0

    .line 34
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    return-object p0

    .line 36
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzakm;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakm;-><init>([B)V

    return-object p1
.end method

.method static synthetic zza([BI[BII)Z
    .locals 2

    add-int v0, p1, p4

    .line 58
    array-length v1, p0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza(III)I

    add-int/2addr p4, p3

    .line 59
    array-length v1, p2

    invoke-static {p3, p4, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza(III)I

    :goto_0
    if-ge p1, v0, :cond_1

    .line 61
    aget-byte p4, p0, p1

    aget-byte v1, p2, p3

    if-eq p4, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method static zzb([B)Lcom/google/android/gms/internal/firebase-auth-api/zzakb;
    .locals 2

    const/4 v0, 0x0

    .line 30
    :try_start_0
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza([BZ)Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzamd; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 32
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Expected no InvalidProtocolBufferException as data UTF8 validity is not checked."

    invoke-direct {v0, v1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zzakk;
    .locals 2

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzakk;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakk;-><init>(ILcom/google/android/gms/internal/firebase-auth-api/zzako;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 68
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 70
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    .line 71
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza()I

    move-result v1

    .line 72
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    if-nez v1, :cond_3

    return v0

    .line 77
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zzc:I

    .line 80
    iget v1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zzc:I

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-eq v0, v1, :cond_4

    return v2

    .line 84
    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 2

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zzc:I

    if-nez v0, :cond_1

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza()I

    move-result v0

    const/4 v1, 0x0

    .line 15
    invoke-virtual {p0, v0, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zzb(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 18
    :cond_0
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zzc:I

    :cond_1
    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 49
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzake;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzake;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 37
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 38
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza()I

    move-result v3

    const/16 v4, 0x32

    if-gt v3, v4, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zzc()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzanw;->zza([B)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/16 v4, 0x2f

    .line 43
    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza(II)Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v3

    .line 44
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zzc()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzanw;->zza([B)Ljava/lang/String;

    move-result-object v3

    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 46
    :goto_0
    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 47
    const-string v2, "<ByteString@%s size=%d contents=\"%s\">"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract zza(I)B
.end method

.method public abstract zza()I
.end method

.method public abstract zza(II)Lcom/google/android/gms/internal/firebase-auth-api/zzakb;
.end method

.method abstract zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakc;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract zza([BIII)V
.end method

.method protected abstract zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)Z
.end method

.method protected abstract zzb(III)I
.end method

.method public abstract zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzakn;
.end method

.method public final zzc()[B
    .locals 3

    .line 85
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza()I

    move-result v0

    if-nez v0, :cond_0

    .line 87
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzalw;->zza:[B

    return-object v0

    .line 88
    :cond_0
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 89
    invoke-virtual {p0, v1, v2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza([BIII)V

    return-object v1
.end method
