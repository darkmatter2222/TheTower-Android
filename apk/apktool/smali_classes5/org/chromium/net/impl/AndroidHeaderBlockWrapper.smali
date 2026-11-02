.class Lorg/chromium/net/impl/AndroidHeaderBlockWrapper;
.super Lorg/chromium/net/UrlResponseInfo$HeaderBlock;
.source "AndroidHeaderBlockWrapper.java"


# instance fields
.field private final mBackend:Landroid/net/http/HeaderBlock;


# direct methods
.method constructor <init>(Landroid/net/http/HeaderBlock;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backend"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lorg/chromium/net/UrlResponseInfo$HeaderBlock;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/chromium/net/impl/AndroidHeaderBlockWrapper;->mBackend:Landroid/net/http/HeaderBlock;

    return-void
.end method


# virtual methods
.method public getAsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidHeaderBlockWrapper;->mBackend:Landroid/net/http/HeaderBlock;

    invoke-virtual {v0}, Landroid/net/http/HeaderBlock;->getAsList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidHeaderBlockWrapper;->mBackend:Landroid/net/http/HeaderBlock;

    invoke-virtual {v0}, Landroid/net/http/HeaderBlock;->getAsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
