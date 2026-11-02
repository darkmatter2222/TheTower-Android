.class public final Lads_mobile_sdk/h44;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lads_mobile_sdk/h44;->a:Z

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 12

    const/16 v0, 0x9

    .line 1
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    const/4 v5, 0x2

    aget v5, v0, v5

    const/4 v6, 0x3

    aget v6, v0, v6

    const/4 v7, 0x4

    aget v7, v0, v7

    const/4 v8, 0x5

    aget v8, v0, v8

    const/4 v9, 0x6

    aget v9, v0, v9

    const/4 v10, 0x7

    aget v10, v0, v10

    const/16 v11, 0x8

    aget v0, v0, v11

    not-int v11, v2

    and-int/2addr v4, v11

    or-int/2addr v4, v5

    and-int/2addr v2, v6

    or-int/2addr v2, v7

    invoke-static {v4, v2, v8, v9}, Lads_mobile_sdk/p30;->a(IIII)I

    move-result v2

    rem-int/2addr v10, v0

    xor-int v0, v2, v10

    check-cast p1, Lads_mobile_sdk/l44;

    check-cast p2, Lads_mobile_sdk/l44;

    iget v2, p1, Lads_mobile_sdk/l44;->g:I

    iget v4, p2, Lads_mobile_sdk/l44;->g:I

    if-ne v2, v4, :cond_7

    add-int/2addr v0, v2

    if-eqz v2, :cond_6

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    :try_start_0
    invoke-virtual {p1}, Lads_mobile_sdk/l44;->g()D

    move-result-wide v0

    invoke-virtual {p2}, Lads_mobile_sdk/l44;->g()D

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1

    :pswitch_1
    iget-boolean v0, p0, Lads_mobile_sdk/h44;->a:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lads_mobile_sdk/l44;->f()Lads_mobile_sdk/d44;

    move-result-object p1

    invoke-virtual {p2}, Lads_mobile_sdk/l44;->f()Lads_mobile_sdk/d44;

    move-result-object p2

    if-eq p1, p2, :cond_0

    goto :goto_1

    :cond_0
    return v1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_2
    invoke-virtual {p1}, Lads_mobile_sdk/l44;->e()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lads_mobile_sdk/l44;->e()Ljava/util/List;

    move-result-object p2

    invoke-static {p0}, Lcom/google/common/collect/Comparators;->lexicographical(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1

    :pswitch_3
    invoke-virtual {p1}, Lads_mobile_sdk/l44;->d()Lads_mobile_sdk/p34;

    move-result-object p1

    invoke-virtual {p2}, Lads_mobile_sdk/l44;->d()Lads_mobile_sdk/p34;

    move-result-object p2

    move v0, v1

    .line 2
    :goto_0
    iget-object v2, p1, Lads_mobile_sdk/p34;->a:[B

    .line 3
    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 4
    iget-object v3, p2, Lads_mobile_sdk/p34;->a:[B

    .line 5
    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 6
    invoke-virtual {p1, v1}, Lads_mobile_sdk/p34;->a(I)B

    move-result v2

    invoke-static {v2}, Lads_mobile_sdk/p34;->a(B)I

    move-result v2

    invoke-virtual {p2, v0}, Lads_mobile_sdk/p34;->a(I)B

    move-result v3

    invoke-static {v3}, Lads_mobile_sdk/p34;->a(B)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    if-eqz v2, :cond_2

    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_3
    array-length p1, v2

    .line 8
    iget-object p2, p2, Lads_mobile_sdk/p34;->a:[B

    .line 9
    array-length p2, p2

    .line 10
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1

    .line 11
    :pswitch_4
    invoke-virtual {p1}, Lads_mobile_sdk/l44;->c()J

    move-result-wide v0

    invoke-virtual {p2}, Lads_mobile_sdk/l44;->c()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1

    :pswitch_5
    iget-boolean v0, p0, Lads_mobile_sdk/h44;->a:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lads_mobile_sdk/l44;->b()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2}, Lads_mobile_sdk/l44;->b()Ljava/lang/Object;

    move-result-object p2

    if-eq p1, p2, :cond_4

    :goto_1
    return v3

    :cond_4
    return v1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_6
    return v1

    :cond_6
    const/4 p1, 0x0

    throw p1
    :try_end_0
    .catch Lads_mobile_sdk/i44; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/AssertionError;

    const-string v0, "CEiv6BFfPnitUE+D"

    invoke-static {v0}, Lads_mobile_sdk/n34;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x1aa0264f
        0x6f054c22
        0x40788361
        -0x40d8937e    # -0.65399945f
        -0x2fdd5f1b
        0x41cde1c4
        0x54444e
        0x784006a9
        0x1d99b65f
    .end array-data
.end method
