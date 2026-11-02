.class Lads_mobile_sdk/bl3$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/bl3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lads_mobile_sdk/bl3;


# direct methods
.method private constructor <init>(Lads_mobile_sdk/bl3;)V
    .locals 0

    .line 495
    iput-object p1, p0, Lads_mobile_sdk/bl3$b;->b:Lads_mobile_sdk/bl3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 497
    iput p1, p0, Lads_mobile_sdk/bl3$b;->a:I

    return-void
.end method

.method synthetic constructor <init>(Lads_mobile_sdk/bl3;Lads_mobile_sdk/bl3-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lads_mobile_sdk/bl3$b;-><init>(Lads_mobile_sdk/bl3;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 509
    iget-object v0, p0, Lads_mobile_sdk/bl3$b;->b:Lads_mobile_sdk/bl3;

    invoke-static {v0}, Lads_mobile_sdk/bl3;->-$$Nest$mb(Lads_mobile_sdk/bl3;)V

    .line 510
    invoke-virtual {p0}, Lads_mobile_sdk/bl3$b;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lads_mobile_sdk/bl3$b;->b:Lads_mobile_sdk/bl3;

    invoke-static {v0}, Lads_mobile_sdk/bl3;->-$$Nest$fgeta(Lads_mobile_sdk/bl3;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lads_mobile_sdk/bl3$b;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lads_mobile_sdk/bl3$b;->a:I

    aget-object v0, v0, v1

    check-cast v0, Lads_mobile_sdk/bl3$a;

    return-object v0

    .line 514
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 3

    .line 502
    iget-object v0, p0, Lads_mobile_sdk/bl3$b;->b:Lads_mobile_sdk/bl3;

    invoke-static {v0}, Lads_mobile_sdk/bl3;->-$$Nest$mb(Lads_mobile_sdk/bl3;)V

    .line 503
    iget v0, p0, Lads_mobile_sdk/bl3$b;->a:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lads_mobile_sdk/bl3$b;->b:Lads_mobile_sdk/bl3;

    invoke-static {v2}, Lads_mobile_sdk/bl3;->-$$Nest$fgetb(Lads_mobile_sdk/bl3;)I

    move-result v2

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 495
    invoke-virtual {p0}, Lads_mobile_sdk/bl3$b;->b()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
