.class public final Lads_mobile_sdk/o34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Lads_mobile_sdk/p34;

    check-cast p2, Lads_mobile_sdk/p34;

    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    iget-object v2, p1, Lads_mobile_sdk/p34;->a:[B

    .line 3
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 4
    iget-object v3, p2, Lads_mobile_sdk/p34;->a:[B

    .line 5
    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 6
    invoke-virtual {p1, v0}, Lads_mobile_sdk/p34;->a(I)B

    move-result v2

    invoke-static {v2}, Lads_mobile_sdk/p34;->a(B)I

    move-result v2

    invoke-virtual {p2, v1}, Lads_mobile_sdk/p34;->a(I)B

    move-result v3

    invoke-static {v3}, Lads_mobile_sdk/p34;->a(B)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    if-eqz v2, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    array-length p1, v2

    .line 8
    iget-object p2, p2, Lads_mobile_sdk/p34;->a:[B

    .line 9
    array-length p2, p2

    .line 10
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method
