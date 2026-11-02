.class final Lads_mobile_sdk/qr0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lads_mobile_sdk/qr0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lads_mobile_sdk/qr0$b<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final d:Lads_mobile_sdk/qr0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/qr0<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lads_mobile_sdk/bl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/bl3<",
            "TT;>;"
        }
    .end annotation
.end field

.field b:Z

.field c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lads_mobile_sdk/qr0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lads_mobile_sdk/qr0;-><init>(Z)V

    sput-object v0, Lads_mobile_sdk/qr0;->d:Lads_mobile_sdk/qr0;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lads_mobile_sdk/bl3;

    invoke-direct {v0}, Lads_mobile_sdk/bl3;-><init>()V

    iput-object v0, p0, Lads_mobile_sdk/qr0;->a:Lads_mobile_sdk/bl3;

    return-void
.end method

.method private constructor <init>(Lads_mobile_sdk/bl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lads_mobile_sdk/bl3<",
            "TT;>;)V"
        }
    .end annotation

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Lads_mobile_sdk/qr0;->a:Lads_mobile_sdk/bl3;

    .line 158
    invoke-virtual {p0}, Lads_mobile_sdk/qr0;->f()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 237
    new-instance p1, Lads_mobile_sdk/bl3;

    invoke-direct {p1}, Lads_mobile_sdk/bl3;-><init>()V

    invoke-direct {p0, p1}, Lads_mobile_sdk/qr0;-><init>(Lads_mobile_sdk/bl3;)V

    .line 238
    invoke-virtual {p0}, Lads_mobile_sdk/qr0;->f()V

    return-void
.end method

.method public static a(Lads_mobile_sdk/qr0$b;Ljava/lang/Object;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lads_mobile_sdk/qr0$b<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 1814
    invoke-interface {p0}, Lads_mobile_sdk/qr0$b;->b()Lads_mobile_sdk/u24$a;

    move-result-object v0

    .line 1815
    invoke-interface {p0}, Lads_mobile_sdk/qr0$b;->getNumber()I

    move-result v1

    .line 1816
    invoke-interface {p0}, Lads_mobile_sdk/qr0$b;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1817
    check-cast p1, Ljava/util/List;

    .line 1818
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1819
    invoke-interface {p0}, Lads_mobile_sdk/qr0$b;->c()Z

    move-result p0

    const/4 v3, 0x0

    if-eqz p0, :cond_2

    .line 1820
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return v3

    :cond_0
    move p0, v3

    :goto_0
    if-ge v3, v2, :cond_1

    .line 1825
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1826
    invoke-static {v0, v4}, Lads_mobile_sdk/qr0;->a(Lads_mobile_sdk/u24$a;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr p0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1829
    :cond_1
    invoke-static {v1}, Lads_mobile_sdk/oy;->h(I)I

    move-result p1

    add-int/2addr p1, p0

    .line 1830
    invoke-static {p0}, Lads_mobile_sdk/oy;->i(I)I

    move-result p0

    add-int/2addr p0, p1

    return p0

    :cond_2
    move p0, v3

    :goto_1
    if-ge v3, v2, :cond_3

    .line 1834
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1835
    invoke-static {v0, v1, v4}, Lads_mobile_sdk/qr0;->a(Lads_mobile_sdk/u24$a;ILjava/lang/Object;)I

    move-result v4

    add-int/2addr p0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return p0

    .line 1840
    :cond_4
    invoke-static {v0, v1, p1}, Lads_mobile_sdk/qr0;->a(Lads_mobile_sdk/u24$a;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static a(Lads_mobile_sdk/u24$a;ILjava/lang/Object;)I
    .locals 1

    .line 863
    invoke-static {p1}, Lads_mobile_sdk/oy;->h(I)I

    move-result p1

    .line 864
    sget-object v0, Lads_mobile_sdk/u24$a;->l:Lads_mobile_sdk/u24$a;

    if-ne p0, v0, :cond_0

    mul-int/lit8 p1, p1, 0x2

    .line 869
    :cond_0
    invoke-static {p0, p2}, Lads_mobile_sdk/qr0;->a(Lads_mobile_sdk/u24$a;Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public static a(Lads_mobile_sdk/u24$a;Ljava/lang/Object;)I
    .locals 1

    .line 5682
    sget-object v0, Lads_mobile_sdk/qr0$a;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 5739
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5740
    :pswitch_0
    instance-of p0, p1, Lads_mobile_sdk/yh1$a;

    if-eqz p0, :cond_0

    .line 5741
    check-cast p1, Lads_mobile_sdk/yh1$a;

    invoke-interface {p1}, Lads_mobile_sdk/yh1$a;->getNumber()I

    move-result p0

    invoke-static {p0}, Lads_mobile_sdk/oy;->a(I)I

    move-result p0

    return p0

    .line 5743
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lads_mobile_sdk/oy;->a(I)I

    move-result p0

    return p0

    .line 5744
    :pswitch_1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lads_mobile_sdk/oy;->d(J)I

    move-result p0

    return p0

    .line 5745
    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lads_mobile_sdk/oy;->g(I)I

    move-result p0

    return p0

    .line 5746
    :pswitch_3
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lads_mobile_sdk/oy;->c(J)I

    move-result p0

    return p0

    .line 5747
    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lads_mobile_sdk/oy;->f(I)I

    move-result p0

    return p0

    .line 5748
    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lads_mobile_sdk/oy;->i(I)I

    move-result p0

    return p0

    .line 5749
    :pswitch_6
    instance-of p0, p1, Lads_mobile_sdk/du;

    if-eqz p0, :cond_1

    .line 5750
    check-cast p1, Lads_mobile_sdk/du;

    invoke-static {p1}, Lads_mobile_sdk/oy;->a(Lads_mobile_sdk/du;)I

    move-result p0

    return p0

    .line 5752
    :cond_1
    check-cast p1, [B

    invoke-static {p1}, Lads_mobile_sdk/oy;->a([B)I

    move-result p0

    return p0

    .line 5755
    :pswitch_7
    instance-of p0, p1, Lads_mobile_sdk/du;

    if-eqz p0, :cond_2

    .line 5756
    check-cast p1, Lads_mobile_sdk/du;

    invoke-static {p1}, Lads_mobile_sdk/oy;->a(Lads_mobile_sdk/du;)I

    move-result p0

    return p0

    .line 5758
    :cond_2
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lads_mobile_sdk/oy;->a(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 5772
    :pswitch_8
    instance-of p0, p1, Lads_mobile_sdk/gl1;

    if-eqz p0, :cond_3

    .line 5773
    check-cast p1, Lads_mobile_sdk/gl1;

    invoke-virtual {p1}, Lads_mobile_sdk/gl1;->a()I

    move-result p0

    return p0

    .line 5775
    :cond_3
    check-cast p1, Lads_mobile_sdk/tw1;

    invoke-static {p1}, Lads_mobile_sdk/oy;->a(Lads_mobile_sdk/tw1;)I

    move-result p0

    return p0

    .line 5776
    :pswitch_9
    check-cast p1, Lads_mobile_sdk/tw1;

    invoke-interface {p1}, Lads_mobile_sdk/tw1;->getSerializedSize()I

    move-result p0

    return p0

    .line 5777
    :pswitch_a
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lads_mobile_sdk/oy;->a(Z)I

    move-result p0

    return p0

    .line 5778
    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lads_mobile_sdk/oy;->b(I)I

    move-result p0

    return p0

    .line 5779
    :pswitch_c
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lads_mobile_sdk/oy;->a(J)I

    move-result p0

    return p0

    .line 5780
    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lads_mobile_sdk/oy;->c(I)I

    move-result p0

    return p0

    .line 5781
    :pswitch_e
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lads_mobile_sdk/oy;->e(J)I

    move-result p0

    return p0

    .line 5782
    :pswitch_f
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lads_mobile_sdk/oy;->b(J)I

    move-result p0

    return p0

    .line 5783
    :pswitch_10
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Lads_mobile_sdk/oy;->a(F)I

    move-result p0

    return p0

    .line 5784
    :pswitch_11
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Lads_mobile_sdk/oy;->a(D)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lads_mobile_sdk/u24$a;Z)I
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x2

    return p0

    .line 4382
    :cond_0
    invoke-virtual {p0}, Lads_mobile_sdk/u24$a;->f()I

    move-result p0

    return p0
.end method

.method private a(Ljava/util/Map$Entry;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 3858
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lads_mobile_sdk/dr0;->a(Ljava/lang/Object;)V

    .line 3859
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    const/4 p1, 0x0

    .line 3860
    throw p1
.end method

.method public static a(Lads_mobile_sdk/oy;Lads_mobile_sdk/u24$a;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5588
    sget-object v0, Lads_mobile_sdk/u24$a;->l:Lads_mobile_sdk/u24$a;

    if-ne p1, v0, :cond_0

    .line 5589
    check-cast p3, Lads_mobile_sdk/tw1;

    invoke-virtual {p0, p2, p3}, Lads_mobile_sdk/oy;->a(ILads_mobile_sdk/tw1;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 5591
    invoke-static {p1, v0}, Lads_mobile_sdk/qr0;->a(Lads_mobile_sdk/u24$a;Z)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lads_mobile_sdk/oy;->l(II)V

    .line 5592
    invoke-static {p0, p1, p3}, Lads_mobile_sdk/qr0;->a(Lads_mobile_sdk/oy;Lads_mobile_sdk/u24$a;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Lads_mobile_sdk/oy;Lads_mobile_sdk/u24$a;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5593
    sget-object v0, Lads_mobile_sdk/qr0$a;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    return-void

    .line 5655
    :pswitch_0
    instance-of p1, p2, Lads_mobile_sdk/yh1$a;

    if-eqz p1, :cond_0

    .line 5656
    check-cast p2, Lads_mobile_sdk/yh1$a;

    invoke-interface {p2}, Lads_mobile_sdk/yh1$a;->getNumber()I

    move-result p1

    invoke-virtual {p0, p1}, Lads_mobile_sdk/oy;->k(I)V

    return-void

    .line 5658
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lads_mobile_sdk/oy;->k(I)V

    return-void

    .line 5659
    :pswitch_1
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/oy;->j(J)V

    return-void

    .line 5660
    :pswitch_2
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lads_mobile_sdk/oy;->o(I)V

    return-void

    .line 5661
    :pswitch_3
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/oy;->i(J)V

    return-void

    .line 5662
    :pswitch_4
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lads_mobile_sdk/oy;->n(I)V

    return-void

    .line 5663
    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lads_mobile_sdk/oy;->p(I)V

    return-void

    .line 5664
    :pswitch_6
    instance-of p1, p2, Lads_mobile_sdk/du;

    if-eqz p1, :cond_1

    .line 5665
    check-cast p2, Lads_mobile_sdk/du;

    invoke-virtual {p0, p2}, Lads_mobile_sdk/oy;->b(Lads_mobile_sdk/du;)V

    return-void

    .line 5667
    :cond_1
    check-cast p2, [B

    invoke-virtual {p0, p2}, Lads_mobile_sdk/oy;->c([B)V

    return-void

    .line 5668
    :pswitch_7
    instance-of p1, p2, Lads_mobile_sdk/du;

    if-eqz p1, :cond_2

    .line 5669
    check-cast p2, Lads_mobile_sdk/du;

    invoke-virtual {p0, p2}, Lads_mobile_sdk/oy;->b(Lads_mobile_sdk/du;)V

    return-void

    .line 5671
    :cond_2
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lads_mobile_sdk/oy;->b(Ljava/lang/String;)V

    return-void

    .line 5672
    :pswitch_8
    check-cast p2, Lads_mobile_sdk/tw1;

    invoke-virtual {p0, p2}, Lads_mobile_sdk/oy;->c(Lads_mobile_sdk/tw1;)V

    return-void

    .line 5673
    :pswitch_9
    check-cast p2, Lads_mobile_sdk/tw1;

    invoke-virtual {p0, p2}, Lads_mobile_sdk/oy;->b(Lads_mobile_sdk/tw1;)V

    return-void

    .line 5674
    :pswitch_a
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lads_mobile_sdk/oy;->b(Z)V

    return-void

    .line 5675
    :pswitch_b
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lads_mobile_sdk/oy;->l(I)V

    return-void

    .line 5676
    :pswitch_c
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/oy;->g(J)V

    return-void

    .line 5677
    :pswitch_d
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lads_mobile_sdk/oy;->m(I)V

    return-void

    .line 5678
    :pswitch_e
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/oy;->k(J)V

    return-void

    .line 5679
    :pswitch_f
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/oy;->h(J)V

    return-void

    .line 5680
    :pswitch_10
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lads_mobile_sdk/oy;->b(F)V

    return-void

    .line 5681
    :pswitch_11
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/oy;->b(D)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Lads_mobile_sdk/bl3;Lads_mobile_sdk/bl3;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lads_mobile_sdk/bl3<",
            "*>;",
            "Lads_mobile_sdk/bl3<",
            "*>;)Z"
        }
    .end annotation

    .line 1997
    invoke-virtual {p0}, Lads_mobile_sdk/bl3;->size()I

    move-result v0

    invoke-virtual {p1}, Lads_mobile_sdk/bl3;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 2000
    :cond_0
    invoke-virtual {p0}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 2003
    :cond_1
    invoke-virtual {p0}, Lads_mobile_sdk/bl3;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2004
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2005
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 2006
    invoke-virtual {p1, v1}, Lads_mobile_sdk/bl3;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2007
    invoke-static {v0, v1}, Lads_mobile_sdk/qr0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p0, :cond_4

    if-nez p1, :cond_1

    goto :goto_0

    .line 2188
    :cond_1
    instance-of v0, p0, Lads_mobile_sdk/gl1;

    if-eqz v0, :cond_2

    .line 2189
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 2191
    :cond_2
    instance-of v0, p1, Lads_mobile_sdk/gl1;

    if-eqz v0, :cond_3

    .line 2192
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 2194
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static b(Lads_mobile_sdk/u24$a;Ljava/lang/Object;)Z
    .locals 2

    .line 1738
    invoke-static {p1}, Lads_mobile_sdk/yh1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1739
    sget-object v0, Lads_mobile_sdk/qr0$a;->a:[I

    invoke-virtual {p0}, Lads_mobile_sdk/u24$a;->e()Lads_mobile_sdk/u24$b;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    return v1

    .line 1757
    :pswitch_0
    instance-of p0, p1, Lads_mobile_sdk/tw1;

    if-nez p0, :cond_1

    instance-of p0, p1, Lads_mobile_sdk/gl1;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v0

    .line 1758
    :pswitch_1
    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_3

    instance-of p0, p1, Lads_mobile_sdk/yh1$a;

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v0

    .line 1759
    :pswitch_2
    instance-of p0, p1, Lads_mobile_sdk/du;

    if-nez p0, :cond_5

    instance-of p0, p1, [B

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    return v1

    :cond_5
    :goto_2
    return v0

    .line 1760
    :pswitch_3
    instance-of p0, p1, Ljava/lang/String;

    return p0

    .line 1761
    :pswitch_4
    instance-of p0, p1, Ljava/lang/Boolean;

    return p0

    .line 1762
    :pswitch_5
    instance-of p0, p1, Ljava/lang/Double;

    return p0

    .line 1763
    :pswitch_6
    instance-of p0, p1, Ljava/lang/Float;

    return p0

    .line 1764
    :pswitch_7
    instance-of p0, p1, Ljava/lang/Long;

    return p0

    .line 1765
    :pswitch_8
    instance-of p0, p1, Ljava/lang/Integer;

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static b(Ljava/util/Map$Entry;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lads_mobile_sdk/qr0$b<",
            "TT;>;>(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1301
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lads_mobile_sdk/dr0;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 1302
    throw p0
.end method

.method private c(Lads_mobile_sdk/qr0$b;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1088
    invoke-interface {p1}, Lads_mobile_sdk/qr0$b;->b()Lads_mobile_sdk/u24$a;

    move-result-object v0

    invoke-static {v0, p2}, Lads_mobile_sdk/qr0;->b(Lads_mobile_sdk/u24$a;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1089
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1093
    invoke-interface {p1}, Lads_mobile_sdk/qr0$b;->getNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1094
    invoke-interface {p1}, Lads_mobile_sdk/qr0$b;->b()Lads_mobile_sdk/u24$a;

    move-result-object p1

    invoke-virtual {p1}, Lads_mobile_sdk/u24$a;->e()Lads_mobile_sdk/u24$b;

    move-result-object p1

    .line 1095
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {v1, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 1096
    const-string p2, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c(Ljava/util/Map$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 661
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lads_mobile_sdk/dr0;->a(Ljava/lang/Object;)V

    .line 662
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 663
    instance-of p1, p1, Lads_mobile_sdk/gl1;

    const/4 p1, 0x0

    .line 665
    throw p1
.end method

.method public static g()Lads_mobile_sdk/qr0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lads_mobile_sdk/qr0$b<",
            "TT;>;>()",
            "Lads_mobile_sdk/qr0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lads_mobile_sdk/qr0;

    invoke-direct {v0}, Lads_mobile_sdk/qr0;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 4

    .line 3021
    iget-object v0, p0, Lads_mobile_sdk/qr0;->a:Lads_mobile_sdk/bl3;

    invoke-virtual {v0}, Lads_mobile_sdk/bl3;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3023
    iget-object v3, p0, Lads_mobile_sdk/qr0;->a:Lads_mobile_sdk/bl3;

    invoke-virtual {v3, v1}, Lads_mobile_sdk/bl3;->b(I)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-direct {p0, v3}, Lads_mobile_sdk/qr0;->a(Ljava/util/Map$Entry;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public a(Lads_mobile_sdk/qr0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lads_mobile_sdk/qr0<",
            "TT;>;)V"
        }
    .end annotation

    .line 4910
    iget-object v0, p1, Lads_mobile_sdk/qr0;->a:Lads_mobile_sdk/bl3;

    invoke-virtual {v0}, Lads_mobile_sdk/bl3;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4912
    iget-object v2, p1, Lads_mobile_sdk/qr0;->a:Lads_mobile_sdk/bl3;

    invoke-virtual {v2, v1}, Lads_mobile_sdk/bl3;->b(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-direct {p0, v2}, Lads_mobile_sdk/qr0;->c(Ljava/util/Map$Entry;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()I
    .locals 5

    .line 816
    iget-object v0, p0, Lads_mobile_sdk/qr0;->a:Lads_mobile_sdk/bl3;

    invoke-virtual {v0}, Lads_mobile_sdk/bl3;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 818
    iget-object v3, p0, Lads_mobile_sdk/qr0;->a:Lads_mobile_sdk/bl3;

    invoke-virtual {v3, v1}, Lads_mobile_sdk/bl3;->b(I)Ljava/util/Map$Entry;

    move-result-object v3

    .line 819
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lads_mobile_sdk/dr0;->a(Ljava/lang/Object;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Lads_mobile_sdk/qr0;->a(Lads_mobile_sdk/qr0$b;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public b(Lads_mobile_sdk/qr0$b;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 2068
    invoke-interface {p1}, Lads_mobile_sdk/qr0$b;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2069
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2076
    check-cast p2, Ljava/util/List;

    .line 2077
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 2079
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2081
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 2082
    invoke-direct {p0, p1, v3}, Lads_mobile_sdk/qr0;->c(Lads_mobile_sdk/qr0$b;Ljava/lang/Object;)V

    .line 2083
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object p2, v1

    goto :goto_1

    .line 2084
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2101
    :cond_2
    invoke-direct {p0, p1, p2}, Lads_mobile_sdk/qr0;->c(Lads_mobile_sdk/qr0$b;Ljava/lang/Object;)V

    .line 2104
    :goto_1
    instance-of v0, p2, Lads_mobile_sdk/gl1;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 2105
    iput-boolean v0, p0, Lads_mobile_sdk/qr0;->c:Z

    .line 2107
    :cond_3
    iget-object v0, p0, Lads_mobile_sdk/qr0;->a:Lads_mobile_sdk/bl3;

    invoke-virtual {v0, p1, p2}, Lads_mobile_sdk/bl3;->put(Lads_mobile_sdk/qr0$b;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c()Z
    .locals 1

    .line 108
    iget-object v0, p0, Lads_mobile_sdk/qr0;->a:Lads_mobile_sdk/bl3;

    invoke-virtual {v0}, Lads_mobile_sdk/bl3;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public clone()Lads_mobile_sdk/qr0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lads_mobile_sdk/qr0<",
            "TT;>;"
        }
    .end annotation

    .line 206
    invoke-static {}, Lads_mobile_sdk/qr0;->g()Lads_mobile_sdk/qr0;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lads_mobile_sdk/qr0;->a:Lads_mobile_sdk/bl3;

    invoke-virtual {v1}, Lads_mobile_sdk/bl3;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 209
    iget-object v3, p0, Lads_mobile_sdk/qr0;->a:Lads_mobile_sdk/bl3;

    invoke-virtual {v3, v2}, Lads_mobile_sdk/bl3;->b(I)Ljava/util/Map$Entry;

    move-result-object v3

    .line 210
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lads_mobile_sdk/dr0;->a(Ljava/lang/Object;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Lads_mobile_sdk/qr0;->b(Lads_mobile_sdk/qr0$b;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 212
    :cond_0
    iget-boolean v1, p0, Lads_mobile_sdk/qr0;->c:Z

    iput-boolean v1, v0, Lads_mobile_sdk/qr0;->c:Z

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 243
    invoke-virtual {p0}, Lads_mobile_sdk/qr0;->clone()Lads_mobile_sdk/qr0;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 4

    .line 469
    iget-object v0, p0, Lads_mobile_sdk/qr0;->a:Lads_mobile_sdk/bl3;

    invoke-virtual {v0}, Lads_mobile_sdk/bl3;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 471
    iget-object v3, p0, Lads_mobile_sdk/qr0;->a:Lads_mobile_sdk/bl3;

    invoke-virtual {v3, v2}, Lads_mobile_sdk/bl3;->b(I)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-static {v3}, Lads_mobile_sdk/qr0;->b(Ljava/util/Map$Entry;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public e()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 266
    invoke-virtual {p0}, Lads_mobile_sdk/qr0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 269
    :cond_0
    iget-boolean v0, p0, Lads_mobile_sdk/qr0;->c:Z

    if-eqz v0, :cond_1

    .line 270
    new-instance v0, Lads_mobile_sdk/gl1$b;

    iget-object v1, p0, Lads_mobile_sdk/qr0;->a:Lads_mobile_sdk/bl3;

    invoke-virtual {v1}, Lads_mobile_sdk/bl3;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lads_mobile_sdk/gl1$b;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 272
    :cond_1
    iget-object v0, p0, Lads_mobile_sdk/qr0;->a:Lads_mobile_sdk/bl3;

    invoke-virtual {v0}, Lads_mobile_sdk/bl3;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 148
    :cond_0
    instance-of v0, p1, Lads_mobile_sdk/qr0;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 152
    :cond_1
    check-cast p1, Lads_mobile_sdk/qr0;

    .line 153
    iget-object v0, p0, Lads_mobile_sdk/qr0;->a:Lads_mobile_sdk/bl3;

    iget-object p1, p1, Lads_mobile_sdk/qr0;->a:Lads_mobile_sdk/bl3;

    invoke-static {v0, p1}, Lads_mobile_sdk/qr0;->a(Lads_mobile_sdk/bl3;Lads_mobile_sdk/bl3;)Z

    move-result p1

    return p1
.end method

.method public f()V
    .locals 4

    .line 113
    iget-boolean v0, p0, Lads_mobile_sdk/qr0;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lads_mobile_sdk/qr0;->a:Lads_mobile_sdk/bl3;

    invoke-virtual {v0}, Lads_mobile_sdk/bl3;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 118
    iget-object v2, p0, Lads_mobile_sdk/qr0;->a:Lads_mobile_sdk/bl3;

    invoke-virtual {v2, v1}, Lads_mobile_sdk/bl3;->b(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 119
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 120
    instance-of v3, v2, Lads_mobile_sdk/vz0;

    if-eqz v3, :cond_1

    .line 121
    check-cast v2, Lads_mobile_sdk/vz0;

    invoke-virtual {v2}, Lads_mobile_sdk/vz0;->q()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :cond_2
    iget-object v0, p0, Lads_mobile_sdk/qr0;->a:Lads_mobile_sdk/bl3;

    invoke-virtual {v0}, Lads_mobile_sdk/bl3;->c()V

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lads_mobile_sdk/qr0;->b:Z

    return-void
.end method

.method public hashCode()I
    .locals 1

    .line 192
    iget-object v0, p0, Lads_mobile_sdk/qr0;->a:Lads_mobile_sdk/bl3;

    invoke-virtual {v0}, Lads_mobile_sdk/bl3;->hashCode()I

    move-result v0

    return v0
.end method
