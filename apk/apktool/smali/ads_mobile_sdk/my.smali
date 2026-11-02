.class public abstract Lads_mobile_sdk/my;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lads_mobile_sdk/my$b;,
        Lads_mobile_sdk/my$a;
    }
.end annotation


# static fields
.field private static volatile g:I = 0x64


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:Ljava/lang/Object;

.field private f:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    sget v0, Lads_mobile_sdk/my;->g:I

    iput v0, p0, Lads_mobile_sdk/my;->c:I

    const v0, 0x7fffffff

    .line 232
    iput v0, p0, Lads_mobile_sdk/my;->d:I

    const/4 v0, 0x0

    .line 777
    iput-boolean v0, p0, Lads_mobile_sdk/my;->f:Z

    return-void
.end method

.method synthetic constructor <init>(Lads_mobile_sdk/my-IA;)V
    .locals 0

    invoke-direct {p0}, Lads_mobile_sdk/my;-><init>()V

    return-void
.end method

.method public static a(J)J
    .locals 4

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr p0, v2

    neg-long p0, p0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static a(Ljava/io/InputStream;)Lads_mobile_sdk/my;
    .locals 1

    const/16 v0, 0x1000

    .line 289
    invoke-static {p0, v0}, Lads_mobile_sdk/my;->a(Ljava/io/InputStream;I)Lads_mobile_sdk/my;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/io/InputStream;I)Lads_mobile_sdk/my;
    .locals 2

    if-lez p1, :cond_1

    if-nez p0, :cond_0

    .line 380
    sget-object p0, Lads_mobile_sdk/yh1;->a:[B

    invoke-static {p0}, Lads_mobile_sdk/my;->a([B)Lads_mobile_sdk/my;

    move-result-object p0

    return-object p0

    .line 382
    :cond_0
    new-instance v0, Lads_mobile_sdk/my$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lads_mobile_sdk/my$b;-><init>(Ljava/io/InputStream;ILads_mobile_sdk/my-IA;)V

    return-object v0

    .line 383
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bufferSize must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/Iterable;Z)Lads_mobile_sdk/my;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/nio/ByteBuffer;",
            ">;Z)",
            "Lads_mobile_sdk/my;"
        }
    .end annotation

    .line 607
    new-instance p1, Lads_mobile_sdk/up1;

    invoke-direct {p1, p0}, Lads_mobile_sdk/up1;-><init>(Ljava/lang/Iterable;)V

    invoke-static {p1}, Lads_mobile_sdk/my;->a(Ljava/io/InputStream;)Lads_mobile_sdk/my;

    move-result-object p0

    return-object p0
.end method

.method public static a([B)Lads_mobile_sdk/my;
    .locals 2

    .line 492
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lads_mobile_sdk/my;->a([BII)Lads_mobile_sdk/my;

    move-result-object p0

    return-object p0
.end method

.method public static a([BII)Lads_mobile_sdk/my;
    .locals 1

    const/4 v0, 0x0

    .line 606
    invoke-static {p0, p1, p2, v0}, Lads_mobile_sdk/my;->a([BIIZ)Lads_mobile_sdk/my;

    move-result-object p0

    return-object p0
.end method

.method public static a([BIIZ)Lads_mobile_sdk/my;
    .locals 6

    .line 608
    new-instance v0, Lads_mobile_sdk/my$a;

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lads_mobile_sdk/my$a;-><init>([BIIZLads_mobile_sdk/my-IA;)V

    .line 616
    :try_start_0
    invoke-virtual {v0, v3}, Lads_mobile_sdk/my$a;->e(I)I
    :try_end_0
    .catch Lads_mobile_sdk/np1; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 625
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static b(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    xor-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public A()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    :cond_0
    invoke-virtual {p0}, Lads_mobile_sdk/my;->x()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 279
    :cond_1
    invoke-virtual {p0}, Lads_mobile_sdk/my;->a()V

    .line 280
    iget v1, p0, Lads_mobile_sdk/my;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lads_mobile_sdk/my;->b:I

    .line 281
    invoke-virtual {p0, v0}, Lads_mobile_sdk/my;->g(I)Z

    move-result v0

    .line 282
    iget v1, p0, Lads_mobile_sdk/my;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lads_mobile_sdk/my;->b:I

    if-nez v0, :cond_0

    :goto_0
    return-void
.end method

.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    .line 211
    iget v0, p0, Lads_mobile_sdk/my;->a:I

    iget v1, p0, Lads_mobile_sdk/my;->b:I

    add-int/2addr v0, v1

    iget v1, p0, Lads_mobile_sdk/my;->c:I

    if-ge v0, v1, :cond_0

    return-void

    .line 212
    :cond_0
    invoke-static {}, Lads_mobile_sdk/np1;->i()Lads_mobile_sdk/np1;

    move-result-object v0

    throw v0
.end method

.method public abstract a(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation
.end method

.method public abstract a(Z)V
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    .line 222
    iget v0, p0, Lads_mobile_sdk/my;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 223
    invoke-virtual {p0, v0}, Lads_mobile_sdk/my;->a(I)V

    :cond_0
    return-void
.end method

.method public abstract c()I
.end method

.method public abstract c(I)V
.end method

.method public final d()I
    .locals 2

    .line 587
    iget v0, p0, Lads_mobile_sdk/my;->c:I

    iget v1, p0, Lads_mobile_sdk/my;->a:I

    sub-int/2addr v0, v1

    iget v1, p0, Lads_mobile_sdk/my;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final d(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1269
    invoke-virtual {p0, v0}, Lads_mobile_sdk/my;->a(I)V

    .line 1270
    iget v0, p0, Lads_mobile_sdk/my;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lads_mobile_sdk/my;->a:I

    .line 1271
    invoke-virtual {p0}, Lads_mobile_sdk/my;->c()I

    move-result v0

    if-nez v0, :cond_0

    .line 1274
    invoke-virtual {p0, p1}, Lads_mobile_sdk/my;->c(I)V

    return-void

    .line 1275
    :cond_0
    invoke-static {}, Lads_mobile_sdk/np1;->l()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1
.end method

.method public abstract e()I
.end method

.method public abstract e(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation
.end method

.method public final f(I)I
    .locals 3

    if-ltz p1, :cond_0

    .line 574
    iget v0, p0, Lads_mobile_sdk/my;->c:I

    .line 575
    iput p1, p0, Lads_mobile_sdk/my;->c:I

    return v0

    .line 576
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Recursion limit cannot be negative: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract f()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final g()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 667
    invoke-virtual {p0}, Lads_mobile_sdk/my;->q()I

    move-result v0

    .line 668
    invoke-virtual {p0}, Lads_mobile_sdk/my;->a()V

    .line 669
    invoke-virtual {p0, v0}, Lads_mobile_sdk/my;->e(I)I

    move-result v0

    .line 670
    iget v1, p0, Lads_mobile_sdk/my;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lads_mobile_sdk/my;->a:I

    return v0
.end method

.method public abstract g(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract h()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract i()Lads_mobile_sdk/du;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract j()D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract k()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract l()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract m()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract n()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract o()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract p()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract q()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract r()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract s()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract t()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract u()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract v()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract w()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract x()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract y()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract z()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
