.class Lcom/google/re2j/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/re2j/Parser$Pair;,
        Lcom/google/re2j/Parser$StringIterator;,
        Lcom/google/re2j/Parser$Stack;
    }
.end annotation


# static fields
.field private static final ANY_TABLE:[[I

.field private static final ERR_DUPLICATE_NAMED_CAPTURE:Ljava/lang/String; = "duplicate capture group name"

.field private static final ERR_INTERNAL_ERROR:Ljava/lang/String; = "regexp/syntax: internal error"

.field private static final ERR_INVALID_CHAR_CLASS:Ljava/lang/String; = "invalid character class"

.field private static final ERR_INVALID_CHAR_RANGE:Ljava/lang/String; = "invalid character class range"

.field private static final ERR_INVALID_ESCAPE:Ljava/lang/String; = "invalid escape sequence"

.field private static final ERR_INVALID_NAMED_CAPTURE:Ljava/lang/String; = "invalid named capture"

.field private static final ERR_INVALID_PERL_OP:Ljava/lang/String; = "invalid or unsupported Perl syntax"

.field private static final ERR_INVALID_REPEAT_OP:Ljava/lang/String; = "invalid nested repetition operator"

.field private static final ERR_INVALID_REPEAT_SIZE:Ljava/lang/String; = "invalid repeat count"

.field private static final ERR_MISSING_BRACKET:Ljava/lang/String; = "missing closing ]"

.field private static final ERR_MISSING_PAREN:Ljava/lang/String; = "missing closing )"

.field private static final ERR_MISSING_REPEAT_ARGUMENT:Ljava/lang/String; = "missing argument to repetition operator"

.field private static final ERR_TRAILING_BACKSLASH:Ljava/lang/String; = "trailing backslash at end of expression"


# instance fields
.field private flags:I

.field private free:Lcom/google/re2j/Regexp;

.field private final namedGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private numCap:I

.field private final stack:Lcom/google/re2j/Parser$Stack;

.field private final wholeRegexp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const v0, 0x10ffff

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1513
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    filled-new-array {v0}, [[I

    move-result-object v0

    sput-object v0, Lcom/google/re2j/Parser;->ANY_TABLE:[[I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/google/re2j/Parser$Stack;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/re2j/Parser$Stack;-><init>(Lcom/google/re2j/Parser$1;)V

    iput-object v0, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/google/re2j/Parser;->numCap:I

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/re2j/Parser;->namedGroups:Ljava/util/Map;

    .line 65
    iput-object p1, p0, Lcom/google/re2j/Parser;->wholeRegexp:Ljava/lang/String;

    .line 66
    iput p2, p0, Lcom/google/re2j/Parser;->flags:I

    return-void
.end method

.method private alternate()Lcom/google/re2j/Regexp;
    .locals 2

    .line 280
    invoke-direct {p0}, Lcom/google/re2j/Parser;->popToPseudo()[Lcom/google/re2j/Regexp;

    move-result-object v0

    .line 284
    array-length v1, v0

    if-lez v1, :cond_0

    .line 285
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    invoke-direct {p0, v1}, Lcom/google/re2j/Parser;->cleanAlt(Lcom/google/re2j/Regexp;)V

    .line 290
    :cond_0
    array-length v1, v0

    if-nez v1, :cond_1

    .line 291
    sget-object v0, Lcom/google/re2j/Regexp$Op;->NO_MATCH:Lcom/google/re2j/Regexp$Op;

    invoke-direct {p0, v0}, Lcom/google/re2j/Parser;->newRegexp(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/re2j/Parser;->push(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;

    move-result-object v0

    return-object v0

    .line 294
    :cond_1
    sget-object v1, Lcom/google/re2j/Regexp$Op;->ALTERNATE:Lcom/google/re2j/Regexp$Op;

    invoke-direct {p0, v0, v1}, Lcom/google/re2j/Parser;->collapse([Lcom/google/re2j/Regexp;Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/re2j/Parser;->push(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;

    move-result-object v0

    return-object v0
.end method

.method private cleanAlt(Lcom/google/re2j/Regexp;)V
    .locals 7

    .line 299
    iget-object v0, p1, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v1, Lcom/google/re2j/Regexp$Op;->CHAR_CLASS:Lcom/google/re2j/Regexp$Op;

    if-ne v0, v1, :cond_1

    .line 300
    new-instance v0, Lcom/google/re2j/CharClass;

    iget-object v1, p1, Lcom/google/re2j/Regexp;->runes:[I

    invoke-direct {v0, v1}, Lcom/google/re2j/CharClass;-><init>([I)V

    invoke-virtual {v0}, Lcom/google/re2j/CharClass;->cleanClass()Lcom/google/re2j/CharClass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/re2j/CharClass;->toArray()[I

    move-result-object v0

    iput-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    .line 301
    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    array-length v0, v0

    const/4 v1, 0x0

    const v2, 0x10ffff

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_0

    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v0, v0, v4

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v0, v0, v3

    if-ne v0, v2, :cond_0

    .line 302
    iput-object v1, p1, Lcom/google/re2j/Regexp;->runes:[I

    .line 303
    sget-object v0, Lcom/google/re2j/Regexp$Op;->ANY_CHAR:Lcom/google/re2j/Regexp$Op;

    iput-object v0, p1, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    return-void

    .line 304
    :cond_0
    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    array-length v0, v0

    const/4 v6, 0x4

    if-ne v0, v6, :cond_1

    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v0, v0, v4

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v0, v0, v3

    const/16 v3, 0x9

    if-ne v0, v3, :cond_1

    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v0, v0, v5

    const/16 v3, 0xb

    if-ne v0, v3, :cond_1

    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    const/4 v3, 0x3

    aget v0, v0, v3

    if-ne v0, v2, :cond_1

    .line 309
    iput-object v1, p1, Lcom/google/re2j/Regexp;->runes:[I

    .line 310
    sget-object v0, Lcom/google/re2j/Regexp$Op;->ANY_CHAR_NOT_NL:Lcom/google/re2j/Regexp$Op;

    iput-object v0, p1, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    :cond_1
    return-void
.end method

.method private collapse([Lcom/google/re2j/Regexp;Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;
    .locals 9

    .line 320
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 321
    aget-object p1, p1, v1

    return-object p1

    .line 326
    :cond_0
    array-length v0, p1

    move v3, v1

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v5, p1, v3

    .line 327
    iget-object v6, v5, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    if-ne v6, p2, :cond_1

    iget-object v5, v5, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    array-length v5, v5

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 329
    :cond_2
    new-array v0, v4, [Lcom/google/re2j/Regexp;

    .line 331
    array-length v3, p1

    move v4, v1

    move v5, v4

    :goto_2
    if-ge v4, v3, :cond_4

    aget-object v6, p1, v4

    .line 332
    iget-object v7, v6, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    if-ne v7, p2, :cond_3

    .line 333
    iget-object v7, v6, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    iget-object v8, v6, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    array-length v8, v8

    invoke-static {v7, v1, v0, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 334
    iget-object v7, v6, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    array-length v7, v7

    add-int/2addr v5, v7

    .line 335
    invoke-direct {p0, v6}, Lcom/google/re2j/Parser;->reuse(Lcom/google/re2j/Regexp;)V

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v5, 0x1

    .line 337
    aput-object v6, v0, v5

    move v5, v7

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 340
    :cond_4
    invoke-direct {p0, p2}, Lcom/google/re2j/Parser;->newRegexp(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    move-result-object p1

    .line 341
    iput-object v0, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    .line 343
    sget-object v0, Lcom/google/re2j/Regexp$Op;->ALTERNATE:Lcom/google/re2j/Regexp$Op;

    if-ne p2, v0, :cond_5

    .line 344
    iget-object p2, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    iget v0, p1, Lcom/google/re2j/Regexp;->flags:I

    invoke-direct {p0, p2, v0}, Lcom/google/re2j/Parser;->factor([Lcom/google/re2j/Regexp;I)[Lcom/google/re2j/Regexp;

    move-result-object p2

    iput-object p2, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    .line 345
    iget-object p2, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    array-length p2, p2

    if-ne p2, v2, :cond_5

    .line 347
    iget-object p2, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object p2, p2, v1

    .line 348
    invoke-direct {p0, p1}, Lcom/google/re2j/Parser;->reuse(Lcom/google/re2j/Regexp;)V

    return-object p2

    :cond_5
    return-object p1
.end method

.method private concat()Lcom/google/re2j/Regexp;
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 262
    invoke-direct {p0, v0, v1}, Lcom/google/re2j/Parser;->maybeConcat(II)Z

    .line 265
    invoke-direct {p0}, Lcom/google/re2j/Parser;->popToPseudo()[Lcom/google/re2j/Regexp;

    move-result-object v0

    .line 268
    array-length v1, v0

    if-nez v1, :cond_0

    .line 269
    sget-object v0, Lcom/google/re2j/Regexp$Op;->EMPTY_MATCH:Lcom/google/re2j/Regexp$Op;

    invoke-direct {p0, v0}, Lcom/google/re2j/Parser;->newRegexp(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/re2j/Parser;->push(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;

    move-result-object v0

    return-object v0

    .line 272
    :cond_0
    sget-object v1, Lcom/google/re2j/Regexp$Op;->CONCAT:Lcom/google/re2j/Regexp$Op;

    invoke-direct {p0, v0, v1}, Lcom/google/re2j/Parser;->collapse([Lcom/google/re2j/Regexp;Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/re2j/Parser;->push(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;

    move-result-object v0

    return-object v0
.end method

.method private static concatRunes([I[I)[I
    .locals 3

    .line 1721
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 1722
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1723
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private factor([Lcom/google/re2j/Regexp;I)[Lcom/google/re2j/Regexp;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 366
    array-length v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    return-object v1

    .line 385
    :cond_0
    array-length v2, v1

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    move v8, v7

    move v10, v8

    move v11, v10

    const/4 v9, 0x0

    :goto_0
    const/4 v12, 0x1

    if-gt v6, v2, :cond_b

    if-ge v6, v2, :cond_6

    .line 407
    aget-object v13, v1, v6

    .line 408
    iget-object v14, v13, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v15, Lcom/google/re2j/Regexp$Op;->CONCAT:Lcom/google/re2j/Regexp$Op;

    if-ne v14, v15, :cond_1

    iget-object v14, v13, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    array-length v14, v14

    if-lez v14, :cond_1

    .line 409
    iget-object v13, v13, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object v13, v13, v5

    .line 411
    :cond_1
    iget-object v14, v13, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v15, Lcom/google/re2j/Regexp$Op;->LITERAL:Lcom/google/re2j/Regexp$Op;

    if-ne v14, v15, :cond_2

    .line 412
    iget-object v14, v13, Lcom/google/re2j/Regexp;->runes:[I

    .line 413
    iget-object v15, v13, Lcom/google/re2j/Regexp;->runes:[I

    array-length v15, v15

    .line 414
    iget v13, v13, Lcom/google/re2j/Regexp;->flags:I

    and-int/2addr v13, v12

    goto :goto_1

    :cond_2
    move v13, v5

    move v15, v13

    const/4 v14, 0x0

    :goto_1
    if-ne v13, v8, :cond_5

    move v4, v5

    :goto_2
    if-ge v4, v10, :cond_3

    if-ge v4, v15, :cond_3

    move/from16 v16, v12

    .line 421
    aget v12, v9, v4

    aget v3, v14, v4

    if-ne v12, v3, :cond_4

    add-int/lit8 v4, v4, 0x1

    move/from16 v12, v16

    const/4 v3, 0x2

    goto :goto_2

    :cond_3
    move/from16 v16, v12

    :cond_4
    if-lez v4, :cond_7

    move v10, v4

    goto :goto_7

    :cond_5
    move/from16 v16, v12

    goto :goto_3

    :cond_6
    move/from16 v16, v12

    move v13, v5

    move v15, v13

    const/4 v14, 0x0

    :cond_7
    :goto_3
    if-ne v6, v11, :cond_8

    goto :goto_6

    :cond_8
    add-int/lit8 v3, v11, 0x1

    if-ne v6, v3, :cond_9

    add-int/lit8 v3, v7, 0x1

    .line 442
    aget-object v4, v1, v11

    aput-object v4, v1, v7

    :goto_4
    move v7, v3

    goto :goto_6

    .line 445
    :cond_9
    sget-object v3, Lcom/google/re2j/Regexp$Op;->LITERAL:Lcom/google/re2j/Regexp$Op;

    invoke-direct {v0, v3}, Lcom/google/re2j/Parser;->newRegexp(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    move-result-object v3

    .line 446
    iput v8, v3, Lcom/google/re2j/Regexp;->flags:I

    .line 447
    invoke-static {v9, v5, v10}, Lcom/google/re2j/Utils;->subarray([III)[I

    move-result-object v4

    iput-object v4, v3, Lcom/google/re2j/Regexp;->runes:[I

    move v4, v11

    :goto_5
    if-ge v4, v6, :cond_a

    .line 450
    aget-object v8, v1, v4

    invoke-direct {v0, v8, v10}, Lcom/google/re2j/Parser;->removeLeadingString(Lcom/google/re2j/Regexp;I)Lcom/google/re2j/Regexp;

    move-result-object v8

    aput-object v8, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 453
    :cond_a
    invoke-static {v1, v11, v6}, Lcom/google/re2j/Parser;->subarray([Lcom/google/re2j/Regexp;II)[Lcom/google/re2j/Regexp;

    move-result-object v4

    sget-object v8, Lcom/google/re2j/Regexp$Op;->ALTERNATE:Lcom/google/re2j/Regexp$Op;

    invoke-direct {v0, v4, v8}, Lcom/google/re2j/Parser;->collapse([Lcom/google/re2j/Regexp;Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    move-result-object v4

    .line 454
    sget-object v8, Lcom/google/re2j/Regexp$Op;->CONCAT:Lcom/google/re2j/Regexp$Op;

    invoke-direct {v0, v8}, Lcom/google/re2j/Parser;->newRegexp(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    move-result-object v8

    const/4 v9, 0x2

    .line 455
    new-array v10, v9, [Lcom/google/re2j/Regexp;

    aput-object v3, v10, v5

    aput-object v4, v10, v16

    iput-object v10, v8, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    add-int/lit8 v3, v7, 0x1

    .line 456
    aput-object v8, v1, v7

    goto :goto_4

    :goto_6
    move v11, v6

    move v8, v13

    move-object v9, v14

    move v10, v15

    :goto_7
    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x2

    goto/16 :goto_0

    :cond_b
    move/from16 v16, v12

    move v2, v5

    move v3, v2

    move v6, v3

    const/4 v4, 0x0

    :goto_8
    if-gt v2, v7, :cond_13

    if-ge v2, v7, :cond_d

    .line 484
    aget-object v8, v1, v2

    invoke-static {v8}, Lcom/google/re2j/Parser;->leadingRegexp(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;

    move-result-object v8

    if-eqz v4, :cond_e

    .line 486
    invoke-virtual {v4, v8}, Lcom/google/re2j/Regexp;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 487
    invoke-static {v4}, Lcom/google/re2j/Parser;->isCharClass(Lcom/google/re2j/Regexp;)Z

    move-result v9

    if-nez v9, :cond_c

    iget-object v9, v4, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v10, Lcom/google/re2j/Regexp$Op;->REPEAT:Lcom/google/re2j/Regexp$Op;

    if-ne v9, v10, :cond_e

    iget v9, v4, Lcom/google/re2j/Regexp;->min:I

    iget v10, v4, Lcom/google/re2j/Regexp;->max:I

    if-ne v9, v10, :cond_e

    iget-object v9, v4, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object v9, v9, v5

    .line 490
    invoke-static {v9}, Lcom/google/re2j/Parser;->isCharClass(Lcom/google/re2j/Regexp;)Z

    move-result v9

    if-eqz v9, :cond_e

    :cond_c
    const/4 v10, 0x2

    goto :goto_d

    :cond_d
    const/4 v8, 0x0

    :cond_e
    if-ne v2, v6, :cond_f

    :goto_9
    const/4 v10, 0x2

    goto :goto_c

    :cond_f
    add-int/lit8 v9, v6, 0x1

    if-ne v2, v9, :cond_10

    add-int/lit8 v4, v3, 0x1

    .line 503
    aget-object v6, v1, v6

    aput-object v6, v1, v3

    move v3, v4

    goto :goto_9

    :cond_10
    move v9, v6

    :goto_a
    if-ge v9, v2, :cond_12

    if-eq v9, v6, :cond_11

    move/from16 v10, v16

    goto :goto_b

    :cond_11
    move v10, v5

    .line 509
    :goto_b
    aget-object v11, v1, v9

    invoke-direct {v0, v11, v10}, Lcom/google/re2j/Parser;->removeLeadingRegexp(Lcom/google/re2j/Regexp;Z)Lcom/google/re2j/Regexp;

    move-result-object v10

    aput-object v10, v1, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 512
    :cond_12
    invoke-static {v1, v6, v2}, Lcom/google/re2j/Parser;->subarray([Lcom/google/re2j/Regexp;II)[Lcom/google/re2j/Regexp;

    move-result-object v6

    sget-object v9, Lcom/google/re2j/Regexp$Op;->ALTERNATE:Lcom/google/re2j/Regexp$Op;

    invoke-direct {v0, v6, v9}, Lcom/google/re2j/Parser;->collapse([Lcom/google/re2j/Regexp;Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    move-result-object v6

    .line 513
    sget-object v9, Lcom/google/re2j/Regexp$Op;->CONCAT:Lcom/google/re2j/Regexp$Op;

    invoke-direct {v0, v9}, Lcom/google/re2j/Parser;->newRegexp(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    move-result-object v9

    const/4 v10, 0x2

    .line 514
    new-array v11, v10, [Lcom/google/re2j/Regexp;

    aput-object v4, v11, v5

    aput-object v6, v11, v16

    iput-object v11, v9, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    add-int/lit8 v4, v3, 0x1

    .line 515
    aput-object v9, v1, v3

    move v3, v4

    :goto_c
    move v6, v2

    move-object v4, v8

    :goto_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_13
    move v2, v5

    move v4, v2

    move v6, v4

    :goto_e
    if-gt v2, v3, :cond_1c

    if-ge v2, v3, :cond_14

    .line 536
    aget-object v7, v1, v2

    invoke-static {v7}, Lcom/google/re2j/Parser;->isCharClass(Lcom/google/re2j/Regexp;)Z

    move-result v7

    if-eqz v7, :cond_14

    goto/16 :goto_13

    :cond_14
    if-ne v2, v6, :cond_15

    goto :goto_12

    :cond_15
    add-int/lit8 v7, v6, 0x1

    if-ne v2, v7, :cond_16

    add-int/lit8 v7, v4, 0x1

    .line 545
    aget-object v6, v1, v6

    aput-object v6, v1, v4

    :goto_f
    move v4, v7

    goto :goto_12

    :cond_16
    move v9, v6

    move v8, v7

    :goto_10
    if-ge v8, v2, :cond_19

    .line 551
    aget-object v10, v1, v9

    aget-object v11, v1, v8

    .line 552
    iget-object v12, v10, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    invoke-virtual {v12}, Lcom/google/re2j/Regexp$Op;->ordinal()I

    move-result v12

    iget-object v13, v11, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    invoke-virtual {v13}, Lcom/google/re2j/Regexp$Op;->ordinal()I

    move-result v13

    if-lt v12, v13, :cond_17

    iget-object v12, v10, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    iget-object v13, v11, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    if-ne v12, v13, :cond_18

    iget-object v10, v10, Lcom/google/re2j/Regexp;->runes:[I

    array-length v10, v10

    iget-object v11, v11, Lcom/google/re2j/Regexp;->runes:[I

    array-length v11, v11

    if-ge v10, v11, :cond_18

    :cond_17
    move v9, v8

    :cond_18
    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    .line 558
    :cond_19
    aget-object v8, v1, v6

    .line 559
    aget-object v10, v1, v9

    aput-object v10, v1, v6

    .line 560
    aput-object v8, v1, v9

    :goto_11
    if-ge v7, v2, :cond_1a

    .line 563
    aget-object v8, v1, v6

    aget-object v9, v1, v7

    invoke-static {v8, v9}, Lcom/google/re2j/Parser;->mergeCharClass(Lcom/google/re2j/Regexp;Lcom/google/re2j/Regexp;)V

    .line 564
    aget-object v8, v1, v7

    invoke-direct {v0, v8}, Lcom/google/re2j/Parser;->reuse(Lcom/google/re2j/Regexp;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    .line 566
    :cond_1a
    aget-object v7, v1, v6

    invoke-direct {v0, v7}, Lcom/google/re2j/Parser;->cleanAlt(Lcom/google/re2j/Regexp;)V

    add-int/lit8 v7, v4, 0x1

    .line 567
    aget-object v6, v1, v6

    aput-object v6, v1, v4

    goto :goto_f

    :goto_12
    if-ge v2, v3, :cond_1b

    add-int/lit8 v6, v4, 0x1

    .line 572
    aget-object v7, v1, v2

    aput-object v7, v1, v4

    move v4, v6

    :cond_1b
    add-int/lit8 v6, v2, 0x1

    :goto_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1c
    move v2, v5

    move v3, v2

    :goto_14
    if-ge v2, v4, :cond_1e

    add-int/lit8 v6, v2, 0x1

    if-ge v6, v4, :cond_1d

    .line 584
    aget-object v7, v1, v2

    iget-object v7, v7, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v8, Lcom/google/re2j/Regexp$Op;->EMPTY_MATCH:Lcom/google/re2j/Regexp$Op;

    if-ne v7, v8, :cond_1d

    add-int/lit8 v7, v2, 0x1

    aget-object v7, v1, v7

    iget-object v7, v7, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v8, Lcom/google/re2j/Regexp$Op;->EMPTY_MATCH:Lcom/google/re2j/Regexp$Op;

    if-ne v7, v8, :cond_1d

    goto :goto_15

    :cond_1d
    add-int/lit8 v7, v3, 0x1

    .line 589
    aget-object v2, v1, v2

    aput-object v2, v1, v3

    move v3, v7

    :goto_15
    move v2, v6

    goto :goto_14

    .line 595
    :cond_1e
    invoke-static {v1, v5, v3}, Lcom/google/re2j/Parser;->subarray([Lcom/google/re2j/Regexp;II)[Lcom/google/re2j/Regexp;

    move-result-object v1

    return-object v1
.end method

.method private static isCharClass(Lcom/google/re2j/Regexp;)Z
    .locals 3

    .line 1181
    iget-object v0, p0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v1, Lcom/google/re2j/Regexp$Op;->LITERAL:Lcom/google/re2j/Regexp$Op;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/re2j/Regexp;->runes:[I

    array-length v0, v0

    if-eq v0, v2, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v1, Lcom/google/re2j/Regexp$Op;->CHAR_CLASS:Lcom/google/re2j/Regexp$Op;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v1, Lcom/google/re2j/Regexp$Op;->ANY_CHAR_NOT_NL:Lcom/google/re2j/Regexp$Op;

    if-eq v0, v1, :cond_2

    iget-object p0, p0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v0, Lcom/google/re2j/Regexp$Op;->ANY_CHAR:Lcom/google/re2j/Regexp$Op;

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v2
.end method

.method private static isValidCaptureName(Ljava/lang/String;)Z
    .locals 4

    .line 1148
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 1151
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1152
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5f

    if-eq v2, v3, :cond_1

    .line 1153
    invoke-static {v2}, Lcom/google/re2j/Utils;->isalnum(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static leadingRegexp(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;
    .locals 3

    .line 642
    iget-object v0, p0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v1, Lcom/google/re2j/Regexp$Op;->EMPTY_MATCH:Lcom/google/re2j/Regexp$Op;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v1, Lcom/google/re2j/Regexp$Op;->CONCAT:Lcom/google/re2j/Regexp$Op;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 646
    iget-object p0, p0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    .line 647
    iget-object v0, p0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v1, Lcom/google/re2j/Regexp$Op;->EMPTY_MATCH:Lcom/google/re2j/Regexp$Op;

    if-ne v0, v1, :cond_1

    return-object v2

    :cond_1
    return-object p0
.end method

.method private literal(I)V
    .locals 1

    .line 211
    iget v0, p0, Lcom/google/re2j/Parser;->flags:I

    invoke-direct {p0, p1, v0}, Lcom/google/re2j/Parser;->newLiteral(II)Lcom/google/re2j/Regexp;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/re2j/Parser;->push(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;

    return-void
.end method

.method private static literalRegexp(Ljava/lang/String;I)Lcom/google/re2j/Regexp;
    .locals 2

    .line 685
    new-instance v0, Lcom/google/re2j/Regexp;

    sget-object v1, Lcom/google/re2j/Regexp$Op;->LITERAL:Lcom/google/re2j/Regexp$Op;

    invoke-direct {v0, v1}, Lcom/google/re2j/Regexp;-><init>(Lcom/google/re2j/Regexp$Op;)V

    .line 686
    iput p1, v0, Lcom/google/re2j/Regexp;->flags:I

    .line 687
    invoke-static {p0}, Lcom/google/re2j/Utils;->stringToRunes(Ljava/lang/String;)[I

    move-result-object p0

    iput-object p0, v0, Lcom/google/re2j/Regexp;->runes:[I

    return-object v0
.end method

.method private static matchRune(Lcom/google/re2j/Regexp;I)Z
    .locals 5

    .line 1189
    sget-object v0, Lcom/google/re2j/Parser$1;->$SwitchMap$com$google$re2j$Regexp$Op:[I

    iget-object v1, p0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    invoke-virtual {v1}, Lcom/google/re2j/Regexp$Op;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 p0, 0x3

    if-eq v0, p0, :cond_1

    const/4 p0, 0x4

    if-eq v0, p0, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    const/16 p0, 0xa

    if-eq p1, p0, :cond_2

    return v2

    :cond_2
    return v1

    :cond_3
    move v0, v1

    .line 1193
    :goto_0
    iget-object v3, p0, Lcom/google/re2j/Regexp;->runes:[I

    array-length v3, v3

    if-ge v0, v3, :cond_5

    .line 1194
    iget-object v3, p0, Lcom/google/re2j/Regexp;->runes:[I

    aget v3, v3, v0

    if-gt v3, p1, :cond_4

    iget-object v3, p0, Lcom/google/re2j/Regexp;->runes:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    if-gt p1, v3, :cond_4

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_5
    return v1

    .line 1191
    :cond_6
    iget-object v0, p0, Lcom/google/re2j/Regexp;->runes:[I

    array-length v0, v0

    if-ne v0, v2, :cond_7

    iget-object p0, p0, Lcom/google/re2j/Regexp;->runes:[I

    aget p0, p0, v1

    if-ne p0, p1, :cond_7

    return v2

    :cond_7
    return v1
.end method

.method private maybeConcat(II)Z
    .locals 6

    .line 155
    iget-object v0, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    invoke-virtual {v0}, Lcom/google/re2j/Parser$Stack;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    .line 159
    :cond_0
    iget-object v3, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Lcom/google/re2j/Parser$Stack;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/re2j/Regexp;

    .line 160
    iget-object v4, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    sub-int/2addr v0, v2

    invoke-virtual {v4, v0}, Lcom/google/re2j/Parser$Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/re2j/Regexp;

    .line 161
    iget-object v2, v3, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v4, Lcom/google/re2j/Regexp$Op;->LITERAL:Lcom/google/re2j/Regexp$Op;

    if-ne v2, v4, :cond_3

    iget-object v2, v0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v4, Lcom/google/re2j/Regexp$Op;->LITERAL:Lcom/google/re2j/Regexp$Op;

    if-ne v2, v4, :cond_3

    iget v2, v3, Lcom/google/re2j/Regexp;->flags:I

    const/4 v4, 0x1

    and-int/2addr v2, v4

    iget v5, v0, Lcom/google/re2j/Regexp;->flags:I

    and-int/2addr v5, v4

    if-eq v2, v5, :cond_1

    goto :goto_0

    .line 168
    :cond_1
    iget-object v2, v0, Lcom/google/re2j/Regexp;->runes:[I

    iget-object v5, v3, Lcom/google/re2j/Regexp;->runes:[I

    invoke-static {v2, v5}, Lcom/google/re2j/Parser;->concatRunes([I[I)[I

    move-result-object v2

    iput-object v2, v0, Lcom/google/re2j/Regexp;->runes:[I

    if-ltz p1, :cond_2

    .line 172
    filled-new-array {p1}, [I

    move-result-object p1

    iput-object p1, v3, Lcom/google/re2j/Regexp;->runes:[I

    .line 173
    iput p2, v3, Lcom/google/re2j/Regexp;->flags:I

    return v4

    .line 177
    :cond_2
    invoke-direct {p0}, Lcom/google/re2j/Parser;->pop()Lcom/google/re2j/Regexp;

    .line 178
    invoke-direct {p0, v3}, Lcom/google/re2j/Parser;->reuse(Lcom/google/re2j/Regexp;)V

    :cond_3
    :goto_0
    return v1
.end method

.method private static mergeCharClass(Lcom/google/re2j/Regexp;Lcom/google/re2j/Regexp;)V
    .locals 4

    .line 1224
    sget-object v0, Lcom/google/re2j/Parser$1;->$SwitchMap$com$google$re2j$Regexp$Op:[I

    iget-object v1, p0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    invoke-virtual {v1}, Lcom/google/re2j/Regexp$Op;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    .line 1230
    invoke-static {p1, v0}, Lcom/google/re2j/Parser;->matchRune(Lcom/google/re2j/Regexp;I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1231
    sget-object p1, Lcom/google/re2j/Regexp$Op;->ANY_CHAR:Lcom/google/re2j/Regexp$Op;

    iput-object p1, p0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    return-void

    .line 1236
    :cond_1
    iget-object v0, p1, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v1, Lcom/google/re2j/Regexp$Op;->LITERAL:Lcom/google/re2j/Regexp$Op;

    if-ne v0, v1, :cond_2

    .line 1237
    new-instance v0, Lcom/google/re2j/CharClass;

    iget-object v1, p0, Lcom/google/re2j/Regexp;->runes:[I

    invoke-direct {v0, v1}, Lcom/google/re2j/CharClass;-><init>([I)V

    iget-object v1, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v1, v1, v2

    iget p1, p1, Lcom/google/re2j/Regexp;->flags:I

    invoke-virtual {v0, v1, p1}, Lcom/google/re2j/CharClass;->appendLiteral(II)Lcom/google/re2j/CharClass;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/re2j/CharClass;->toArray()[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/re2j/Regexp;->runes:[I

    return-void

    .line 1239
    :cond_2
    new-instance v0, Lcom/google/re2j/CharClass;

    iget-object v1, p0, Lcom/google/re2j/Regexp;->runes:[I

    invoke-direct {v0, v1}, Lcom/google/re2j/CharClass;-><init>([I)V

    iget-object p1, p1, Lcom/google/re2j/Regexp;->runes:[I

    invoke-virtual {v0, p1}, Lcom/google/re2j/CharClass;->appendClass([I)Lcom/google/re2j/CharClass;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/re2j/CharClass;->toArray()[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/re2j/Regexp;->runes:[I

    return-void

    .line 1244
    :cond_3
    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v0, v0, v2

    iget-object v1, p0, Lcom/google/re2j/Regexp;->runes:[I

    aget v1, v1, v2

    if-ne v0, v1, :cond_5

    iget v0, p1, Lcom/google/re2j/Regexp;->flags:I

    iget v1, p0, Lcom/google/re2j/Regexp;->flags:I

    if-ne v0, v1, :cond_5

    :cond_4
    :goto_0
    return-void

    .line 1247
    :cond_5
    sget-object v0, Lcom/google/re2j/Regexp$Op;->CHAR_CLASS:Lcom/google/re2j/Regexp$Op;

    iput-object v0, p0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    .line 1248
    new-instance v0, Lcom/google/re2j/CharClass;

    invoke-direct {v0}, Lcom/google/re2j/CharClass;-><init>()V

    iget-object v1, p0, Lcom/google/re2j/Regexp;->runes:[I

    aget v1, v1, v2

    iget v3, p0, Lcom/google/re2j/Regexp;->flags:I

    .line 1250
    invoke-virtual {v0, v1, v3}, Lcom/google/re2j/CharClass;->appendLiteral(II)Lcom/google/re2j/CharClass;

    move-result-object v0

    iget-object v1, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v1, v1, v2

    iget p1, p1, Lcom/google/re2j/Regexp;->flags:I

    .line 1251
    invoke-virtual {v0, v1, p1}, Lcom/google/re2j/CharClass;->appendLiteral(II)Lcom/google/re2j/CharClass;

    move-result-object p1

    .line 1252
    invoke-virtual {p1}, Lcom/google/re2j/CharClass;->toArray()[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/re2j/Regexp;->runes:[I

    return-void
.end method

.method private static minFoldRune(I)I
    .locals 2

    const/16 v0, 0x41

    if-lt p0, v0, :cond_3

    const v0, 0x1044f

    if-le p0, v0, :cond_0

    goto :goto_1

    .line 200
    :cond_0
    invoke-static {p0}, Lcom/google/re2j/Unicode;->simpleFold(I)I

    move-result v0

    move v1, p0

    :goto_0
    if-eq v0, p0, :cond_2

    if-le v1, v0, :cond_1

    move v1, v0

    :cond_1
    invoke-static {v0}, Lcom/google/re2j/Unicode;->simpleFold(I)I

    move-result v0

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_1
    return p0
.end method

.method private newLiteral(II)Lcom/google/re2j/Regexp;
    .locals 1

    .line 184
    sget-object v0, Lcom/google/re2j/Regexp$Op;->LITERAL:Lcom/google/re2j/Regexp$Op;

    invoke-direct {p0, v0}, Lcom/google/re2j/Parser;->newRegexp(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    move-result-object v0

    .line 185
    iput p2, v0, Lcom/google/re2j/Regexp;->flags:I

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 187
    invoke-static {p1}, Lcom/google/re2j/Parser;->minFoldRune(I)I

    move-result p1

    .line 189
    :cond_0
    filled-new-array {p1}, [I

    move-result-object p1

    iput-object p1, v0, Lcom/google/re2j/Regexp;->runes:[I

    return-object v0
.end method

.method private newRegexp(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/google/re2j/Parser;->free:Lcom/google/re2j/Regexp;

    if-eqz v0, :cond_0

    .line 72
    iget-object v1, v0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 73
    iget-object v1, v0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/google/re2j/Parser;->free:Lcom/google/re2j/Regexp;

    .line 74
    invoke-virtual {v0}, Lcom/google/re2j/Regexp;->reinit()V

    .line 75
    iput-object p1, v0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    return-object v0

    .line 77
    :cond_0
    new-instance v0, Lcom/google/re2j/Regexp;

    invoke-direct {v0, p1}, Lcom/google/re2j/Regexp;-><init>(Lcom/google/re2j/Regexp$Op;)V

    return-object v0
.end method

.method private op(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;
    .locals 1

    .line 217
    invoke-direct {p0, p1}, Lcom/google/re2j/Parser;->newRegexp(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    move-result-object p1

    .line 218
    iget v0, p0, Lcom/google/re2j/Parser;->flags:I

    iput v0, p1, Lcom/google/re2j/Regexp;->flags:I

    .line 219
    invoke-direct {p0, p1}, Lcom/google/re2j/Parser;->push(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;

    move-result-object p1

    return-object p1
.end method

.method static parse(Ljava/lang/String;I)Lcom/google/re2j/Regexp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/re2j/PatternSyntaxException;
        }
    .end annotation

    .line 788
    new-instance v0, Lcom/google/re2j/Parser;

    invoke-direct {v0, p0, p1}, Lcom/google/re2j/Parser;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0}, Lcom/google/re2j/Parser;->parseInternal()Lcom/google/re2j/Regexp;

    move-result-object p0

    return-object p0
.end method

.method private parseClass(Lcom/google/re2j/Parser$StringIterator;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/re2j/PatternSyntaxException;
        }
    .end annotation

    .line 1612
    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->pos()I

    move-result v0

    const/4 v1, 0x1

    .line 1613
    invoke-virtual {p1, v1}, Lcom/google/re2j/Parser$StringIterator;->skip(I)V

    .line 1614
    sget-object v2, Lcom/google/re2j/Regexp$Op;->CHAR_CLASS:Lcom/google/re2j/Regexp$Op;

    invoke-direct {p0, v2}, Lcom/google/re2j/Parser;->newRegexp(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    move-result-object v2

    .line 1615
    iget v3, p0, Lcom/google/re2j/Parser;->flags:I

    iput v3, v2, Lcom/google/re2j/Regexp;->flags:I

    .line 1616
    new-instance v3, Lcom/google/re2j/CharClass;

    invoke-direct {v3}, Lcom/google/re2j/CharClass;-><init>()V

    .line 1619
    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->more()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_1

    const/16 v4, 0x5e

    invoke-virtual {p1, v4}, Lcom/google/re2j/Parser$StringIterator;->lookingAt(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1621
    invoke-virtual {p1, v1}, Lcom/google/re2j/Parser$StringIterator;->skip(I)V

    .line 1625
    iget v4, p0, Lcom/google/re2j/Parser;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_0

    const/16 v4, 0xa

    .line 1626
    invoke-virtual {v3, v4, v4}, Lcom/google/re2j/CharClass;->appendRange(II)Lcom/google/re2j/CharClass;

    :cond_0
    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    move v6, v1

    .line 1631
    :goto_1
    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->more()Z

    move-result v7

    const/16 v8, 0x5d

    if-eqz v7, :cond_4

    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->peek()I

    move-result v7

    if-ne v7, v8, :cond_4

    if-eqz v6, :cond_2

    goto :goto_2

    .line 1685
    :cond_2
    invoke-virtual {p1, v1}, Lcom/google/re2j/Parser$StringIterator;->skip(I)V

    .line 1687
    invoke-virtual {v3}, Lcom/google/re2j/CharClass;->cleanClass()Lcom/google/re2j/CharClass;

    if-gez v4, :cond_3

    .line 1689
    invoke-virtual {v3}, Lcom/google/re2j/CharClass;->negateClass()Lcom/google/re2j/CharClass;

    .line 1691
    :cond_3
    invoke-virtual {v3}, Lcom/google/re2j/CharClass;->toArray()[I

    move-result-object p1

    iput-object p1, v2, Lcom/google/re2j/Regexp;->runes:[I

    .line 1692
    invoke-direct {p0, v2}, Lcom/google/re2j/Parser;->push(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;

    return-void

    .line 1634
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->more()Z

    move-result v7

    const-string v9, "invalid character class range"

    const/16 v10, 0x2d

    if-eqz v7, :cond_6

    invoke-virtual {p1, v10}, Lcom/google/re2j/Parser$StringIterator;->lookingAt(C)Z

    move-result v7

    if-eqz v7, :cond_6

    iget v7, p0, Lcom/google/re2j/Parser;->flags:I

    and-int/lit8 v7, v7, 0x40

    if-nez v7, :cond_6

    if-nez v6, :cond_6

    .line 1635
    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->rest()Ljava/lang/String;

    move-result-object v6

    .line 1636
    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "-]"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_3

    .line 1637
    :cond_5
    invoke-virtual {p1, v0}, Lcom/google/re2j/Parser$StringIterator;->rewindTo(I)V

    .line 1638
    new-instance v0, Lcom/google/re2j/PatternSyntaxException;

    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->rest()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v9, p1}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1643
    :cond_6
    :goto_3
    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->pos()I

    move-result v6

    .line 1646
    const-string v7, "[:"

    invoke-virtual {p1, v7}, Lcom/google/re2j/Parser$StringIterator;->lookingAt(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1647
    invoke-direct {p0, p1, v3}, Lcom/google/re2j/Parser;->parseNamedClass(Lcom/google/re2j/Parser$StringIterator;Lcom/google/re2j/CharClass;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_6

    .line 1650
    :cond_7
    invoke-virtual {p1, v6}, Lcom/google/re2j/Parser$StringIterator;->rewindTo(I)V

    .line 1654
    :cond_8
    invoke-direct {p0, p1, v3}, Lcom/google/re2j/Parser;->parseUnicodeClass(Lcom/google/re2j/Parser$StringIterator;Lcom/google/re2j/CharClass;)Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_6

    .line 1659
    :cond_9
    invoke-direct {p0, p1, v3}, Lcom/google/re2j/Parser;->parsePerlClassEscape(Lcom/google/re2j/Parser$StringIterator;Lcom/google/re2j/CharClass;)Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_6

    .line 1662
    :cond_a
    invoke-virtual {p1, v6}, Lcom/google/re2j/Parser$StringIterator;->rewindTo(I)V

    .line 1665
    invoke-static {p1, v0}, Lcom/google/re2j/Parser;->parseClassChar(Lcom/google/re2j/Parser$StringIterator;I)I

    move-result v7

    .line 1667
    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->more()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-virtual {p1, v10}, Lcom/google/re2j/Parser$StringIterator;->lookingAt(C)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1668
    invoke-virtual {p1, v1}, Lcom/google/re2j/Parser$StringIterator;->skip(I)V

    .line 1669
    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->more()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-virtual {p1, v8}, Lcom/google/re2j/Parser$StringIterator;->lookingAt(C)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1671
    invoke-virtual {p1, v5}, Lcom/google/re2j/Parser$StringIterator;->skip(I)V

    goto :goto_4

    .line 1673
    :cond_b
    invoke-static {p1, v0}, Lcom/google/re2j/Parser;->parseClassChar(Lcom/google/re2j/Parser$StringIterator;I)I

    move-result v8

    if-lt v8, v7, :cond_c

    goto :goto_5

    .line 1675
    :cond_c
    new-instance v0, Lcom/google/re2j/PatternSyntaxException;

    invoke-virtual {p1, v6}, Lcom/google/re2j/Parser$StringIterator;->from(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v9, p1}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_4
    move v8, v7

    .line 1679
    :goto_5
    iget v6, p0, Lcom/google/re2j/Parser;->flags:I

    and-int/2addr v6, v1

    if-nez v6, :cond_e

    .line 1680
    invoke-virtual {v3, v7, v8}, Lcom/google/re2j/CharClass;->appendRange(II)Lcom/google/re2j/CharClass;

    goto :goto_6

    .line 1682
    :cond_e
    invoke-virtual {v3, v7, v8}, Lcom/google/re2j/CharClass;->appendFoldedRange(II)Lcom/google/re2j/CharClass;

    :goto_6
    const/4 v6, 0x0

    goto/16 :goto_1
.end method

.method private static parseClassChar(Lcom/google/re2j/Parser$StringIterator;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/re2j/PatternSyntaxException;
        }
    .end annotation

    .line 1453
    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->more()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0x5c

    .line 1459
    invoke-virtual {p0, p1}, Lcom/google/re2j/Parser$StringIterator;->lookingAt(C)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1460
    invoke-static {p0}, Lcom/google/re2j/Parser;->parseEscape(Lcom/google/re2j/Parser$StringIterator;)I

    move-result p0

    return p0

    .line 1463
    :cond_0
    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->pop()I

    move-result p0

    return p0

    .line 1454
    :cond_1
    new-instance v0, Lcom/google/re2j/PatternSyntaxException;

    const-string v1, "missing closing ]"

    invoke-virtual {p0, p1}, Lcom/google/re2j/Parser$StringIterator;->from(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private static parseEscape(Lcom/google/re2j/Parser$StringIterator;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/re2j/PatternSyntaxException;
        }
    .end annotation

    .line 1334
    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->pos()I

    move-result v0

    const/4 v1, 0x1

    .line 1335
    invoke-virtual {p0, v1}, Lcom/google/re2j/Parser$StringIterator;->skip(I)V

    .line 1336
    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->more()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1339
    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->pop()I

    move-result v2

    const/16 v3, 0x61

    if-eq v2, v3, :cond_b

    const/16 v3, 0x66

    if-eq v2, v3, :cond_a

    const/16 v3, 0x6e

    if-eq v2, v3, :cond_9

    const/16 v3, 0x72

    if-eq v2, v3, :cond_8

    const/16 v3, 0x74

    if-eq v2, v3, :cond_7

    const/16 v3, 0x76

    if-eq v2, v3, :cond_6

    const/16 v3, 0x78

    if-eq v2, v3, :cond_2

    const/16 v3, 0x37

    const/16 v4, 0x30

    packed-switch v2, :pswitch_data_0

    .line 1343
    invoke-static {v2}, Lcom/google/re2j/Utils;->isalnum(I)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 1361
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->more()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->peek()I

    move-result v5

    if-lt v5, v4, :cond_5

    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->peek()I

    move-result v5

    if-gt v5, v3, :cond_5

    :pswitch_1
    sub-int/2addr v2, v4

    move v0, v1

    :goto_0
    const/4 v5, 0x3

    if-ge v0, v5, :cond_1

    .line 1369
    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->more()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->peek()I

    move-result v5

    if-lt v5, v4, :cond_1

    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->peek()I

    move-result v5

    if-le v5, v3, :cond_0

    goto :goto_1

    :cond_0
    mul-int/lit8 v2, v2, 0x8

    .line 1372
    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->peek()I

    move-result v5

    add-int/2addr v2, v5

    sub-int/2addr v2, v4

    .line 1373
    invoke-virtual {p0, v1}, Lcom/google/re2j/Parser$StringIterator;->skip(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v2

    .line 1379
    :cond_2
    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->more()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1382
    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->pop()I

    move-result v1

    const/16 v2, 0x7b

    if-ne v1, v2, :cond_4

    const/4 v1, 0x0

    move v2, v1

    .line 1391
    :goto_2
    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->more()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1394
    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->pop()I

    move-result v3

    const/16 v4, 0x7d

    if-ne v3, v4, :cond_3

    if-eqz v2, :cond_5

    return v1

    .line 1398
    :cond_3
    invoke-static {v3}, Lcom/google/re2j/Utils;->unhex(I)I

    move-result v3

    if-ltz v3, :cond_5

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v1, v3

    const v3, 0x10ffff

    if-gt v1, v3, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1415
    :cond_4
    invoke-static {v1}, Lcom/google/re2j/Utils;->unhex(I)I

    move-result v1

    .line 1416
    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->more()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1419
    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->pop()I

    move-result v2

    .line 1420
    invoke-static {v2}, Lcom/google/re2j/Utils;->unhex(I)I

    move-result v2

    if-ltz v1, :cond_5

    if-ltz v2, :cond_5

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v1, v2

    return v1

    .line 1445
    :cond_5
    new-instance v1, Lcom/google/re2j/PatternSyntaxException;

    const-string v2, "invalid escape sequence"

    invoke-virtual {p0, v0}, Lcom/google/re2j/Parser$StringIterator;->from(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_6
    const/16 p0, 0xb

    return p0

    :cond_7
    const/16 p0, 0x9

    return p0

    :cond_8
    const/16 p0, 0xd

    return p0

    :cond_9
    const/16 p0, 0xa

    return p0

    :cond_a
    const/16 p0, 0xc

    return p0

    :cond_b
    const/4 p0, 0x7

    return p0

    .line 1337
    :cond_c
    new-instance p0, Lcom/google/re2j/PatternSyntaxException;

    const-string v0, "trailing backslash at end of expression"

    invoke-direct {p0, v0}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static parseInt(Lcom/google/re2j/Parser$StringIterator;)I
    .locals 5

    .line 1163
    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->pos()I

    move-result v0

    .line 1165
    :goto_0
    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->more()Z

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x30

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->peek()I

    move-result v1

    if-lt v1, v3, :cond_0

    const/16 v4, 0x39

    if-gt v1, v4, :cond_0

    .line 1166
    invoke-virtual {p0, v2}, Lcom/google/re2j/Parser$StringIterator;->skip(I)V

    goto :goto_0

    .line 1168
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/re2j/Parser$StringIterator;->from(I)Ljava/lang/String;

    move-result-object p0

    .line 1169
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_1

    goto :goto_1

    .line 1172
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_2

    const/4 p0, -0x2

    return p0

    :cond_2
    const/16 v0, 0xa

    .line 1175
    invoke-static {p0, v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_3
    :goto_1
    const/4 p0, -0x1

    return p0
.end method

.method private parseInternal()Lcom/google/re2j/Regexp;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/re2j/PatternSyntaxException;
        }
    .end annotation

    .line 792
    iget v0, p0, Lcom/google/re2j/Parser;->flags:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    .line 794
    iget-object v1, p0, Lcom/google/re2j/Parser;->wholeRegexp:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/re2j/Parser;->literalRegexp(Ljava/lang/String;I)Lcom/google/re2j/Regexp;

    move-result-object v0

    return-object v0

    .line 799
    :cond_0
    new-instance v6, Lcom/google/re2j/Parser$StringIterator;

    iget-object v0, p0, Lcom/google/re2j/Parser;->wholeRegexp:Ljava/lang/String;

    invoke-direct {v6, v0}, Lcom/google/re2j/Parser$StringIterator;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    move v3, v0

    move v4, v3

    move v7, v4

    .line 800
    :goto_0
    invoke-virtual {v6}, Lcom/google/re2j/Parser$StringIterator;->more()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_1a

    .line 803
    invoke-virtual {v6}, Lcom/google/re2j/Parser$StringIterator;->peek()I

    move-result v1

    const/16 v8, 0x24

    if-eq v1, v8, :cond_17

    const/16 v8, 0x2e

    if-eq v1, v8, :cond_15

    const/16 v8, 0x3f

    if-eq v1, v8, :cond_1

    const/16 v9, 0x5e

    if-eq v1, v9, :cond_10

    const/16 v9, 0x5b

    if-eq v1, v9, :cond_f

    const/16 v9, 0x5c

    if-eq v1, v9, :cond_6

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_4

    const/16 v2, 0x7c

    if-eq v1, v2, :cond_3

    packed-switch v1, :pswitch_data_0

    .line 805
    invoke-virtual {v6}, Lcom/google/re2j/Parser$StringIterator;->pop()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/re2j/Parser;->literal(I)V

    goto :goto_1

    :cond_1
    :pswitch_0
    move-object v1, p0

    goto/16 :goto_5

    .line 824
    :pswitch_1
    invoke-direct {p0}, Lcom/google/re2j/Parser;->parseRightParen()V

    .line 825
    invoke-virtual {v6, v5}, Lcom/google/re2j/Parser$StringIterator;->skip(I)V

    :goto_1
    move-object v1, p0

    goto/16 :goto_a

    .line 809
    :pswitch_2
    iget v1, p0, Lcom/google/re2j/Parser;->flags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_2

    const-string v1, "(?"

    invoke-virtual {v6, v1}, Lcom/google/re2j/Parser$StringIterator;->lookingAt(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 811
    invoke-direct {p0, v6}, Lcom/google/re2j/Parser;->parsePerlFlags(Lcom/google/re2j/Parser$StringIterator;)V

    goto :goto_1

    .line 814
    :cond_2
    sget-object v1, Lcom/google/re2j/Regexp$Op;->LEFT_PAREN:Lcom/google/re2j/Regexp$Op;

    invoke-direct {p0, v1}, Lcom/google/re2j/Parser;->op(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    move-result-object v1

    iget v2, p0, Lcom/google/re2j/Parser;->numCap:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/google/re2j/Parser;->numCap:I

    iput v2, v1, Lcom/google/re2j/Regexp;->cap:I

    .line 815
    invoke-virtual {v6, v5}, Lcom/google/re2j/Parser$StringIterator;->skip(I)V

    goto :goto_1

    .line 819
    :cond_3
    invoke-direct {p0}, Lcom/google/re2j/Parser;->parseVerticalBar()V

    .line 820
    invoke-virtual {v6, v5}, Lcom/google/re2j/Parser$StringIterator;->skip(I)V

    goto :goto_1

    .line 882
    :cond_4
    invoke-virtual {v6}, Lcom/google/re2j/Parser$StringIterator;->pos()I

    move-result v5

    .line 883
    invoke-static {v6}, Lcom/google/re2j/Parser;->parseRepeat(Lcom/google/re2j/Parser$StringIterator;)I

    move-result v1

    if-gez v1, :cond_5

    .line 886
    invoke-virtual {v6, v5}, Lcom/google/re2j/Parser$StringIterator;->rewindTo(I)V

    .line 887
    invoke-virtual {v6}, Lcom/google/re2j/Parser$StringIterator;->pop()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/re2j/Parser;->literal(I)V

    move-object v1, p0

    goto/16 :goto_7

    :cond_5
    shr-int/lit8 v3, v1, 0x10

    const v2, 0xffff

    and-int/2addr v1, v2

    int-to-short v4, v1

    .line 892
    sget-object v2, Lcom/google/re2j/Regexp$Op;->REPEAT:Lcom/google/re2j/Regexp$Op;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/re2j/Parser;->repeat(Lcom/google/re2j/Regexp$Op;IIILcom/google/re2j/Parser$StringIterator;I)V

    goto/16 :goto_7

    :cond_6
    move-object v1, p0

    .line 898
    invoke-virtual {v6}, Lcom/google/re2j/Parser$StringIterator;->pos()I

    move-result v7

    .line 899
    invoke-virtual {v6, v5}, Lcom/google/re2j/Parser$StringIterator;->skip(I)V

    .line 900
    iget v5, v1, Lcom/google/re2j/Parser;->flags:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_b

    invoke-virtual {v6}, Lcom/google/re2j/Parser$StringIterator;->more()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 901
    invoke-virtual {v6}, Lcom/google/re2j/Parser$StringIterator;->pop()I

    move-result v5

    const/16 v8, 0x51

    if-eq v5, v8, :cond_9

    const/16 v2, 0x62

    if-eq v5, v2, :cond_8

    const/16 v2, 0x7a

    if-eq v5, v2, :cond_7

    packed-switch v5, :pswitch_data_1

    .line 934
    invoke-virtual {v6, v7}, Lcom/google/re2j/Parser$StringIterator;->rewindTo(I)V

    goto :goto_3

    .line 914
    :pswitch_3
    new-instance v0, Lcom/google/re2j/PatternSyntaxException;

    const-string v2, "invalid escape sequence"

    const-string v3, "\\C"

    invoke-direct {v0, v2, v3}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 910
    :pswitch_4
    sget-object v2, Lcom/google/re2j/Regexp$Op;->NO_WORD_BOUNDARY:Lcom/google/re2j/Regexp$Op;

    invoke-direct {p0, v2}, Lcom/google/re2j/Parser;->op(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    goto/16 :goto_a

    .line 904
    :pswitch_5
    sget-object v2, Lcom/google/re2j/Regexp$Op;->BEGIN_TEXT:Lcom/google/re2j/Regexp$Op;

    invoke-direct {p0, v2}, Lcom/google/re2j/Parser;->op(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    goto/16 :goto_a

    .line 931
    :cond_7
    sget-object v2, Lcom/google/re2j/Regexp$Op;->END_TEXT:Lcom/google/re2j/Regexp$Op;

    invoke-direct {p0, v2}, Lcom/google/re2j/Parser;->op(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    goto/16 :goto_a

    .line 907
    :cond_8
    sget-object v2, Lcom/google/re2j/Regexp$Op;->WORD_BOUNDARY:Lcom/google/re2j/Regexp$Op;

    invoke-direct {p0, v2}, Lcom/google/re2j/Parser;->op(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    goto/16 :goto_a

    .line 918
    :cond_9
    invoke-virtual {v6}, Lcom/google/re2j/Parser$StringIterator;->rest()Ljava/lang/String;

    move-result-object v5

    .line 919
    const-string v7, "\\E"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_a

    .line 921
    invoke-virtual {v5, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 923
    :cond_a
    invoke-virtual {v6, v5}, Lcom/google/re2j/Parser$StringIterator;->skipString(Ljava/lang/String;)V

    .line 924
    invoke-virtual {v6, v7}, Lcom/google/re2j/Parser$StringIterator;->skipString(Ljava/lang/String;)V

    .line 925
    :goto_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_19

    .line 926
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-direct {p0, v7}, Lcom/google/re2j/Parser;->literal(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 939
    :cond_b
    :goto_3
    sget-object v2, Lcom/google/re2j/Regexp$Op;->CHAR_CLASS:Lcom/google/re2j/Regexp$Op;

    invoke-direct {p0, v2}, Lcom/google/re2j/Parser;->newRegexp(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    move-result-object v2

    .line 940
    iget v5, v1, Lcom/google/re2j/Parser;->flags:I

    iput v5, v2, Lcom/google/re2j/Regexp;->flags:I

    .line 943
    const-string v5, "\\p"

    invoke-virtual {v6, v5}, Lcom/google/re2j/Parser$StringIterator;->lookingAt(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "\\P"

    invoke-virtual {v6, v5}, Lcom/google/re2j/Parser$StringIterator;->lookingAt(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 944
    :cond_c
    new-instance v5, Lcom/google/re2j/CharClass;

    invoke-direct {v5}, Lcom/google/re2j/CharClass;-><init>()V

    .line 945
    invoke-direct {p0, v6, v5}, Lcom/google/re2j/Parser;->parseUnicodeClass(Lcom/google/re2j/Parser$StringIterator;Lcom/google/re2j/CharClass;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 946
    invoke-virtual {v5}, Lcom/google/re2j/CharClass;->toArray()[I

    move-result-object v5

    iput-object v5, v2, Lcom/google/re2j/Regexp;->runes:[I

    .line 947
    invoke-direct {p0, v2}, Lcom/google/re2j/Parser;->push(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;

    goto/16 :goto_a

    .line 953
    :cond_d
    new-instance v5, Lcom/google/re2j/CharClass;

    invoke-direct {v5}, Lcom/google/re2j/CharClass;-><init>()V

    .line 954
    invoke-direct {p0, v6, v5}, Lcom/google/re2j/Parser;->parsePerlClassEscape(Lcom/google/re2j/Parser$StringIterator;Lcom/google/re2j/CharClass;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 955
    invoke-virtual {v5}, Lcom/google/re2j/CharClass;->toArray()[I

    move-result-object v5

    iput-object v5, v2, Lcom/google/re2j/Regexp;->runes:[I

    .line 956
    invoke-direct {p0, v2}, Lcom/google/re2j/Parser;->push(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;

    goto/16 :goto_a

    .line 960
    :cond_e
    invoke-virtual {v6, v7}, Lcom/google/re2j/Parser$StringIterator;->rewindTo(I)V

    .line 961
    invoke-direct {p0, v2}, Lcom/google/re2j/Parser;->reuse(Lcom/google/re2j/Regexp;)V

    .line 964
    invoke-static {v6}, Lcom/google/re2j/Parser;->parseEscape(Lcom/google/re2j/Parser$StringIterator;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/re2j/Parser;->literal(I)V

    goto/16 :goto_a

    :cond_f
    move-object v1, p0

    .line 856
    invoke-direct {p0, v6}, Lcom/google/re2j/Parser;->parseClass(Lcom/google/re2j/Parser$StringIterator;)V

    goto/16 :goto_a

    :cond_10
    move-object v1, p0

    .line 829
    iget v2, v1, Lcom/google/re2j/Parser;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_11

    .line 830
    sget-object v2, Lcom/google/re2j/Regexp$Op;->BEGIN_TEXT:Lcom/google/re2j/Regexp$Op;

    invoke-direct {p0, v2}, Lcom/google/re2j/Parser;->op(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    goto :goto_4

    .line 832
    :cond_11
    sget-object v2, Lcom/google/re2j/Regexp$Op;->BEGIN_LINE:Lcom/google/re2j/Regexp$Op;

    invoke-direct {p0, v2}, Lcom/google/re2j/Parser;->op(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    .line 834
    :goto_4
    invoke-virtual {v6, v5}, Lcom/google/re2j/Parser$StringIterator;->skip(I)V

    goto :goto_a

    .line 863
    :goto_5
    invoke-virtual {v6}, Lcom/google/re2j/Parser$StringIterator;->pos()I

    move-result v5

    .line 865
    invoke-virtual {v6}, Lcom/google/re2j/Parser$StringIterator;->pop()I

    move-result v2

    const/16 v9, 0x2a

    if-eq v2, v9, :cond_14

    const/16 v9, 0x2b

    if-eq v2, v9, :cond_13

    if-eq v2, v8, :cond_12

    const/4 v2, 0x0

    goto :goto_6

    .line 873
    :cond_12
    sget-object v2, Lcom/google/re2j/Regexp$Op;->QUEST:Lcom/google/re2j/Regexp$Op;

    goto :goto_6

    .line 870
    :cond_13
    sget-object v2, Lcom/google/re2j/Regexp$Op;->PLUS:Lcom/google/re2j/Regexp$Op;

    goto :goto_6

    .line 867
    :cond_14
    sget-object v2, Lcom/google/re2j/Regexp$Op;->STAR:Lcom/google/re2j/Regexp$Op;

    .line 876
    :goto_6
    invoke-direct/range {v1 .. v7}, Lcom/google/re2j/Parser;->repeat(Lcom/google/re2j/Regexp$Op;IIILcom/google/re2j/Parser$StringIterator;I)V

    :goto_7
    move v7, v5

    goto/16 :goto_0

    :cond_15
    move-object v1, p0

    .line 847
    iget v2, v1, Lcom/google/re2j/Parser;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_16

    .line 848
    sget-object v2, Lcom/google/re2j/Regexp$Op;->ANY_CHAR:Lcom/google/re2j/Regexp$Op;

    invoke-direct {p0, v2}, Lcom/google/re2j/Parser;->op(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    goto :goto_8

    .line 850
    :cond_16
    sget-object v2, Lcom/google/re2j/Regexp$Op;->ANY_CHAR_NOT_NL:Lcom/google/re2j/Regexp$Op;

    invoke-direct {p0, v2}, Lcom/google/re2j/Parser;->op(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    .line 852
    :goto_8
    invoke-virtual {v6, v5}, Lcom/google/re2j/Parser$StringIterator;->skip(I)V

    goto :goto_a

    :cond_17
    move-object v1, p0

    .line 838
    iget v2, v1, Lcom/google/re2j/Parser;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_18

    .line 839
    sget-object v2, Lcom/google/re2j/Regexp$Op;->END_TEXT:Lcom/google/re2j/Regexp$Op;

    invoke-direct {p0, v2}, Lcom/google/re2j/Parser;->op(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    move-result-object v2

    iget v7, v2, Lcom/google/re2j/Regexp;->flags:I

    or-int/lit16 v7, v7, 0x100

    iput v7, v2, Lcom/google/re2j/Regexp;->flags:I

    goto :goto_9

    .line 841
    :cond_18
    sget-object v2, Lcom/google/re2j/Regexp$Op;->END_LINE:Lcom/google/re2j/Regexp$Op;

    invoke-direct {p0, v2}, Lcom/google/re2j/Parser;->op(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    .line 843
    :goto_9
    invoke-virtual {v6, v5}, Lcom/google/re2j/Parser$StringIterator;->skip(I)V

    :cond_19
    :goto_a
    move v7, v0

    goto/16 :goto_0

    :cond_1a
    move-object v1, p0

    .line 971
    invoke-direct {p0}, Lcom/google/re2j/Parser;->concat()Lcom/google/re2j/Regexp;

    .line 972
    invoke-direct {p0}, Lcom/google/re2j/Parser;->swapVerticalBar()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 973
    invoke-direct {p0}, Lcom/google/re2j/Parser;->pop()Lcom/google/re2j/Regexp;

    .line 975
    :cond_1b
    invoke-direct {p0}, Lcom/google/re2j/Parser;->alternate()Lcom/google/re2j/Regexp;

    .line 977
    iget-object v0, v1, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    invoke-virtual {v0}, Lcom/google/re2j/Parser$Stack;->size()I

    move-result v0

    if-ne v0, v5, :cond_1c

    .line 981
    iget-object v0, v1, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    invoke-virtual {v0, v2}, Lcom/google/re2j/Parser$Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/re2j/Regexp;

    iget-object v3, v1, Lcom/google/re2j/Parser;->namedGroups:Ljava/util/Map;

    iput-object v3, v0, Lcom/google/re2j/Regexp;->namedGroups:Ljava/util/Map;

    .line 982
    iget-object v0, v1, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    invoke-virtual {v0, v2}, Lcom/google/re2j/Parser$Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/re2j/Regexp;

    return-object v0

    .line 979
    :cond_1c
    new-instance v0, Lcom/google/re2j/PatternSyntaxException;

    const-string v2, "missing closing )"

    iget-object v3, v1, Lcom/google/re2j/Parser;->wholeRegexp:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x41
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private parseNamedClass(Lcom/google/re2j/Parser$StringIterator;Lcom/google/re2j/CharClass;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/re2j/PatternSyntaxException;
        }
    .end annotation

    .line 1496
    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->rest()Ljava/lang/String;

    move-result-object v0

    .line 1497
    const-string v1, ":]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x2

    .line 1501
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1502
    invoke-virtual {p1, v0}, Lcom/google/re2j/Parser$StringIterator;->skipString(Ljava/lang/String;)V

    .line 1503
    sget-object p1, Lcom/google/re2j/CharGroup;->POSIX_GROUPS:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/re2j/CharGroup;

    if-eqz p1, :cond_2

    .line 1507
    iget v0, p0, Lcom/google/re2j/Parser;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {p2, p1, v2}, Lcom/google/re2j/CharClass;->appendGroup(Lcom/google/re2j/CharGroup;Z)Lcom/google/re2j/CharClass;

    return v1

    .line 1505
    :cond_2
    new-instance p1, Lcom/google/re2j/PatternSyntaxException;

    const-string p2, "invalid character class range"

    invoke-direct {p1, p2, v0}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method private parsePerlClassEscape(Lcom/google/re2j/Parser$StringIterator;Lcom/google/re2j/CharClass;)Z
    .locals 4

    .line 1471
    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->pos()I

    move-result v0

    .line 1472
    iget v1, p0, Lcom/google/re2j/Parser;->flags:I

    and-int/lit8 v1, v1, 0x40

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 1473
    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->more()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1474
    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->pop()I

    move-result v1

    const/16 v3, 0x5c

    if-ne v1, v3, :cond_3

    .line 1476
    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->more()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1479
    :cond_0
    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->pop()I

    .line 1480
    sget-object v1, Lcom/google/re2j/CharGroup;->PERL_GROUPS:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Lcom/google/re2j/Parser$StringIterator;->from(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/re2j/CharGroup;

    if-nez p1, :cond_1

    return v2

    .line 1484
    :cond_1
    iget v0, p0, Lcom/google/re2j/Parser;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    move v2, v1

    :cond_2
    invoke-virtual {p2, p1, v2}, Lcom/google/re2j/CharClass;->appendGroup(Lcom/google/re2j/CharGroup;Z)Lcom/google/re2j/CharClass;

    return v1

    :cond_3
    :goto_0
    return v2
.end method

.method private parsePerlFlags(Lcom/google/re2j/Parser$StringIterator;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/re2j/PatternSyntaxException;
        }
    .end annotation

    .line 1038
    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->pos()I

    move-result v0

    .line 1055
    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->rest()Ljava/lang/String;

    move-result-object v1

    .line 1056
    const-string v2, "(?P<"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    const/16 v0, 0x3e

    .line 1058
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1059
    const-string v2, "invalid named capture"

    if-ltz v0, :cond_2

    const/4 v5, 0x4

    .line 1062
    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1063
    invoke-virtual {p1, v5}, Lcom/google/re2j/Parser$StringIterator;->skipString(Ljava/lang/String;)V

    const/4 v6, 0x5

    .line 1064
    invoke-virtual {p1, v6}, Lcom/google/re2j/Parser$StringIterator;->skip(I)V

    .line 1065
    invoke-static {v5}, Lcom/google/re2j/Parser;->isValidCaptureName(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1070
    sget-object p1, Lcom/google/re2j/Regexp$Op;->LEFT_PAREN:Lcom/google/re2j/Regexp$Op;

    invoke-direct {p0, p1}, Lcom/google/re2j/Parser;->op(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    move-result-object p1

    .line 1071
    iget v0, p0, Lcom/google/re2j/Parser;->numCap:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/google/re2j/Parser;->numCap:I

    iput v0, p1, Lcom/google/re2j/Regexp;->cap:I

    .line 1072
    iget-object v0, p0, Lcom/google/re2j/Parser;->namedGroups:Ljava/util/Map;

    iget v1, p0, Lcom/google/re2j/Parser;->numCap:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1075
    iput-object v5, p1, Lcom/google/re2j/Regexp;->name:Ljava/lang/String;

    return-void

    .line 1073
    :cond_0
    new-instance p1, Lcom/google/re2j/PatternSyntaxException;

    const-string v0, "duplicate capture group name"

    invoke-direct {p1, v0, v5}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 1066
    :cond_1
    new-instance p1, Lcom/google/re2j/PatternSyntaxException;

    .line 1067
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 1060
    :cond_2
    new-instance p1, Lcom/google/re2j/PatternSyntaxException;

    invoke-direct {p1, v2, v1}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 v1, 0x2

    .line 1080
    invoke-virtual {p1, v1}, Lcom/google/re2j/Parser$StringIterator;->skip(I)V

    .line 1081
    iget v1, p0, Lcom/google/re2j/Parser;->flags:I

    move v5, v3

    move v2, v4

    .line 1085
    :goto_0
    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->more()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1086
    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->pop()I

    move-result v6

    const/16 v7, 0x29

    const/16 v8, 0x3a

    if-eq v6, v7, :cond_8

    const/16 v7, 0x2d

    if-eq v6, v7, :cond_7

    if-eq v6, v8, :cond_8

    const/16 v5, 0x55

    if-eq v6, v5, :cond_6

    const/16 v5, 0x69

    if-eq v6, v5, :cond_5

    const/16 v5, 0x6d

    if-eq v6, v5, :cond_4

    const/16 v5, 0x73

    if-ne v6, v5, :cond_b

    or-int/lit8 v1, v1, 0x8

    goto :goto_1

    :cond_4
    and-int/lit8 v1, v1, -0x11

    goto :goto_1

    :cond_5
    or-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    or-int/lit8 v1, v1, 0x20

    :goto_1
    move v5, v4

    goto :goto_0

    :cond_7
    if-ltz v2, :cond_b

    not-int v1, v1

    const/4 v2, -0x1

    move v5, v3

    goto :goto_0

    :cond_8
    if-gez v2, :cond_9

    if-eqz v5, :cond_b

    not-int v1, v1

    :cond_9
    if-ne v6, v8, :cond_a

    .line 1132
    sget-object p1, Lcom/google/re2j/Regexp$Op;->LEFT_PAREN:Lcom/google/re2j/Regexp$Op;

    invoke-direct {p0, p1}, Lcom/google/re2j/Parser;->op(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    .line 1134
    :cond_a
    iput v1, p0, Lcom/google/re2j/Parser;->flags:I

    return-void

    .line 1139
    :cond_b
    new-instance v1, Lcom/google/re2j/PatternSyntaxException;

    const-string v2, "invalid or unsupported Perl syntax"

    invoke-virtual {p1, v0}, Lcom/google/re2j/Parser$StringIterator;->from(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method private static parseRepeat(Lcom/google/re2j/Parser$StringIterator;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/re2j/PatternSyntaxException;
        }
    .end annotation

    .line 996
    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->pos()I

    move-result v0

    .line 997
    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->more()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_a

    const/16 v1, 0x7b

    invoke-virtual {p0, v1}, Lcom/google/re2j/Parser$StringIterator;->lookingAt(C)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 1000
    invoke-virtual {p0, v1}, Lcom/google/re2j/Parser$StringIterator;->skip(I)V

    .line 1001
    invoke-static {p0}, Lcom/google/re2j/Parser;->parseInt(Lcom/google/re2j/Parser$StringIterator;)I

    move-result v3

    if-ne v3, v2, :cond_1

    return v2

    .line 1005
    :cond_1
    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->more()Z

    move-result v4

    if-nez v4, :cond_2

    return v2

    :cond_2
    const/16 v4, 0x2c

    .line 1009
    invoke-virtual {p0, v4}, Lcom/google/re2j/Parser$StringIterator;->lookingAt(C)Z

    move-result v4

    const/16 v5, 0x7d

    if-nez v4, :cond_3

    move v4, v3

    goto :goto_0

    .line 1012
    :cond_3
    invoke-virtual {p0, v1}, Lcom/google/re2j/Parser$StringIterator;->skip(I)V

    .line 1013
    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->more()Z

    move-result v4

    if-nez v4, :cond_4

    return v2

    .line 1016
    :cond_4
    invoke-virtual {p0, v5}, Lcom/google/re2j/Parser$StringIterator;->lookingAt(C)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v2

    goto :goto_0

    .line 1018
    :cond_5
    invoke-static {p0}, Lcom/google/re2j/Parser;->parseInt(Lcom/google/re2j/Parser$StringIterator;)I

    move-result v4

    if-ne v4, v2, :cond_6

    return v2

    .line 1022
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->more()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {p0, v5}, Lcom/google/re2j/Parser$StringIterator;->lookingAt(C)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_1

    .line 1025
    :cond_7
    invoke-virtual {p0, v1}, Lcom/google/re2j/Parser$StringIterator;->skip(I)V

    if-ltz v3, :cond_9

    const/16 v1, 0x3e8

    if-gt v3, v1, :cond_9

    const/4 v2, -0x2

    if-eq v4, v2, :cond_9

    if-gt v4, v1, :cond_9

    if-ltz v4, :cond_8

    if-gt v3, v4, :cond_9

    :cond_8
    shl-int/lit8 p0, v3, 0x10

    const v0, 0xffff

    and-int/2addr v0, v4

    or-int/2addr p0, v0

    return p0

    .line 1028
    :cond_9
    new-instance v1, Lcom/google/re2j/PatternSyntaxException;

    const-string v2, "invalid repeat count"

    invoke-virtual {p0, v0}, Lcom/google/re2j/Parser$StringIterator;->from(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_a
    :goto_1
    return v2
.end method

.method private parseRightParen()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/re2j/PatternSyntaxException;
        }
    .end annotation

    .line 1302
    invoke-direct {p0}, Lcom/google/re2j/Parser;->concat()Lcom/google/re2j/Regexp;

    .line 1303
    invoke-direct {p0}, Lcom/google/re2j/Parser;->swapVerticalBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1304
    invoke-direct {p0}, Lcom/google/re2j/Parser;->pop()Lcom/google/re2j/Regexp;

    .line 1306
    :cond_0
    invoke-direct {p0}, Lcom/google/re2j/Parser;->alternate()Lcom/google/re2j/Regexp;

    .line 1308
    iget-object v0, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    invoke-virtual {v0}, Lcom/google/re2j/Parser$Stack;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 1312
    invoke-direct {p0}, Lcom/google/re2j/Parser;->pop()Lcom/google/re2j/Regexp;

    move-result-object v0

    .line 1313
    invoke-direct {p0}, Lcom/google/re2j/Parser;->pop()Lcom/google/re2j/Regexp;

    move-result-object v1

    .line 1314
    iget-object v2, v1, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v3, Lcom/google/re2j/Regexp$Op;->LEFT_PAREN:Lcom/google/re2j/Regexp$Op;

    if-ne v2, v3, :cond_2

    .line 1318
    iget v2, v1, Lcom/google/re2j/Regexp;->flags:I

    iput v2, p0, Lcom/google/re2j/Parser;->flags:I

    .line 1319
    iget v2, v1, Lcom/google/re2j/Regexp;->cap:I

    if-nez v2, :cond_1

    .line 1321
    invoke-direct {p0, v0}, Lcom/google/re2j/Parser;->push(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;

    return-void

    .line 1323
    :cond_1
    sget-object v2, Lcom/google/re2j/Regexp$Op;->CAPTURE:Lcom/google/re2j/Regexp$Op;

    iput-object v2, v1, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    const/4 v2, 0x1

    .line 1324
    new-array v2, v2, [Lcom/google/re2j/Regexp;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    iput-object v2, v1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    .line 1325
    invoke-direct {p0, v1}, Lcom/google/re2j/Parser;->push(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;

    return-void

    .line 1315
    :cond_2
    new-instance v0, Lcom/google/re2j/PatternSyntaxException;

    const-string v1, "missing closing )"

    iget-object v2, p0, Lcom/google/re2j/Parser;->wholeRegexp:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1310
    :cond_3
    new-instance v0, Lcom/google/re2j/PatternSyntaxException;

    const-string v1, "regexp/syntax: internal error"

    const-string v2, "stack underflow"

    invoke-direct {v0, v1, v2}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private parseUnicodeClass(Lcom/google/re2j/Parser$StringIterator;Lcom/google/re2j/CharClass;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/re2j/PatternSyntaxException;
        }
    .end annotation

    .line 1544
    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->pos()I

    move-result v0

    .line 1545
    iget v1, p0, Lcom/google/re2j/Parser;->flags:I

    and-int/lit16 v1, v1, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    const-string v1, "\\p"

    invoke-virtual {p1, v1}, Lcom/google/re2j/Parser$StringIterator;->lookingAt(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\\P"

    invoke-virtual {p1, v1}, Lcom/google/re2j/Parser$StringIterator;->lookingAt(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v1, 0x1

    .line 1548
    invoke-virtual {p1, v1}, Lcom/google/re2j/Parser$StringIterator;->skip(I)V

    .line 1551
    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->pop()I

    move-result v3

    const/16 v4, 0x50

    if-ne v3, v4, :cond_1

    const/4 v3, -0x1

    goto :goto_0

    :cond_1
    move v3, v1

    .line 1555
    :goto_0
    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->more()Z

    move-result v4

    const-string v5, "invalid character class range"

    if-eqz v4, :cond_8

    .line 1559
    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->pop()I

    move-result v4

    const/16 v6, 0x7b

    if-eq v4, v6, :cond_2

    .line 1563
    invoke-static {v4}, Lcom/google/re2j/Utils;->runeToString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1566
    :cond_2
    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->rest()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x7d

    .line 1567
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_7

    .line 1572
    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1573
    invoke-virtual {p1, v4}, Lcom/google/re2j/Parser$StringIterator;->skipString(Ljava/lang/String;)V

    .line 1574
    invoke-virtual {p1, v1}, Lcom/google/re2j/Parser$StringIterator;->skip(I)V

    .line 1581
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v6, 0x5e

    if-ne v2, v6, :cond_3

    neg-int v3, v3

    .line 1583
    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1586
    :cond_3
    invoke-static {v4}, Lcom/google/re2j/Parser;->unicodeTable(Ljava/lang/String;)Lcom/google/re2j/Parser$Pair;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1590
    iget-object p1, v2, Lcom/google/re2j/Parser$Pair;->first:Ljava/lang/Object;

    check-cast p1, [[I

    .line 1591
    iget-object v0, v2, Lcom/google/re2j/Parser$Pair;->second:Ljava/lang/Object;

    check-cast v0, [[I

    .line 1594
    iget v2, p0, Lcom/google/re2j/Parser;->flags:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_5

    if-nez v0, :cond_4

    goto :goto_2

    .line 1600
    :cond_4
    new-instance v2, Lcom/google/re2j/CharClass;

    invoke-direct {v2}, Lcom/google/re2j/CharClass;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/re2j/CharClass;->appendTable([[I)Lcom/google/re2j/CharClass;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/re2j/CharClass;->appendTable([[I)Lcom/google/re2j/CharClass;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/re2j/CharClass;->cleanClass()Lcom/google/re2j/CharClass;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/re2j/CharClass;->toArray()[I

    move-result-object p1

    .line 1601
    invoke-virtual {p2, p1, v3}, Lcom/google/re2j/CharClass;->appendClassWithSign([II)Lcom/google/re2j/CharClass;

    goto :goto_3

    .line 1595
    :cond_5
    :goto_2
    invoke-virtual {p2, p1, v3}, Lcom/google/re2j/CharClass;->appendTableWithSign([[II)Lcom/google/re2j/CharClass;

    :goto_3
    return v1

    .line 1588
    :cond_6
    new-instance p2, Lcom/google/re2j/PatternSyntaxException;

    invoke-virtual {p1, v0}, Lcom/google/re2j/Parser$StringIterator;->from(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v5, p1}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    .line 1569
    :cond_7
    invoke-virtual {p1, v0}, Lcom/google/re2j/Parser$StringIterator;->rewindTo(I)V

    .line 1570
    new-instance p2, Lcom/google/re2j/PatternSyntaxException;

    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->rest()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v5, p1}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    .line 1556
    :cond_8
    invoke-virtual {p1, v0}, Lcom/google/re2j/Parser$StringIterator;->rewindTo(I)V

    .line 1557
    new-instance p2, Lcom/google/re2j/PatternSyntaxException;

    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->rest()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v5, p1}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    :cond_9
    :goto_4
    return v2
.end method

.method private parseVerticalBar()V
    .locals 1

    .line 1209
    invoke-direct {p0}, Lcom/google/re2j/Parser;->concat()Lcom/google/re2j/Regexp;

    .line 1215
    invoke-direct {p0}, Lcom/google/re2j/Parser;->swapVerticalBar()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1216
    sget-object v0, Lcom/google/re2j/Regexp$Op;->VERTICAL_BAR:Lcom/google/re2j/Regexp$Op;

    invoke-direct {p0, v0}, Lcom/google/re2j/Parser;->op(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    :cond_0
    return-void
.end method

.method private pop()Lcom/google/re2j/Regexp;
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    invoke-virtual {v0}, Lcom/google/re2j/Parser$Stack;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/re2j/Parser$Stack;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/re2j/Regexp;

    return-object v0
.end method

.method private popToPseudo()[Lcom/google/re2j/Regexp;
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    invoke-virtual {v0}, Lcom/google/re2j/Parser$Stack;->size()I

    move-result v0

    move v1, v0

    :goto_0
    if-lez v1, :cond_0

    .line 97
    iget-object v2, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Lcom/google/re2j/Parser$Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/re2j/Regexp;

    iget-object v2, v2, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    invoke-virtual {v2}, Lcom/google/re2j/Regexp$Op;->isPseudo()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 100
    :cond_0
    iget-object v2, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    invoke-virtual {v2, v1, v0}, Lcom/google/re2j/Parser$Stack;->subList(II)Ljava/util/List;

    move-result-object v2

    sub-int v3, v0, v1

    new-array v3, v3, [Lcom/google/re2j/Regexp;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/re2j/Regexp;

    .line 101
    iget-object v3, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    invoke-virtual {v3, v1, v0}, Lcom/google/re2j/Parser$Stack;->removeRange(II)V

    return-object v2
.end method

.method private push(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;
    .locals 7

    .line 108
    iget-object v0, p1, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v1, Lcom/google/re2j/Regexp$Op;->CHAR_CLASS:Lcom/google/re2j/Regexp$Op;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    array-length v0, v0

    if-ne v0, v3, :cond_1

    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v0, v0, v5

    iget-object v1, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v1, v1, v4

    if-ne v0, v1, :cond_1

    .line 110
    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v0, v0, v5

    iget v1, p0, Lcom/google/re2j/Parser;->flags:I

    and-int/lit8 v1, v1, -0x2

    invoke-direct {p0, v0, v1}, Lcom/google/re2j/Parser;->maybeConcat(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v2

    .line 113
    :cond_0
    sget-object v0, Lcom/google/re2j/Regexp$Op;->LITERAL:Lcom/google/re2j/Regexp$Op;

    iput-object v0, p1, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    .line 114
    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v0, v0, v5

    filled-new-array {v0}, [I

    move-result-object v0

    iput-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    .line 115
    iget v0, p0, Lcom/google/re2j/Parser;->flags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Lcom/google/re2j/Regexp;->flags:I

    goto/16 :goto_0

    .line 116
    :cond_1
    iget-object v0, p1, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v1, Lcom/google/re2j/Regexp$Op;->CHAR_CLASS:Lcom/google/re2j/Regexp$Op;

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    array-length v0, v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v0, v0, v5

    iget-object v1, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v1, v1, v4

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v0, v0, v3

    iget-object v1, p1, Lcom/google/re2j/Regexp;->runes:[I

    const/4 v6, 0x3

    aget v1, v1, v6

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v0, v0, v5

    .line 120
    invoke-static {v0}, Lcom/google/re2j/Unicode;->simpleFold(I)I

    move-result v0

    iget-object v1, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v1, v1, v3

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v0, v0, v3

    .line 121
    invoke-static {v0}, Lcom/google/re2j/Unicode;->simpleFold(I)I

    move-result v0

    iget-object v1, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v1, v1, v5

    if-eq v0, v1, :cond_3

    :cond_2
    iget-object v0, p1, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v1, Lcom/google/re2j/Regexp$Op;->CHAR_CLASS:Lcom/google/re2j/Regexp$Op;

    if-ne v0, v1, :cond_5

    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    array-length v0, v0

    if-ne v0, v3, :cond_5

    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v0, v0, v5

    add-int/2addr v0, v4

    iget-object v1, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v1, v1, v4

    if-ne v0, v1, :cond_5

    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v0, v0, v5

    .line 125
    invoke-static {v0}, Lcom/google/re2j/Unicode;->simpleFold(I)I

    move-result v0

    iget-object v1, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v1, v1, v4

    if-ne v0, v1, :cond_5

    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v0, v0, v4

    .line 126
    invoke-static {v0}, Lcom/google/re2j/Unicode;->simpleFold(I)I

    move-result v0

    iget-object v1, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v1, v1, v5

    if-ne v0, v1, :cond_5

    .line 128
    :cond_3
    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v0, v0, v5

    iget v1, p0, Lcom/google/re2j/Parser;->flags:I

    or-int/2addr v1, v4

    invoke-direct {p0, v0, v1}, Lcom/google/re2j/Parser;->maybeConcat(II)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object v2

    .line 133
    :cond_4
    sget-object v0, Lcom/google/re2j/Regexp$Op;->LITERAL:Lcom/google/re2j/Regexp$Op;

    iput-object v0, p1, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    .line 134
    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v0, v0, v5

    filled-new-array {v0}, [I

    move-result-object v0

    iput-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    .line 135
    iget v0, p0, Lcom/google/re2j/Parser;->flags:I

    or-int/2addr v0, v4

    iput v0, p1, Lcom/google/re2j/Regexp;->flags:I

    goto :goto_0

    :cond_5
    const/4 v0, -0x1

    .line 138
    invoke-direct {p0, v0, v5}, Lcom/google/re2j/Parser;->maybeConcat(II)Z

    .line 141
    :goto_0
    iget-object v0, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    invoke-virtual {v0, p1}, Lcom/google/re2j/Parser$Stack;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method private removeLeadingRegexp(Lcom/google/re2j/Regexp;Z)Lcom/google/re2j/Regexp;
    .locals 3

    .line 660
    iget-object v0, p1, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v1, Lcom/google/re2j/Regexp$Op;->CONCAT:Lcom/google/re2j/Regexp$Op;

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    array-length v0, v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 662
    iget-object p2, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object p2, p2, v0

    invoke-direct {p0, p2}, Lcom/google/re2j/Parser;->reuse(Lcom/google/re2j/Regexp;)V

    .line 664
    :cond_0
    iget-object p2, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    iget-object v1, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    array-length v1, v1

    const/4 v2, 0x1

    invoke-static {p2, v2, v1}, Lcom/google/re2j/Parser;->subarray([Lcom/google/re2j/Regexp;II)[Lcom/google/re2j/Regexp;

    move-result-object p2

    iput-object p2, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    .line 665
    iget-object p2, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    array-length p2, p2

    if-eqz p2, :cond_2

    if-eq p2, v2, :cond_1

    return-object p1

    .line 672
    :cond_1
    iget-object p2, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object p2, p2, v0

    .line 673
    invoke-direct {p0, p1}, Lcom/google/re2j/Parser;->reuse(Lcom/google/re2j/Regexp;)V

    return-object p2

    .line 667
    :cond_2
    sget-object p2, Lcom/google/re2j/Regexp$Op;->EMPTY_MATCH:Lcom/google/re2j/Regexp$Op;

    iput-object p2, p1, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    .line 668
    sget-object p2, Lcom/google/re2j/Regexp;->EMPTY_SUBS:[Lcom/google/re2j/Regexp;

    iput-object p2, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    return-object p1

    :cond_3
    if-eqz p2, :cond_4

    .line 679
    invoke-direct {p0, p1}, Lcom/google/re2j/Parser;->reuse(Lcom/google/re2j/Regexp;)V

    .line 681
    :cond_4
    sget-object p1, Lcom/google/re2j/Regexp$Op;->EMPTY_MATCH:Lcom/google/re2j/Regexp$Op;

    invoke-direct {p0, p1}, Lcom/google/re2j/Parser;->newRegexp(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    move-result-object p1

    return-object p1
.end method

.method private removeLeadingString(Lcom/google/re2j/Regexp;I)Lcom/google/re2j/Regexp;
    .locals 2

    .line 601
    iget-object v0, p1, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v1, Lcom/google/re2j/Regexp$Op;->CONCAT:Lcom/google/re2j/Regexp$Op;

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 604
    iget-object v0, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p2}, Lcom/google/re2j/Parser;->removeLeadingString(Lcom/google/re2j/Regexp;I)Lcom/google/re2j/Regexp;

    move-result-object p2

    .line 605
    iget-object v0, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aput-object p2, v0, v1

    .line 606
    iget-object v0, p2, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v1, Lcom/google/re2j/Regexp$Op;->EMPTY_MATCH:Lcom/google/re2j/Regexp$Op;

    if-ne v0, v1, :cond_3

    .line 607
    invoke-direct {p0, p2}, Lcom/google/re2j/Parser;->reuse(Lcom/google/re2j/Regexp;)V

    .line 608
    iget-object p2, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    array-length p2, p2

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    .line 623
    iget-object p2, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    iget-object v1, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    array-length v1, v1

    invoke-static {p2, v0, v1}, Lcom/google/re2j/Parser;->subarray([Lcom/google/re2j/Regexp;II)[Lcom/google/re2j/Regexp;

    move-result-object p2

    iput-object p2, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    return-object p1

    .line 618
    :cond_0
    iget-object p2, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object p2, p2, v0

    .line 619
    invoke-direct {p0, p1}, Lcom/google/re2j/Parser;->reuse(Lcom/google/re2j/Regexp;)V

    return-object p2

    .line 612
    :cond_1
    sget-object p2, Lcom/google/re2j/Regexp$Op;->EMPTY_MATCH:Lcom/google/re2j/Regexp$Op;

    iput-object p2, p1, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    const/4 p2, 0x0

    .line 613
    iput-object p2, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    return-object p1

    .line 630
    :cond_2
    iget-object v0, p1, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v1, Lcom/google/re2j/Regexp$Op;->LITERAL:Lcom/google/re2j/Regexp$Op;

    if-ne v0, v1, :cond_3

    .line 631
    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    iget-object v1, p1, Lcom/google/re2j/Regexp;->runes:[I

    array-length v1, v1

    invoke-static {v0, p2, v1}, Lcom/google/re2j/Utils;->subarray([III)[I

    move-result-object p2

    iput-object p2, p1, Lcom/google/re2j/Regexp;->runes:[I

    .line 632
    iget-object p2, p1, Lcom/google/re2j/Regexp;->runes:[I

    array-length p2, p2

    if-nez p2, :cond_3

    .line 633
    sget-object p2, Lcom/google/re2j/Regexp$Op;->EMPTY_MATCH:Lcom/google/re2j/Regexp$Op;

    iput-object p2, p1, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    :cond_3
    return-object p1
.end method

.method private repeat(Lcom/google/re2j/Regexp$Op;IIILcom/google/re2j/Parser$StringIterator;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/re2j/PatternSyntaxException;
        }
    .end annotation

    .line 230
    iget v0, p0, Lcom/google/re2j/Parser;->flags:I

    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 232
    invoke-virtual {p5}, Lcom/google/re2j/Parser$StringIterator;->more()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x3f

    invoke-virtual {p5, v1}, Lcom/google/re2j/Parser$StringIterator;->lookingAt(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    invoke-virtual {p5, v2}, Lcom/google/re2j/Parser$StringIterator;->skip(I)V

    xor-int/lit8 v0, v0, 0x20

    :cond_0
    const/4 v1, -0x1

    if-ne p6, v1, :cond_1

    goto :goto_0

    .line 240
    :cond_1
    new-instance p1, Lcom/google/re2j/PatternSyntaxException;

    const-string p2, "invalid nested repetition operator"

    invoke-virtual {p5, p6}, Lcom/google/re2j/Parser$StringIterator;->from(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 243
    :cond_2
    :goto_0
    iget-object p6, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    invoke-virtual {p6}, Lcom/google/re2j/Parser$Stack;->size()I

    move-result p6

    .line 244
    const-string v1, "missing argument to repetition operator"

    if-eqz p6, :cond_4

    .line 247
    iget-object v3, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    sub-int/2addr p6, v2

    invoke-virtual {v3, p6}, Lcom/google/re2j/Parser$Stack;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/re2j/Regexp;

    .line 248
    iget-object v4, v3, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    invoke-virtual {v4}, Lcom/google/re2j/Regexp$Op;->isPseudo()Z

    move-result v4

    if-nez v4, :cond_3

    .line 251
    invoke-direct {p0, p1}, Lcom/google/re2j/Parser;->newRegexp(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    move-result-object p1

    .line 252
    iput p2, p1, Lcom/google/re2j/Regexp;->min:I

    .line 253
    iput p3, p1, Lcom/google/re2j/Regexp;->max:I

    .line 254
    iput v0, p1, Lcom/google/re2j/Regexp;->flags:I

    .line 255
    new-array p2, v2, [Lcom/google/re2j/Regexp;

    const/4 p3, 0x0

    aput-object v3, p2, p3

    iput-object p2, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    .line 256
    iget-object p2, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    invoke-virtual {p2, p6, p1}, Lcom/google/re2j/Parser$Stack;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 249
    :cond_3
    new-instance p1, Lcom/google/re2j/PatternSyntaxException;

    invoke-virtual {p5, p4}, Lcom/google/re2j/Parser$StringIterator;->from(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 245
    :cond_4
    new-instance p1, Lcom/google/re2j/PatternSyntaxException;

    invoke-virtual {p5, p4}, Lcom/google/re2j/Parser$StringIterator;->from(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method private reuse(Lcom/google/re2j/Regexp;)V
    .locals 3

    .line 83
    iget-object v0, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 84
    iget-object v0, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/re2j/Parser;->free:Lcom/google/re2j/Regexp;

    aput-object v2, v0, v1

    .line 86
    :cond_0
    iput-object p1, p0, Lcom/google/re2j/Parser;->free:Lcom/google/re2j/Regexp;

    return-void
.end method

.method static subarray([Lcom/google/re2j/Regexp;II)[Lcom/google/re2j/Regexp;
    .locals 4

    sub-int v0, p2, p1

    .line 1699
    new-array v0, v0, [Lcom/google/re2j/Regexp;

    move v1, p1

    :goto_0
    if-ge v1, p2, :cond_0

    sub-int v2, v1, p1

    .line 1701
    aget-object v3, p0, v1

    aput-object v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private swapVerticalBar()Z
    .locals 10

    .line 1263
    iget-object v0, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    invoke-virtual {v0}, Lcom/google/re2j/Parser$Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    .line 1264
    iget-object v3, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    add-int/lit8 v4, v0, -0x2

    .line 1265
    invoke-virtual {v3, v4}, Lcom/google/re2j/Parser$Stack;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/re2j/Regexp;

    iget-object v3, v3, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v4, Lcom/google/re2j/Regexp$Op;->VERTICAL_BAR:Lcom/google/re2j/Regexp$Op;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    add-int/lit8 v4, v0, -0x1

    .line 1266
    invoke-virtual {v3, v4}, Lcom/google/re2j/Parser$Stack;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/re2j/Regexp;

    invoke-static {v3}, Lcom/google/re2j/Parser;->isCharClass(Lcom/google/re2j/Regexp;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    add-int/lit8 v5, v0, -0x3

    .line 1267
    invoke-virtual {v3, v5}, Lcom/google/re2j/Parser$Stack;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/re2j/Regexp;

    invoke-static {v3}, Lcom/google/re2j/Parser;->isCharClass(Lcom/google/re2j/Regexp;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1268
    iget-object v0, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    invoke-virtual {v0, v4}, Lcom/google/re2j/Parser$Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/re2j/Regexp;

    .line 1269
    iget-object v2, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    invoke-virtual {v2, v5}, Lcom/google/re2j/Parser$Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/re2j/Regexp;

    .line 1271
    iget-object v3, v0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    invoke-virtual {v3}, Lcom/google/re2j/Regexp$Op;->ordinal()I

    move-result v3

    iget-object v4, v2, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    invoke-virtual {v4}, Lcom/google/re2j/Regexp$Op;->ordinal()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 1275
    iget-object v3, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    invoke-virtual {v3, v5, v0}, Lcom/google/re2j/Parser$Stack;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    .line 1277
    :goto_0
    invoke-static {v0, v2}, Lcom/google/re2j/Parser;->mergeCharClass(Lcom/google/re2j/Regexp;Lcom/google/re2j/Regexp;)V

    .line 1278
    invoke-direct {p0, v2}, Lcom/google/re2j/Parser;->reuse(Lcom/google/re2j/Regexp;)V

    .line 1279
    invoke-direct {p0}, Lcom/google/re2j/Parser;->pop()Lcom/google/re2j/Regexp;

    return v1

    :cond_1
    const/4 v3, 0x2

    if-lt v0, v3, :cond_3

    .line 1284
    iget-object v3, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Lcom/google/re2j/Parser$Stack;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/re2j/Regexp;

    .line 1285
    iget-object v5, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    add-int/lit8 v6, v0, -0x2

    invoke-virtual {v5, v6}, Lcom/google/re2j/Parser$Stack;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/re2j/Regexp;

    .line 1286
    iget-object v7, v5, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v8, Lcom/google/re2j/Regexp$Op;->VERTICAL_BAR:Lcom/google/re2j/Regexp$Op;

    if-ne v7, v8, :cond_3

    if-lt v0, v2, :cond_2

    .line 1290
    iget-object v7, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    sub-int/2addr v0, v2

    invoke-virtual {v7, v0}, Lcom/google/re2j/Parser$Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/re2j/Regexp;

    invoke-direct {p0, v0}, Lcom/google/re2j/Parser;->cleanAlt(Lcom/google/re2j/Regexp;)V

    .line 1292
    :cond_2
    iget-object v0, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    invoke-virtual {v0, v6, v3}, Lcom/google/re2j/Parser$Stack;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1293
    iget-object v0, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    invoke-virtual {v0, v4, v5}, Lcom/google/re2j/Parser$Stack;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private static unicodeTable(Ljava/lang/String;)Lcom/google/re2j/Parser$Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/re2j/Parser$Pair<",
            "[[I[[I>;"
        }
    .end annotation

    .line 1522
    const-string v0, "Any"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1523
    sget-object p0, Lcom/google/re2j/Parser;->ANY_TABLE:[[I

    invoke-static {p0, p0}, Lcom/google/re2j/Parser$Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/re2j/Parser$Pair;

    move-result-object p0

    return-object p0

    .line 1525
    :cond_0
    sget-object v0, Lcom/google/re2j/UnicodeTables;->CATEGORIES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    if-eqz v0, :cond_1

    .line 1527
    sget-object v1, Lcom/google/re2j/UnicodeTables;->FOLD_CATEGORIES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/re2j/Parser$Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/re2j/Parser$Pair;

    move-result-object p0

    return-object p0

    .line 1529
    :cond_1
    sget-object v0, Lcom/google/re2j/UnicodeTables;->SCRIPTS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    if-eqz v0, :cond_2

    .line 1531
    sget-object v1, Lcom/google/re2j/UnicodeTables;->FOLD_SCRIPT:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/re2j/Parser$Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/re2j/Parser$Pair;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
