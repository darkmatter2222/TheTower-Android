.class public Lcom/applovin/impl/w3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/w3$a;,
        Lcom/applovin/impl/w3$b;
    }
.end annotation


# static fields
.field private static final c:Ljava/util/Set;

.field private static final d:Ljava/util/Map;

.field public static final e:Lcom/applovin/impl/w3;

.field public static final f:Lcom/applovin/impl/w3;

.field public static final g:Lcom/applovin/impl/w3;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/applovin/impl/w3;->c:Ljava/util/Set;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/applovin/impl/w3;->d:Ljava/util/Map;

    .line 7
    sget-object v0, Lcom/applovin/impl/w3$a;->b:Lcom/applovin/impl/w3$a;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/applovin/impl/w3$a;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sget-object v3, Lcom/applovin/impl/w3$a;->c:Lcom/applovin/impl/w3$a;

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "ars"

    invoke-static {v3, v1}, Lcom/applovin/impl/w3;->a(Ljava/lang/String;[Lcom/applovin/impl/w3$a;)Lcom/applovin/impl/w3;

    move-result-object v1

    sput-object v1, Lcom/applovin/impl/w3;->e:Lcom/applovin/impl/w3;

    .line 8
    new-array v1, v4, [Lcom/applovin/impl/w3$a;

    aput-object v0, v1, v2

    const-string v3, "ar"

    invoke-static {v3, v1}, Lcom/applovin/impl/w3;->a(Ljava/lang/String;[Lcom/applovin/impl/w3$a;)Lcom/applovin/impl/w3;

    move-result-object v1

    sput-object v1, Lcom/applovin/impl/w3;->f:Lcom/applovin/impl/w3;

    .line 9
    new-array v1, v4, [Lcom/applovin/impl/w3$a;

    aput-object v0, v1, v2

    const-string v0, "ttdasi_ms"

    invoke-static {v0, v1}, Lcom/applovin/impl/w3;->a(Ljava/lang/String;[Lcom/applovin/impl/w3$a;)Lcom/applovin/impl/w3;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/w3;->g:Lcom/applovin/impl/w3;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/w3;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/impl/w3;->b:Ljava/util/Set;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/applovin/impl/w3;
    .locals 1

    .line 10
    sget-object v0, Lcom/applovin/impl/w3;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/applovin/impl/w3;

    return-object p0
.end method

.method private static varargs a(Ljava/lang/String;[Lcom/applovin/impl/w3$a;)Lcom/applovin/impl/w3;
    .locals 3

    .line 3
    sget-object v0, Lcom/applovin/impl/w3;->c:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/applovin/impl/w3;

    new-instance v2, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, p0, v2}, Lcom/applovin/impl/w3;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    .line 6
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object p1, Lcom/applovin/impl/w3;->d:Ljava/util/Map;

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Key has already been used: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/w3;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/applovin/impl/w3$a;)Z
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/applovin/impl/w3;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected a(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lcom/applovin/impl/w3;

    return p1
.end method

.method public b()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/w3;->b:Ljava/util/Set;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/applovin/impl/w3;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/applovin/impl/w3;

    invoke-virtual {p1, p0}, Lcom/applovin/impl/w3;->a(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/applovin/impl/w3;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applovin/impl/w3;->a()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/applovin/impl/w3;->b()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applovin/impl/w3;->b()Ljava/util/Set;

    move-result-object p1

    if-nez v1, :cond_5

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :goto_1
    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/applovin/impl/w3;->a()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/applovin/impl/w3;->b()Ljava/util/Set;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/w3;->a:Ljava/lang/String;

    return-object v0
.end method
