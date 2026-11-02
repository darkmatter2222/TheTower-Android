.class Lcom/applovin/impl/adview/c$a;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/adview/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:I

.field final b:[B

.field c:I


# direct methods
.method constructor <init>(I[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    iput p1, p0, Lcom/applovin/impl/adview/c$a;->a:I

    .line 3
    iput-object p2, p0, Lcom/applovin/impl/adview/c$a;->b:[B

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/applovin/impl/adview/c$a;->c:I

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/applovin/impl/adview/c$a;->a:I

    iget-object v1, p0, Lcom/applovin/impl/adview/c$a;->b:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 2
    iget v1, p0, Lcom/applovin/impl/adview/c$a;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public read()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/applovin/impl/adview/c$a;->c:I

    iget v1, p0, Lcom/applovin/impl/adview/c$a;->a:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 3
    iput v0, p0, Lcom/applovin/impl/adview/c$a;->c:I

    const/4 v0, 0x0

    return v0

    :cond_0
    sub-int v1, v0, v1

    .line 8
    iget-object v2, p0, Lcom/applovin/impl/adview/c$a;->b:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 10
    iput v0, p0, Lcom/applovin/impl/adview/c$a;->c:I

    .line 11
    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public read([BII)I
    .locals 5

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 12
    :cond_0
    iget v1, p0, Lcom/applovin/impl/adview/c$a;->a:I

    iget-object v2, p0, Lcom/applovin/impl/adview/c$a;->b:[B

    array-length v2, v2

    add-int/2addr v2, v1

    .line 13
    iget v3, p0, Lcom/applovin/impl/adview/c$a;->c:I

    const/4 v4, -0x1

    if-lt v3, v2, :cond_1

    return v4

    :cond_1
    if-ge v3, v1, :cond_3

    sub-int/2addr v1, v3

    .line 20
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    add-int v3, p2, v2

    .line 23
    aput-byte v0, p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 26
    :cond_2
    iget v0, p0, Lcom/applovin/impl/adview/c$a;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/applovin/impl/adview/c$a;->c:I

    move v0, v1

    :cond_3
    sub-int/2addr p3, v0

    if-lez p3, :cond_4

    .line 32
    iget v1, p0, Lcom/applovin/impl/adview/c$a;->c:I

    iget v2, p0, Lcom/applovin/impl/adview/c$a;->a:I

    if-lt v1, v2, :cond_4

    sub-int/2addr v1, v2

    .line 35
    iget-object v2, p0, Lcom/applovin/impl/adview/c$a;->b:[B

    array-length v2, v2

    sub-int/2addr v2, v1

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result p3

    if-lez p3, :cond_4

    .line 38
    iget-object v2, p0, Lcom/applovin/impl/adview/c$a;->b:[B

    add-int/2addr p2, v0

    invoke-static {v2, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    iget p1, p0, Lcom/applovin/impl/adview/c$a;->c:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/applovin/impl/adview/c$a;->c:I

    add-int/2addr v0, p3

    :cond_4
    if-lez v0, :cond_5

    return v0

    :cond_5
    return v4
.end method
