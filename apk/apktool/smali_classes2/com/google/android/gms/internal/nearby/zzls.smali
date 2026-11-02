.class final Lcom/google/android/gms/internal/nearby/zzls;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/io/InputStream;

.field final synthetic zzb:Ljava/io/OutputStream;

.field final synthetic zzc:J

.field final synthetic zzd:Ljava/io/OutputStream;

.field final synthetic zze:Lcom/google/android/gms/internal/nearby/zzlt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nearby/zzlt;Ljava/io/InputStream;Ljava/io/OutputStream;JLjava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzls;->zze:Lcom/google/android/gms/internal/nearby/zzlt;

    iput-object p2, p0, Lcom/google/android/gms/internal/nearby/zzls;->zza:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/google/android/gms/internal/nearby/zzls;->zzb:Ljava/io/OutputStream;

    iput-wide p4, p0, Lcom/google/android/gms/internal/nearby/zzls;->zzc:J

    iput-object p6, p0, Lcom/google/android/gms/internal/nearby/zzls;->zzd:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzls;->zza:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzls;->zzb:Ljava/io/OutputStream;

    const/high16 v3, 0x10000

    invoke-static {v1, v2, v0, v3}, Lcom/google/android/gms/common/util/IOUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;ZI)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzls;->zza:Ljava/io/InputStream;

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzls;->zze:Lcom/google/android/gms/internal/nearby/zzlt;

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzls;->zzd:Ljava/io/OutputStream;

    iget-wide v3, p0, Lcom/google/android/gms/internal/nearby/zzls;->zzc:J

    .line 8
    invoke-static {v1, v2, v0, v3, v4}, Lcom/google/android/gms/internal/nearby/zzlt;->zza(Lcom/google/android/gms/internal/nearby/zzlt;Ljava/io/OutputStream;ZJ)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzls;->zzb:Ljava/io/OutputStream;

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzls;->zze:Lcom/google/android/gms/internal/nearby/zzlt;

    .line 2
    invoke-static {v2}, Lcom/google/android/gms/internal/nearby/zzlt;->zze(Lcom/google/android/gms/internal/nearby/zzlt;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v3, "NearbyConnections"

    if-nez v2, :cond_0

    :try_start_2
    const-string v2, "Exception copying stream for Payload %d"

    iget-wide v4, p0, Lcom/google/android/gms/internal/nearby/zzls;->zzc:J

    .line 3
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 10
    :cond_0
    const-string v0, "Terminating copying stream for Payload %d due to shutdown of OutgoingPayloadStreamer."

    iget-wide v4, p0, Lcom/google/android/gms/internal/nearby/zzls;->zzc:J

    .line 4
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 5
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzls;->zza:Ljava/io/InputStream;

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzls;->zze:Lcom/google/android/gms/internal/nearby/zzlt;

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzls;->zzd:Ljava/io/OutputStream;

    iget-wide v3, p0, Lcom/google/android/gms/internal/nearby/zzls;->zzc:J

    .line 8
    invoke-static {v0, v2, v1, v3, v4}, Lcom/google/android/gms/internal/nearby/zzlt;->zza(Lcom/google/android/gms/internal/nearby/zzlt;Ljava/io/OutputStream;ZJ)V

    goto :goto_0

    :catchall_1
    move-exception v0

    move v6, v1

    move-object v1, v0

    move v0, v6

    .line 9
    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzls;->zza:Ljava/io/InputStream;

    .line 7
    invoke-static {v2}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzls;->zze:Lcom/google/android/gms/internal/nearby/zzlt;

    iget-object v3, p0, Lcom/google/android/gms/internal/nearby/zzls;->zzd:Ljava/io/OutputStream;

    iget-wide v4, p0, Lcom/google/android/gms/internal/nearby/zzls;->zzc:J

    .line 8
    invoke-static {v2, v3, v0, v4, v5}, Lcom/google/android/gms/internal/nearby/zzlt;->zza(Lcom/google/android/gms/internal/nearby/zzlt;Ljava/io/OutputStream;ZJ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzls;->zzb:Ljava/io/OutputStream;

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 10
    throw v1
.end method
