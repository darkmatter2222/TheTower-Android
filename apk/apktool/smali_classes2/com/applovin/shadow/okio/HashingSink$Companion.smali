.class public final Lcom/applovin/shadow/okio/HashingSink$Companion;
.super Ljava/lang/Object;
.source "HashingSink.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/shadow/okio/HashingSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u0018\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u0018\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/applovin/shadow/okio/HashingSink$Companion;",
        "",
        "()V",
        "hmacSha1",
        "Lcom/applovin/shadow/okio/HashingSink;",
        "sink",
        "Lcom/applovin/shadow/okio/Sink;",
        "key",
        "Lcom/applovin/shadow/okio/ByteString;",
        "hmacSha256",
        "hmacSha512",
        "md5",
        "sha1",
        "sha256",
        "sha512",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/shadow/okio/HashingSink$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final hmacSha1(Lcom/applovin/shadow/okio/Sink;Lcom/applovin/shadow/okio/ByteString;)Lcom/applovin/shadow/okio/HashingSink;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    new-instance v0, Lcom/applovin/shadow/okio/HashingSink;

    const-string v1, "HmacSHA1"

    invoke-direct {v0, p1, p2, v1}, Lcom/applovin/shadow/okio/HashingSink;-><init>(Lcom/applovin/shadow/okio/Sink;Lcom/applovin/shadow/okio/ByteString;Ljava/lang/String;)V

    return-object v0
.end method

.method public final hmacSha256(Lcom/applovin/shadow/okio/Sink;Lcom/applovin/shadow/okio/ByteString;)Lcom/applovin/shadow/okio/HashingSink;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    new-instance v0, Lcom/applovin/shadow/okio/HashingSink;

    const-string v1, "HmacSHA256"

    invoke-direct {v0, p1, p2, v1}, Lcom/applovin/shadow/okio/HashingSink;-><init>(Lcom/applovin/shadow/okio/Sink;Lcom/applovin/shadow/okio/ByteString;Ljava/lang/String;)V

    return-object v0
.end method

.method public final hmacSha512(Lcom/applovin/shadow/okio/Sink;Lcom/applovin/shadow/okio/ByteString;)Lcom/applovin/shadow/okio/HashingSink;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    new-instance v0, Lcom/applovin/shadow/okio/HashingSink;

    const-string v1, "HmacSHA512"

    invoke-direct {v0, p1, p2, v1}, Lcom/applovin/shadow/okio/HashingSink;-><init>(Lcom/applovin/shadow/okio/Sink;Lcom/applovin/shadow/okio/ByteString;Ljava/lang/String;)V

    return-object v0
.end method

.method public final md5(Lcom/applovin/shadow/okio/Sink;)Lcom/applovin/shadow/okio/HashingSink;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    new-instance v0, Lcom/applovin/shadow/okio/HashingSink;

    const-string v1, "MD5"

    invoke-direct {v0, p1, v1}, Lcom/applovin/shadow/okio/HashingSink;-><init>(Lcom/applovin/shadow/okio/Sink;Ljava/lang/String;)V

    return-object v0
.end method

.method public final sha1(Lcom/applovin/shadow/okio/Sink;)Lcom/applovin/shadow/okio/HashingSink;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    new-instance v0, Lcom/applovin/shadow/okio/HashingSink;

    const-string v1, "SHA-1"

    invoke-direct {v0, p1, v1}, Lcom/applovin/shadow/okio/HashingSink;-><init>(Lcom/applovin/shadow/okio/Sink;Ljava/lang/String;)V

    return-object v0
.end method

.method public final sha256(Lcom/applovin/shadow/okio/Sink;)Lcom/applovin/shadow/okio/HashingSink;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    new-instance v0, Lcom/applovin/shadow/okio/HashingSink;

    const-string v1, "SHA-256"

    invoke-direct {v0, p1, v1}, Lcom/applovin/shadow/okio/HashingSink;-><init>(Lcom/applovin/shadow/okio/Sink;Ljava/lang/String;)V

    return-object v0
.end method

.method public final sha512(Lcom/applovin/shadow/okio/Sink;)Lcom/applovin/shadow/okio/HashingSink;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    new-instance v0, Lcom/applovin/shadow/okio/HashingSink;

    const-string v1, "SHA-512"

    invoke-direct {v0, p1, v1}, Lcom/applovin/shadow/okio/HashingSink;-><init>(Lcom/applovin/shadow/okio/Sink;Ljava/lang/String;)V

    return-object v0
.end method
