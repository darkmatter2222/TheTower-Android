.class public final Lcom/google/android/gms/internal/measurement/zzrx;
.super Lcom/google/android/gms/internal/measurement/zzsy;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/measurement/zzsx;

.field private final zzc:Ljava/lang/Object;

.field private zzd:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzrw;[B)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzsy;-><init>()V

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzrx;->zzc:Ljava/lang/Object;

    new-instance p2, Lcom/google/android/gms/internal/measurement/zzsd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzrw;->zzc()Lcom/google/android/gms/internal/measurement/zzsh;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/measurement/zzsd;-><init>(Lcom/google/android/gms/internal/measurement/zzsh;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzrx;->zzb:Lcom/google/android/gms/internal/measurement/zzsx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzrw;->zzb()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzrx;->zza:Landroid/content/Context;

    return-void
.end method

.method public static zza(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzrw;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzrw;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/measurement/zzrw;-><init>(Landroid/content/Context;[B)V

    return-object v0
.end method

.method private final zzh(Landroid/net/Uri;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzrx;->zza:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static final zzi()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzsg;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzsg;

    const-string v1, "Android backend cannot perform remote operations without a remote backend"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzsg;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected final zzb()Lcom/google/android/gms/internal/measurement/zzsx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzrx;->zzb:Lcom/google/android/gms/internal/measurement/zzsx;

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1

    const-string v0, "android"

    return-object v0
.end method

.method public final zzd(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzrx;->zzh(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzsy;->zzf(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzsc;->zza(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzsl;->zzb(Ljava/io/File;)Lcom/google/android/gms/internal/measurement/zzsl;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzrx;->zzi()V

    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public final zze(Landroid/net/Uri;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzrx;->zzh(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzsy;->zzf(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzsc;->zza(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    return p1

    .line 5
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzrx;->zzi()V

    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method protected final zzf(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzrx;->zzh(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzsy;->zzg(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzsb;

    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzsb;-><init>([B)V

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzsb;->zza(Ljava/io/File;)Lcom/google/android/gms/internal/measurement/zzsb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzsb;->zzb()Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 1
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzsi;

    const-string v0, "Operation across authorities is not allowed."

    .line 2
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/zzsi;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzg(Landroid/net/Uri;)Ljava/io/File;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzrx;->zzh(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzrx;->zza:Landroid/content/Context;

    .line 2
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 4
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    .line 6
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v1, Ljava/util/ArrayList;

    .line 7
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 24
    :sswitch_0
    const-string v4, "directboot-files"

    .line 8
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_1

    :sswitch_1
    const-string v4, "directboot-cache"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v9

    goto :goto_1

    :sswitch_2
    const-string v4, "managed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v6

    goto :goto_1

    :sswitch_3
    const-string v4, "files"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v8

    goto :goto_1

    :sswitch_4
    const-string v4, "cache"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v7

    goto :goto_1

    :sswitch_5
    const-string v4, "external"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v3, -0x1

    :goto_1
    if-eqz v3, :cond_a

    if-eq v3, v9, :cond_9

    if-eq v3, v8, :cond_8

    if-eq v3, v7, :cond_7

    if-eq v3, v6, :cond_2

    if-ne v3, v5, :cond_1

    const/4 p1, 0x0

    .line 9
    invoke-virtual {v0, p1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    goto/16 :goto_5

    .line 42
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzsi;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Path must start with a valid logical location: %s"

    .line 41
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/zzsi;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzry;->zza(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    const-string v3, "managed"

    new-instance v4, Ljava/io/File;

    .line 11
    invoke-direct {v4, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p1, v7, :cond_6

    .line 13
    :try_start_0
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzrv;->zza:Landroid/accounts/Account;

    const-string v3, "shared"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object p1, Lcom/google/android/gms/internal/measurement/zzrv;->zza:Landroid/accounts/Account;

    goto :goto_3

    :cond_3
    const/16 v3, 0x3a

    .line 14
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_4

    move v5, v9

    goto :goto_2

    :cond_4
    move v5, v2

    :goto_2
    const-string v6, "Malformed account"

    new-array v7, v2, [Ljava/lang/Object;

    .line 15
    invoke-static {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/zzsq;->zza(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v3, v9

    .line 17
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Landroid/accounts/Account;

    .line 18
    invoke-direct {v3, p1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v3

    .line 13
    :goto_3
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzrv;->zza:Landroid/accounts/Account;

    .line 20
    invoke-virtual {v2, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_4

    .line 19
    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzsi;

    const-string v0, "AccountManager cannot be null"

    .line 21
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/zzsi;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 35
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzsi;

    .line 19
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/zzsi;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_6
    :goto_4
    move-object p1, v4

    goto :goto_5

    .line 22
    :cond_7
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    goto :goto_5

    .line 23
    :cond_8
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzry;->zza(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    goto :goto_5

    .line 24
    :cond_9
    invoke-virtual {v0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    goto :goto_5

    .line 27
    :cond_a
    invoke-virtual {v0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    .line 9
    :goto_5
    new-instance v2, Ljava/io/File;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    .line 28
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v9, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 29
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzky;->zzc(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzrx;->zzc:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzrx;->zzd:Ljava/lang/String;

    if-nez v1, :cond_b

    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    .line 31
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzry;->zza(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzrx;->zzd:Ljava/lang/String;

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzrx;->zzd:Ljava/lang/String;

    .line 34
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_6

    :cond_c
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzsg;

    const-string v0, "Cannot access credential-protected data from direct boot"

    .line 38
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/zzsg;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception v0

    .line 35
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_d
    :goto_6
    return-object v2

    .line 43
    :cond_e
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzsi;

    const-string v0, "Did not expect uri to have query"

    .line 42
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/zzsi;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_f
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzsi;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Path must start with a valid logical location: %s"

    .line 5
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/zzsi;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :cond_10
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzsi;

    const-string v0, "Scheme must be \'android\'"

    .line 3
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/zzsi;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_11
    new-instance p1, Ljava/io/IOException;

    const-string v0, "operation is not permitted in other authorities."

    .line 43
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6c869c35 -> :sswitch_5
        0x5a0af82 -> :sswitch_4
        0x5ceba77 -> :sswitch_3
        0x31c90f9f -> :sswitch_2
        0x3aec0d90 -> :sswitch_1
        0x3b1a1885 -> :sswitch_0
    .end sparse-switch
.end method
