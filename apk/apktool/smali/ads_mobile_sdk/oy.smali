.class public abstract Lads_mobile_sdk/oy;
.super Lads_mobile_sdk/cu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lads_mobile_sdk/oy$d;,
        Lads_mobile_sdk/oy$a;,
        Lads_mobile_sdk/oy$b;,
        Lads_mobile_sdk/oy$c;
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field private b:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 180
    invoke-direct {p0}, Lads_mobile_sdk/cu;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lads_mobile_sdk/oy-IA;)V
    .locals 0

    invoke-direct {p0}, Lads_mobile_sdk/oy;-><init>()V

    return-void
.end method

.method public static a(D)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static a(F)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static a(I)I
    .locals 0

    .line 5523
    invoke-static {p0}, Lads_mobile_sdk/oy;->c(I)I

    move-result p0

    return p0
.end method

.method public static a(ID)I
    .locals 0

    .line 4192
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    invoke-static {p1, p2}, Lads_mobile_sdk/oy;->a(D)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static a(IF)I
    .locals 0

    .line 6578
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    invoke-static {p1}, Lads_mobile_sdk/oy;->a(F)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static a(II)I
    .locals 0

    .line 4752
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    invoke-static {p1}, Lads_mobile_sdk/oy;->a(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static a(IJ)I
    .locals 0

    .line 6042
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    invoke-static {p1, p2}, Lads_mobile_sdk/oy;->a(J)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static a(ILads_mobile_sdk/du;)I
    .locals 0

    .line 2859
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    invoke-static {p1}, Lads_mobile_sdk/oy;->a(Lads_mobile_sdk/du;)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static a(ILjava/lang/String;)I
    .locals 0

    .line 7951
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    invoke-static {p1}, Lads_mobile_sdk/oy;->a(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static a(IZ)I
    .locals 0

    .line 1488
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    invoke-static {p1}, Lads_mobile_sdk/oy;->a(Z)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static a(J)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static a(Lads_mobile_sdk/du;)I
    .locals 0

    .line 3649
    invoke-virtual {p0}, Lads_mobile_sdk/du;->size()I

    move-result p0

    invoke-static {p0}, Lads_mobile_sdk/oy;->d(I)I

    move-result p0

    return p0
.end method

.method public static a(Lads_mobile_sdk/tw1;)I
    .locals 0

    .line 7384
    invoke-interface {p0}, Lads_mobile_sdk/tw1;->getSerializedSize()I

    move-result p0

    invoke-static {p0}, Lads_mobile_sdk/oy;->d(I)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 0

    .line 8727
    invoke-static {p0}, Lads_mobile_sdk/hx3;->a(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lads_mobile_sdk/oy;->d(I)I

    move-result p0

    return p0
.end method

.method public static a(Z)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static a([B)I
    .locals 0

    .line 2284
    array-length p0, p0

    invoke-static {p0}, Lads_mobile_sdk/oy;->d(I)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/io/OutputStream;I)Lads_mobile_sdk/oy;
    .locals 1

    .line 9735
    new-instance v0, Lads_mobile_sdk/oy$d;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/oy$d;-><init>(Ljava/io/OutputStream;I)V

    return-object v0
.end method

.method public static b(I)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static b(II)I
    .locals 0

    .line 479
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    invoke-static {p1}, Lads_mobile_sdk/oy;->b(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static b(IJ)I
    .locals 0

    .line 975
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    invoke-static {p1, p2}, Lads_mobile_sdk/oy;->b(J)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static b(ILads_mobile_sdk/du;)I
    .locals 2

    const/4 v0, 0x1

    .line 2331
    invoke-static {v0}, Lads_mobile_sdk/oy;->h(I)I

    move-result v0

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    .line 2332
    invoke-static {v1, p0}, Lads_mobile_sdk/oy;->f(II)I

    move-result p0

    add-int/2addr p0, v0

    const/4 v0, 0x3

    .line 2333
    invoke-static {v0, p1}, Lads_mobile_sdk/oy;->a(ILads_mobile_sdk/du;)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static b(J)I
    .locals 0

    .line 1701
    invoke-static {p0, p1}, Lads_mobile_sdk/oy;->e(J)I

    move-result p0

    return p0
.end method

.method public static b([B)Lads_mobile_sdk/oy;
    .locals 2

    .line 2425
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lads_mobile_sdk/oy;->b([BII)Lads_mobile_sdk/oy;

    move-result-object p0

    return-object p0
.end method

.method public static b([BII)Lads_mobile_sdk/oy;
    .locals 1

    .line 5097
    new-instance v0, Lads_mobile_sdk/oy$a;

    invoke-direct {v0, p0, p1, p2}, Lads_mobile_sdk/oy$a;-><init>([BII)V

    return-object v0
.end method

.method public static c(I)I
    .locals 2

    int-to-long v0, p0

    .line 1116
    invoke-static {v0, v1}, Lads_mobile_sdk/oy;->e(J)I

    move-result p0

    return p0
.end method

.method public static c(II)I
    .locals 0

    .line 455
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    invoke-static {p1}, Lads_mobile_sdk/oy;->c(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static c(IJ)I
    .locals 0

    .line 1643
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    invoke-static {p1, p2}, Lads_mobile_sdk/oy;->c(J)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static c(J)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static d(I)I
    .locals 1

    .line 880
    invoke-static {p0}, Lads_mobile_sdk/oy;->i(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static d(II)I
    .locals 0

    .line 1367
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    invoke-static {p1}, Lads_mobile_sdk/oy;->f(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static d(IJ)I
    .locals 0

    .line 1878
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    invoke-static {p1, p2}, Lads_mobile_sdk/oy;->d(J)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static d(J)I
    .locals 0

    .line 2616
    invoke-static {p0, p1}, Lads_mobile_sdk/oy;->f(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lads_mobile_sdk/oy;->e(J)I

    move-result p0

    return p0
.end method

.method public static e(I)I
    .locals 1

    const/16 v0, 0x1000

    if-le p0, v0, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method public static e(II)I
    .locals 0

    .line 472
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    invoke-static {p1}, Lads_mobile_sdk/oy;->g(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static e(IJ)I
    .locals 0

    .line 975
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    invoke-static {p1, p2}, Lads_mobile_sdk/oy;->e(J)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static e(J)I
    .locals 0

    .line 1706
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p0

    mul-int/lit8 p0, p0, 0x9

    rsub-int p0, p0, 0x280

    ushr-int/lit8 p0, p0, 0x6

    return p0
.end method

.method public static f(I)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static f(II)I
    .locals 0

    .line 464
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    invoke-static {p1}, Lads_mobile_sdk/oy;->i(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static f(J)J
    .locals 3

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static g(I)I
    .locals 0

    .line 711
    invoke-static {p0}, Lads_mobile_sdk/oy;->j(I)I

    move-result p0

    invoke-static {p0}, Lads_mobile_sdk/oy;->i(I)I

    move-result p0

    return p0
.end method

.method public static h(I)I
    .locals 1

    const/4 v0, 0x0

    .line 653
    invoke-static {p0, v0}, Lads_mobile_sdk/u24;->a(II)I

    move-result p0

    invoke-static {p0}, Lads_mobile_sdk/oy;->i(I)I

    move-result p0

    return p0
.end method

.method public static i(I)I
    .locals 0

    .line 705
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x9

    rsub-int p0, p0, 0x160

    ushr-int/lit8 p0, p0, 0x6

    return p0
.end method

.method public static j(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 933
    invoke-virtual {p0}, Lads_mobile_sdk/oy;->d()I

    move-result v0

    if-gtz v0, :cond_1

    .line 936
    invoke-virtual {p0}, Lads_mobile_sdk/oy;->d()I

    move-result v0

    if-ltz v0, :cond_0

    return-void

    .line 937
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Wrote more data than expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 938
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract a(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final a(ILads_mobile_sdk/tw1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x3

    .line 9732
    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/oy;->l(II)V

    .line 9733
    invoke-virtual {p0, p2}, Lads_mobile_sdk/oy;->b(Lads_mobile_sdk/tw1;)V

    const/4 p2, 0x4

    .line 9734
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/oy;->l(II)V

    return-void
.end method

.method public abstract b()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final b(D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3456
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/oy;->g(J)V

    return-void
.end method

.method public final b(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4079
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lads_mobile_sdk/oy;->l(I)V

    return-void
.end method

.method public final b(ID)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3063
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lads_mobile_sdk/oy;->f(IJ)V

    return-void
.end method

.method public final b(IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3691
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/oy;->h(II)V

    return-void
.end method

.method public abstract b(ILads_mobile_sdk/tw1;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b(Lads_mobile_sdk/du;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final b(Lads_mobile_sdk/tw1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5096
    invoke-interface {p1, p0}, Lads_mobile_sdk/tw1;->a(Lads_mobile_sdk/oy;)V

    return-void
.end method

.method public abstract b(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final b(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    .line 2823
    invoke-virtual {p0, p1}, Lads_mobile_sdk/oy;->a(B)V

    return-void
.end method

.method public abstract c(ILads_mobile_sdk/du;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract c(Lads_mobile_sdk/tw1;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final c([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2225
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lads_mobile_sdk/oy;->c([BII)V

    return-void
.end method

.method public abstract c([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public c()Z
    .locals 1

    .line 1805
    iget-boolean v0, p0, Lads_mobile_sdk/oy;->b:Z

    return v0
.end method

.method public abstract d()I
.end method

.method public abstract d(ILads_mobile_sdk/du;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract f(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final g(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 963
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/oy;->i(II)V

    return-void
.end method

.method public final g(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1175
    invoke-virtual {p0, p1, p2, p3}, Lads_mobile_sdk/oy;->j(IJ)V

    return-void
.end method

.method public abstract g(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract h(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final h(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1248
    invoke-virtual {p0, p1, p2, p3}, Lads_mobile_sdk/oy;->f(IJ)V

    return-void
.end method

.method public final h(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1018
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/oy;->k(J)V

    return-void
.end method

.method public abstract i(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final i(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1309
    invoke-static {p2, p3}, Lads_mobile_sdk/oy;->f(J)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lads_mobile_sdk/oy;->j(IJ)V

    return-void
.end method

.method public final i(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1088
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/oy;->g(J)V

    return-void
.end method

.method public final j(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/oy;->h(II)V

    return-void
.end method

.method public abstract j(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final j(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 582
    invoke-static {p1, p2}, Lads_mobile_sdk/oy;->f(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/oy;->k(J)V

    return-void
.end method

.method public final k(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 406
    invoke-virtual {p0, p1}, Lads_mobile_sdk/oy;->m(I)V

    return-void
.end method

.method public final k(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 604
    invoke-static {p2}, Lads_mobile_sdk/oy;->j(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/oy;->m(II)V

    return-void
.end method

.method public abstract k(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract l(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract l(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract m(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract m(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final n(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 360
    invoke-virtual {p0, p1}, Lads_mobile_sdk/oy;->l(I)V

    return-void
.end method

.method public final o(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 351
    invoke-static {p1}, Lads_mobile_sdk/oy;->j(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lads_mobile_sdk/oy;->p(I)V

    return-void
.end method

.method public abstract p(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
