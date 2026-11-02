.class public final Lcom/google/android/gms/internal/playcore_age_signals/zzr;
.super Ljava/lang/Object;
.source "com.google.android.play:age-signals@@0.0.3"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/playcore_age_signals/zzd;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/playcore_age_signals/zzd;

    const-string v1, "PhoneskyVerificationUtils"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/playcore_age_signals/zzd;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/playcore_age_signals/zzr;->zza:Lcom/google/android/gms/internal/playcore_age_signals/zzd;

    return-void
.end method

.method public static zza(Landroid/content/Context;)I
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.android.vending"

    const/16 v1, 0x40

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/playcore_age_signals/zzr;->zzc([Landroid/content/pm/Signature;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    return p0

    :catch_0
    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static zzb(Landroid/content/Context;)Z
    .locals 4

    .line 1
    const-string v0, "Play Store package is not found."

    const-string v1, "com.android.vending"

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v3, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/playcore_age_signals/zzr;->zza:Lcom/google/android/gms/internal/playcore_age_signals/zzd;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Play Store package is disabled."

    .line 7
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/playcore_age_signals/zzd;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v3, 0x40

    .line 4
    invoke-virtual {p0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 6
    invoke-static {p0}, Lcom/google/android/gms/internal/playcore_age_signals/zzr;->zzc([Landroid/content/pm/Signature;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 2
    :catch_0
    sget-object p0, Lcom/google/android/gms/internal/playcore_age_signals/zzr;->zza:Lcom/google/android/gms/internal/playcore_age_signals/zzd;

    new-array v1, v2, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/playcore_age_signals/zzd;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 6
    :catch_1
    sget-object p0, Lcom/google/android/gms/internal/playcore_age_signals/zzr;->zza:Lcom/google/android/gms/internal/playcore_age_signals/zzd;

    new-array v1, v2, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/playcore_age_signals/zzd;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_1
    :goto_0
    return v2
.end method

.method private static zzc([Landroid/content/pm/Signature;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    array-length v1, p0

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 1
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_4

    .line 3
    aget-object v4, p0, v3

    .line 4
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/playcore_age_signals/zzq;->zza([B)Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "8P1sW0EPJcslw7UzRsiXL64w-O50Ed-RBICtay1g24M"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const-string v6, "dev-keys"

    .line 6
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const-string v6, "test-keys"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const-string v5, "GXWy8XF3vIml3_MfnmSmyuKBpT3B0dWbHRR_4cgq-gA"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_4
    sget-object p0, Lcom/google/android/gms/internal/playcore_age_signals/zzr;->zza:Lcom/google/android/gms/internal/playcore_age_signals/zzd;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Play Store package certs are not valid. Found these sha256 certs: [%s]."

    .line 8
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 9
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/playcore_age_signals/zzd;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    return v0

    .line 1
    :cond_6
    :goto_3
    sget-object p0, Lcom/google/android/gms/internal/playcore_age_signals/zzr;->zza:Lcom/google/android/gms/internal/playcore_age_signals/zzd;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Play Store package is not signed -- possibly self-built package. Could not verify."

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/playcore_age_signals/zzd;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    return v0
.end method
