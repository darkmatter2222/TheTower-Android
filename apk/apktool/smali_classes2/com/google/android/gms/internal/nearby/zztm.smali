.class public final Lcom/google/android/gms/internal/nearby/zztm;
.super Lcom/google/android/gms/internal/nearby/zztn;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# direct methods
.method static synthetic zza([IIII)I
    .locals 1

    :goto_0
    if-ge p2, p3, :cond_1

    .line 1
    aget v0, p0, p2

    if-ne v0, p1, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static varargs zzb([I)Ljava/util/List;
    .locals 3

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/nearby/zztl;

    const/4 v2, 0x0

    .line 3
    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/gms/internal/nearby/zztl;-><init>([III)V

    return-object v1
.end method
