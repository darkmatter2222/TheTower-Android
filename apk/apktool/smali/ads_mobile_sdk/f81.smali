.class public final Lads_mobile_sdk/f81;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/net/URL;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/Map;

.field public final d:[B

.field public final e:Lads_mobile_sdk/ss0;

.field public final f:Lads_mobile_sdk/g9;


# direct methods
.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Ljava/util/Map;[BLads_mobile_sdk/ss0;Lads_mobile_sdk/g9;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lads_mobile_sdk/f81;->a:Ljava/net/URL;

    .line 14
    iput-object p2, p0, Lads_mobile_sdk/f81;->b:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lads_mobile_sdk/f81;->c:Ljava/util/Map;

    .line 16
    iput-object p4, p0, Lads_mobile_sdk/f81;->d:[B

    .line 19
    iput-object p5, p0, Lads_mobile_sdk/f81;->e:Lads_mobile_sdk/ss0;

    .line 20
    iput-object p6, p0, Lads_mobile_sdk/f81;->f:Lads_mobile_sdk/g9;

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 1

    .line 16
    iget-object v0, p0, Lads_mobile_sdk/f81;->d:[B

    return-object v0
.end method

.method public final b()Lads_mobile_sdk/ss0;
    .locals 1

    .line 19
    iget-object v0, p0, Lads_mobile_sdk/f81;->e:Lads_mobile_sdk/ss0;

    return-object v0
.end method

.method public final c()Ljava/util/Map;
    .locals 1

    .line 15
    iget-object v0, p0, Lads_mobile_sdk/f81;->c:Ljava/util/Map;

    return-object v0
.end method

.method public final d()Lads_mobile_sdk/g9;
    .locals 1

    .line 20
    iget-object v0, p0, Lads_mobile_sdk/f81;->f:Lads_mobile_sdk/g9;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lads_mobile_sdk/f81;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/net/URL;
    .locals 1

    .line 13
    iget-object v0, p0, Lads_mobile_sdk/f81;->a:Ljava/net/URL;

    return-object v0
.end method

.method public final g()Lads_mobile_sdk/e81;
    .locals 1

    .line 1
    new-instance v0, Lads_mobile_sdk/e81;

    invoke-direct {v0, p0}, Lads_mobile_sdk/e81;-><init>(Lads_mobile_sdk/f81;)V

    return-object v0
.end method

.method public final h()Lokhttp3/Request;
    .locals 9

    .line 152
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v1, p0, Lads_mobile_sdk/f81;->a:Ljava/net/URL;

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/net/URL;)Lokhttp3/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lads_mobile_sdk/f81;->b:Ljava/lang/String;

    iget-object v3, p0, Lads_mobile_sdk/f81;->d:[B

    if-eqz v3, :cond_0

    sget-object v2, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lokhttp3/RequestBody$Companion;->create$default(Lokhttp3/RequestBody$Companion;[BLokhttp3/MediaType;IIILjava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lads_mobile_sdk/f81;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 154
    invoke-virtual {v0, v3, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_1

    .line 157
    :cond_1
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 24
    iget-object v0, p0, Lads_mobile_sdk/f81;->b:Ljava/lang/String;

    iget-object v1, p0, Lads_mobile_sdk/f81;->a:Ljava/net/URL;

    iget-object v2, p0, Lads_mobile_sdk/f81;->c:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HttpRequest{method="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", url="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", headers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
