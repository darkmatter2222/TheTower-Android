.class public final Lcom/google/android/gms/internal/measurement/zzsa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"


# static fields
.field static final zza:Landroid/accounts/Account;

.field public static final synthetic zzb:I

.field private static final zzc:Ljava/util/regex/Pattern;

.field private static final zzd:Ljava/util/Set;

.field private static final zze:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const-string v0, "[a-z]+(_[a-z]+)*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzsa;->zzc:Ljava/util/regex/Pattern;

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzrv;->zza:Landroid/accounts/Account;

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzsa;->zza:Landroid/accounts/Account;

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "default"

    aput-object v3, v1, v2

    const-string v3, "unused"

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "special"

    const/4 v5, 0x2

    aput-object v3, v1, v5

    const-string v3, "reserved"

    const/4 v6, 0x3

    aput-object v3, v1, v6

    const-string v3, "shared"

    const/4 v7, 0x4

    aput-object v3, v1, v7

    const-string v3, "virtual"

    const/4 v8, 0x5

    aput-object v3, v1, v8

    const/4 v3, 0x6

    const-string v9, "managed"

    aput-object v9, v1, v3

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzsa;->zzd:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "files"

    aput-object v3, v1, v2

    const-string v2, "cache"

    aput-object v2, v1, v4

    aput-object v9, v1, v5

    const-string v2, "directboot-files"

    aput-object v2, v1, v6

    const-string v2, "directboot-cache"

    aput-object v2, v1, v7

    const-string v2, "external"

    aput-object v2, v1, v8

    .line 4
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzsa;->zze:Ljava/util/Set;

    return-void
.end method

.method public static zza(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzrz;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzrz;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/measurement/zzrz;-><init>(Landroid/content/Context;[B)V

    return-object v0
.end method

.method static zzb(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzsa;->zze:Ljava/util/Set;

    const-string v0, "directboot-files"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "The only supported locations are %s: %s"

    .line 2
    invoke-static {v1, v0, p0}, Lcom/google/android/gms/internal/measurement/zzsq;->zza(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static zzc(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzsa;->zzc:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Module must match [a-z]+(_[a-z]+)*: %s"

    .line 2
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/zzsq;->zza(ZLjava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzsa;->zzd:Ljava/util/Set;

    .line 3
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Module name is reserved and cannot be used: %s"

    .line 4
    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/measurement/zzsq;->zza(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
