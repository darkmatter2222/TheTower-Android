.class Lcom/google/android/gms/internal/nearby/zztg;
.super Lcom/google/android/gms/internal/nearby/zzth;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field final zzb:Lcom/google/android/gms/internal/nearby/zztb;

.field final zzc:Ljava/lang/Character;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nearby/zztb;Ljava/lang/Character;)V
    .locals 2
    .param p2    # Ljava/lang/Character;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/nearby/zzth;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zztg;->zzb:Lcom/google/android/gms/internal/nearby/zztb;

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/nearby/zztb;->zzd(C)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    const-string p1, "Padding character %s was already in alphabet"

    .line 2
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/nearby/zzsg;->zzf(ZLjava/lang/String;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/nearby/zztg;->zzc:Ljava/lang/Character;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V
    .locals 1
    .param p3    # Ljava/lang/Character;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/nearby/zztb;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/nearby/zztb;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v0, p3}, Lcom/google/android/gms/internal/nearby/zztg;-><init>(Lcom/google/android/gms/internal/nearby/zztb;Ljava/lang/Character;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/nearby/zztg;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/nearby/zztg;

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zztg;->zzb:Lcom/google/android/gms/internal/nearby/zztb;

    .line 3
    iget-object v2, p1, Lcom/google/android/gms/internal/nearby/zztg;->zzb:Lcom/google/android/gms/internal/nearby/zztb;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/nearby/zztb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zztg;->zzc:Ljava/lang/Character;

    iget-object p1, p1, Lcom/google/android/gms/internal/nearby/zztg;->zzc:Ljava/lang/Character;

    if-eq v0, p1, :cond_0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zztg;->zzb:Lcom/google/android/gms/internal/nearby/zztb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nearby/zztb;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zztg;->zzc:Ljava/lang/Character;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BaseEncoding."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zztg;->zzb:Lcom/google/android/gms/internal/nearby/zztb;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zztg;->zzb:Lcom/google/android/gms/internal/nearby/zztb;

    iget v1, v1, Lcom/google/android/gms/internal/nearby/zztb;->zzb:I

    const/16 v2, 0x8

    .line 3
    rem-int/2addr v2, v1

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zztg;->zzc:Ljava/lang/Character;

    if-nez v1, :cond_0

    const-string v1, ".omitPadding()"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, ".withPadChar(\'"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zztg;->zzc:Ljava/lang/Character;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method zza([BLjava/lang/CharSequence;)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/nearby/zzte;
        }
    .end annotation

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/nearby/zzth;->zzf(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zztg;->zzb:Lcom/google/android/gms/internal/nearby/zztb;

    .line 2
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/nearby/zztb;->zzc(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 3
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    const-wide/16 v3, 0x0

    move v5, v0

    move v6, v5

    :goto_1
    iget-object v7, p0, Lcom/google/android/gms/internal/nearby/zztg;->zzb:Lcom/google/android/gms/internal/nearby/zztb;

    iget v8, v7, Lcom/google/android/gms/internal/nearby/zztb;->zzc:I

    if-ge v5, v8, :cond_1

    iget v7, v7, Lcom/google/android/gms/internal/nearby/zztb;->zzb:I

    shl-long/2addr v3, v7

    add-int v7, v1, v5

    .line 4
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v7, v8, :cond_0

    iget-object v7, p0, Lcom/google/android/gms/internal/nearby/zztg;->zzb:Lcom/google/android/gms/internal/nearby/zztb;

    add-int/lit8 v8, v6, 0x1

    add-int/2addr v6, v1

    .line 5
    invoke-interface {p2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/nearby/zztb;->zzb(C)I

    move-result v6

    int-to-long v6, v6

    or-long/2addr v3, v6

    move v6, v8

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    iget v5, v7, Lcom/google/android/gms/internal/nearby/zztb;->zzd:I

    mul-int/lit8 v8, v5, 0x8

    iget v7, v7, Lcom/google/android/gms/internal/nearby/zztb;->zzb:I

    mul-int/2addr v6, v7

    add-int/lit8 v5, v5, -0x1

    mul-int/lit8 v5, v5, 0x8

    :goto_2
    sub-int v7, v8, v6

    if-lt v5, v7, :cond_2

    add-int/lit8 v7, v2, 0x1

    ushr-long v9, v3, v5

    const-wide/16 v11, 0xff

    and-long/2addr v9, v11

    long-to-int v9, v9

    int-to-byte v9, v9

    .line 6
    aput-byte v9, p1, v2

    add-int/lit8 v5, v5, -0x8

    move v2, v7

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/nearby/zztg;->zzb:Lcom/google/android/gms/internal/nearby/zztb;

    iget v3, v3, Lcom/google/android/gms/internal/nearby/zztb;->zzc:I

    add-int/2addr v1, v3

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/nearby/zzte;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid input length "

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/nearby/zzte;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method zzb(Ljava/lang/Appendable;[BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    array-length p3, p2

    const/4 v0, 0x0

    invoke-static {v0, p4, p3}, Lcom/google/android/gms/internal/nearby/zzsg;->zzg(III)V

    :goto_0
    if-ge v0, p4, :cond_0

    iget-object p3, p0, Lcom/google/android/gms/internal/nearby/zztg;->zzb:Lcom/google/android/gms/internal/nearby/zztb;

    iget p3, p3, Lcom/google/android/gms/internal/nearby/zztb;->zzd:I

    sub-int v1, p4, v0

    .line 2
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/android/gms/internal/nearby/zztg;->zzg(Ljava/lang/Appendable;[BII)V

    iget-object p3, p0, Lcom/google/android/gms/internal/nearby/zztg;->zzb:Lcom/google/android/gms/internal/nearby/zztb;

    iget p3, p3, Lcom/google/android/gms/internal/nearby/zztb;->zzd:I

    add-int/2addr v0, p3

    goto :goto_0

    :cond_0
    return-void
.end method

.method final zzc(I)I
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zztg;->zzb:Lcom/google/android/gms/internal/nearby/zztb;

    iget v0, v0, Lcom/google/android/gms/internal/nearby/zztb;->zzb:I

    int-to-long v0, v0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x7

    add-long/2addr v0, v2

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    long-to-int p1, v0

    return p1
.end method

.method final zzd(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zztg;->zzb:Lcom/google/android/gms/internal/nearby/zztb;

    iget v1, v0, Lcom/google/android/gms/internal/nearby/zztb;->zzc:I

    iget v0, v0, Lcom/google/android/gms/internal/nearby/zztb;->zzd:I

    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/internal/nearby/zztj;->zza(IILjava/math/RoundingMode;)I

    move-result p1

    mul-int/2addr v1, p1

    return v1
.end method

.method public final zze(Ljava/lang/String;I)Lcom/google/android/gms/internal/nearby/zzth;
    .locals 4

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    const/4 v0, 0x1

    .line 1
    const-string v1, ":"

    if-gtz p2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zztg;->zzb:Lcom/google/android/gms/internal/nearby/zztb;

    invoke-virtual {v1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/nearby/zztb;->zzd(C)Z

    move-result v2

    xor-int/2addr v0, v2

    const-string v2, "Separator (%s) cannot contain alphabet characters"

    .line 2
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/nearby/zzsg;->zzf(ZLjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/nearby/zztg;->zzc:Ljava/lang/Character;

    if-eqz p2, :cond_2

    .line 3
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-gez p2, :cond_1

    move p1, v0

    :cond_1
    const-string p2, "Separator (%s) cannot contain padding character"

    .line 4
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/internal/nearby/zzsg;->zzf(ZLjava/lang/String;Ljava/lang/Object;)V

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/nearby/zztf;

    const/4 p2, 0x2

    invoke-direct {p1, p0, v1, p2}, Lcom/google/android/gms/internal/nearby/zztf;-><init>(Lcom/google/android/gms/internal/nearby/zzth;Ljava/lang/String;I)V

    return-object p1
.end method

.method final zzf(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zztg;->zzc:Ljava/lang/Character;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    .line 3
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v2, v0, :cond_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method final zzg(Ljava/lang/Appendable;[BII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int v0, p3, p4

    .line 1
    array-length v1, p2

    invoke-static {p3, v0, v1}, Lcom/google/android/gms/internal/nearby/zzsg;->zzg(III)V

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zztg;->zzb:Lcom/google/android/gms/internal/nearby/zztb;

    iget v0, v0, Lcom/google/android/gms/internal/nearby/zztb;->zzd:I

    const/4 v1, 0x0

    if-gt p4, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/nearby/zzsg;->zzd(Z)V

    const-wide/16 v2, 0x0

    move v0, v1

    :goto_1
    const/16 v4, 0x8

    if-ge v0, p4, :cond_1

    add-int v5, p3, v0

    .line 3
    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    or-long/2addr v2, v5

    shl-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p4, 0x1

    mul-int/2addr p2, v4

    iget-object p3, p0, Lcom/google/android/gms/internal/nearby/zztg;->zzb:Lcom/google/android/gms/internal/nearby/zztb;

    iget p3, p3, Lcom/google/android/gms/internal/nearby/zztb;->zzb:I

    sub-int/2addr p2, p3

    :goto_2
    mul-int/lit8 p3, p4, 0x8

    if-ge v1, p3, :cond_2

    sub-int p3, p2, v1

    ushr-long v5, v2, p3

    iget-object p3, p0, Lcom/google/android/gms/internal/nearby/zztg;->zzb:Lcom/google/android/gms/internal/nearby/zztb;

    iget v0, p3, Lcom/google/android/gms/internal/nearby/zztb;->zza:I

    long-to-int v5, v5

    and-int/2addr v0, v5

    .line 4
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/nearby/zztb;->zza(I)C

    move-result p3

    invoke-interface {p1, p3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    iget-object p3, p0, Lcom/google/android/gms/internal/nearby/zztg;->zzb:Lcom/google/android/gms/internal/nearby/zztb;

    iget p3, p3, Lcom/google/android/gms/internal/nearby/zztb;->zzb:I

    add-int/2addr v1, p3

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/nearby/zztg;->zzc:Ljava/lang/Character;

    if-eqz p2, :cond_3

    :goto_3
    iget-object p2, p0, Lcom/google/android/gms/internal/nearby/zztg;->zzb:Lcom/google/android/gms/internal/nearby/zztb;

    iget p2, p2, Lcom/google/android/gms/internal/nearby/zztb;->zzd:I

    mul-int/2addr p2, v4

    if-ge v1, p2, :cond_3

    iget-object p2, p0, Lcom/google/android/gms/internal/nearby/zztg;->zzc:Ljava/lang/Character;

    .line 5
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p2

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    iget-object p2, p0, Lcom/google/android/gms/internal/nearby/zztg;->zzb:Lcom/google/android/gms/internal/nearby/zztb;

    iget p2, p2, Lcom/google/android/gms/internal/nearby/zztb;->zzb:I

    add-int/2addr v1, p2

    goto :goto_3

    :cond_3
    return-void
.end method
