.class public final Lcom/google/android/gms/internal/measurement/zzabq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"


# static fields
.field private static final zza:[Ljava/lang/String;

.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzabu;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.google.common.flogger.util.StackWalkerStackGetter"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "com.google.common.flogger.util.JavaLangAccessStackGetter"

    aput-object v4, v1, v3

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzabq;->zza:[Ljava/lang/String;

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_1

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzabq;->zza:[Ljava/lang/String;

    aget-object v3, v3, v1

    .line 1
    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/google/android/gms/internal/measurement/zzabu;

    .line 2
    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Class;

    .line 3
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    .line 4
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzabu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzabv;

    invoke-direct {v3}, Lcom/google/android/gms/internal/measurement/zzabv;-><init>()V

    :goto_2
    sput-object v3, Lcom/google/android/gms/internal/measurement/zzabq;->zzb:Lcom/google/android/gms/internal/measurement/zzabu;

    return-void
.end method

.method public static zza(Ljava/lang/Class;I)Ljava/lang/StackTraceElement;
    .locals 1

    .line 1
    const-string p1, "target"

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzabr;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p1, Lcom/google/android/gms/internal/measurement/zzabq;->zzb:Lcom/google/android/gms/internal/measurement/zzabu;

    const/4 v0, 0x2

    .line 2
    invoke-interface {p1, p0, v0}, Lcom/google/android/gms/internal/measurement/zzabu;->zza(Ljava/lang/Class;I)Ljava/lang/StackTraceElement;

    move-result-object p0

    return-object p0
.end method

.method public static zzb(Ljava/lang/Class;II)[Ljava/lang/StackTraceElement;
    .locals 1

    if-gtz p1, :cond_1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid maximum depth: 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzabq;->zzb:Lcom/google/android/gms/internal/measurement/zzabu;

    const/4 v0, 0x2

    .line 1
    invoke-interface {p2, p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzabu;->zzb(Ljava/lang/Class;II)[Ljava/lang/StackTraceElement;

    move-result-object p0

    return-object p0
.end method
