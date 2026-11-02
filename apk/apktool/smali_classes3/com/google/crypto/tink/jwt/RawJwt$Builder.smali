.class public final Lcom/google/crypto/tink/jwt/RawJwt$Builder;
.super Ljava/lang/Object;
.source "RawJwt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/jwt/RawJwt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final payload:Lcom/google/gson/JsonObject;

.field private typeHeader:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private withoutExpiration:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->typeHeader:Ljava/util/Optional;

    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->withoutExpiration:Z

    .line 145
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    iput-object v0, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->payload:Lcom/google/gson/JsonObject;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/jwt/RawJwt$1;)V
    .locals 0

    .line 137
    invoke-direct {p0}, Lcom/google/crypto/tink/jwt/RawJwt$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/crypto/tink/jwt/RawJwt$Builder;)Lcom/google/gson/JsonObject;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->payload:Lcom/google/gson/JsonObject;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/jwt/RawJwt$Builder;)Z
    .locals 0

    .line 137
    iget-boolean p0, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->withoutExpiration:Z

    return p0
.end method

.method static synthetic access$200(Lcom/google/crypto/tink/jwt/RawJwt$Builder;)Ljava/util/Optional;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->typeHeader:Ljava/util/Optional;

    return-object p0
.end method

.method private setTimestampClaim(Ljava/lang/String;Ljava/time/Instant;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .line 284
    invoke-virtual {p2}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v0

    const-wide v2, 0x3afff4417fL

    cmp-long p2, v0, v2

    if-gtz p2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-ltz p2, :cond_0

    .line 289
    iget-object p2, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->payload:Lcom/google/gson/JsonObject;

    new-instance v2, Lcom/google/gson/JsonPrimitive;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {p2, p1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-void

    .line 286
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "timestamp of claim "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is out of range"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public addAudience(Ljava/lang/String;)Lcom/google/crypto/tink/jwt/RawJwt$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 249
    invoke-static {p1}, Lcom/google/crypto/tink/jwt/internal/JsonUtil;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 253
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->payload:Lcom/google/gson/JsonObject;

    const-string v1, "aud"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->payload:Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 259
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    goto :goto_0

    .line 256
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "addAudience can\'t be used together with setAudience"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 261
    :cond_1
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 263
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/gson/JsonArray;->add(Ljava/lang/String;)V

    .line 264
    iget-object p1, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->payload:Lcom/google/gson/JsonObject;

    invoke-virtual {p1, v1, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object p0

    .line 250
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid string"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addBooleanClaim(Ljava/lang/String;Z)Lcom/google/crypto/tink/jwt/RawJwt$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .line 355
    invoke-static {p1}, Lcom/google/crypto/tink/jwt/internal/JwtNames;->validate(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->payload:Lcom/google/gson/JsonObject;

    new-instance v1, Lcom/google/gson/JsonPrimitive;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v1, p2}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object p0
.end method

.method public addJsonArrayClaim(Ljava/lang/String;Ljava/lang/String;)Lcom/google/crypto/tink/jwt/RawJwt$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "encodedJsonArray"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/jwt/JwtInvalidException;
        }
    .end annotation

    .line 408
    invoke-static {p1}, Lcom/google/crypto/tink/jwt/internal/JwtNames;->validate(Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->payload:Lcom/google/gson/JsonObject;

    invoke-static {p2}, Lcom/google/crypto/tink/jwt/internal/JsonUtil;->parseJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object p0
.end method

.method public addJsonObjectClaim(Ljava/lang/String;Ljava/lang/String;)Lcom/google/crypto/tink/jwt/RawJwt$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "encodedJsonObject"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/jwt/JwtInvalidException;
        }
    .end annotation

    .line 399
    invoke-static {p1}, Lcom/google/crypto/tink/jwt/internal/JwtNames;->validate(Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->payload:Lcom/google/gson/JsonObject;

    invoke-static {p2}, Lcom/google/crypto/tink/jwt/internal/JsonUtil;->parseJson(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object p0
.end method

.method public addNullClaim(Ljava/lang/String;)Lcom/google/crypto/tink/jwt/RawJwt$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 390
    invoke-static {p1}, Lcom/google/crypto/tink/jwt/internal/JwtNames;->validate(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->payload:Lcom/google/gson/JsonObject;

    sget-object v1, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object p0
.end method

.method public addNumberClaim(Ljava/lang/String;D)Lcom/google/crypto/tink/jwt/RawJwt$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .line 371
    invoke-static {p1}, Lcom/google/crypto/tink/jwt/internal/JwtNames;->validate(Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->payload:Lcom/google/gson/JsonObject;

    new-instance v1, Lcom/google/gson/JsonPrimitive;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {v1, p2}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object p0
.end method

.method public addNumberClaim(Ljava/lang/String;J)Lcom/google/crypto/tink/jwt/RawJwt$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .line 363
    invoke-static {p1}, Lcom/google/crypto/tink/jwt/internal/JwtNames;->validate(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->payload:Lcom/google/gson/JsonObject;

    new-instance v1, Lcom/google/gson/JsonPrimitive;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {v1, p2}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object p0
.end method

.method public addStringClaim(Ljava/lang/String;Ljava/lang/String;)Lcom/google/crypto/tink/jwt/RawJwt$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .line 379
    invoke-static {p2}, Lcom/google/crypto/tink/jwt/internal/JsonUtil;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    invoke-static {p1}, Lcom/google/crypto/tink/jwt/internal/JwtNames;->validate(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->payload:Lcom/google/gson/JsonObject;

    new-instance v1, Lcom/google/gson/JsonPrimitive;

    invoke-direct {v1, p2}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object p0

    .line 380
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public build()Lcom/google/crypto/tink/jwt/RawJwt;
    .locals 2

    .line 414
    new-instance v0, Lcom/google/crypto/tink/jwt/RawJwt;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/crypto/tink/jwt/RawJwt;-><init>(Lcom/google/crypto/tink/jwt/RawJwt$Builder;Lcom/google/crypto/tink/jwt/RawJwt$1;)V

    return-object v0
.end method

.method public setAudience(Ljava/lang/String;)Lcom/google/crypto/tink/jwt/RawJwt$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->payload:Lcom/google/gson/JsonObject;

    const-string v1, "aud"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->payload:Lcom/google/gson/JsonObject;

    .line 200
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "setAudience can\'t be used together with setAudiences or addAudience"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 204
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/google/crypto/tink/jwt/internal/JsonUtil;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->payload:Lcom/google/gson/JsonObject;

    new-instance v2, Lcom/google/gson/JsonPrimitive;

    invoke-direct {v2, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object p0

    .line 205
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid string"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAudiences(Ljava/util/List;)Lcom/google/crypto/tink/jwt/RawJwt$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/crypto/tink/jwt/RawJwt$Builder;"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->payload:Lcom/google/gson/JsonObject;

    const-string v1, "aud"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->payload:Lcom/google/gson/JsonObject;

    .line 222
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "setAudiences can\'t be used together with setAudience"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 225
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 228
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 229
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 230
    invoke-static {v2}, Lcom/google/crypto/tink/jwt/internal/JsonUtil;->isValidString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 233
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonArray;->add(Ljava/lang/String;)V

    goto :goto_1

    .line 231
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid string"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 235
    :cond_3
    iget-object p1, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->payload:Lcom/google/gson/JsonObject;

    invoke-virtual {p1, v1, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object p0

    .line 226
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "audiences must not be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setExpiration(Ljava/time/Instant;)Lcom/google/crypto/tink/jwt/RawJwt$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 304
    const-string v0, "exp"

    invoke-direct {p0, v0, p1}, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->setTimestampClaim(Ljava/lang/String;Ljava/time/Instant;)V

    return-object p0
.end method

.method public setIssuedAt(Ljava/time/Instant;)Lcom/google/crypto/tink/jwt/RawJwt$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 348
    const-string v0, "iat"

    invoke-direct {p0, v0, p1}, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->setTimestampClaim(Ljava/lang/String;Ljava/time/Instant;)V

    return-object p0
.end method

.method public setIssuer(Ljava/lang/String;)Lcom/google/crypto/tink/jwt/RawJwt$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 168
    invoke-static {p1}, Lcom/google/crypto/tink/jwt/internal/JsonUtil;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->payload:Lcom/google/gson/JsonObject;

    new-instance v1, Lcom/google/gson/JsonPrimitive;

    invoke-direct {v1, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string p1, "iss"

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object p0

    .line 169
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setJwtId(Ljava/lang/String;)Lcom/google/crypto/tink/jwt/RawJwt$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 275
    invoke-static {p1}, Lcom/google/crypto/tink/jwt/internal/JsonUtil;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->payload:Lcom/google/gson/JsonObject;

    new-instance v1, Lcom/google/gson/JsonPrimitive;

    invoke-direct {v1, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string p1, "jti"

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object p0

    .line 276
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setNotBefore(Ljava/time/Instant;)Lcom/google/crypto/tink/jwt/RawJwt$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 333
    const-string v0, "nbf"

    invoke-direct {p0, v0, p1}, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->setTimestampClaim(Ljava/lang/String;Ljava/time/Instant;)V

    return-object p0
.end method

.method public setSubject(Ljava/lang/String;)Lcom/google/crypto/tink/jwt/RawJwt$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 182
    invoke-static {p1}, Lcom/google/crypto/tink/jwt/internal/JsonUtil;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->payload:Lcom/google/gson/JsonObject;

    new-instance v1, Lcom/google/gson/JsonPrimitive;

    invoke-direct {v1, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string p1, "sub"

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object p0

    .line 183
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setTypeHeader(Ljava/lang/String;)Lcom/google/crypto/tink/jwt/RawJwt$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 157
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->typeHeader:Ljava/util/Optional;

    return-object p0
.end method

.method public withoutExpiration()Lcom/google/crypto/tink/jwt/RawJwt$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 317
    iput-boolean v0, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->withoutExpiration:Z

    return-object p0
.end method
