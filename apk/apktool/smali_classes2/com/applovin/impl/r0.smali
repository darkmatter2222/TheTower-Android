.class public Lcom/applovin/impl/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/r0$d;,
        Lcom/applovin/impl/r0$e;,
        Lcom/applovin/impl/r0$c;,
        Lcom/applovin/impl/r0$b;
    }
.end annotation


# static fields
.field private static final f:Ljava/util/List;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/l;

.field private final b:Lcom/applovin/impl/sdk/p;

.field private final c:Lcom/applovin/impl/g4;

.field private d:Lcom/applovin/impl/r0$d;

.field private final e:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    .line 1
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "5.0/i"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "4.0/ad"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "1.0/mediate"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/r0;->f:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/applovin/impl/sdk/l;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/r0;->e:Ljava/util/Set;

    .line 6
    iput-object p1, p0, Lcom/applovin/impl/r0;->a:Lcom/applovin/impl/sdk/l;

    .line 7
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/r0;->b:Lcom/applovin/impl/sdk/p;

    .line 9
    new-instance v0, Lcom/applovin/impl/g4;

    invoke-direct {v0, p1}, Lcom/applovin/impl/g4;-><init>(Lcom/applovin/impl/sdk/l;)V

    iput-object v0, p0, Lcom/applovin/impl/r0;->c:Lcom/applovin/impl/g4;

    .line 10
    invoke-virtual {v0}, Lcom/applovin/impl/g4;->a()V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/r0;Lcom/applovin/impl/r0$d;)Lcom/applovin/impl/r0$d;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/applovin/impl/r0;->d:Lcom/applovin/impl/r0$d;

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/impl/r0;)Lcom/applovin/impl/sdk/l;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/applovin/impl/r0;->a:Lcom/applovin/impl/sdk/l;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/r0;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/r0;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_5

    .line 185
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    goto :goto_1

    .line 188
    :cond_1
    instance-of v0, p2, Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    .line 191
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object p2

    .line 195
    :cond_2
    instance-of v0, p2, Lcom/applovin/impl/u8;

    if-eqz v0, :cond_3

    .line 198
    iget-object p2, p0, Lcom/applovin/impl/r0;->a:Lcom/applovin/impl/sdk/l;

    invoke-static {p1, p2}, Lcom/applovin/impl/v8;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/l;)Lcom/applovin/impl/u8;

    move-result-object p1

    return-object p1

    .line 202
    :cond_3
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_4

    :goto_0
    return-object p1

    .line 210
    :cond_4
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/applovin/impl/r0;->b:Lcom/applovin/impl/sdk/p;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to process response of type \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectionManager"

    invoke-virtual {p1, v1, v0}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-object p2
.end method

.method static synthetic a(Lcom/applovin/impl/r0;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/applovin/impl/r0;->a(Ljava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/r0;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Throwable;)V
    .locals 0

    .line 5
    invoke-direct/range {p0 .. p6}, Lcom/applovin/impl/r0;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 3

    .line 211
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/r0;->b:Lcom/applovin/impl/sdk/p;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Successful "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " returned "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " in "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    long-to-float p3, p4

    const/high16 p4, 0x447a0000    # 1000.0f

    div-float/2addr p3, p4

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " s over "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Lcom/applovin/impl/r0;->a:Lcom/applovin/impl/sdk/l;

    .line 214
    invoke-static {p3}, Lcom/applovin/impl/s0;->g(Lcom/applovin/impl/sdk/l;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " to "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 215
    invoke-direct {p0, p2}, Lcom/applovin/impl/r0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 216
    const-string p2, "ConnectionManager"

    invoke-virtual {v0, p2, p1}, Lcom/applovin/impl/sdk/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Throwable;)V
    .locals 3

    .line 217
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/r0;->b:Lcom/applovin/impl/sdk/p;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " returned "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " in "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    long-to-float p3, p4

    const/high16 p4, 0x447a0000    # 1000.0f

    div-float/2addr p3, p4

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " s over "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Lcom/applovin/impl/r0;->a:Lcom/applovin/impl/sdk/l;

    .line 220
    invoke-static {p3}, Lcom/applovin/impl/s0;->g(Lcom/applovin/impl/sdk/l;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " to "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 221
    invoke-direct {p0, p2}, Lcom/applovin/impl/r0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 222
    const-string p2, "ConnectionManager"

    invoke-virtual {v0, p2, p1, p6}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/r0;)Lcom/applovin/impl/sdk/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/r0;->b:Lcom/applovin/impl/sdk/p;

    return-object p0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/StringUtils;->getHostAndPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a()Lcom/applovin/impl/r0$d;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/applovin/impl/r0;->d:Lcom/applovin/impl/r0$d;

    return-object v0
.end method

.method public a(Lcom/applovin/impl/sdk/network/a;Lcom/applovin/impl/r0$b;Lcom/applovin/impl/r0$e;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v8, p3

    const-string v2, "Failed to gzip POST body for request "

    const-string v0, "Sending "

    if-eqz p1, :cond_16

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/a;->f()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/a;->h()Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_15

    if-eqz v4, :cond_14

    if-eqz v8, :cond_13

    .line 14
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "http"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v10, 0x0

    const-string v6, "ConnectionManager"

    if-nez v5, :cond_0

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Requested postback submission to non HTTP endpoint "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; skipping..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v6, v0}, Lcom/applovin/impl/sdk/p;->h(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, -0x384

    .line 19
    invoke-interface {v8, v3, v2, v0, v10}, Lcom/applovin/impl/r0$e;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 25
    :cond_0
    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/StringUtils;->toHttpsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 28
    new-instance v5, Ljava/util/HashMap;

    const/4 v7, 0x2

    invoke-direct {v5, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/a;->m()Z

    move-result v7

    .line 31
    iget-object v9, v1, Lcom/applovin/impl/r0;->a:Lcom/applovin/impl/sdk/l;

    sget-object v11, Lcom/applovin/impl/c5;->B5:Lcom/applovin/impl/c5;

    invoke-virtual {v9, v11}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, v1, Lcom/applovin/impl/r0;->a:Lcom/applovin/impl/sdk/l;

    sget-object v11, Lcom/applovin/impl/c5;->y5:Lcom/applovin/impl/c5;

    invoke-virtual {v9, v11}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Lcom/applovin/impl/z4$a;->a(I)Lcom/applovin/impl/z4$a;

    move-result-object v9

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/a;->e()Lcom/applovin/impl/z4$a;

    move-result-object v9

    .line 32
    :goto_0
    iget-object v11, v1, Lcom/applovin/impl/r0;->a:Lcom/applovin/impl/sdk/l;

    invoke-static {v11}, Lcom/applovin/impl/u7;->a(Lcom/applovin/impl/sdk/l;)J

    move-result-wide v11

    .line 35
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/a;->i()Ljava/util/Map;

    move-result-object v13

    if-eqz v13, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/a;->i()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Map;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_3

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/a;->c()I

    move-result v13

    if-lez v13, :cond_7

    .line 37
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/a;->i()Ljava/util/Map;

    move-result-object v13

    .line 38
    iget-object v14, v1, Lcom/applovin/impl/r0;->a:Lcom/applovin/impl/sdk/l;

    sget-object v15, Lcom/applovin/impl/c5;->s3:Lcom/applovin/impl/c5;

    invoke-virtual {v14, v15}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    if-eqz v13, :cond_4

    .line 41
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/a;->c()I

    move-result v15

    if-lez v15, :cond_4

    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/a;->c()I

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    const-string v10, "current_retry_attempt"

    invoke-interface {v13, v10, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz v7, :cond_6

    .line 48
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-static {v13, v10}, Lcom/applovin/impl/u7;->a(Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v10

    .line 49
    iget-object v13, v1, Lcom/applovin/impl/r0;->a:Lcom/applovin/impl/sdk/l;

    invoke-static {v10, v11, v12, v9, v13}, Lcom/applovin/impl/z4;->b(Ljava/lang/String;JLcom/applovin/impl/z4$a;Lcom/applovin/impl/sdk/l;)Ljava/lang/String;

    move-result-object v13

    .line 51
    invoke-static {v10}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 53
    const-string v14, "query"

    invoke-static {v14, v10, v5}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 56
    :cond_5
    const-string v10, "p"

    invoke-static {v3, v10, v13}, Lcom/applovin/impl/sdk/utils/StringUtils;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 60
    :cond_6
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-static {v3, v13, v10}, Lcom/applovin/impl/sdk/utils/StringUtils;->appendQueryParameters(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v3

    .line 64
    :cond_7
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 68
    :try_start_0
    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/StringUtils;->getHostAndPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v15, Lcom/applovin/impl/r0;->f:Ljava/util/List;

    invoke-static {v10, v15}, Lcom/applovin/impl/sdk/utils/StringUtils;->endsWith(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v10

    .line 70
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v15, :cond_9

    :try_start_1
    iget-object v15, v1, Lcom/applovin/impl/r0;->b:Lcom/applovin/impl/sdk/p;

    move/from16 v16, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " request to id=#"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " \""

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_8

    move-object v7, v3

    goto :goto_2

    :cond_8
    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/StringUtils;->getHostAndPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_2
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\"..."

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v6, v0}, Lcom/applovin/impl/sdk/p;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v7, v0

    move-object v2, v4

    goto/16 :goto_9

    :cond_9
    move/from16 v16, v7

    .line 72
    :goto_3
    :try_start_2
    new-instance v0, Lcom/applovin/impl/g4$c$a;

    invoke-direct {v0}, Lcom/applovin/impl/g4$c$a;-><init>()V

    .line 73
    invoke-virtual {v0, v3}, Lcom/applovin/impl/g4$c$a;->a(Ljava/lang/String;)Lcom/applovin/impl/g4$c$a;

    move-result-object v0

    .line 74
    invoke-virtual {v0, v4}, Lcom/applovin/impl/g4$c$a;->b(Ljava/lang/String;)Lcom/applovin/impl/g4$c$a;

    move-result-object v0

    .line 75
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/a;->g()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/applovin/impl/g4$c$a;->a(Ljava/util/Map;)Lcom/applovin/impl/g4$c$a;

    move-result-object v0

    .line 76
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/a;->l()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/applovin/impl/g4$c$a;->a(I)Lcom/applovin/impl/g4$c$a;

    move-result-object v10

    .line 79
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/a;->b()Lorg/json/JSONObject;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    const-string v7, "url"

    if-eqz v0, :cond_10

    if-eqz v16, :cond_a

    .line 84
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/a;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v15, v1, Lcom/applovin/impl/r0;->a:Lcom/applovin/impl/sdk/l;

    invoke-static {v0, v11, v12, v9, v15}, Lcom/applovin/impl/z4;->a(Ljava/lang/String;JLcom/applovin/impl/z4$a;Lcom/applovin/impl/sdk/l;)[B

    move-result-object v0

    if-nez v0, :cond_b

    .line 87
    const-string v11, "body"

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/a;->b()Lorg/json/JSONObject;

    move-result-object v12

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v5}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_4

    .line 92
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/a;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v11, "UTF-8"

    invoke-virtual {v0, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_b
    :goto_4
    move-object v11, v0

    const-string v12, "gzip"

    if-eqz v16, :cond_c

    .line 97
    :try_start_4
    sget-object v0, Lcom/applovin/impl/z4$a;->d:Lcom/applovin/impl/z4$a;

    if-eq v9, v0, :cond_e

    .line 98
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/a;->o()Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz v11, :cond_e

    array-length v0, v11

    iget-object v9, v1, Lcom/applovin/impl/r0;->a:Lcom/applovin/impl/sdk/l;

    sget-object v15, Lcom/applovin/impl/c5;->X5:Lcom/applovin/impl/c5;

    invoke-virtual {v9, v15}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-le v0, v9, :cond_e

    .line 102
    :try_start_5
    invoke-static {v11}, Lcom/applovin/impl/u7;->a([B)[B

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    .line 106
    :try_start_6
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, v1, Lcom/applovin/impl/r0;->b:Lcom/applovin/impl/sdk/p;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lcom/applovin/impl/r0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v6, v2, v0}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    :cond_d
    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/StringUtils;->getHostAndPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 108
    iget-object v9, v1, Lcom/applovin/impl/r0;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v9}, Lcom/applovin/impl/sdk/l;->E()Lcom/applovin/impl/s1;

    move-result-object v9

    invoke-virtual {v9, v6, v12, v0, v2}, Lcom/applovin/impl/s1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    :cond_e
    const/4 v0, 0x0

    .line 113
    :goto_5
    const-string v2, "Content-Type"

    const-string v6, "application/json; charset=utf-8"

    invoke-virtual {v10, v2, v6}, Lcom/applovin/impl/g4$c$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/g4$c$a;

    .line 115
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/a;->o()Z

    move-result v2

    if-eqz v2, :cond_f

    if-eqz v0, :cond_f

    .line 117
    const-string v2, "Content-Encoding"

    invoke-virtual {v10, v2, v12}, Lcom/applovin/impl/g4$c$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/g4$c$a;

    .line 118
    invoke-virtual {v10, v0}, Lcom/applovin/impl/g4$c$a;->a([B)Lcom/applovin/impl/g4$c$a;

    goto :goto_6

    :cond_f
    if-eqz v11, :cond_10

    .line 122
    invoke-virtual {v10, v11}, Lcom/applovin/impl/g4$c$a;->a([B)Lcom/applovin/impl/g4$c$a;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 127
    :cond_10
    :goto_6
    :try_start_7
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-nez v0, :cond_12

    .line 129
    :try_start_8
    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/StringUtils;->getHostAndPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 130
    iget-object v2, v1, Lcom/applovin/impl/r0;->a:Lcom/applovin/impl/sdk/l;

    sget-object v6, Lcom/applovin/impl/c5;->W5:Lcom/applovin/impl/c5;

    invoke-virtual {v2, v6}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 132
    const-string v2, "details"

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 135
    :cond_11
    const-string v2, ","

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-static {v2, v5}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 136
    iget-object v5, v1, Lcom/applovin/impl/r0;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v5}, Lcom/applovin/impl/sdk/l;->E()Lcom/applovin/impl/s1;

    move-result-object v5

    sget-object v6, Lcom/applovin/impl/h2;->s1:Lcom/applovin/impl/h2;

    invoke-virtual {v5, v6, v2, v0}, Lcom/applovin/impl/i2;->a(Lcom/applovin/impl/h2;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 140
    :cond_12
    :try_start_9
    iget-object v11, v1, Lcom/applovin/impl/r0;->c:Lcom/applovin/impl/g4;

    new-instance v0, Lcom/applovin/impl/r0$c;

    .line 146
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/a;->d()Ljava/lang/Object;

    move-result-object v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    const/4 v9, 0x0

    move-object/from16 v7, p2

    move-object v2, v3

    move/from16 v6, v16

    move-object/from16 v3, p1

    :try_start_a
    invoke-direct/range {v0 .. v9}, Lcom/applovin/impl/r0$c;-><init>(Lcom/applovin/impl/r0;Ljava/lang/String;Lcom/applovin/impl/sdk/network/a;Ljava/lang/String;Ljava/lang/Object;ZLcom/applovin/impl/r0$b;Lcom/applovin/impl/r0$e;Lcom/applovin/impl/r0$a;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-object v3, v2

    move-object v2, v4

    .line 147
    :try_start_b
    invoke-virtual {v10, v0}, Lcom/applovin/impl/g4$c$a;->a(Landroidx/core/util/Consumer;)Lcom/applovin/impl/g4$c$a;

    move-result-object v0

    iget-object v4, v1, Lcom/applovin/impl/r0;->a:Lcom/applovin/impl/sdk/l;

    .line 156
    invoke-virtual {v4}, Lcom/applovin/impl/sdk/l;->s0()Lcom/applovin/impl/i6;

    move-result-object v4

    invoke-virtual {v4}, Lcom/applovin/impl/i6;->c()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/applovin/impl/g4$c$a;->a(Ljava/util/concurrent/Executor;)Lcom/applovin/impl/g4$c$a;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Lcom/applovin/impl/g4$c$a;->a()Lcom/applovin/impl/g4$c;

    move-result-object v0

    .line 158
    invoke-virtual {v11, v0}, Lcom/applovin/impl/g4;->a(Lcom/applovin/impl/g4$c;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_a

    :catchall_2
    move-exception v0

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_7

    :catchall_4
    move-exception v0

    :goto_7
    move-object v2, v4

    :goto_8
    move-object v7, v0

    .line 175
    :goto_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v5, v4, v13

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/applovin/impl/r0;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Throwable;)V

    .line 176
    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v8, v3, v1, v0, v2}, Lcom/applovin/impl/r0$e;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)V

    :goto_a
    return-void

    .line 177
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No callback specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No method specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No endpoint specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No request specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .line 181
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/r0;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/r0;->a:Lcom/applovin/impl/sdk/l;

    sget-object v1, Lcom/applovin/impl/c5;->D3:Lcom/applovin/impl/c5;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/StringUtils;->getHostAndPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/r0;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
