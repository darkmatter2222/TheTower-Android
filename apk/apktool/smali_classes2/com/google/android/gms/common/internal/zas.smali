.class public final Lcom/google/android/gms/common/internal/zas;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.10.1"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field private static volatile zaa:Lcom/google/android/gms/common/internal/zas;

.field private static zab:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zaa(Landroid/content/Context;)Lcom/google/android/gms/common/internal/zas;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/common/internal/zas;->zaa:Lcom/google/android/gms/common/internal/zas;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/common/internal/zas;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/internal/zas;->zaa:Lcom/google/android/gms/common/internal/zas;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    sput-object p0, Lcom/google/android/gms/common/internal/zas;->zab:Landroid/content/Context;

    new-instance v0, Lcom/google/android/gms/common/internal/zas;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/zas;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/zas;->zaa:Lcom/google/android/gms/common/internal/zas;

    .line 2
    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-object v0
.end method

.method static synthetic zab()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/internal/zas;->zab:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/common/internal/zar;->zaa:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
