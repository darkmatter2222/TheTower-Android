.class public final Lcom/applovin/shadow/okio/HashingSource;
.super Lcom/applovin/shadow/okio/ForwardingSource;
.source "HashingSource.kt"

# interfaces
.implements Lcom/applovin/shadow/okio/Source;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/shadow/okio/HashingSource$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00192\u00020\u00012\u00020\u0002:\u0001\u0019B\u0017\u0008\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B\u0017\u0008\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tB\u0017\u0008\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cB\u001f\u0008\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\u000fJ\r\u0010\u0010\u001a\u00020\u000eH\u0007\u00a2\u0006\u0002\u0008\u0013J\u0018\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0015H\u0016R\u0011\u0010\u0010\u001a\u00020\u000e8G\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/applovin/shadow/okio/HashingSource;",
        "Lcom/applovin/shadow/okio/ForwardingSource;",
        "Lcom/applovin/shadow/okio/Source;",
        "source",
        "digest",
        "Ljava/security/MessageDigest;",
        "(Lokio/Source;Ljava/security/MessageDigest;)V",
        "algorithm",
        "",
        "(Lokio/Source;Ljava/lang/String;)V",
        "mac",
        "Ljavax/crypto/Mac;",
        "(Lokio/Source;Ljavax/crypto/Mac;)V",
        "key",
        "Lcom/applovin/shadow/okio/ByteString;",
        "(Lokio/Source;Lokio/ByteString;Ljava/lang/String;)V",
        "hash",
        "()Lokio/ByteString;",
        "messageDigest",
        "-deprecated_hash",
        "read",
        "",
        "sink",
        "Lcom/applovin/shadow/okio/Buffer;",
        "byteCount",
        "Companion",
        "com.applovin.shadow.okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/applovin/shadow/okio/HashingSource$Companion;


# instance fields
.field private final mac:Ljavax/crypto/Mac;

.field private final messageDigest:Ljava/security/MessageDigest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/applovin/shadow/okio/HashingSource$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/applovin/shadow/okio/HashingSource$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/applovin/shadow/okio/HashingSource;->Companion:Lcom/applovin/shadow/okio/HashingSource$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/applovin/shadow/okio/Source;Lcom/applovin/shadow/okio/ByteString;Ljava/lang/String;)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "algorithm"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    :try_start_0
    invoke-static {p3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 61
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Lcom/applovin/shadow/okio/ByteString;->toByteArray()[B

    move-result-object p2

    invoke-direct {v1, p2, p3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    check-cast v1, Ljava/security/Key;

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 62
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/applovin/shadow/okio/HashingSource;-><init>(Lcom/applovin/shadow/okio/Source;Ljavax/crypto/Mac;)V

    return-void

    :catch_0
    move-exception p1

    .line 64
    new-instance p2, Ljava/lang/IllegalArgumentException;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor <init>(Lcom/applovin/shadow/okio/Source;Ljava/lang/String;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "algorithm"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p2

    const-string v0, "getInstance(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/applovin/shadow/okio/HashingSource;-><init>(Lcom/applovin/shadow/okio/Source;Ljava/security/MessageDigest;)V

    return-void
.end method

.method public constructor <init>(Lcom/applovin/shadow/okio/Source;Ljava/security/MessageDigest;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "digest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/applovin/shadow/okio/ForwardingSource;-><init>(Lcom/applovin/shadow/okio/Source;)V

    .line 46
    iput-object p2, p0, Lcom/applovin/shadow/okio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lcom/applovin/shadow/okio/HashingSource;->mac:Ljavax/crypto/Mac;

    return-void
.end method

.method public constructor <init>(Lcom/applovin/shadow/okio/Source;Ljavax/crypto/Mac;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mac"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0, p1}, Lcom/applovin/shadow/okio/ForwardingSource;-><init>(Lcom/applovin/shadow/okio/Source;)V

    .line 53
    iput-object p2, p0, Lcom/applovin/shadow/okio/HashingSource;->mac:Ljavax/crypto/Mac;

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lcom/applovin/shadow/okio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    return-void
.end method

.method public static final hmacSha1(Lcom/applovin/shadow/okio/Source;Lcom/applovin/shadow/okio/ByteString;)Lcom/applovin/shadow/okio/HashingSource;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/applovin/shadow/okio/HashingSource;->Companion:Lcom/applovin/shadow/okio/HashingSource$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/applovin/shadow/okio/HashingSource$Companion;->hmacSha1(Lcom/applovin/shadow/okio/Source;Lcom/applovin/shadow/okio/ByteString;)Lcom/applovin/shadow/okio/HashingSource;

    move-result-object p0

    return-object p0
.end method

.method public static final hmacSha256(Lcom/applovin/shadow/okio/Source;Lcom/applovin/shadow/okio/ByteString;)Lcom/applovin/shadow/okio/HashingSource;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/applovin/shadow/okio/HashingSource;->Companion:Lcom/applovin/shadow/okio/HashingSource$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/applovin/shadow/okio/HashingSource$Companion;->hmacSha256(Lcom/applovin/shadow/okio/Source;Lcom/applovin/shadow/okio/ByteString;)Lcom/applovin/shadow/okio/HashingSource;

    move-result-object p0

    return-object p0
.end method

.method public static final hmacSha512(Lcom/applovin/shadow/okio/Source;Lcom/applovin/shadow/okio/ByteString;)Lcom/applovin/shadow/okio/HashingSource;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/applovin/shadow/okio/HashingSource;->Companion:Lcom/applovin/shadow/okio/HashingSource$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/applovin/shadow/okio/HashingSource$Companion;->hmacSha512(Lcom/applovin/shadow/okio/Source;Lcom/applovin/shadow/okio/ByteString;)Lcom/applovin/shadow/okio/HashingSource;

    move-result-object p0

    return-object p0
.end method

.method public static final md5(Lcom/applovin/shadow/okio/Source;)Lcom/applovin/shadow/okio/HashingSource;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/applovin/shadow/okio/HashingSource;->Companion:Lcom/applovin/shadow/okio/HashingSource$Companion;

    invoke-virtual {v0, p0}, Lcom/applovin/shadow/okio/HashingSource$Companion;->md5(Lcom/applovin/shadow/okio/Source;)Lcom/applovin/shadow/okio/HashingSource;

    move-result-object p0

    return-object p0
.end method

.method public static final sha1(Lcom/applovin/shadow/okio/Source;)Lcom/applovin/shadow/okio/HashingSource;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/applovin/shadow/okio/HashingSource;->Companion:Lcom/applovin/shadow/okio/HashingSource$Companion;

    invoke-virtual {v0, p0}, Lcom/applovin/shadow/okio/HashingSource$Companion;->sha1(Lcom/applovin/shadow/okio/Source;)Lcom/applovin/shadow/okio/HashingSource;

    move-result-object p0

    return-object p0
.end method

.method public static final sha256(Lcom/applovin/shadow/okio/Source;)Lcom/applovin/shadow/okio/HashingSource;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/applovin/shadow/okio/HashingSource;->Companion:Lcom/applovin/shadow/okio/HashingSource$Companion;

    invoke-virtual {v0, p0}, Lcom/applovin/shadow/okio/HashingSource$Companion;->sha256(Lcom/applovin/shadow/okio/Source;)Lcom/applovin/shadow/okio/HashingSource;

    move-result-object p0

    return-object p0
.end method

.method public static final sha512(Lcom/applovin/shadow/okio/Source;)Lcom/applovin/shadow/okio/HashingSource;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/applovin/shadow/okio/HashingSource;->Companion:Lcom/applovin/shadow/okio/HashingSource$Companion;

    invoke-virtual {v0, p0}, Lcom/applovin/shadow/okio/HashingSource$Companion;->sha512(Lcom/applovin/shadow/okio/Source;)Lcom/applovin/shadow/okio/HashingSource;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final -deprecated_hash()Lcom/applovin/shadow/okio/ByteString;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "hash"
            imports = {}
        .end subannotation
    .end annotation

    .line 119
    invoke-virtual {p0}, Lcom/applovin/shadow/okio/HashingSource;->hash()Lcom/applovin/shadow/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final hash()Lcom/applovin/shadow/okio/ByteString;
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/applovin/shadow/okio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/applovin/shadow/okio/HashingSource;->mac:Ljavax/crypto/Mac;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    .line 110
    :goto_0
    new-instance v1, Lcom/applovin/shadow/okio/ByteString;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v0}, Lcom/applovin/shadow/okio/ByteString;-><init>([B)V

    return-object v1
.end method

.method public read(Lcom/applovin/shadow/okio/Buffer;J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-super {p0, p1, p2, p3}, Lcom/applovin/shadow/okio/ForwardingSource;->read(Lcom/applovin/shadow/okio/Buffer;J)J

    move-result-wide p2

    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_2

    .line 73
    invoke-virtual {p1}, Lcom/applovin/shadow/okio/Buffer;->size()J

    move-result-wide v0

    sub-long/2addr v0, p2

    .line 76
    invoke-virtual {p1}, Lcom/applovin/shadow/okio/Buffer;->size()J

    move-result-wide v2

    .line 77
    iget-object v4, p1, Lcom/applovin/shadow/okio/Buffer;->head:Lcom/applovin/shadow/okio/Segment;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    cmp-long v5, v2, v0

    if-lez v5, :cond_0

    .line 79
    iget-object v4, v4, Lcom/applovin/shadow/okio/Segment;->prev:Lcom/applovin/shadow/okio/Segment;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 80
    iget v5, v4, Lcom/applovin/shadow/okio/Segment;->limit:I

    iget v6, v4, Lcom/applovin/shadow/okio/Segment;->pos:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    sub-long/2addr v2, v5

    goto :goto_0

    .line 84
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/applovin/shadow/okio/Buffer;->size()J

    move-result-wide v5

    cmp-long v5, v2, v5

    if-gez v5, :cond_2

    .line 85
    iget v5, v4, Lcom/applovin/shadow/okio/Segment;->pos:I

    int-to-long v5, v5

    add-long/2addr v5, v0

    sub-long/2addr v5, v2

    long-to-int v0, v5

    .line 86
    iget-object v1, p0, Lcom/applovin/shadow/okio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    if-eqz v1, :cond_1

    .line 87
    iget-object v5, v4, Lcom/applovin/shadow/okio/Segment;->data:[B

    iget v6, v4, Lcom/applovin/shadow/okio/Segment;->limit:I

    sub-int/2addr v6, v0

    invoke-virtual {v1, v5, v0, v6}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_2

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/applovin/shadow/okio/HashingSource;->mac:Ljavax/crypto/Mac;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v5, v4, Lcom/applovin/shadow/okio/Segment;->data:[B

    iget v6, v4, Lcom/applovin/shadow/okio/Segment;->limit:I

    sub-int/2addr v6, v0

    invoke-virtual {v1, v5, v0, v6}, Ljavax/crypto/Mac;->update([BII)V

    .line 91
    :goto_2
    iget v0, v4, Lcom/applovin/shadow/okio/Segment;->limit:I

    iget v1, v4, Lcom/applovin/shadow/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v2, v0

    .line 93
    iget-object v4, v4, Lcom/applovin/shadow/okio/Segment;->next:Lcom/applovin/shadow/okio/Segment;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide v0, v2

    goto :goto_1

    :cond_2
    return-wide p2
.end method
