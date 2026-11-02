.class abstract Lcom/google/re2j/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field static final EMPTY_ALL:I = -0x1

.field static final EMPTY_BEGIN_LINE:I = 0x1

.field static final EMPTY_BEGIN_TEXT:I = 0x4

.field static final EMPTY_END_LINE:I = 0x2

.field static final EMPTY_END_TEXT:I = 0x8

.field static final EMPTY_INTS:[I

.field static final EMPTY_NO_WORD_BOUNDARY:I = 0x20

.field static final EMPTY_WORD_BOUNDARY:I = 0x10

.field private static final METACHARACTERS:Ljava/lang/String; = "\\.+*?()|[]{}^$"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 14
    new-array v0, v0, [I

    sput-object v0, Lcom/google/re2j/Utils;->EMPTY_INTS:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static emptyOpContext(II)I
    .locals 2

    if-gez p0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ne p0, v1, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    if-gez p1, :cond_2

    or-int/lit8 v0, v0, 0xa

    :cond_2
    if-ne p1, v1, :cond_3

    or-int/lit8 v0, v0, 0x2

    .line 196
    :cond_3
    invoke-static {p0}, Lcom/google/re2j/Utils;->isWordRune(I)Z

    move-result p0

    invoke-static {p1}, Lcom/google/re2j/Utils;->isWordRune(I)Z

    move-result p1

    if-eq p0, p1, :cond_4

    or-int/lit8 p0, v0, 0x10

    return p0

    :cond_4
    or-int/lit8 p0, v0, 0x20

    return p0
.end method

.method static escapeRune(Ljava/lang/StringBuilder;I)V
    .locals 3

    .line 40
    invoke-static {p1}, Lcom/google/re2j/Unicode;->isPrint(I)Z

    move-result v0

    const/16 v1, 0x5c

    if-eqz v0, :cond_1

    .line 41
    const-string v0, "\\.+*?()|[]{}^$"

    int-to-char v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 42
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    return-void

    :cond_1
    const/16 v0, 0xc

    if-eq p1, v0, :cond_7

    const/16 v0, 0xd

    if-eq p1, v0, :cond_6

    const/16 v0, 0x22

    if-eq p1, v0, :cond_5

    if-eq p1, v1, :cond_4

    packed-switch p1, :pswitch_data_0

    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x100

    if-ge p1, v1, :cond_3

    .line 74
    const-string p1, "\\x"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    const/16 p1, 0x30

    .line 76
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 80
    :cond_3
    const-string p1, "\\x{"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 p1, 0x7d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 59
    :pswitch_0
    const-string p1, "\\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 56
    :pswitch_1
    const-string p1, "\\t"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 65
    :pswitch_2
    const-string p1, "\\b"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 53
    :cond_4
    const-string p1, "\\\\"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 50
    :cond_5
    const-string p1, "\\\""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 62
    :cond_6
    const-string p1, "\\r"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 68
    :cond_7
    const-string p1, "\\f"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static indexOf([B[BI)I
    .locals 8

    .line 128
    array-length v0, p0

    const/4 v1, -0x1

    if-lt p2, v0, :cond_1

    .line 129
    array-length p1, p1

    if-nez p1, :cond_0

    array-length p0, p0

    return p0

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    if-gez p2, :cond_2

    move p2, v0

    .line 134
    :cond_2
    array-length v2, p1

    if-nez v2, :cond_3

    return p2

    .line 138
    :cond_3
    aget-byte v0, p1, v0

    .line 139
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    :goto_0
    if-gt p2, v2, :cond_7

    .line 141
    aget-byte v3, p0, p2

    const/4 v4, 0x1

    if-eq v3, v0, :cond_4

    :goto_1
    add-int/2addr p2, v4

    if-gt p2, v2, :cond_4

    .line 142
    aget-byte v3, p0, p2

    if-eq v3, v0, :cond_4

    goto :goto_1

    :cond_4
    if-gt p2, v2, :cond_6

    add-int/lit8 v3, p2, 0x1

    .line 148
    array-length v5, p1

    add-int/2addr v5, v3

    sub-int/2addr v5, v4

    :goto_2
    if-ge v3, v5, :cond_5

    .line 149
    aget-byte v6, p0, v3

    aget-byte v7, p1, v4

    if-ne v6, v7, :cond_5

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    if-ne v3, v5, :cond_6

    return p2

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_7
    return v1
.end method

.method static isWordRune(I)Z
    .locals 1

    const/16 v0, 0x41

    if-gt v0, p0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_3

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x7a

    if-le p0, v0, :cond_3

    :cond_1
    const/16 v0, 0x30

    if-gt v0, p0, :cond_2

    const/16 v0, 0x39

    if-le p0, v0, :cond_3

    :cond_2
    const/16 v0, 0x5f

    if-ne p0, v0, :cond_4

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method static isalnum(I)Z
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x61

    if-gt v0, p0, :cond_3

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method static runeToString(I)Ljava/lang/String;
    .locals 1

    int-to-char v0, p0

    if-ne p0, v0, :cond_0

    .line 104
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method static stringToRunes(Ljava/lang/String;)[I
    .locals 6

    .line 89
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    .line 90
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->codePointCount(II)I

    move-result v2

    .line 91
    new-array v2, v2, [I

    move v3, v1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 94
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    add-int/lit8 v5, v3, 0x1

    .line 95
    aput v4, v2, v3

    .line 96
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    move v3, v5

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method static subarray([BII)[B
    .locals 4

    sub-int v0, p2, p1

    .line 118
    new-array v0, v0, [B

    move v1, p1

    :goto_0
    if-ge v1, p2, :cond_0

    sub-int v2, v1, p1

    .line 120
    aget-byte v3, p0, v1

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static subarray([III)[I
    .locals 4

    sub-int v0, p2, p1

    .line 109
    new-array v0, v0, [I

    move v1, p1

    :goto_0
    if-ge v1, p2, :cond_0

    sub-int v2, v1, p1

    .line 111
    aget v3, p0, v1

    aput v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static unhex(I)I
    .locals 2

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    return p0

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    add-int/lit8 p0, p0, -0x57

    return p0

    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    add-int/lit8 p0, p0, -0x37

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method
