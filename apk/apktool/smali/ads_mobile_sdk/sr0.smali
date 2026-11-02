.class public final Lads_mobile_sdk/sr0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/vr0;


# instance fields
.field public final a:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lads_mobile_sdk/sr0;->a:[B

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/sr0;->a:[B

    return-object v0
.end method

.method public final a(Ljava/io/FileInputStream;)Ljava/lang/Object;
    .locals 2

    .line 4
    :try_start_0
    invoke-static {p1}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Lads_mobile_sdk/tr0;

    const-string v1, "Cannot read bytes."

    invoke-direct {v0, v1, p1}, Lads_mobile_sdk/tr0;-><init>(Ljava/lang/String;Ljava/io/IOException;)V

    throw v0
.end method

.method public final a(Ljava/lang/Object;Ljava/io/FileOutputStream;)V
    .locals 0

    .line 8
    check-cast p1, [B

    .line 9
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
