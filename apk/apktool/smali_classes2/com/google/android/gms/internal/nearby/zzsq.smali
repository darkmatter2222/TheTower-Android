.class public abstract Lcom/google/android/gms/internal/nearby/zzsq;
.super Lcom/google/android/gms/internal/nearby/zzsn;
.source "com.google.android.gms:play-services-nearby@@18.5.0"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/nearby/zzsn<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/nearby/zzsz;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/nearby/zzso;

    sget-object v1, Lcom/google/android/gms/internal/nearby/zzsv;->zza:Lcom/google/android/gms/internal/nearby/zzsq;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/nearby/zzso;-><init>(Lcom/google/android/gms/internal/nearby/zzsq;I)V

    sput-object v0, Lcom/google/android/gms/internal/nearby/zzsq;->zza:Lcom/google/android/gms/internal/nearby/zzsz;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/nearby/zzsn;-><init>()V

    return-void
.end method

.method static zzi([Ljava/lang/Object;)Lcom/google/android/gms/internal/nearby/zzsq;
    .locals 1

    .line 1
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/nearby/zzsq;->zzj([Ljava/lang/Object;I)Lcom/google/android/gms/internal/nearby/zzsq;

    move-result-object p0

    return-object p0
.end method

.method static zzj([Ljava/lang/Object;I)Lcom/google/android/gms/internal/nearby/zzsq;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    sget-object p0, Lcom/google/android/gms/internal/nearby/zzsv;->zza:Lcom/google/android/gms/internal/nearby/zzsq;

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/nearby/zzsv;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/nearby/zzsv;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static zzk(Ljava/util/Collection;)Lcom/google/android/gms/internal/nearby/zzsq;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/nearby/zzsn;

    if-eqz v0, :cond_1

    .line 2
    check-cast p0, Lcom/google/android/gms/internal/nearby/zzsn;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zzsn;->zzd()Lcom/google/android/gms/internal/nearby/zzsq;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zzsq;->zzf()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zzsn;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 4
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/nearby/zzsq;->zzj([Ljava/lang/Object;I)Lcom/google/android/gms/internal/nearby/zzsq;

    move-result-object p0

    :cond_0
    return-object p0

    .line 5
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 6
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/nearby/zzsu;->zzb([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 7
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/nearby/zzsq;->zzj([Ljava/lang/Object;I)Lcom/google/android/gms/internal/nearby/zzsq;

    move-result-object p0

    return-object p0
.end method

.method public static zzl()Lcom/google/android/gms/internal/nearby/zzsq;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/nearby/zzsv;->zza:Lcom/google/android/gms/internal/nearby/zzsq;

    return-object v0
.end method

.method public static zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/nearby/zzsq;
    .locals 1

    .line 1
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/nearby/zzsu;->zzb([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 2
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/nearby/zzsq;->zzj([Ljava/lang/Object;I)Lcom/google/android/gms/internal/nearby/zzsq;

    move-result-object p0

    return-object p0
.end method

.method public static zzn(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/nearby/zzsq;
    .locals 0

    .line 1
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/nearby/zzsu;->zzb([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 2
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/nearby/zzsq;->zzj([Ljava/lang/Object;I)Lcom/google/android/gms/internal/nearby/zzsq;

    move-result-object p0

    return-object p0
.end method

.method public static zzo(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/nearby/zzsq;
    .locals 0

    .line 1
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/nearby/zzsu;->zzb([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 2
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/nearby/zzsq;->zzj([Ljava/lang/Object;I)Lcom/google/android/gms/internal/nearby/zzsq;

    move-result-object p0

    return-object p0
.end method

.method public static zzp(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/nearby/zzsq;
    .locals 0

    .line 1
    const-string p0, "\\"

    const-string p1, "/"

    const-string p2, ".."

    const-string p3, "."

    filled-new-array {p2, p3, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x4

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/nearby/zzsu;->zzb([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 2
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/nearby/zzsq;->zzj([Ljava/lang/Object;I)Lcom/google/android/gms/internal/nearby/zzsq;

    move-result-object p0

    return-object p0
.end method

.method public static zzq(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/nearby/zzsq;
    .locals 0

    .line 1
    const-string p8, "\t"

    const-string p9, "\u000c"

    const-string p0, "?"

    const-string p1, "*"

    const-string p2, "\""

    const-string p3, "|"

    const-string p4, ":"

    const-string p5, "\u0000"

    const-string p6, "\n"

    const-string p7, "\r"

    filled-new-array/range {p0 .. p9}, [Ljava/lang/Object;

    move-result-object p0

    const/16 p1, 0xa

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/nearby/zzsu;->zzb([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 2
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/nearby/zzsq;->zzj([Ljava/lang/Object;I)Lcom/google/android/gms/internal/nearby/zzsq;

    move-result-object p0

    return-object p0
.end method

.method public static varargs zzr(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/internal/nearby/zzsq;
    .locals 0
    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    const/16 p0, 0xf

    .line 1
    new-array p1, p0, [Ljava/lang/Object;

    const-string p2, "../"

    const/4 p3, 0x0

    aput-object p2, p1, p3

    const/4 p2, 0x1

    const-string p4, "/"

    aput-object p4, p1, p2

    const/4 p2, 0x2

    const-string p4, "\\"

    aput-object p4, p1, p2

    const-string p2, "?"

    const/4 p4, 0x3

    aput-object p2, p1, p4

    const/4 p2, 0x4

    const-string p5, "*"

    aput-object p5, p1, p2

    const/4 p2, 0x5

    const-string p5, "\""

    aput-object p5, p1, p2

    const/4 p2, 0x6

    const-string p5, "<"

    aput-object p5, p1, p2

    const/4 p2, 0x7

    const-string p5, ">"

    aput-object p5, p1, p2

    const/16 p2, 0x8

    const-string p5, "|"

    aput-object p5, p1, p2

    const/16 p2, 0x9

    const-string p5, ":"

    aput-object p5, p1, p2

    const/16 p2, 0xa

    const-string p5, "\u0000"

    aput-object p5, p1, p2

    const/16 p2, 0xb

    const-string p5, "\n"

    aput-object p5, p1, p2

    const/16 p2, 0xc

    invoke-static {p12, p3, p1, p2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/nearby/zzsu;->zzb([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 3
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/nearby/zzsq;->zzj([Ljava/lang/Object;I)Lcom/google/android/gms/internal/nearby/zzsq;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/nearby/zzsq;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 4
    :cond_2
    instance-of v3, p1, Ljava/util/RandomAccess;

    if-eqz v3, :cond_5

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    .line 5
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/nearby/zzsb;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    return v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v0

    .line 6
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 7
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7

    return v2

    .line 9
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 10
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 11
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/nearby/zzsb;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    .line 12
    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_9

    return v0

    :cond_9
    return v2
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zzsq;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_0
    if-ge v1, v0, :cond_0

    mul-int/lit8 v2, v2, 0x1f

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/nearby/zzsq;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/nearby/zzsq;->zzs(I)Lcom/google/android/gms/internal/nearby/zzsz;

    move-result-object v0

    return-object v0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    :goto_0
    if-ltz v1, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/nearby/zzsq;->zzs(I)Lcom/google/android/gms/internal/nearby/zzsz;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/nearby/zzsq;->zzs(I)Lcom/google/android/gms/internal/nearby/zzsz;

    move-result-object p1

    return-object p1
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/nearby/zzsq;->zzh(II)Lcom/google/android/gms/internal/nearby/zzsq;

    move-result-object p1

    return-object p1
.end method

.method zza([Ljava/lang/Object;I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zzsq;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/nearby/zzsq;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p2
.end method

.method public final zzd()Lcom/google/android/gms/internal/nearby/zzsq;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/nearby/zzsy;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/nearby/zzsq;->zzs(I)Lcom/google/android/gms/internal/nearby/zzsz;

    move-result-object v0

    return-object v0
.end method

.method public zzh(II)Lcom/google/android/gms/internal/nearby/zzsq;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zzsq;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/nearby/zzsg;->zzg(III)V

    sub-int/2addr p2, p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zzsq;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    .line 3
    sget-object p1, Lcom/google/android/gms/internal/nearby/zzsv;->zza:Lcom/google/android/gms/internal/nearby/zzsq;

    return-object p1

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/nearby/zzsp;

    .line 2
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/nearby/zzsp;-><init>(Lcom/google/android/gms/internal/nearby/zzsq;II)V

    return-object v0
.end method

.method public final zzs(I)Lcom/google/android/gms/internal/nearby/zzsz;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zzsq;->size()I

    move-result v0

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/nearby/zzsg;->zzb(IILjava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zzsq;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/nearby/zzsq;->zza:Lcom/google/android/gms/internal/nearby/zzsz;

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/nearby/zzso;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/nearby/zzso;-><init>(Lcom/google/android/gms/internal/nearby/zzsq;I)V

    return-object v0
.end method
