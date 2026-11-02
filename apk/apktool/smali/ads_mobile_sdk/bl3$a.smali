.class Lads_mobile_sdk/bl3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/bl3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lads_mobile_sdk/bl3<",
        "TK;>.a;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;

.field final synthetic b:Lads_mobile_sdk/bl3;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/bl3;Lads_mobile_sdk/qr0$b;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 397
    iput-object p1, p0, Lads_mobile_sdk/bl3$a;->b:Lads_mobile_sdk/bl3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    iput-object p3, p0, Lads_mobile_sdk/bl3$a;->a:Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 873
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public a(Lads_mobile_sdk/bl3$a;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lads_mobile_sdk/bl3<",
            "TK;>.a;)I"
        }
    .end annotation

    .line 414
    invoke-virtual {p0}, Lads_mobile_sdk/bl3$a;->d()Lads_mobile_sdk/qr0$b;

    invoke-virtual {p1}, Lads_mobile_sdk/bl3$a;->d()Lads_mobile_sdk/qr0$b;

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 392
    check-cast p1, Lads_mobile_sdk/bl3$a;

    invoke-virtual {p0, p1}, Lads_mobile_sdk/bl3$a;->a(Lads_mobile_sdk/bl3$a;)I

    move-result p1

    return p1
.end method

.method public d()Lads_mobile_sdk/qr0$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 435
    :cond_0
    instance-of v1, p1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 438
    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    .line 439
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {p0, v3, v1}, Lads_mobile_sdk/bl3$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lads_mobile_sdk/bl3$a;->a:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lads_mobile_sdk/bl3$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .line 392
    invoke-virtual {p0}, Lads_mobile_sdk/bl3$a;->d()Lads_mobile_sdk/qr0$b;

    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 409
    iget-object v0, p0, Lads_mobile_sdk/bl3$a;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 444
    iget-object v0, p0, Lads_mobile_sdk/bl3$a;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 420
    iget-object v0, p0, Lads_mobile_sdk/bl3$a;->b:Lads_mobile_sdk/bl3;

    invoke-static {v0}, Lads_mobile_sdk/bl3;->-$$Nest$ma(Lads_mobile_sdk/bl3;)V

    .line 421
    iget-object v0, p0, Lads_mobile_sdk/bl3$a;->a:Ljava/lang/Object;

    .line 422
    iput-object p1, p0, Lads_mobile_sdk/bl3$a;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 449
    iget-object v0, p0, Lads_mobile_sdk/bl3$a;->a:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "null="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
