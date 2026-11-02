.class public final Lcom/google/android/gms/internal/nearby/zzlx;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/nearby/zzlx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zza:[B

.field private zzb:Landroid/os/ParcelFileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzlu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/nearby/zzlu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/nearby/zzlx;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/nearby/zzlx;->zza:[B

    return-void
.end method

.method constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/nearby/zzlx;->zza:[B

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzlx;->zzb:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/nearby/zzlw;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzlx;->zza:[B

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/nearby/zzlx;)Landroid/os/ParcelFileDescriptor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/nearby/zzlx;->zzb:Landroid/os/ParcelFileDescriptor;

    return-object p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/nearby/zzlx;[B)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzlx;->zza:[B

    return-void
.end method

.method static zzd(Landroid/os/ParcelFileDescriptor;)[B
    .locals 3

    .line 1
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    new-array p0, p0, [B

    .line 3
    invoke-virtual {v0, p0}, Ljava/io/DataInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/nearby/zzlx;->zze(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not read from parcel file descriptor"

    .line 4
    invoke-direct {v1, v2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/nearby/zzlx;->zze(Ljava/io/Closeable;)V

    .line 6
    throw p0
.end method

.method private static zze(Ljava/io/Closeable;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "ParcelByteArray"

    const-string v1, "Could not close stream"

    .line 2
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/nearby/zzlx;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/nearby/zzlx;

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzlx;->zza:[B

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/nearby/zzlx;->zza:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzlx;->zza:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 9

    .line 20
    const-string v0, "ParcelByteArray"

    .line 0
    const-string v1, "Could not write into unlinked file. "

    const-string v2, "Could not create unlinked file. "

    .line 20
    iget-object v3, p0, Lcom/google/android/gms/internal/nearby/zzlx;->zza:[B

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    iget-object v5, p0, Lcom/google/android/gms/internal/nearby/zzlx;->zzb:Landroid/os/ParcelFileDescriptor;

    if-eqz v5, :cond_0

    goto/16 :goto_5

    .line 22
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/nearby/zzmd;->zzb()Ljava/io/File;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    .line 1
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "teleporter"

    .line 2
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".tmp"

    .line 4
    invoke-static {v6, v7, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v6, Ljava/io/FileOutputStream;

    .line 6
    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/high16 v7, 0x10000000

    .line 7
    invoke-static {v5, v7}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v7
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    :try_start_3
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 10
    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    .line 11
    new-instance v6, Ljava/io/BufferedOutputStream;

    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/io/OutputStream;

    invoke-direct {v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 12
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    array-length v6, v3

    .line 13
    invoke-virtual {v7, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 14
    invoke-virtual {v7, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 15
    iget-object v3, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/os/ParcelFileDescriptor;
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 17
    invoke-static {v7}, Lcom/google/android/gms/internal/nearby/zzlx;->zze(Ljava/io/Closeable;)V

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v3

    .line 5
    :try_start_5
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Temporary file is somehow already deleted"

    .line 8
    invoke-direct {v5, v6, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :catch_3
    move-exception v3

    .line 19
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Could not create temporary file"

    .line 5
    invoke-direct {v5, v6, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 22
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "Must set temp dir before writing this object to a parcel"

    .line 1
    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_4
    move-exception v2

    move-object v7, v4

    .line 16
    :goto_0
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_2

    goto :goto_2

    :catch_5
    move-exception v1

    move-object v7, v4

    .line 18
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v7, :cond_2

    .line 17
    :goto_2
    invoke-static {v7}, Lcom/google/android/gms/internal/nearby/zzlx;->zze(Ljava/io/Closeable;)V

    :cond_2
    move-object v3, v4

    :goto_3
    iput-object v3, p0, Lcom/google/android/gms/internal/nearby/zzlx;->zzb:Landroid/os/ParcelFileDescriptor;

    goto :goto_5

    :catchall_1
    move-exception p1

    move-object v4, v7

    :goto_4
    if-eqz v4, :cond_3

    invoke-static {v4}, Lcom/google/android/gms/internal/nearby/zzlx;->zze(Ljava/io/Closeable;)V

    .line 19
    :cond_3
    throw p1

    :cond_4
    :goto_5
    const/4 v0, 0x1

    or-int/2addr p2, v0

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzlx;->zzb:Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    .line 21
    invoke-static {p1, v0, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 22
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    iput-object v4, p0, Lcom/google/android/gms/internal/nearby/zzlx;->zzb:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method public final zzc()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzlx;->zza:[B

    return-object v0
.end method
