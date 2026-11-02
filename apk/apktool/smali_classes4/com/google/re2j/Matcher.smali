.class public final Lcom/google/re2j/Matcher;
.super Ljava/lang/Object;
.source "Matcher.java"


# instance fields
.field private anchorFlag:I

.field private appendPos:I

.field private final groupCount:I

.field private final groups:[I

.field private hasGroups:Z

.field private hasMatch:Z

.field private inputLength:I

.field private matcherInput:Lcom/google/re2j/MatcherInput;

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

.field private final pattern:Lcom/google/re2j/Pattern;


# direct methods
.method private constructor <init>(Lcom/google/re2j/Pattern;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 74
    iput-object p1, p0, Lcom/google/re2j/Matcher;->pattern:Lcom/google/re2j/Pattern;

    .line 75
    invoke-virtual {p1}, Lcom/google/re2j/Pattern;->re2()Lcom/google/re2j/RE2;

    move-result-object p1

    .line 76
    invoke-virtual {p1}, Lcom/google/re2j/RE2;->numberOfCapturingGroups()I

    move-result v0

    iput v0, p0, Lcom/google/re2j/Matcher;->groupCount:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    .line 77
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/re2j/Matcher;->groups:[I

    .line 78
    iget-object p1, p1, Lcom/google/re2j/RE2;->namedGroups:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/re2j/Matcher;->namedGroups:Ljava/util/Map;

    return-void

    .line 72
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "pattern is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Lcom/google/re2j/Pattern;Lcom/google/re2j/MatcherInput;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/google/re2j/Matcher;-><init>(Lcom/google/re2j/Pattern;)V

    .line 89
    invoke-direct {p0, p2}, Lcom/google/re2j/Matcher;->reset(Lcom/google/re2j/MatcherInput;)Lcom/google/re2j/Matcher;

    return-void
.end method

.method constructor <init>(Lcom/google/re2j/Pattern;Ljava/lang/CharSequence;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/google/re2j/Matcher;-><init>(Lcom/google/re2j/Pattern;)V

    .line 84
    invoke-virtual {p0, p2}, Lcom/google/re2j/Matcher;->reset(Ljava/lang/CharSequence;)Lcom/google/re2j/Matcher;

    return-void
.end method

.method private appendReplacementInternal(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 8

    .line 465
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_c

    .line 467
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_1

    if-ge v2, v1, :cond_0

    .line 469
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    move v2, v1

    goto/16 :goto_4

    .line 475
    :cond_1
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x24

    if-ne v3, v4, :cond_b

    add-int/lit8 v3, v1, 0x1

    .line 476
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-gt v5, v4, :cond_7

    const/16 v6, 0x39

    if-gt v4, v6, :cond_7

    add-int/lit8 v4, v4, -0x30

    if-ge v2, v1, :cond_2

    .line 480
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v1, v1, 0x2

    :goto_1
    if-ge v1, v0, :cond_4

    .line 483
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v5, :cond_4

    if-gt v2, v6, :cond_4

    mul-int/lit8 v3, v4, 0xa

    add-int/2addr v3, v2

    add-int/lit8 v2, v3, -0x30

    .line 484
    iget v3, p0, Lcom/google/re2j/Matcher;->groupCount:I

    if-le v2, v3, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    move v4, v2

    goto :goto_1

    .line 489
    :cond_4
    :goto_2
    iget v2, p0, Lcom/google/re2j/Matcher;->groupCount:I

    if-gt v4, v2, :cond_6

    .line 492
    invoke-virtual {p0, v4}, Lcom/google/re2j/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 494
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v2, v1, -0x1

    move v7, v2

    move v2, v1

    move v1, v7

    goto :goto_4

    .line 490
    :cond_6
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "n > number of groups: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    const/16 v5, 0x7b

    if-ne v4, v5, :cond_b

    if-ge v2, v1, :cond_8

    .line 501
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    add-int/lit8 v1, v1, 0x2

    move v2, v1

    .line 505
    :goto_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x7d

    if-ge v2, v4, :cond_9

    .line 506
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v5, :cond_9

    .line 507
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x20

    if-eq v4, v6, :cond_9

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 510
    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v2, v4, :cond_a

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_a

    .line 513
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 514
    invoke-virtual {p0, v1}, Lcom/google/re2j/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    move v1, v3

    goto :goto_4

    .line 511
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "named capture group is missing trailing \'}\'"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_c
    if-ge v2, v0, :cond_d

    .line 520
    invoke-virtual {p1, p2, v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :cond_d
    return-void
.end method

.method private genMatch(II)Z
    .locals 8

    .line 351
    iget-object v0, p0, Lcom/google/re2j/Matcher;->pattern:Lcom/google/re2j/Pattern;

    invoke-virtual {v0}, Lcom/google/re2j/Pattern;->re2()Lcom/google/re2j/RE2;

    move-result-object v1

    iget-object v2, p0, Lcom/google/re2j/Matcher;->matcherInput:Lcom/google/re2j/MatcherInput;

    iget v4, p0, Lcom/google/re2j/Matcher;->inputLength:I

    iget-object v6, p0, Lcom/google/re2j/Matcher;->groups:[I

    const/4 v7, 0x1

    move v3, p1

    move v5, p2

    invoke-virtual/range {v1 .. v7}, Lcom/google/re2j/RE2;->match(Lcom/google/re2j/MatcherInput;III[II)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    const/4 p1, 0x1

    .line 355
    iput-boolean p1, p0, Lcom/google/re2j/Matcher;->hasMatch:Z

    .line 356
    iput-boolean p2, p0, Lcom/google/re2j/Matcher;->hasGroups:Z

    .line 357
    iput v5, p0, Lcom/google/re2j/Matcher;->anchorFlag:I

    return p1
.end method

.method private loadGroup(I)V
    .locals 9

    if-ltz p1, :cond_5

    .line 261
    iget v0, p0, Lcom/google/re2j/Matcher;->groupCount:I

    if-gt p1, v0, :cond_5

    .line 264
    iget-boolean v0, p0, Lcom/google/re2j/Matcher;->hasMatch:Z

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    .line 267
    iget-boolean p1, p0, Lcom/google/re2j/Matcher;->hasGroups:Z

    if-eqz p1, :cond_0

    goto :goto_1

    .line 278
    :cond_0
    iget-object p1, p0, Lcom/google/re2j/Matcher;->groups:[I

    const/4 v0, 0x1

    aget p1, p1, v0

    add-int/2addr p1, v0

    .line 279
    iget v1, p0, Lcom/google/re2j/Matcher;->inputLength:I

    if-le p1, v1, :cond_1

    move v5, v1

    goto :goto_0

    :cond_1
    move v5, p1

    .line 283
    :goto_0
    iget-object p1, p0, Lcom/google/re2j/Matcher;->pattern:Lcom/google/re2j/Pattern;

    .line 284
    invoke-virtual {p1}, Lcom/google/re2j/Pattern;->re2()Lcom/google/re2j/RE2;

    move-result-object v2

    iget-object v3, p0, Lcom/google/re2j/Matcher;->matcherInput:Lcom/google/re2j/MatcherInput;

    iget-object v7, p0, Lcom/google/re2j/Matcher;->groups:[I

    const/4 p1, 0x0

    aget v4, v7, p1

    iget v6, p0, Lcom/google/re2j/Matcher;->anchorFlag:I

    iget p1, p0, Lcom/google/re2j/Matcher;->groupCount:I

    add-int/lit8 v8, p1, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/google/re2j/RE2;->match(Lcom/google/re2j/MatcherInput;III[II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 290
    iput-boolean v0, p0, Lcom/google/re2j/Matcher;->hasGroups:Z

    return-void

    .line 288
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "inconsistency in matching group data"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void

    .line 265
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "perhaps no match attempted"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 262
    :cond_5
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Group index out of bounds: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static quoteReplacement(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/16 v0, 0x5c

    .line 386
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x24

    if-gez v1, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    return-object p0

    .line 389
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 390
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 391
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v0, :cond_1

    if-ne v4, v2, :cond_2

    .line 393
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 395
    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 397
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private replace(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 574
    invoke-virtual {p0}, Lcom/google/re2j/Matcher;->reset()Lcom/google/re2j/Matcher;

    .line 575
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 576
    :cond_0
    invoke-virtual {p0}, Lcom/google/re2j/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 577
    invoke-virtual {p0, v0, p1}, Lcom/google/re2j/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Lcom/google/re2j/Matcher;

    if-nez p2, :cond_0

    .line 582
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/re2j/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 583
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private reset(Lcom/google/re2j/MatcherInput;)Lcom/google/re2j/Matcher;
    .locals 1

    if-eqz p1, :cond_0

    .line 134
    iput-object p1, p0, Lcom/google/re2j/Matcher;->matcherInput:Lcom/google/re2j/MatcherInput;

    .line 135
    invoke-virtual {p0}, Lcom/google/re2j/Matcher;->reset()Lcom/google/re2j/Matcher;

    return-object p0

    .line 132
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "input is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Lcom/google/re2j/Matcher;
    .locals 1

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    invoke-virtual {p0, v0, p2}, Lcom/google/re2j/Matcher;->appendReplacement(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/google/re2j/Matcher;

    .line 425
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    return-object p0
.end method

.method public appendReplacement(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/google/re2j/Matcher;
    .locals 3

    .line 452
    invoke-virtual {p0}, Lcom/google/re2j/Matcher;->start()I

    move-result v0

    .line 453
    invoke-virtual {p0}, Lcom/google/re2j/Matcher;->end()I

    move-result v1

    .line 454
    iget v2, p0, Lcom/google/re2j/Matcher;->appendPos:I

    if-ge v2, v0, :cond_0

    .line 455
    invoke-virtual {p0, v2, v0}, Lcom/google/re2j/Matcher;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    :cond_0
    iput v1, p0, Lcom/google/re2j/Matcher;->appendPos:I

    .line 458
    invoke-direct {p0, p1, p2}, Lcom/google/re2j/Matcher;->appendReplacementInternal(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-object p0
.end method

.method public appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2

    .line 532
    iget v0, p0, Lcom/google/re2j/Matcher;->appendPos:I

    iget v1, p0, Lcom/google/re2j/Matcher;->inputLength:I

    invoke-virtual {p0, v0, v1}, Lcom/google/re2j/Matcher;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p1
.end method

.method public appendTail(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2

    .line 544
    iget v0, p0, Lcom/google/re2j/Matcher;->appendPos:I

    iget v1, p0, Lcom/google/re2j/Matcher;->inputLength:I

    invoke-virtual {p0, v0, v1}, Lcom/google/re2j/Matcher;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public end()I
    .locals 1

    const/4 v0, 0x0

    .line 154
    invoke-virtual {p0, v0}, Lcom/google/re2j/Matcher;->end(I)I

    move-result v0

    return v0
.end method

.method public end(I)I
    .locals 1

    .line 192
    invoke-direct {p0, p1}, Lcom/google/re2j/Matcher;->loadGroup(I)V

    .line 193
    iget-object v0, p0, Lcom/google/re2j/Matcher;->groups:[I

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method public end(Ljava/lang/String;)I
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/google/re2j/Matcher;->namedGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/re2j/Matcher;->end(I)I

    move-result p1

    return p1

    .line 206
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "group \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\' not found"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public find()Z
    .locals 3

    .line 322
    iget-boolean v0, p0, Lcom/google/re2j/Matcher;->hasMatch:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/google/re2j/Matcher;->groups:[I

    const/4 v2, 0x1

    aget v2, v0, v2

    .line 324
    aget v0, v0, v1

    if-ne v0, v2, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 328
    :cond_1
    :goto_0
    invoke-direct {p0, v2, v1}, Lcom/google/re2j/Matcher;->genMatch(II)Z

    move-result v0

    return v0
.end method

.method public find(I)Z
    .locals 3

    if-ltz p1, :cond_0

    .line 340
    iget v0, p0, Lcom/google/re2j/Matcher;->inputLength:I

    if-gt p1, v0, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/google/re2j/Matcher;->reset()Lcom/google/re2j/Matcher;

    const/4 v0, 0x0

    .line 344
    invoke-direct {p0, p1, v0}, Lcom/google/re2j/Matcher;->genMatch(II)Z

    move-result p1

    return p1

    .line 341
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start index out of bounds: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public group()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 217
    invoke-virtual {p0, v0}, Lcom/google/re2j/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public group(I)Ljava/lang/String;
    .locals 1

    .line 227
    invoke-virtual {p0, p1}, Lcom/google/re2j/Matcher;->start(I)I

    move-result v0

    .line 228
    invoke-virtual {p0, p1}, Lcom/google/re2j/Matcher;->end(I)I

    move-result p1

    if-gez v0, :cond_0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 233
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/google/re2j/Matcher;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public group(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 243
    iget-object v0, p0, Lcom/google/re2j/Matcher;->namedGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/re2j/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 245
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "group \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\' not found"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public groupCount()I
    .locals 1

    .line 256
    iget v0, p0, Lcom/google/re2j/Matcher;->groupCount:I

    return v0
.end method

.method inputLength()I
    .locals 1

    .line 375
    iget v0, p0, Lcom/google/re2j/Matcher;->inputLength:I

    return v0
.end method

.method public lookingAt()Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 310
    invoke-direct {p0, v0, v1}, Lcom/google/re2j/Matcher;->genMatch(II)Z

    move-result v0

    return v0
.end method

.method public matches()Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 300
    invoke-direct {p0, v0, v1}, Lcom/google/re2j/Matcher;->genMatch(II)Z

    move-result v0

    return v0
.end method

.method public pattern()Lcom/google/re2j/Pattern;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/google/re2j/Matcher;->pattern:Lcom/google/re2j/Pattern;

    return-object v0
.end method

.method public replaceAll(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 557
    invoke-direct {p0, p1, v0}, Lcom/google/re2j/Matcher;->replace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public replaceFirst(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 569
    invoke-direct {p0, p1, v0}, Lcom/google/re2j/Matcher;->replace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public reset()Lcom/google/re2j/Matcher;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/google/re2j/Matcher;->matcherInput:Lcom/google/re2j/MatcherInput;

    invoke-virtual {v0}, Lcom/google/re2j/MatcherInput;->length()I

    move-result v0

    iput v0, p0, Lcom/google/re2j/Matcher;->inputLength:I

    const/4 v0, 0x0

    .line 104
    iput v0, p0, Lcom/google/re2j/Matcher;->appendPos:I

    .line 105
    iput-boolean v0, p0, Lcom/google/re2j/Matcher;->hasMatch:Z

    .line 106
    iput-boolean v0, p0, Lcom/google/re2j/Matcher;->hasGroups:Z

    return-object p0
.end method

.method public reset(Ljava/lang/CharSequence;)Lcom/google/re2j/Matcher;
    .locals 0

    .line 117
    invoke-static {p1}, Lcom/google/re2j/MatcherInput;->utf16(Ljava/lang/CharSequence;)Lcom/google/re2j/MatcherInput;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/re2j/Matcher;->reset(Lcom/google/re2j/MatcherInput;)Lcom/google/re2j/Matcher;

    move-result-object p1

    return-object p1
.end method

.method public reset([B)Lcom/google/re2j/Matcher;
    .locals 0

    .line 127
    invoke-static {p1}, Lcom/google/re2j/MatcherInput;->utf8([B)Lcom/google/re2j/MatcherInput;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/re2j/Matcher;->reset(Lcom/google/re2j/MatcherInput;)Lcom/google/re2j/Matcher;

    move-result-object p1

    return-object p1
.end method

.method public start()I
    .locals 1

    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0, v0}, Lcom/google/re2j/Matcher;->start(I)I

    move-result v0

    return v0
.end method

.method public start(I)I
    .locals 1

    .line 165
    invoke-direct {p0, p1}, Lcom/google/re2j/Matcher;->loadGroup(I)V

    .line 166
    iget-object v0, p0, Lcom/google/re2j/Matcher;->groups:[I

    mul-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method public start(Ljava/lang/String;)I
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/google/re2j/Matcher;->namedGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/re2j/Matcher;->start(I)I

    move-result p1

    return p1

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "group \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\' not found"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method substring(II)Ljava/lang/String;
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/google/re2j/Matcher;->matcherInput:Lcom/google/re2j/MatcherInput;

    invoke-virtual {v0}, Lcom/google/re2j/MatcherInput;->getEncoding()Lcom/google/re2j/MatcherInput$Encoding;

    move-result-object v0

    sget-object v1, Lcom/google/re2j/MatcherInput$Encoding;->UTF_8:Lcom/google/re2j/MatcherInput$Encoding;

    if-ne v0, v1, :cond_0

    .line 366
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/re2j/Matcher;->matcherInput:Lcom/google/re2j/MatcherInput;

    invoke-virtual {v1}, Lcom/google/re2j/MatcherInput;->asBytes()[B

    move-result-object v1

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([BII)V

    return-object v0

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/google/re2j/Matcher;->matcherInput:Lcom/google/re2j/MatcherInput;

    invoke-virtual {v0}, Lcom/google/re2j/MatcherInput;->asCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
