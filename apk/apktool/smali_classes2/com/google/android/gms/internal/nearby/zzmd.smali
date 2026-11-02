.class public final Lcom/google/android/gms/internal/nearby/zzmd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# static fields
.field private static zza:Ljava/io/File;


# direct methods
.method static zza(Landroid/content/Context;Lcom/google/android/gms/internal/nearby/zzmb;)Lcom/google/android/gms/nearby/connection/Payload;
    .locals 10

    .line 1
    const-string v0, "Failed to create Payload from ParcelablePayload: unable to open uri %s for file %s."

    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzmb;->zzb()J

    move-result-wide v1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzmb;->zza()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string v6, "NearbyConnections"

    if-eq v3, v4, :cond_1

    const/4 p0, 0x3

    if-eq v3, p0, :cond_0

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzmb;->zzb()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzmb;->zza()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Incoming ParcelablePayload %d has unknown type %d"

    .line 27
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 28
    invoke-static {v6, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzmb;->zze()Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    const-string p1, "Data ParcelFileDescriptor cannot be null for type STREAM"

    .line 8
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/nearby/zzsg;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {p0}, Lcom/google/android/gms/nearby/connection/Payload$Stream;->zzb(Landroid/os/ParcelFileDescriptor;)Lcom/google/android/gms/nearby/connection/Payload$Stream;

    move-result-object p0

    .line 10
    invoke-static {p0, v1, v2}, Lcom/google/android/gms/nearby/connection/Payload;->zzc(Lcom/google/android/gms/nearby/connection/Payload$Stream;J)Lcom/google/android/gms/nearby/connection/Payload;

    move-result-object p0

    return-object p0

    .line 11
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzmb;->zzh()Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzmb;->zzd()Landroid/net/Uri;

    move-result-object v4

    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    .line 17
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v7, "r"

    invoke-virtual {p0, v4, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "Failed to get ParcelFileDescriptor for %s"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object p1

    .line 18
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_2
    new-instance v7, Ljava/io/File;

    .line 19
    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzmb;->zzc()J

    move-result-wide v8

    .line 21
    invoke-static {v7, p0, v8, v9, v4}, Lcom/google/android/gms/nearby/connection/Payload$File;->zza(Ljava/io/File;Landroid/os/ParcelFileDescriptor;JLandroid/net/Uri;)Lcom/google/android/gms/nearby/connection/Payload$File;

    move-result-object p0

    .line 19
    invoke-static {p0, v1, v2}, Lcom/google/android/gms/nearby/connection/Payload;->zzb(Lcom/google/android/gms/nearby/connection/Payload$File;J)Lcom/google/android/gms/nearby/connection/Payload;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 25
    filled-new-array {v4, v3}, [Ljava/lang/Object;

    move-result-object p1

    .line 22
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-static {v6, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v5

    :catch_1
    move-exception p0

    .line 28
    filled-new-array {v4, v3}, [Ljava/lang/Object;

    move-result-object p1

    .line 24
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-static {v6, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v5

    .line 13
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzmb;->zze()Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    const-string p1, "Data ParcelFileDescriptor cannot be null for type FILE"

    .line 14
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/nearby/zzsg;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {p0}, Lcom/google/android/gms/nearby/connection/Payload$File;->zzb(Landroid/os/ParcelFileDescriptor;)Lcom/google/android/gms/nearby/connection/Payload$File;

    move-result-object p0

    .line 16
    invoke-static {p0, v1, v2}, Lcom/google/android/gms/nearby/connection/Payload;->zzb(Lcom/google/android/gms/nearby/connection/Payload$File;J)Lcom/google/android/gms/nearby/connection/Payload;

    move-result-object p0

    return-object p0

    .line 3
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzmb;->zzg()Lcom/google/android/gms/internal/nearby/zzlx;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zzlx;->zzc()[B

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzmb;->zzv()[B

    move-result-object p0

    .line 3
    :goto_0
    const-string p1, "Payload bytes cannot be null if type is BYTES."

    .line 5
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/nearby/zzsg;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 6
    invoke-static {p0, v1, v2}, Lcom/google/android/gms/nearby/connection/Payload;->zza([BJ)Lcom/google/android/gms/nearby/connection/Payload;

    move-result-object p0

    return-object p0
.end method

.method static zzb()Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/nearby/zzmd;->zza:Ljava/io/File;

    return-object v0
.end method

.method public static zzc(Ljava/io/File;)V
    .locals 1

    if-nez p0, :cond_0

    .line 1
    const-string p0, "NearbyConnections"

    const-string v0, "Cannot set null temp directory"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sput-object p0, Lcom/google/android/gms/internal/nearby/zzmd;->zza:Ljava/io/File;

    return-void
.end method
