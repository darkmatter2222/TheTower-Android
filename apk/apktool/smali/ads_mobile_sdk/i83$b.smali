.class Lads_mobile_sdk/i83$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/i83;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lads_mobile_sdk/du;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$ma(Lads_mobile_sdk/i83$b;Lads_mobile_sdk/du;Lads_mobile_sdk/du;)Lads_mobile_sdk/du;
    .locals 0

    invoke-direct {p0, p1, p2}, Lads_mobile_sdk/i83$b;->a(Lads_mobile_sdk/du;Lads_mobile_sdk/du;)Lads_mobile_sdk/du;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 1

    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 619
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lads_mobile_sdk/i83$b;->a:Ljava/util/ArrayDeque;

    return-void
.end method

.method synthetic constructor <init>(Lads_mobile_sdk/i83-IA;)V
    .locals 0

    invoke-direct {p0}, Lads_mobile_sdk/i83$b;-><init>()V

    return-void
.end method

.method private a(I)I
    .locals 1

    .line 1279
    sget-object v0, Lads_mobile_sdk/i83;->k:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-gez p1, :cond_0

    add-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    :cond_0
    return p1
.end method

.method private a(Lads_mobile_sdk/du;Lads_mobile_sdk/du;)Lads_mobile_sdk/du;
    .locals 2

    .line 622
    invoke-direct {p0, p1}, Lads_mobile_sdk/i83$b;->a(Lads_mobile_sdk/du;)V

    .line 623
    invoke-direct {p0, p2}, Lads_mobile_sdk/i83$b;->a(Lads_mobile_sdk/du;)V

    .line 626
    iget-object p1, p0, Lads_mobile_sdk/i83$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/du;

    .line 627
    :goto_0
    iget-object p2, p0, Lads_mobile_sdk/i83$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 628
    iget-object p2, p0, Lads_mobile_sdk/i83$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lads_mobile_sdk/du;

    .line 629
    new-instance v0, Lads_mobile_sdk/i83;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lads_mobile_sdk/i83;-><init>(Lads_mobile_sdk/du;Lads_mobile_sdk/du;Lads_mobile_sdk/i83-IA;)V

    move-object p1, v0

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private a(Lads_mobile_sdk/du;)V
    .locals 3

    .line 1270
    invoke-virtual {p1}, Lads_mobile_sdk/du;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1271
    invoke-direct {p0, p1}, Lads_mobile_sdk/i83$b;->b(Lads_mobile_sdk/du;)V

    return-void

    .line 1272
    :cond_0
    instance-of v0, p1, Lads_mobile_sdk/i83;

    if-eqz v0, :cond_1

    .line 1273
    check-cast p1, Lads_mobile_sdk/i83;

    .line 1274
    invoke-static {p1}, Lads_mobile_sdk/i83;->-$$Nest$fgetg(Lads_mobile_sdk/i83;)Lads_mobile_sdk/du;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/i83$b;->a(Lads_mobile_sdk/du;)V

    .line 1275
    invoke-static {p1}, Lads_mobile_sdk/i83;->-$$Nest$fgeth(Lads_mobile_sdk/i83;)Lads_mobile_sdk/du;

    move-result-object p1

    invoke-direct {p0, p1}, Lads_mobile_sdk/i83$b;->a(Lads_mobile_sdk/du;)V

    return-void

    .line 1277
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1278
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Has a new type of ByteString been created? Found "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Lads_mobile_sdk/du;)V
    .locals 5

    .line 666
    invoke-virtual {p1}, Lads_mobile_sdk/du;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/i83$b;->a(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 667
    invoke-static {v1}, Lads_mobile_sdk/i83;->g(I)I

    move-result v1

    .line 673
    iget-object v2, p0, Lads_mobile_sdk/i83$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lads_mobile_sdk/i83$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/du;

    invoke-virtual {v2}, Lads_mobile_sdk/du;->size()I

    move-result v2

    if-lt v2, v1, :cond_0

    goto :goto_2

    .line 676
    :cond_0
    invoke-static {v0}, Lads_mobile_sdk/i83;->g(I)I

    move-result v0

    .line 679
    iget-object v1, p0, Lads_mobile_sdk/i83$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/du;

    .line 680
    :goto_0
    iget-object v2, p0, Lads_mobile_sdk/i83$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-object v2, p0, Lads_mobile_sdk/i83$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/du;

    invoke-virtual {v2}, Lads_mobile_sdk/du;->size()I

    move-result v2

    if-ge v2, v0, :cond_1

    .line 681
    iget-object v2, p0, Lads_mobile_sdk/i83$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/du;

    .line 682
    new-instance v4, Lads_mobile_sdk/i83;

    invoke-direct {v4, v2, v1, v3}, Lads_mobile_sdk/i83;-><init>(Lads_mobile_sdk/du;Lads_mobile_sdk/du;Lads_mobile_sdk/i83-IA;)V

    move-object v1, v4

    goto :goto_0

    .line 686
    :cond_1
    new-instance v0, Lads_mobile_sdk/i83;

    invoke-direct {v0, v1, p1, v3}, Lads_mobile_sdk/i83;-><init>(Lads_mobile_sdk/du;Lads_mobile_sdk/du;Lads_mobile_sdk/i83-IA;)V

    .line 689
    :goto_1
    iget-object p1, p0, Lads_mobile_sdk/i83$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 690
    invoke-virtual {v0}, Lads_mobile_sdk/i83;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lads_mobile_sdk/i83$b;->a(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 691
    invoke-static {p1}, Lads_mobile_sdk/i83;->g(I)I

    move-result p1

    .line 692
    iget-object v1, p0, Lads_mobile_sdk/i83$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/du;

    invoke-virtual {v1}, Lads_mobile_sdk/du;->size()I

    move-result v1

    if-ge v1, p1, :cond_2

    .line 693
    iget-object p1, p0, Lads_mobile_sdk/i83$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/du;

    .line 694
    new-instance v1, Lads_mobile_sdk/i83;

    invoke-direct {v1, p1, v0, v3}, Lads_mobile_sdk/i83;-><init>(Lads_mobile_sdk/du;Lads_mobile_sdk/du;Lads_mobile_sdk/i83-IA;)V

    move-object v0, v1

    goto :goto_1

    .line 699
    :cond_2
    iget-object p1, p0, Lads_mobile_sdk/i83$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    return-void

    .line 700
    :cond_3
    :goto_2
    iget-object v0, p0, Lads_mobile_sdk/i83$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    return-void
.end method
