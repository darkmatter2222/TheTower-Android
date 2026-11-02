.class Lads_mobile_sdk/du$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/du;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lads_mobile_sdk/du;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lads_mobile_sdk/du;Lads_mobile_sdk/du;)I
    .locals 4

    .line 1
    invoke-static {}, Lads_mobile_sdk/gi;->b()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lads_mobile_sdk/du$k;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/du$k;

    instance-of v1, p2, Lads_mobile_sdk/du$k;

    if-eqz v1, :cond_0

    .line 3
    check-cast p2, Lads_mobile_sdk/du$k;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/du$k;->-$$Nest$fgetf(Lads_mobile_sdk/du$k;)[B

    move-result-object p1

    invoke-static {p2}, Lads_mobile_sdk/du$k;->-$$Nest$fgetf(Lads_mobile_sdk/du$k;)[B

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/Arrays;->compareUnsigned([B[B)I

    move-result p1

    return p1

    .line 7
    :cond_0
    invoke-virtual {p1}, Lads_mobile_sdk/du;->f()Lads_mobile_sdk/du$g;

    move-result-object v0

    .line 8
    invoke-virtual {p2}, Lads_mobile_sdk/du;->f()Lads_mobile_sdk/du$g;

    move-result-object v1

    .line 10
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    invoke-interface {v0}, Lads_mobile_sdk/du$g;->a()B

    move-result v2

    invoke-static {v2}, Lads_mobile_sdk/du;->-$$Nest$sma(B)I

    move-result v2

    invoke-interface {v1}, Lads_mobile_sdk/du$g;->a()B

    move-result v3

    invoke-static {v3}, Lads_mobile_sdk/du;->-$$Nest$sma(B)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    if-eqz v2, :cond_1

    return v2

    .line 17
    :cond_2
    invoke-virtual {p1}, Lads_mobile_sdk/du;->size()I

    move-result p1

    invoke-virtual {p2}, Lads_mobile_sdk/du;->size()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 333
    check-cast p1, Lads_mobile_sdk/du;

    check-cast p2, Lads_mobile_sdk/du;

    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/du$b;->a(Lads_mobile_sdk/du;Lads_mobile_sdk/du;)I

    move-result p1

    return p1
.end method
