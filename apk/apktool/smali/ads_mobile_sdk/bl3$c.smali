.class Lads_mobile_sdk/bl3$c;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/bl3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lads_mobile_sdk/bl3;


# direct methods
.method private constructor <init>(Lads_mobile_sdk/bl3;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lads_mobile_sdk/bl3$c;->a:Lads_mobile_sdk/bl3;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lads_mobile_sdk/bl3;Lads_mobile_sdk/bl3-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lads_mobile_sdk/bl3$c;-><init>(Lads_mobile_sdk/bl3;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .line 484
    check-cast p1, Ljava/util/Map$Entry;

    .line 485
    iget-object v0, p0, Lads_mobile_sdk/bl3$c;->a:Lads_mobile_sdk/bl3;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lads_mobile_sdk/bl3;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 486
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 468
    iget-object v0, p0, Lads_mobile_sdk/bl3$c;->a:Lads_mobile_sdk/bl3;

    invoke-static {v0}, Lads_mobile_sdk/bl3;->-$$Nest$mb(Lads_mobile_sdk/bl3;)V

    .line 469
    new-instance v0, Lads_mobile_sdk/bl3$b;

    iget-object v1, p0, Lads_mobile_sdk/bl3$c;->a:Lads_mobile_sdk/bl3;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/bl3$b;-><init>(Lads_mobile_sdk/bl3;Lads_mobile_sdk/bl3-IA;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 474
    iget-object v0, p0, Lads_mobile_sdk/bl3$c;->a:Lads_mobile_sdk/bl3;

    invoke-virtual {v0}, Lads_mobile_sdk/bl3;->size()I

    move-result v0

    return v0
.end method
