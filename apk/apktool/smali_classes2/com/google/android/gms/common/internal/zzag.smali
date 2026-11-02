.class public final Lcom/google/android/gms/common/internal/zzag;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.11.0"


# static fields
.field private static final zza:Lcom/google/android/gms/common/internal/InternalClientFlags;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/internal/InternalClientFlags;->DEFAULT:Lcom/google/android/gms/common/internal/InternalClientFlags;

    sput-object v0, Lcom/google/android/gms/common/internal/zzag;->zza:Lcom/google/android/gms/common/internal/InternalClientFlags;

    return-void
.end method

.method public static declared-synchronized zza()Lcom/google/android/gms/common/internal/InternalClientFlags;
    .locals 2

    const-class v0, Lcom/google/android/gms/common/internal/zzag;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/internal/zzag;->zza:Lcom/google/android/gms/common/internal/InternalClientFlags;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
