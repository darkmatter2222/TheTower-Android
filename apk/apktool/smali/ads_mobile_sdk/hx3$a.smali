.class abstract Lads_mobile_sdk/hx3$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/hx3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method static bridge synthetic -$$Nest$sma(BBBB[CI)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lads_mobile_sdk/hx3$a;->a(BBBB[CI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sma(BBB[CI)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lads_mobile_sdk/hx3$a;->a(BBB[CI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sma(BB[CI)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lads_mobile_sdk/hx3$a;->a(BB[CI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sma(B[CI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lads_mobile_sdk/hx3$a;->a(B[CI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smb(B)Z
    .locals 0

    invoke-static {p0}, Lads_mobile_sdk/hx3$a;->b(B)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smc(B)Z
    .locals 0

    invoke-static {p0}, Lads_mobile_sdk/hx3$a;->c(B)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smd(B)Z
    .locals 0

    invoke-static {p0}, Lads_mobile_sdk/hx3$a;->d(B)Z

    move-result p0

    return p0
.end method

.method private static a(I)C
    .locals 1

    ushr-int/lit8 p0, p0, 0xa

    const v0, 0xd7c0

    add-int/2addr p0, v0

    int-to-char p0, p0

    return p0
.end method

.method private static a(BBBB[CI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    .line 924
    invoke-static {p1}, Lads_mobile_sdk/hx3$a;->a(B)Z

    move-result v0

    if-nez v0, :cond_0

    shl-int/lit8 v0, p0, 0x1c

    add-int/lit8 v1, p1, 0x70

    add-int/2addr v1, v0

    shr-int/lit8 v0, v1, 0x1e

    if-nez v0, :cond_0

    .line 933
    invoke-static {p2}, Lads_mobile_sdk/hx3$a;->a(B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 934
    invoke-static {p3}, Lads_mobile_sdk/hx3$a;->a(B)Z

    move-result v0

    if-nez v0, :cond_0

    and-int/lit8 p0, p0, 0x7

    shl-int/lit8 p0, p0, 0x12

    .line 939
    invoke-static {p1}, Lads_mobile_sdk/hx3$a;->e(B)I

    move-result p1

    shl-int/lit8 p1, p1, 0xc

    or-int/2addr p0, p1

    .line 940
    invoke-static {p2}, Lads_mobile_sdk/hx3$a;->e(B)I

    move-result p1

    shl-int/lit8 p1, p1, 0x6

    or-int/2addr p0, p1

    .line 941
    invoke-static {p3}, Lads_mobile_sdk/hx3$a;->e(B)I

    move-result p1

    or-int/2addr p0, p1

    .line 942
    invoke-static {p0}, Lads_mobile_sdk/hx3$a;->a(I)C

    move-result p1

    aput-char p1, p4, p5

    add-int/lit8 p5, p5, 0x1

    .line 943
    invoke-static {p0}, Lads_mobile_sdk/hx3$a;->b(I)C

    move-result p0

    aput-char p0, p4, p5

    return-void

    .line 944
    :cond_0
    invoke-static {}, Lads_mobile_sdk/np1;->d()Lads_mobile_sdk/np1;

    move-result-object p0

    throw p0
.end method

.method private static a(BBB[CI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    .line 2744
    invoke-static {p1}, Lads_mobile_sdk/hx3$a;->a(B)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, -0x20

    const/16 v1, -0x60

    if-ne p0, v0, :cond_0

    if-lt p1, v1, :cond_2

    :cond_0
    const/16 v0, -0x13

    if-ne p0, v0, :cond_1

    if-ge p1, v1, :cond_2

    .line 2749
    :cond_1
    invoke-static {p2}, Lads_mobile_sdk/hx3$a;->a(B)Z

    move-result v0

    if-nez v0, :cond_2

    and-int/lit8 p0, p0, 0xf

    shl-int/lit8 p0, p0, 0xc

    .line 2754
    invoke-static {p1}, Lads_mobile_sdk/hx3$a;->e(B)I

    move-result p1

    shl-int/lit8 p1, p1, 0x6

    or-int/2addr p0, p1

    invoke-static {p2}, Lads_mobile_sdk/hx3$a;->e(B)I

    move-result p1

    or-int/2addr p0, p1

    int-to-char p0, p0

    aput-char p0, p3, p4

    return-void

    .line 2755
    :cond_2
    invoke-static {}, Lads_mobile_sdk/np1;->d()Lads_mobile_sdk/np1;

    move-result-object p0

    throw p0
.end method

.method private static a(BB[CI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    const/16 v0, -0x3e

    if-lt p0, v0, :cond_0

    .line 3654
    invoke-static {p1}, Lads_mobile_sdk/hx3$a;->a(B)Z

    move-result v0

    if-nez v0, :cond_0

    and-int/lit8 p0, p0, 0x1f

    shl-int/lit8 p0, p0, 0x6

    .line 3657
    invoke-static {p1}, Lads_mobile_sdk/hx3$a;->e(B)I

    move-result p1

    or-int/2addr p0, p1

    int-to-char p0, p0

    aput-char p0, p2, p3

    return-void

    .line 3658
    :cond_0
    invoke-static {}, Lads_mobile_sdk/np1;->d()Lads_mobile_sdk/np1;

    move-result-object p0

    throw p0
.end method

.method private static a(B[CI)V
    .locals 0

    int-to-char p0, p0

    .line 1836
    aput-char p0, p1, p2

    return-void
.end method

.method private static a(B)Z
    .locals 1

    const/16 v0, -0x41

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static b(I)C
    .locals 1

    and-int/lit16 p0, p0, 0x3ff

    const v0, 0xdc00

    add-int/2addr p0, v0

    int-to-char p0, p0

    return p0
.end method

.method private static b(B)Z
    .locals 0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static c(B)Z
    .locals 1

    const/16 v0, -0x10

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static d(B)Z
    .locals 1

    const/16 v0, -0x20

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static e(B)I
    .locals 0

    and-int/lit8 p0, p0, 0x3f

    return p0
.end method
