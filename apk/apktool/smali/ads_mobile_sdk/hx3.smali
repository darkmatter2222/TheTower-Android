.class abstract Lads_mobile_sdk/hx3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lads_mobile_sdk/hx3$b;,
        Lads_mobile_sdk/hx3$e;,
        Lads_mobile_sdk/hx3$d;,
        Lads_mobile_sdk/hx3$c;,
        Lads_mobile_sdk/hx3$f;,
        Lads_mobile_sdk/hx3$a;
    }
.end annotation


# static fields
.field private static final a:Lads_mobile_sdk/hx3$c;

.field static final b:Z


# direct methods
.method static bridge synthetic -$$Nest$sma(Ljava/lang/String;I)I
    .locals 0

    invoke-static {p0, p1}, Lads_mobile_sdk/hx3;->a(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lads_mobile_sdk/hx3;->a()Lads_mobile_sdk/hx3$c;

    move-result-object v0

    sput-object v0, Lads_mobile_sdk/hx3;->a:Lads_mobile_sdk/hx3$c;

    .line 3
    invoke-virtual {v0}, Lads_mobile_sdk/hx3$c;->a()Z

    move-result v0

    sput-boolean v0, Lads_mobile_sdk/hx3;->b:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1

    .line 679
    sget-object v0, Lads_mobile_sdk/hx3;->a:Lads_mobile_sdk/hx3$c;

    invoke-virtual {v0, p0}, Lads_mobile_sdk/hx3$c;->a(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static a(Ljava/lang/String;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/hx3$f;
        }
    .end annotation

    .line 549
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge p1, v0, :cond_3

    .line 552
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x800

    if-ge v2, v3, :cond_0

    rsub-int/lit8 v2, v2, 0x7f

    ushr-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x2

    const v3, 0xd800

    if-gt v3, v2, :cond_2

    const v3, 0xdfff

    if-gt v2, v3, :cond_2

    .line 560
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    const/high16 v3, 0x10000

    if-lt v2, v3, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 562
    :cond_1
    new-instance p0, Lads_mobile_sdk/hx3$f;

    invoke-direct {p0, p1, v0}, Lads_mobile_sdk/hx3$f;-><init>(II)V

    throw p0

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static a(Ljava/lang/String;[BII)I
    .locals 1

    .line 680
    sget-object v0, Lads_mobile_sdk/hx3;->a:Lads_mobile_sdk/hx3$c;

    invoke-virtual {v0, p0, p1, p2, p3}, Lads_mobile_sdk/hx3$c;->a(Ljava/lang/String;[BII)I

    move-result p0

    return p0
.end method

.method private static a()Lads_mobile_sdk/hx3$c;
    .locals 1

    .line 662
    invoke-static {}, Lads_mobile_sdk/gi;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    new-instance v0, Lads_mobile_sdk/hx3$b;

    invoke-direct {v0}, Lads_mobile_sdk/hx3$b;-><init>()V

    return-object v0

    .line 667
    :cond_0
    :try_start_0
    const-string v0, "PROTOBUF_FORCE_MOBILE_UTF8_PROCESSOR_FOR_TESTING"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 668
    new-instance v0, Lads_mobile_sdk/hx3$b;

    invoke-direct {v0}, Lads_mobile_sdk/hx3$b;-><init>()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 675
    :catch_0
    :cond_1
    invoke-static {}, Lads_mobile_sdk/hx3$e;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 676
    new-instance v0, Lads_mobile_sdk/hx3$e;

    invoke-direct {v0}, Lads_mobile_sdk/hx3$e;-><init>()V

    return-object v0

    .line 678
    :cond_2
    new-instance v0, Lads_mobile_sdk/hx3$d;

    invoke-direct {v0}, Lads_mobile_sdk/hx3$d;-><init>()V

    return-object v0
.end method

.method public static a([BII)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 298
    const-string p0, ""

    return-object p0

    .line 300
    :cond_0
    sget-object v0, Lads_mobile_sdk/hx3;->a:Lads_mobile_sdk/hx3$c;

    invoke-virtual {v0, p0, p1, p2}, Lads_mobile_sdk/hx3$c;->a([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a([B)Z
    .locals 2

    .line 661
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lads_mobile_sdk/hx3;->c([BII)Z

    move-result p0

    return p0
.end method

.method public static b([BII)Z
    .locals 0

    .line 108
    invoke-static {p0, p1, p2}, Lads_mobile_sdk/hx3;->c([BII)Z

    move-result p0

    return p0
.end method

.method private static c([BII)Z
    .locals 1

    :goto_0
    if-ge p1, p2, :cond_0

    .line 133
    aget-byte v0, p0, p1

    if-ltz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    if-lt p1, p2, :cond_1

    const/4 p0, 0x1

    return p0

    .line 139
    :cond_1
    invoke-static {p0, p1, p2}, Lads_mobile_sdk/hx3;->d([BII)Z

    move-result p0

    return p0
.end method

.method private static d([BII)Z
    .locals 7

    :cond_0
    :goto_0
    if-lt p1, p2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v0, p1, 0x1

    .line 150
    aget-byte v1, p0, p1

    if-gez v1, :cond_c

    const/16 v2, -0x20

    const/16 v3, -0x41

    const/4 v4, 0x0

    if-ge v1, v2, :cond_4

    if-lt v0, p2, :cond_2

    return v4

    :cond_2
    const/16 v2, -0x3e

    if-lt v1, v2, :cond_3

    add-int/lit8 p1, p1, 0x2

    .line 155
    aget-byte v0, p0, v0

    if-le v0, v3, :cond_0

    :cond_3
    return v4

    :cond_4
    const/16 v5, -0x10

    if-ge v1, v5, :cond_9

    add-int/lit8 v5, p2, -0x1

    if-lt v0, v5, :cond_5

    return v4

    :cond_5
    add-int/lit8 v5, p1, 0x2

    .line 162
    aget-byte v0, p0, v0

    if-gt v0, v3, :cond_8

    const/16 v6, -0x60

    if-ne v1, v2, :cond_6

    if-lt v0, v6, :cond_8

    :cond_6
    const/16 v2, -0x13

    if-ne v1, v2, :cond_7

    if-ge v0, v6, :cond_8

    :cond_7
    add-int/lit8 p1, p1, 0x3

    aget-byte v0, p0, v5

    if-le v0, v3, :cond_0

    :cond_8
    return v4

    :cond_9
    add-int/lit8 v2, p2, -0x2

    if-lt v0, v2, :cond_a

    return v4

    :cond_a
    add-int/lit8 v2, p1, 0x2

    .line 172
    aget-byte v0, p0, v0

    if-gt v0, v3, :cond_b

    shl-int/lit8 v1, v1, 0x1c

    add-int/lit8 v0, v0, 0x70

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_b

    add-int/lit8 v0, p1, 0x3

    aget-byte v1, p0, v2

    if-gt v1, v3, :cond_b

    add-int/lit8 p1, p1, 0x4

    aget-byte v0, p0, v0

    if-le v0, v3, :cond_0

    :cond_b
    return v4

    :cond_c
    move p1, v0

    goto :goto_0
.end method
