.class public abstract Lads_mobile_sdk/du;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lads_mobile_sdk/du$i;,
        Lads_mobile_sdk/du$k;,
        Lads_mobile_sdk/du$f;,
        Lads_mobile_sdk/du$e;,
        Lads_mobile_sdk/du$h;,
        Lads_mobile_sdk/du$g;,
        Lads_mobile_sdk/du$l;,
        Lads_mobile_sdk/du$d;,
        Lads_mobile_sdk/du$j;,
        Lads_mobile_sdk/du$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Byte;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final b:Lads_mobile_sdk/du;

.field private static c:Lads_mobile_sdk/du$i;

.field private static final d:Lads_mobile_sdk/du$f;

.field private static final e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lads_mobile_sdk/du;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I


# direct methods
.method static bridge synthetic -$$Nest$sma(B)I
    .locals 0

    invoke-static {p0}, Lads_mobile_sdk/du;->a(B)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sma([BI[BII)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lads_mobile_sdk/du;->a([BI[BII)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lads_mobile_sdk/du$k;

    sget-object v1, Lads_mobile_sdk/yh1;->a:[B

    invoke-direct {v0, v1}, Lads_mobile_sdk/du$k;-><init>([B)V

    sput-object v0, Lads_mobile_sdk/du;->b:Lads_mobile_sdk/du;

    .line 24
    sget-object v0, Lads_mobile_sdk/du$i;->a:Lads_mobile_sdk/du$i;

    sput-object v0, Lads_mobile_sdk/du;->c:Lads_mobile_sdk/du$i;

    .line 91
    invoke-static {}, Lads_mobile_sdk/gi;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lads_mobile_sdk/du$l;

    invoke-direct {v0, v1}, Lads_mobile_sdk/du$l;-><init>(Lads_mobile_sdk/du-IA;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/du$d;

    invoke-direct {v0, v1}, Lads_mobile_sdk/du$d;-><init>(Lads_mobile_sdk/du-IA;)V

    :goto_0
    sput-object v0, Lads_mobile_sdk/du;->d:Lads_mobile_sdk/du$f;

    .line 256
    new-instance v0, Lads_mobile_sdk/du$b;

    invoke-direct {v0}, Lads_mobile_sdk/du$b;-><init>()V

    sput-object v0, Lads_mobile_sdk/du;->e:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 179
    iput v0, p0, Lads_mobile_sdk/du;->a:I

    return-void
.end method

.method private static a(B)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static a(III)I
    .locals 3

    sub-int v0, p1, p0

    or-int v1, p0, p1

    or-int/2addr v1, v0

    sub-int v2, p2, p1

    or-int/2addr v1, v2

    if-gez v1, :cond_2

    if-ltz p0, :cond_1

    if-ge p1, p0, :cond_0

    .line 2410
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Beginning index larger than ending index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2414
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "End index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " >= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2415
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Beginning index: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " < 0"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return v0
.end method

.method public static a(Ljava/io/InputStream;)Lads_mobile_sdk/du;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x100

    const/16 v1, 0x2000

    .line 8707
    invoke-static {p0, v0, v1}, Lads_mobile_sdk/du;->a(Ljava/io/InputStream;II)Lads_mobile_sdk/du;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/io/InputStream;I)Lads_mobile_sdk/du;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7980
    new-array v0, p1, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_1

    sub-int v3, p1, v2

    .line 7983
    invoke-virtual {p0, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v2, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 7995
    :cond_2
    invoke-static {v0, v1, v2}, Lads_mobile_sdk/du;->a([BII)Lads_mobile_sdk/du;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/io/InputStream;II)Lads_mobile_sdk/du;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11931
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11937
    :goto_0
    invoke-static {p0, p1}, Lads_mobile_sdk/du;->a(Ljava/io/InputStream;I)Lads_mobile_sdk/du;

    move-result-object v1

    if-nez v1, :cond_0

    .line 11945
    invoke-static {v0}, Lads_mobile_sdk/du;->a(Ljava/lang/Iterable;)Lads_mobile_sdk/du;

    move-result-object p0

    return-object p0

    .line 11946
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    mul-int/lit8 p1, p1, 0x2

    .line 11947
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0
.end method

.method public static a(Ljava/lang/Iterable;)Lads_mobile_sdk/du;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lads_mobile_sdk/du;",
            ">;)",
            "Lads_mobile_sdk/du;"
        }
    .end annotation

    .line 4068
    instance-of v0, p0, Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 4070
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 4071
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4072
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4075
    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    :cond_1
    if-nez v1, :cond_2

    .line 4079
    sget-object p0, Lads_mobile_sdk/du;->b:Lads_mobile_sdk/du;

    return-object p0

    .line 4082
    :cond_2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, v1}, Lads_mobile_sdk/du;->a(Ljava/util/Iterator;I)Lads_mobile_sdk/du;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lads_mobile_sdk/du;
    .locals 2

    .line 6298
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lads_mobile_sdk/du;->b:Lads_mobile_sdk/du;

    return-object p0

    :cond_0
    new-instance v0, Lads_mobile_sdk/du$k;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lads_mobile_sdk/du$k;-><init>([B)V

    return-object v0
.end method

.method private static a(Ljava/util/Iterator;I)Lads_mobile_sdk/du;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lads_mobile_sdk/du;",
            ">;I)",
            "Lads_mobile_sdk/du;"
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    if-ne p1, v0, :cond_0

    .line 862
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lads_mobile_sdk/du;

    return-object p0

    :cond_0
    ushr-int/lit8 v0, p1, 0x1

    .line 865
    invoke-static {p0, v0}, Lads_mobile_sdk/du;->a(Ljava/util/Iterator;I)Lads_mobile_sdk/du;

    move-result-object v1

    sub-int/2addr p1, v0

    .line 866
    invoke-static {p0, p1}, Lads_mobile_sdk/du;->a(Ljava/util/Iterator;I)Lads_mobile_sdk/du;

    move-result-object p0

    .line 867
    invoke-virtual {v1, p0}, Lads_mobile_sdk/du;->a(Lads_mobile_sdk/du;)Lads_mobile_sdk/du;

    move-result-object p0

    return-object p0

    .line 868
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 869
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "length ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 870
    const-string p1, ") must be >= 1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a([B)Lads_mobile_sdk/du;
    .locals 2

    .line 4603
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lads_mobile_sdk/du;->a([BII)Lads_mobile_sdk/du;

    move-result-object p0

    return-object p0
.end method

.method public static a([BII)Lads_mobile_sdk/du;
    .locals 1

    const/4 v0, 0x0

    .line 5097
    :try_start_0
    invoke-static {p0, p1, p2, v0}, Lads_mobile_sdk/du;->a([BIIZ)Lads_mobile_sdk/du;

    move-result-object p0
    :try_end_0
    .catch Lads_mobile_sdk/np1; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 5099
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Expected no InvalidProtocolBufferException as data UTF8 validity is not checked."

    invoke-direct {p1, p2, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static a([BIIZ)Lads_mobile_sdk/du;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 5603
    sget-object p0, Lads_mobile_sdk/du;->b:Lads_mobile_sdk/du;

    return-object p0

    :cond_0
    add-int v0, p1, p2

    .line 5605
    array-length v1, p0

    invoke-static {p1, v0, v1}, Lads_mobile_sdk/du;->a(III)I

    .line 5606
    sget-object v0, Lads_mobile_sdk/du;->d:Lads_mobile_sdk/du$f;

    invoke-interface {v0, p0, p1, p2}, Lads_mobile_sdk/du$f;->a([BII)[B

    move-result-object p0

    if-eqz p3, :cond_2

    .line 5607
    invoke-static {p0}, Lads_mobile_sdk/hx3;->a([B)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 5608
    :cond_1
    invoke-static {}, Lads_mobile_sdk/np1;->d()Lads_mobile_sdk/np1;

    move-result-object p0

    throw p0

    .line 5610
    :cond_2
    :goto_0
    new-instance p1, Lads_mobile_sdk/du$k;

    invoke-direct {p1, p0}, Lads_mobile_sdk/du$k;-><init>([B)V

    return-object p1
.end method

.method public static a([BZ)Lads_mobile_sdk/du;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    .line 11924
    array-length v0, p0

    if-nez v0, :cond_0

    .line 11925
    sget-object p0, Lads_mobile_sdk/du;->b:Lads_mobile_sdk/du;

    return-object p0

    :cond_0
    if-eqz p1, :cond_2

    .line 11927
    invoke-static {p0}, Lads_mobile_sdk/hx3;->a([B)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 11928
    :cond_1
    invoke-static {}, Lads_mobile_sdk/np1;->d()Lads_mobile_sdk/np1;

    move-result-object p0

    throw p0

    .line 11930
    :cond_2
    :goto_0
    new-instance p1, Lads_mobile_sdk/du$k;

    invoke-direct {p1, p0}, Lads_mobile_sdk/du$k;-><init>([B)V

    return-object p1
.end method

.method private static a([BI[BII)Z
    .locals 2

    add-int v0, p1, p4

    .line 10277
    array-length v1, p0

    invoke-static {p1, v0, v1}, Lads_mobile_sdk/du;->a(III)I

    add-int/2addr p4, p3

    .line 10278
    array-length v1, p2

    invoke-static {p3, p4, v1}, Lads_mobile_sdk/du;->a(III)I

    :goto_0
    if-ge p1, v0, :cond_1

    .line 10283
    aget-byte p4, p0, p1

    aget-byte v1, p2, p3

    if-eq p4, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static b([B)Lads_mobile_sdk/du;
    .locals 2

    const/4 v0, 0x0

    .line 582
    :try_start_0
    invoke-static {p0, v0}, Lads_mobile_sdk/du;->a([BZ)Lads_mobile_sdk/du;

    move-result-object p0
    :try_end_0
    .catch Lads_mobile_sdk/np1; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 584
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Expected no InvalidProtocolBufferException as data UTF8 validity is not checked."

    invoke-direct {v0, v1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static b([BIIZ)Lads_mobile_sdk/du;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    if-eqz p3, :cond_1

    add-int p3, p1, p2

    .line 1198
    invoke-static {p0, p1, p3}, Lads_mobile_sdk/hx3;->b([BII)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 1199
    :cond_0
    invoke-static {}, Lads_mobile_sdk/np1;->d()Lads_mobile_sdk/np1;

    move-result-object p0

    throw p0

    .line 1201
    :cond_1
    :goto_0
    new-instance p3, Lads_mobile_sdk/du$e;

    invoke-direct {p3, p0, p1, p2}, Lads_mobile_sdk/du$e;-><init>([BII)V

    return-object p3
.end method

.method public static e(I)Lads_mobile_sdk/du$h;
    .locals 2

    .line 1
    new-instance v0, Lads_mobile_sdk/du$h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lads_mobile_sdk/du$h;-><init>(ILads_mobile_sdk/du-IA;)V

    return-object v0
.end method

.method private j()Ljava/lang/String;
    .locals 2

    .line 1562
    invoke-virtual {p0}, Lads_mobile_sdk/du;->size()I

    move-result v0

    const/16 v1, 0x32

    if-gt v0, v1, :cond_0

    invoke-static {p0}, Lads_mobile_sdk/co3;->a(Lads_mobile_sdk/du;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Lads_mobile_sdk/du;->b(II)Lads_mobile_sdk/du;

    move-result-object v0

    invoke-static {v0}, Lads_mobile_sdk/co3;->a(Lads_mobile_sdk/du;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract a(II)Lads_mobile_sdk/du;
.end method

.method public final a(Lads_mobile_sdk/du;)Lads_mobile_sdk/du;
    .locals 4

    .line 3226
    invoke-virtual {p0}, Lads_mobile_sdk/du;->size()I

    move-result v0

    const v1, 0x7fffffff

    sub-int/2addr v1, v0

    invoke-virtual {p1}, Lads_mobile_sdk/du;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 3231
    invoke-static {p0, p1}, Lads_mobile_sdk/i83;->a(Lads_mobile_sdk/du;Lads_mobile_sdk/du;)Lads_mobile_sdk/du;

    move-result-object p1

    return-object p1

    .line 3232
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 3233
    invoke-virtual {p0}, Lads_mobile_sdk/du;->size()I

    move-result v1

    invoke-virtual {p1}, Lads_mobile_sdk/du;->size()I

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ByteString would be too long: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    .line 11334
    invoke-virtual {p0}, Lads_mobile_sdk/du;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lads_mobile_sdk/du;->b(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(Lads_mobile_sdk/cu;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final a([BIII)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    add-int v0, p2, p4

    .line 7200
    invoke-virtual {p0}, Lads_mobile_sdk/du;->size()I

    move-result v1

    invoke-static {p2, v0, v1}, Lads_mobile_sdk/du;->a(III)I

    add-int v0, p3, p4

    .line 7201
    array-length v1, p1

    invoke-static {p3, v0, v1}, Lads_mobile_sdk/du;->a(III)I

    if-lez p4, :cond_0

    .line 7203
    invoke-virtual {p0, p1, p2, p3, p4}, Lads_mobile_sdk/du;->b([BIII)V

    :cond_0
    return-void
.end method

.method public abstract b(III)I
.end method

.method public abstract b(II)Lads_mobile_sdk/du;
.end method

.method public abstract b(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public abstract b([BIII)V
.end method

.method public abstract b(Lads_mobile_sdk/du;)Z
.end method

.method public abstract c()Ljava/nio/ByteBuffer;
.end method

.method public abstract d(I)B
.end method

.method public abstract d()I
.end method

.method public abstract e()Z
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1110
    :cond_0
    instance-of v1, p1, Lads_mobile_sdk/du;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1114
    :cond_1
    check-cast p1, Lads_mobile_sdk/du;

    .line 1115
    invoke-virtual {p0}, Lads_mobile_sdk/du;->size()I

    move-result v1

    .line 1116
    invoke-virtual {p1}, Lads_mobile_sdk/du;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    if-nez v1, :cond_3

    return v0

    .line 1125
    :cond_3
    invoke-virtual {p0}, Lads_mobile_sdk/du;->h()I

    move-result v0

    .line 1126
    invoke-virtual {p1}, Lads_mobile_sdk/du;->h()I

    move-result v1

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-eq v0, v1, :cond_4

    return v2

    .line 1131
    :cond_4
    invoke-virtual {p0, p1}, Lads_mobile_sdk/du;->b(Lads_mobile_sdk/du;)Z

    move-result p1

    return p1
.end method

.method public f()Lads_mobile_sdk/du$g;
    .locals 1

    .line 391
    new-instance v0, Lads_mobile_sdk/du$a;

    invoke-direct {v0, p0}, Lads_mobile_sdk/du$a;-><init>(Lads_mobile_sdk/du;)V

    return-object v0
.end method

.method public final f(I)Lads_mobile_sdk/du;
    .locals 1

    .line 390
    invoke-virtual {p0}, Lads_mobile_sdk/du;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/du;->a(II)Lads_mobile_sdk/du;

    move-result-object p1

    return-object p1
.end method

.method public abstract g()Lads_mobile_sdk/my;
.end method

.method public final h()I
    .locals 1

    .line 1492
    iget v0, p0, Lads_mobile_sdk/du;->a:I

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1182
    iget v0, p0, Lads_mobile_sdk/du;->a:I

    if-nez v0, :cond_1

    .line 1185
    invoke-virtual {p0}, Lads_mobile_sdk/du;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 1186
    invoke-virtual {p0, v0, v1, v0}, Lads_mobile_sdk/du;->b(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1190
    :cond_0
    iput v0, p0, Lads_mobile_sdk/du;->a:I

    :cond_1
    return v0
.end method

.method public final i()[B
    .locals 3

    .line 935
    invoke-virtual {p0}, Lads_mobile_sdk/du;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 937
    sget-object v0, Lads_mobile_sdk/yh1;->a:[B

    return-object v0

    .line 939
    :cond_0
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 940
    invoke-virtual {p0, v1, v2, v2, v0}, Lads_mobile_sdk/du;->b([BIII)V

    return-object v1
.end method

.method public final isEmpty()Z
    .locals 1

    .line 268
    invoke-virtual {p0}, Lads_mobile_sdk/du;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract size()I
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1551
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 1554
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 1555
    invoke-virtual {p0}, Lads_mobile_sdk/du;->size()I

    move-result v1

    .line 1556
    invoke-direct {p0}, Lads_mobile_sdk/du;->j()Ljava/lang/String;

    move-result-object v2

    .line 1557
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<ByteString@"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " size="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " contents=\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\">"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
