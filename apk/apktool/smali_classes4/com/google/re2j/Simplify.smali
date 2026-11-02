.class Lcom/google/re2j/Simplify;
.super Ljava/lang/Object;
.source "Simplify.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static simplify(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 28
    :cond_0
    sget-object v1, Lcom/google/re2j/Simplify$1;->$SwitchMap$com$google$re2j$Regexp$Op:[I

    iget-object v2, p0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    invoke-virtual {v2}, Lcom/google/re2j/Regexp$Op;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    return-object p0

    .line 61
    :pswitch_0
    iget v1, p0, Lcom/google/re2j/Regexp;->min:I

    if-nez v1, :cond_1

    iget v1, p0, Lcom/google/re2j/Regexp;->max:I

    if-nez v1, :cond_1

    .line 62
    new-instance p0, Lcom/google/re2j/Regexp;

    sget-object v0, Lcom/google/re2j/Regexp$Op;->EMPTY_MATCH:Lcom/google/re2j/Regexp$Op;

    invoke-direct {p0, v0}, Lcom/google/re2j/Regexp;-><init>(Lcom/google/re2j/Regexp$Op;)V

    return-object p0

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/google/re2j/Simplify;->simplify(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;

    move-result-object v1

    .line 69
    iget v3, p0, Lcom/google/re2j/Regexp;->max:I

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ne v3, v4, :cond_5

    .line 71
    iget v3, p0, Lcom/google/re2j/Regexp;->min:I

    if-nez v3, :cond_2

    .line 72
    sget-object v2, Lcom/google/re2j/Regexp$Op;->STAR:Lcom/google/re2j/Regexp$Op;

    iget p0, p0, Lcom/google/re2j/Regexp;->flags:I

    invoke-static {v2, p0, v1, v0}, Lcom/google/re2j/Simplify;->simplify1(Lcom/google/re2j/Regexp$Op;ILcom/google/re2j/Regexp;Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;

    move-result-object p0

    return-object p0

    .line 76
    :cond_2
    iget v3, p0, Lcom/google/re2j/Regexp;->min:I

    if-ne v3, v5, :cond_3

    .line 77
    sget-object v2, Lcom/google/re2j/Regexp$Op;->PLUS:Lcom/google/re2j/Regexp$Op;

    iget p0, p0, Lcom/google/re2j/Regexp;->flags:I

    invoke-static {v2, p0, v1, v0}, Lcom/google/re2j/Simplify;->simplify1(Lcom/google/re2j/Regexp$Op;ILcom/google/re2j/Regexp;Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;

    move-result-object p0

    return-object p0

    .line 81
    :cond_3
    new-instance v3, Lcom/google/re2j/Regexp;

    sget-object v4, Lcom/google/re2j/Regexp$Op;->CONCAT:Lcom/google/re2j/Regexp$Op;

    invoke-direct {v3, v4}, Lcom/google/re2j/Regexp;-><init>(Lcom/google/re2j/Regexp$Op;)V

    .line 82
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 83
    :goto_0
    iget v6, p0, Lcom/google/re2j/Regexp;->min:I

    sub-int/2addr v6, v5

    if-ge v2, v6, :cond_4

    .line 84
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    :cond_4
    sget-object v2, Lcom/google/re2j/Regexp$Op;->PLUS:Lcom/google/re2j/Regexp$Op;

    iget p0, p0, Lcom/google/re2j/Regexp;->flags:I

    invoke-static {v2, p0, v1, v0}, Lcom/google/re2j/Simplify;->simplify1(Lcom/google/re2j/Regexp$Op;ILcom/google/re2j/Regexp;Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lcom/google/re2j/Regexp;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/google/re2j/Regexp;

    iput-object p0, v3, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    return-object v3

    .line 94
    :cond_5
    iget v3, p0, Lcom/google/re2j/Regexp;->min:I

    if-ne v3, v5, :cond_6

    iget v3, p0, Lcom/google/re2j/Regexp;->max:I

    if-ne v3, v5, :cond_6

    return-object v1

    .line 104
    :cond_6
    iget v3, p0, Lcom/google/re2j/Regexp;->min:I

    if-lez v3, :cond_7

    .line 105
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, v2

    .line 106
    :goto_1
    iget v6, p0, Lcom/google/re2j/Regexp;->min:I

    if-ge v4, v6, :cond_8

    .line 107
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    move-object v3, v0

    .line 112
    :cond_8
    iget v4, p0, Lcom/google/re2j/Regexp;->max:I

    iget v6, p0, Lcom/google/re2j/Regexp;->min:I

    if-le v4, v6, :cond_b

    .line 113
    sget-object v4, Lcom/google/re2j/Regexp$Op;->QUEST:Lcom/google/re2j/Regexp$Op;

    iget v6, p0, Lcom/google/re2j/Regexp;->flags:I

    invoke-static {v4, v6, v1, v0}, Lcom/google/re2j/Simplify;->simplify1(Lcom/google/re2j/Regexp$Op;ILcom/google/re2j/Regexp;Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;

    move-result-object v4

    .line 114
    iget v6, p0, Lcom/google/re2j/Regexp;->min:I

    add-int/2addr v6, v5

    :goto_2
    iget v7, p0, Lcom/google/re2j/Regexp;->max:I

    if-ge v6, v7, :cond_9

    .line 115
    new-instance v7, Lcom/google/re2j/Regexp;

    sget-object v8, Lcom/google/re2j/Regexp$Op;->CONCAT:Lcom/google/re2j/Regexp$Op;

    invoke-direct {v7, v8}, Lcom/google/re2j/Regexp;-><init>(Lcom/google/re2j/Regexp$Op;)V

    const/4 v8, 0x2

    .line 116
    new-array v8, v8, [Lcom/google/re2j/Regexp;

    aput-object v1, v8, v2

    aput-object v4, v8, v5

    iput-object v8, v7, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    .line 117
    sget-object v4, Lcom/google/re2j/Regexp$Op;->QUEST:Lcom/google/re2j/Regexp$Op;

    iget v8, p0, Lcom/google/re2j/Regexp;->flags:I

    invoke-static {v4, v8, v7, v0}, Lcom/google/re2j/Simplify;->simplify1(Lcom/google/re2j/Regexp$Op;ILcom/google/re2j/Regexp;Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;

    move-result-object v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_9
    if-nez v3, :cond_a

    return-object v4

    .line 122
    :cond_a
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    if-eqz v3, :cond_c

    .line 125
    new-instance p0, Lcom/google/re2j/Regexp;

    sget-object v0, Lcom/google/re2j/Regexp$Op;->CONCAT:Lcom/google/re2j/Regexp$Op;

    invoke-direct {p0, v0}, Lcom/google/re2j/Regexp;-><init>(Lcom/google/re2j/Regexp$Op;)V

    .line 126
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/re2j/Regexp;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/re2j/Regexp;

    iput-object v0, p0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    return-object p0

    .line 132
    :cond_c
    new-instance p0, Lcom/google/re2j/Regexp;

    sget-object v0, Lcom/google/re2j/Regexp$Op;->NO_MATCH:Lcom/google/re2j/Regexp$Op;

    invoke-direct {p0, v0}, Lcom/google/re2j/Regexp;-><init>(Lcom/google/re2j/Regexp$Op;)V

    return-object p0

    .line 54
    :pswitch_1
    iget-object v0, p0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/google/re2j/Simplify;->simplify(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    iget v2, p0, Lcom/google/re2j/Regexp;->flags:I

    invoke-static {v1, v2, v0, p0}, Lcom/google/re2j/Simplify;->simplify1(Lcom/google/re2j/Regexp$Op;ILcom/google/re2j/Regexp;Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;

    move-result-object p0

    return-object p0

    :pswitch_2
    move-object v3, p0

    move v1, v2

    .line 35
    :goto_3
    iget-object v4, p0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    array-length v4, v4

    if-ge v1, v4, :cond_f

    .line 36
    iget-object v4, p0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object v4, v4, v1

    .line 37
    invoke-static {v4}, Lcom/google/re2j/Simplify;->simplify(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;

    move-result-object v5

    if-ne v3, p0, :cond_d

    if-eq v5, v4, :cond_d

    .line 40
    new-instance v3, Lcom/google/re2j/Regexp;

    invoke-direct {v3, p0}, Lcom/google/re2j/Regexp;-><init>(Lcom/google/re2j/Regexp;)V

    .line 41
    iput-object v0, v3, Lcom/google/re2j/Regexp;->runes:[I

    .line 42
    iget-object v4, p0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    iget-object v6, p0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    array-length v6, v6

    invoke-static {v4, v2, v6}, Lcom/google/re2j/Parser;->subarray([Lcom/google/re2j/Regexp;II)[Lcom/google/re2j/Regexp;

    move-result-object v4

    iput-object v4, v3, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    :cond_d
    if-eq v3, p0, :cond_e

    .line 45
    iget-object v4, v3, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aput-object v5, v4, v1

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_f
    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static simplify1(Lcom/google/re2j/Regexp$Op;ILcom/google/re2j/Regexp;Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;
    .locals 3

    .line 157
    iget-object v0, p2, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v1, Lcom/google/re2j/Regexp$Op;->EMPTY_MATCH:Lcom/google/re2j/Regexp$Op;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    iget-object v0, p2, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    if-ne p0, v0, :cond_1

    and-int/lit8 v0, p1, 0x20

    iget v1, p2, Lcom/google/re2j/Regexp;->flags:I

    and-int/lit8 v1, v1, 0x20

    if-ne v0, v1, :cond_1

    :goto_0
    return-object p2

    :cond_1
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 164
    iget-object v1, p3, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    if-ne v1, p0, :cond_2

    iget v1, p3, Lcom/google/re2j/Regexp;->flags:I

    and-int/lit8 v1, v1, 0x20

    and-int/lit8 v2, p1, 0x20

    if-ne v1, v2, :cond_2

    iget-object v1, p3, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object v1, v1, v0

    if-ne p2, v1, :cond_2

    return-object p3

    .line 171
    :cond_2
    new-instance p3, Lcom/google/re2j/Regexp;

    invoke-direct {p3, p0}, Lcom/google/re2j/Regexp;-><init>(Lcom/google/re2j/Regexp$Op;)V

    .line 172
    iput p1, p3, Lcom/google/re2j/Regexp;->flags:I

    const/4 p0, 0x1

    .line 173
    new-array p0, p0, [Lcom/google/re2j/Regexp;

    aput-object p2, p0, v0

    iput-object p0, p3, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    return-object p3
.end method
