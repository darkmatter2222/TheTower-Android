.class public final Lads_mobile_sdk/uu2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/jv2;

.field public final b:Ljava/io/File;

.field public final c:Ljava/io/File;

.field public final d:Ljava/io/File;

.field public e:[B


# direct methods
.method public constructor <init>(Lads_mobile_sdk/jv2;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lads_mobile_sdk/uu2;->a:Lads_mobile_sdk/jv2;

    .line 33
    iput-object p2, p0, Lads_mobile_sdk/uu2;->b:Ljava/io/File;

    .line 34
    iput-object p4, p0, Lads_mobile_sdk/uu2;->c:Ljava/io/File;

    .line 35
    iput-object p3, p0, Lads_mobile_sdk/uu2;->d:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 3

    .line 65
    iget-object v0, p0, Lads_mobile_sdk/uu2;->e:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lads_mobile_sdk/uu2;->d:Ljava/io/File;

    .line 67
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 68
    :try_start_1
    invoke-static {v2}, Lads_mobile_sdk/du;->a(Ljava/io/InputStream;)Lads_mobile_sdk/du;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/du;->i()[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    invoke-static {v2}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception v0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 74
    throw v0

    :catch_0
    move-object v2, v1

    .line 75
    :catch_1
    invoke-static {v2}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 76
    :goto_1
    iput-object v0, p0, Lads_mobile_sdk/uu2;->e:[B

    .line 78
    :cond_0
    iget-object v0, p0, Lads_mobile_sdk/uu2;->e:[B

    if-nez v0, :cond_1

    return-object v1

    .line 81
    :cond_1
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method
