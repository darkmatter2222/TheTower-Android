.class Lcom/google/re2j/Regexp;
.super Ljava/lang/Object;
.source "Regexp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/re2j/Regexp$Op;
    }
.end annotation


# static fields
.field static final EMPTY_SUBS:[Lcom/google/re2j/Regexp;


# instance fields
.field cap:I

.field flags:I

.field max:I

.field min:I

.field name:Ljava/lang/String;

.field namedGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field op:Lcom/google/re2j/Regexp$Op;

.field runes:[I

.field subs:[Lcom/google/re2j/Regexp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 52
    new-array v0, v0, [Lcom/google/re2j/Regexp;

    sput-object v0, Lcom/google/re2j/Regexp;->EMPTY_SUBS:[Lcom/google/re2j/Regexp;

    return-void
.end method

.method constructor <init>(Lcom/google/re2j/Regexp$Op;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    return-void
.end method

.method constructor <init>(Lcom/google/re2j/Regexp;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iget-object v0, p1, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    iput-object v0, p0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    .line 72
    iget v0, p1, Lcom/google/re2j/Regexp;->flags:I

    iput v0, p0, Lcom/google/re2j/Regexp;->flags:I

    .line 73
    iget-object v0, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    iput-object v0, p0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    .line 74
    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    iput-object v0, p0, Lcom/google/re2j/Regexp;->runes:[I

    .line 75
    iget v0, p1, Lcom/google/re2j/Regexp;->min:I

    iput v0, p0, Lcom/google/re2j/Regexp;->min:I

    .line 76
    iget v0, p1, Lcom/google/re2j/Regexp;->max:I

    iput v0, p0, Lcom/google/re2j/Regexp;->max:I

    .line 77
    iget v0, p1, Lcom/google/re2j/Regexp;->cap:I

    iput v0, p0, Lcom/google/re2j/Regexp;->cap:I

    .line 78
    iget-object v0, p1, Lcom/google/re2j/Regexp;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/re2j/Regexp;->name:Ljava/lang/String;

    .line 79
    iget-object p1, p1, Lcom/google/re2j/Regexp;->namedGroups:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/re2j/Regexp;->namedGroups:Ljava/util/Map;

    return-void
.end method

.method private appendTo(Ljava/lang/StringBuilder;)V
    .locals 8

    .line 105
    sget-object v0, Lcom/google/re2j/Regexp$1;->$SwitchMap$com$google$re2j$Regexp$Op:[I

    iget-object v1, p0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    invoke-virtual {v1}, Lcom/google/re2j/Regexp$Op;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "(?:"

    const/16 v2, 0x5e

    const/16 v3, 0x29

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    .line 264
    iget-object v0, p0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void

    .line 226
    :pswitch_0
    iget-object v0, p0, Lcom/google/re2j/Regexp;->runes:[I

    array-length v0, v0

    rem-int/2addr v0, v4

    if-eqz v0, :cond_0

    .line 227
    const-string v0, "[invalid char class]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    const/16 v0, 0x5b

    .line 230
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    iget-object v0, p0, Lcom/google/re2j/Regexp;->runes:[I

    array-length v1, v0

    if-nez v1, :cond_1

    .line 232
    const-string v0, "^\\x00-\\x{10FFFF}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 233
    :cond_1
    aget v1, v0, v5

    const/16 v3, 0x2d

    if-nez v1, :cond_3

    array-length v1, v0

    sub-int/2addr v1, v6

    aget v0, v0, v1

    const v1, 0x10ffff

    if-ne v0, v1, :cond_3

    .line 236
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v6

    .line 237
    :goto_0
    iget-object v1, p0, Lcom/google/re2j/Regexp;->runes:[I

    array-length v2, v1

    sub-int/2addr v2, v6

    if-ge v0, v2, :cond_5

    .line 238
    aget v2, v1, v0

    add-int/2addr v2, v6

    add-int/lit8 v4, v0, 0x1

    .line 239
    aget v1, v1, v4

    sub-int/2addr v1, v6

    .line 240
    invoke-static {p1, v2}, Lcom/google/re2j/Regexp;->quoteIfHyphen(Ljava/lang/StringBuilder;I)V

    .line 241
    invoke-static {p1, v2}, Lcom/google/re2j/Utils;->escapeRune(Ljava/lang/StringBuilder;I)V

    if-eq v2, v1, :cond_2

    .line 243
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 244
    invoke-static {p1, v1}, Lcom/google/re2j/Regexp;->quoteIfHyphen(Ljava/lang/StringBuilder;I)V

    .line 245
    invoke-static {p1, v1}, Lcom/google/re2j/Utils;->escapeRune(Ljava/lang/StringBuilder;I)V

    :cond_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 249
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/re2j/Regexp;->runes:[I

    array-length v1, v0

    if-ge v5, v1, :cond_5

    .line 250
    aget v1, v0, v5

    add-int/lit8 v2, v5, 0x1

    .line 251
    aget v0, v0, v2

    .line 252
    invoke-static {p1, v1}, Lcom/google/re2j/Regexp;->quoteIfHyphen(Ljava/lang/StringBuilder;I)V

    .line 253
    invoke-static {p1, v1}, Lcom/google/re2j/Utils;->escapeRune(Ljava/lang/StringBuilder;I)V

    if-eq v1, v0, :cond_4

    .line 255
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    invoke-static {p1, v0}, Lcom/google/re2j/Regexp;->quoteIfHyphen(Ljava/lang/StringBuilder;I)V

    .line 257
    invoke-static {p1, v0}, Lcom/google/re2j/Utils;->escapeRune(Ljava/lang/StringBuilder;I)V

    :cond_4
    add-int/lit8 v5, v5, 0x2

    goto :goto_1

    :cond_5
    :goto_2
    const/16 v0, 0x5d

    .line 261
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 223
    :pswitch_1
    const-string v0, "\\B"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 220
    :pswitch_2
    const-string v0, "\\b"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_3
    const/16 v0, 0x24

    .line 217
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 214
    :pswitch_4
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 207
    :pswitch_5
    iget v0, p0, Lcom/google/re2j/Regexp;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_6

    .line 208
    const-string v0, "(?-m:$)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 210
    :cond_6
    const-string v0, "\\z"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 204
    :pswitch_6
    const-string v0, "\\A"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 191
    :pswitch_7
    iget-object v0, p0, Lcom/google/re2j/Regexp;->name:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    .line 194
    :cond_7
    const-string v0, "(?P<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget-object v0, p0, Lcom/google/re2j/Regexp;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_8
    :goto_3
    const/16 v0, 0x28

    .line 192
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 198
    :goto_4
    iget-object v0, p0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object v0, v0, v5

    iget-object v0, v0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v1, Lcom/google/re2j/Regexp$Op;->EMPTY_MATCH:Lcom/google/re2j/Regexp$Op;

    if-eq v0, v1, :cond_9

    .line 199
    iget-object v0, p0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object v0, v0, v5

    invoke-direct {v0, p1}, Lcom/google/re2j/Regexp;->appendTo(Ljava/lang/StringBuilder;)V

    .line 201
    :cond_9
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 188
    :pswitch_8
    const-string v0, "(?s:.)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 185
    :pswitch_9
    const-string v0, "(?-s:.)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 174
    :pswitch_a
    iget v0, p0, Lcom/google/re2j/Regexp;->flags:I

    and-int/2addr v0, v6

    if-eqz v0, :cond_a

    .line 175
    const-string v0, "(?i:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :cond_a
    iget-object v0, p0, Lcom/google/re2j/Regexp;->runes:[I

    array-length v1, v0

    :goto_5
    if-ge v5, v1, :cond_b

    aget v2, v0, v5

    .line 178
    invoke-static {p1, v2}, Lcom/google/re2j/Utils;->escapeRune(Ljava/lang/StringBuilder;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 180
    :cond_b
    iget v0, p0, Lcom/google/re2j/Regexp;->flags:I

    and-int/2addr v0, v6

    if-eqz v0, :cond_14

    .line 181
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 166
    :pswitch_b
    iget-object v0, p0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    array-length v1, v0

    const-string v2, ""

    :goto_6
    if-ge v5, v1, :cond_14

    aget-object v3, v0, v5

    .line 167
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-direct {v3, p1}, Lcom/google/re2j/Regexp;->appendTo(Ljava/lang/StringBuilder;)V

    add-int/lit8 v5, v5, 0x1

    .line 166
    const-string v2, "|"

    goto :goto_6

    .line 153
    :pswitch_c
    iget-object v0, p0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    array-length v2, v0

    :goto_7
    if-ge v5, v2, :cond_14

    aget-object v4, v0, v5

    .line 154
    iget-object v6, v4, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v7, Lcom/google/re2j/Regexp$Op;->ALTERNATE:Lcom/google/re2j/Regexp$Op;

    if-ne v6, v7, :cond_c

    .line 155
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-direct {v4, p1}, Lcom/google/re2j/Regexp;->appendTo(Ljava/lang/StringBuilder;)V

    .line 157
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 159
    :cond_c
    invoke-direct {v4, p1}, Lcom/google/re2j/Regexp;->appendTo(Ljava/lang/StringBuilder;)V

    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 110
    :pswitch_d
    const-string v0, "(?:)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 107
    :pswitch_e
    const-string v0, "[^\\x00-\\x{10FFFF}]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 117
    :pswitch_f
    iget-object v0, p0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object v0, v0, v5

    .line 118
    iget-object v2, v0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    invoke-virtual {v2}, Lcom/google/re2j/Regexp$Op;->ordinal()I

    move-result v2

    sget-object v5, Lcom/google/re2j/Regexp$Op;->CAPTURE:Lcom/google/re2j/Regexp$Op;

    invoke-virtual {v5}, Lcom/google/re2j/Regexp$Op;->ordinal()I

    move-result v5

    if-gt v2, v5, :cond_e

    iget-object v2, v0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v5, Lcom/google/re2j/Regexp$Op;->LITERAL:Lcom/google/re2j/Regexp$Op;

    if-ne v2, v5, :cond_d

    iget-object v2, v0, Lcom/google/re2j/Regexp;->runes:[I

    array-length v2, v2

    if-le v2, v6, :cond_d

    goto :goto_9

    .line 124
    :cond_d
    invoke-direct {v0, p1}, Lcom/google/re2j/Regexp;->appendTo(Ljava/lang/StringBuilder;)V

    goto :goto_a

    .line 120
    :cond_e
    :goto_9
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-direct {v0, p1}, Lcom/google/re2j/Regexp;->appendTo(Ljava/lang/StringBuilder;)V

    .line 122
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    :goto_a
    sget-object v0, Lcom/google/re2j/Regexp$1;->$SwitchMap$com$google$re2j$Regexp$Op:[I

    iget-object v1, p0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    invoke-virtual {v1}, Lcom/google/re2j/Regexp$Op;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x3f

    if-eq v0, v6, :cond_13

    if-eq v0, v4, :cond_12

    const/4 v2, 0x3

    if-eq v0, v2, :cond_11

    const/4 v2, 0x4

    if-eq v0, v2, :cond_f

    goto :goto_b

    :cond_f
    const/16 v0, 0x7b

    .line 137
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/re2j/Regexp;->min:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    iget v0, p0, Lcom/google/re2j/Regexp;->min:I

    iget v2, p0, Lcom/google/re2j/Regexp;->max:I

    if-eq v0, v2, :cond_10

    const/16 v0, 0x2c

    .line 139
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    iget v0, p0, Lcom/google/re2j/Regexp;->max:I

    if-ltz v0, :cond_10

    .line 141
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_10
    const/16 v0, 0x7d

    .line 144
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 134
    :cond_11
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_12
    const/16 v0, 0x2b

    .line 131
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_13
    const/16 v0, 0x2a

    .line 128
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 147
    :goto_b
    iget v0, p0, Lcom/google/re2j/Regexp;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_14

    .line 148
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_14
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static quoteIfHyphen(Ljava/lang/StringBuilder;I)V
    .locals 1

    const/16 v0, 0x2d

    if-ne p1, v0, :cond_0

    const/16 p1, 0x5c

    .line 99
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 319
    instance-of v0, p1, Lcom/google/re2j/Regexp;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 323
    :cond_0
    check-cast p1, Lcom/google/re2j/Regexp;

    .line 324
    iget-object v0, p0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    iget-object v2, p1, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    if-eq v0, v2, :cond_1

    return v1

    .line 327
    :cond_1
    sget-object v0, Lcom/google/re2j/Regexp$1;->$SwitchMap$com$google$re2j$Regexp$Op:[I

    iget-object v2, p0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    invoke-virtual {v2}, Lcom/google/re2j/Regexp$Op;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_d

    const/4 v3, 0x2

    if-eq v0, v3, :cond_d

    const/4 v3, 0x3

    if-eq v0, v3, :cond_d

    const/4 v3, 0x4

    if-eq v0, v3, :cond_b

    const/4 v3, 0x7

    if-eq v0, v3, :cond_8

    const/16 v3, 0x8

    if-eq v0, v3, :cond_8

    const/16 v3, 0x9

    if-eq v0, v3, :cond_7

    const/16 v3, 0xc

    if-eq v0, v3, :cond_3

    const/16 v3, 0xe

    if-eq v0, v3, :cond_2

    const/16 v3, 0x13

    if-eq v0, v3, :cond_7

    goto/16 :goto_2

    .line 330
    :cond_2
    iget v0, p0, Lcom/google/re2j/Regexp;->flags:I

    and-int/lit16 v0, v0, 0x100

    iget p1, p1, Lcom/google/re2j/Regexp;->flags:I

    and-int/lit16 p1, p1, 0x100

    if-eq v0, p1, :cond_e

    return v1

    .line 368
    :cond_3
    iget v0, p0, Lcom/google/re2j/Regexp;->cap:I

    iget v3, p1, Lcom/google/re2j/Regexp;->cap:I

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lcom/google/re2j/Regexp;->name:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/google/re2j/Regexp;->name:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_4
    iget-object v3, p1, Lcom/google/re2j/Regexp;->name:Ljava/lang/String;

    .line 369
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object v0, v0, v1

    iget-object p1, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object p1, p1, v1

    .line 370
    invoke-virtual {v0, p1}, Lcom/google/re2j/Regexp;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    :cond_6
    :goto_0
    return v1

    .line 336
    :cond_7
    iget-object v0, p0, Lcom/google/re2j/Regexp;->runes:[I

    iget-object p1, p1, Lcom/google/re2j/Regexp;->runes:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-nez p1, :cond_e

    return v1

    .line 342
    :cond_8
    iget-object v0, p0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    array-length v0, v0

    iget-object v3, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    array-length v3, v3

    if-eq v0, v3, :cond_9

    return v1

    :cond_9
    move v0, v1

    .line 345
    :goto_1
    iget-object v3, p0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    array-length v4, v3

    if-ge v0, v4, :cond_e

    .line 346
    aget-object v3, v3, v0

    iget-object v4, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Lcom/google/re2j/Regexp;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    return v1

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 360
    :cond_b
    iget v0, p0, Lcom/google/re2j/Regexp;->flags:I

    and-int/lit8 v0, v0, 0x20

    iget v3, p1, Lcom/google/re2j/Regexp;->flags:I

    and-int/lit8 v3, v3, 0x20

    if-ne v0, v3, :cond_c

    iget v0, p0, Lcom/google/re2j/Regexp;->min:I

    iget v3, p1, Lcom/google/re2j/Regexp;->min:I

    if-ne v0, v3, :cond_c

    iget v0, p0, Lcom/google/re2j/Regexp;->max:I

    iget v3, p1, Lcom/google/re2j/Regexp;->max:I

    if-ne v0, v3, :cond_c

    iget-object v0, p0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object v0, v0, v1

    iget-object p1, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object p1, p1, v1

    .line 363
    invoke-virtual {v0, p1}, Lcom/google/re2j/Regexp;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    :cond_c
    return v1

    .line 354
    :cond_d
    iget v0, p0, Lcom/google/re2j/Regexp;->flags:I

    and-int/lit8 v0, v0, 0x20

    iget v3, p1, Lcom/google/re2j/Regexp;->flags:I

    and-int/lit8 v3, v3, 0x20

    if-ne v0, v3, :cond_f

    iget-object v0, p0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object v0, v0, v1

    iget-object p1, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object p1, p1, v1

    .line 355
    invoke-virtual {v0, p1}, Lcom/google/re2j/Regexp;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_3

    :cond_e
    :goto_2
    return v2

    :cond_f
    :goto_3
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 288
    iget-object v0, p0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    invoke-virtual {v0}, Lcom/google/re2j/Regexp$Op;->hashCode()I

    move-result v0

    .line 289
    sget-object v1, Lcom/google/re2j/Regexp$1;->$SwitchMap$com$google$re2j$Regexp$Op:[I

    iget-object v2, p0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    invoke-virtual {v2}, Lcom/google/re2j/Regexp$Op;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    const/4 v2, 0x4

    if-eq v1, v2, :cond_5

    const/4 v2, 0x7

    if-eq v1, v2, :cond_4

    const/16 v2, 0x8

    if-eq v1, v2, :cond_4

    const/16 v2, 0x9

    if-eq v1, v2, :cond_3

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    const/16 v2, 0xe

    if-eq v1, v2, :cond_0

    const/16 v2, 0x13

    if-eq v1, v2, :cond_3

    return v0

    .line 291
    :cond_0
    iget v1, p0, Lcom/google/re2j/Regexp;->flags:I

    and-int/lit16 v1, v1, 0x100

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    :goto_1
    add-int/2addr v0, v1

    return v0

    .line 310
    :cond_1
    iget v1, p0, Lcom/google/re2j/Regexp;->cap:I

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/re2j/Regexp;->name:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/google/re2j/Regexp;->hashCode()I

    move-result v2

    :goto_3
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    goto :goto_1

    .line 295
    :cond_3
    iget-object v1, p0, Lcom/google/re2j/Regexp;->runes:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    goto :goto_0

    .line 299
    :cond_4
    iget-object v1, p0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    invoke-static {v1}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    .line 307
    :cond_5
    iget v1, p0, Lcom/google/re2j/Regexp;->min:I

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Lcom/google/re2j/Regexp;->max:I

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/google/re2j/Regexp;->hashCode()I

    move-result v2

    goto :goto_3

    .line 304
    :cond_6
    iget v1, p0, Lcom/google/re2j/Regexp;->flags:I

    and-int/lit8 v1, v1, 0x20

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/google/re2j/Regexp;->hashCode()I

    move-result v2

    goto :goto_3
.end method

.method maxCap()I
    .locals 5

    .line 272
    iget-object v0, p0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v1, Lcom/google/re2j/Regexp$Op;->CAPTURE:Lcom/google/re2j/Regexp$Op;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 273
    iget v0, p0, Lcom/google/re2j/Regexp;->cap:I

    goto :goto_0

    :cond_0
    move v0, v2

    .line 275
    :goto_0
    iget-object v1, p0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    if-eqz v1, :cond_2

    .line 276
    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v1, v2

    .line 277
    invoke-virtual {v4}, Lcom/google/re2j/Regexp;->maxCap()I

    move-result v4

    if-ge v0, v4, :cond_1

    move v0, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return v0
.end method

.method reinit()V
    .locals 2

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/google/re2j/Regexp;->flags:I

    .line 84
    sget-object v1, Lcom/google/re2j/Regexp;->EMPTY_SUBS:[Lcom/google/re2j/Regexp;

    iput-object v1, p0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    const/4 v1, 0x0

    .line 85
    iput-object v1, p0, Lcom/google/re2j/Regexp;->runes:[I

    .line 86
    iput v0, p0, Lcom/google/re2j/Regexp;->max:I

    iput v0, p0, Lcom/google/re2j/Regexp;->min:I

    iput v0, p0, Lcom/google/re2j/Regexp;->cap:I

    .line 87
    iput-object v1, p0, Lcom/google/re2j/Regexp;->name:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    invoke-direct {p0, v0}, Lcom/google/re2j/Regexp;->appendTo(Ljava/lang/StringBuilder;)V

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
