.class public final Lcom/applovin/shadow/okio/Okio;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "com/applovin/shadow/okio/Okio__JvmOkioKt",
        "com/applovin/shadow/okio/Okio__OkioKt"
    }
    k = 0x4
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final appendingSink(Ljava/io/File;)Lcom/applovin/shadow/okio/Sink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/applovin/shadow/okio/Okio__JvmOkioKt;->appendingSink(Ljava/io/File;)Lcom/applovin/shadow/okio/Sink;

    move-result-object p0

    return-object p0
.end method

.method public static final asResourceFileSystem(Ljava/lang/ClassLoader;)Lcom/applovin/shadow/okio/FileSystem;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/applovin/shadow/okio/Okio__JvmOkioKt;->asResourceFileSystem(Ljava/lang/ClassLoader;)Lcom/applovin/shadow/okio/FileSystem;

    move-result-object p0

    return-object p0
.end method

.method public static final blackhole()Lcom/applovin/shadow/okio/Sink;
    .locals 1

    .line 1
    invoke-static {}, Lcom/applovin/shadow/okio/Okio__OkioKt;->blackhole()Lcom/applovin/shadow/okio/Sink;

    move-result-object v0

    return-object v0
.end method

.method public static final buffer(Lcom/applovin/shadow/okio/Sink;)Lcom/applovin/shadow/okio/BufferedSink;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/applovin/shadow/okio/Okio__OkioKt;->buffer(Lcom/applovin/shadow/okio/Sink;)Lcom/applovin/shadow/okio/BufferedSink;

    move-result-object p0

    return-object p0
.end method

.method public static final buffer(Lcom/applovin/shadow/okio/Source;)Lcom/applovin/shadow/okio/BufferedSource;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/applovin/shadow/okio/Okio__OkioKt;->buffer(Lcom/applovin/shadow/okio/Source;)Lcom/applovin/shadow/okio/BufferedSource;

    move-result-object p0

    return-object p0
.end method

.method public static final cipherSink(Lcom/applovin/shadow/okio/Sink;Ljavax/crypto/Cipher;)Lcom/applovin/shadow/okio/CipherSink;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/applovin/shadow/okio/Okio__JvmOkioKt;->cipherSink(Lcom/applovin/shadow/okio/Sink;Ljavax/crypto/Cipher;)Lcom/applovin/shadow/okio/CipherSink;

    move-result-object p0

    return-object p0
.end method

.method public static final cipherSource(Lcom/applovin/shadow/okio/Source;Ljavax/crypto/Cipher;)Lcom/applovin/shadow/okio/CipherSource;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/applovin/shadow/okio/Okio__JvmOkioKt;->cipherSource(Lcom/applovin/shadow/okio/Source;Ljavax/crypto/Cipher;)Lcom/applovin/shadow/okio/CipherSource;

    move-result-object p0

    return-object p0
.end method

.method public static final hashingSink(Lcom/applovin/shadow/okio/Sink;Ljava/security/MessageDigest;)Lcom/applovin/shadow/okio/HashingSink;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/applovin/shadow/okio/Okio__JvmOkioKt;->hashingSink(Lcom/applovin/shadow/okio/Sink;Ljava/security/MessageDigest;)Lcom/applovin/shadow/okio/HashingSink;

    move-result-object p0

    return-object p0
.end method

.method public static final hashingSink(Lcom/applovin/shadow/okio/Sink;Ljavax/crypto/Mac;)Lcom/applovin/shadow/okio/HashingSink;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/applovin/shadow/okio/Okio__JvmOkioKt;->hashingSink(Lcom/applovin/shadow/okio/Sink;Ljavax/crypto/Mac;)Lcom/applovin/shadow/okio/HashingSink;

    move-result-object p0

    return-object p0
.end method

.method public static final hashingSource(Lcom/applovin/shadow/okio/Source;Ljava/security/MessageDigest;)Lcom/applovin/shadow/okio/HashingSource;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/applovin/shadow/okio/Okio__JvmOkioKt;->hashingSource(Lcom/applovin/shadow/okio/Source;Ljava/security/MessageDigest;)Lcom/applovin/shadow/okio/HashingSource;

    move-result-object p0

    return-object p0
.end method

.method public static final hashingSource(Lcom/applovin/shadow/okio/Source;Ljavax/crypto/Mac;)Lcom/applovin/shadow/okio/HashingSource;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/applovin/shadow/okio/Okio__JvmOkioKt;->hashingSource(Lcom/applovin/shadow/okio/Source;Ljavax/crypto/Mac;)Lcom/applovin/shadow/okio/HashingSource;

    move-result-object p0

    return-object p0
.end method

.method public static final isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/applovin/shadow/okio/Okio__JvmOkioKt;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result p0

    return p0
.end method

.method public static final openZip(Lcom/applovin/shadow/okio/FileSystem;Lcom/applovin/shadow/okio/Path;)Lcom/applovin/shadow/okio/FileSystem;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/applovin/shadow/okio/Okio__JvmOkioKt;->openZip(Lcom/applovin/shadow/okio/FileSystem;Lcom/applovin/shadow/okio/Path;)Lcom/applovin/shadow/okio/FileSystem;

    move-result-object p0

    return-object p0
.end method

.method public static final sink(Ljava/io/File;)Lcom/applovin/shadow/okio/Sink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/applovin/shadow/okio/Okio__JvmOkioKt;->sink(Ljava/io/File;)Lcom/applovin/shadow/okio/Sink;

    move-result-object p0

    return-object p0
.end method

.method public static final sink(Ljava/io/File;Z)Lcom/applovin/shadow/okio/Sink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/applovin/shadow/okio/Okio__JvmOkioKt;->sink(Ljava/io/File;Z)Lcom/applovin/shadow/okio/Sink;

    move-result-object p0

    return-object p0
.end method

.method public static final sink(Ljava/io/OutputStream;)Lcom/applovin/shadow/okio/Sink;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/applovin/shadow/okio/Okio__JvmOkioKt;->sink(Ljava/io/OutputStream;)Lcom/applovin/shadow/okio/Sink;

    move-result-object p0

    return-object p0
.end method

.method public static final sink(Ljava/net/Socket;)Lcom/applovin/shadow/okio/Sink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/applovin/shadow/okio/Okio__JvmOkioKt;->sink(Ljava/net/Socket;)Lcom/applovin/shadow/okio/Sink;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs sink(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lcom/applovin/shadow/okio/Sink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/applovin/shadow/okio/Okio__JvmOkioKt;->sink(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lcom/applovin/shadow/okio/Sink;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic sink$default(Ljava/io/File;ZILjava/lang/Object;)Lcom/applovin/shadow/okio/Sink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/applovin/shadow/okio/Okio__JvmOkioKt;->sink$default(Ljava/io/File;ZILjava/lang/Object;)Lcom/applovin/shadow/okio/Sink;

    move-result-object p0

    return-object p0
.end method

.method public static final source(Ljava/io/File;)Lcom/applovin/shadow/okio/Source;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/applovin/shadow/okio/Okio__JvmOkioKt;->source(Ljava/io/File;)Lcom/applovin/shadow/okio/Source;

    move-result-object p0

    return-object p0
.end method

.method public static final source(Ljava/io/InputStream;)Lcom/applovin/shadow/okio/Source;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/applovin/shadow/okio/Okio__JvmOkioKt;->source(Ljava/io/InputStream;)Lcom/applovin/shadow/okio/Source;

    move-result-object p0

    return-object p0
.end method

.method public static final source(Ljava/net/Socket;)Lcom/applovin/shadow/okio/Source;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/applovin/shadow/okio/Okio__JvmOkioKt;->source(Ljava/net/Socket;)Lcom/applovin/shadow/okio/Source;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs source(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lcom/applovin/shadow/okio/Source;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/applovin/shadow/okio/Okio__JvmOkioKt;->source(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lcom/applovin/shadow/okio/Source;

    move-result-object p0

    return-object p0
.end method

.method public static final use(Ljava/io/Closeable;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Closeable;",
            "R:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+TR;>;)TR;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/applovin/shadow/okio/Okio__OkioKt;->use(Ljava/io/Closeable;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
