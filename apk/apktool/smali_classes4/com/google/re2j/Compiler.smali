.class Lcom/google/re2j/Compiler;
.super Ljava/lang/Object;
.source "Compiler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/re2j/Compiler$Frag;
    }
.end annotation


# static fields
.field private static final ANY_RUNE:[I

.field private static final ANY_RUNE_NOT_NL:[I


# instance fields
.field private final prog:Lcom/google/re2j/Prog;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x9

    const/16 v2, 0xb

    const v3, 0x10ffff

    .line 187
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v1

    sput-object v1, Lcom/google/re2j/Compiler;->ANY_RUNE_NOT_NL:[I

    .line 188
    filled-new-array {v0, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/google/re2j/Compiler;->ANY_RUNE:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/google/re2j/Prog;

    invoke-direct {v0}, Lcom/google/re2j/Prog;-><init>()V

    iput-object v0, p0, Lcom/google/re2j/Compiler;->prog:Lcom/google/re2j/Prog;

    const/4 v0, 0x5

    .line 45
    invoke-direct {p0, v0}, Lcom/google/re2j/Compiler;->newInst(I)Lcom/google/re2j/Compiler$Frag;

    return-void
.end method

.method private alt(Lcom/google/re2j/Compiler$Frag;Lcom/google/re2j/Compiler$Frag;)Lcom/google/re2j/Compiler$Frag;
    .locals 3

    .line 99
    iget v0, p1, Lcom/google/re2j/Compiler$Frag;->i:I

    if-nez v0, :cond_0

    return-object p2

    .line 102
    :cond_0
    iget v0, p2, Lcom/google/re2j/Compiler$Frag;->i:I

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    const/4 v0, 0x1

    .line 105
    invoke-direct {p0, v0}, Lcom/google/re2j/Compiler;->newInst(I)Lcom/google/re2j/Compiler$Frag;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/google/re2j/Compiler;->prog:Lcom/google/re2j/Prog;

    iget v2, v0, Lcom/google/re2j/Compiler$Frag;->i:I

    invoke-virtual {v1, v2}, Lcom/google/re2j/Prog;->getInst(I)Lcom/google/re2j/Inst;

    move-result-object v1

    .line 107
    iget v2, p1, Lcom/google/re2j/Compiler$Frag;->i:I

    iput v2, v1, Lcom/google/re2j/Inst;->out:I

    .line 108
    iget v2, p2, Lcom/google/re2j/Compiler$Frag;->i:I

    iput v2, v1, Lcom/google/re2j/Inst;->arg:I

    .line 109
    iget-object v1, p0, Lcom/google/re2j/Compiler;->prog:Lcom/google/re2j/Prog;

    iget p1, p1, Lcom/google/re2j/Compiler$Frag;->out:I

    iget p2, p2, Lcom/google/re2j/Compiler$Frag;->out:I

    invoke-virtual {v1, p1, p2}, Lcom/google/re2j/Prog;->append(II)I

    move-result p1

    iput p1, v0, Lcom/google/re2j/Compiler$Frag;->out:I

    return-object v0
.end method

.method private cap(I)Lcom/google/re2j/Compiler$Frag;
    .locals 3

    const/4 v0, 0x3

    .line 76
    invoke-direct {p0, v0}, Lcom/google/re2j/Compiler;->newInst(I)Lcom/google/re2j/Compiler$Frag;

    move-result-object v0

    .line 77
    iget v1, v0, Lcom/google/re2j/Compiler$Frag;->i:I

    shl-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/re2j/Compiler$Frag;->out:I

    .line 78
    iget-object v1, p0, Lcom/google/re2j/Compiler;->prog:Lcom/google/re2j/Prog;

    iget v2, v0, Lcom/google/re2j/Compiler$Frag;->i:I

    invoke-virtual {v1, v2}, Lcom/google/re2j/Prog;->getInst(I)Lcom/google/re2j/Inst;

    move-result-object v1

    iput p1, v1, Lcom/google/re2j/Inst;->arg:I

    .line 79
    iget-object v1, p0, Lcom/google/re2j/Compiler;->prog:Lcom/google/re2j/Prog;

    iget v1, v1, Lcom/google/re2j/Prog;->numCap:I

    add-int/lit8 p1, p1, 0x1

    if-ge v1, p1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/google/re2j/Compiler;->prog:Lcom/google/re2j/Prog;

    iput p1, v1, Lcom/google/re2j/Prog;->numCap:I

    :cond_0
    return-object v0
.end method

.method private cat(Lcom/google/re2j/Compiler$Frag;Lcom/google/re2j/Compiler$Frag;)Lcom/google/re2j/Compiler$Frag;
    .locals 3

    .line 88
    iget v0, p1, Lcom/google/re2j/Compiler$Frag;->i:I

    if-eqz v0, :cond_1

    iget v0, p2, Lcom/google/re2j/Compiler$Frag;->i:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/google/re2j/Compiler;->prog:Lcom/google/re2j/Prog;

    iget v1, p1, Lcom/google/re2j/Compiler$Frag;->out:I

    iget v2, p2, Lcom/google/re2j/Compiler$Frag;->i:I

    invoke-virtual {v0, v1, v2}, Lcom/google/re2j/Prog;->patch(II)V

    .line 93
    new-instance v0, Lcom/google/re2j/Compiler$Frag;

    iget p1, p1, Lcom/google/re2j/Compiler$Frag;->i:I

    iget p2, p2, Lcom/google/re2j/Compiler$Frag;->out:I

    invoke-direct {v0, p1, p2}, Lcom/google/re2j/Compiler$Frag;-><init>(II)V

    return-object v0

    .line 89
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/re2j/Compiler;->fail()Lcom/google/re2j/Compiler$Frag;

    move-result-object p1

    return-object p1
.end method

.method private compile(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Compiler$Frag;
    .locals 6

    .line 191
    sget-object v0, Lcom/google/re2j/Compiler$1;->$SwitchMap$com$google$re2j$Regexp$Op:[I

    iget-object v1, p1, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    invoke-virtual {v1}, Lcom/google/re2j/Regexp$Op;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/16 v2, 0x20

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    .line 261
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "regexp: unhandled case in compile"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 249
    :pswitch_0
    iget-object v0, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 250
    invoke-direct {p0}, Lcom/google/re2j/Compiler;->nop()Lcom/google/re2j/Compiler$Frag;

    move-result-object p1

    return-object p1

    .line 253
    :cond_0
    iget-object p1, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    array-length v0, p1

    :goto_0
    if-ge v4, v0, :cond_2

    aget-object v2, p1, v4

    .line 254
    invoke-direct {p0, v2}, Lcom/google/re2j/Compiler;->compile(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Compiler$Frag;

    move-result-object v2

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_1

    .line 255
    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/google/re2j/Compiler;->alt(Lcom/google/re2j/Compiler$Frag;Lcom/google/re2j/Compiler$Frag;)Lcom/google/re2j/Compiler$Frag;

    move-result-object v1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    .line 237
    :pswitch_1
    iget-object v0, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    array-length v0, v0

    if-nez v0, :cond_3

    .line 238
    invoke-direct {p0}, Lcom/google/re2j/Compiler;->nop()Lcom/google/re2j/Compiler$Frag;

    move-result-object p1

    return-object p1

    .line 241
    :cond_3
    iget-object p1, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    array-length v0, p1

    :goto_2
    if-ge v4, v0, :cond_5

    aget-object v2, p1, v4

    .line 242
    invoke-direct {p0, v2}, Lcom/google/re2j/Compiler;->compile(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Compiler$Frag;

    move-result-object v2

    if-nez v1, :cond_4

    move-object v1, v2

    goto :goto_3

    .line 243
    :cond_4
    invoke-direct {p0, v1, v2}, Lcom/google/re2j/Compiler;->cat(Lcom/google/re2j/Compiler$Frag;Lcom/google/re2j/Compiler$Frag;)Lcom/google/re2j/Compiler$Frag;

    move-result-object v1

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    return-object v1

    .line 235
    :pswitch_2
    iget-object v0, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object v0, v0, v4

    invoke-direct {p0, v0}, Lcom/google/re2j/Compiler;->compile(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Compiler$Frag;

    move-result-object v0

    iget p1, p1, Lcom/google/re2j/Regexp;->flags:I

    and-int/2addr p1, v2

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    move v3, v4

    :goto_4
    invoke-direct {p0, v0, v3}, Lcom/google/re2j/Compiler;->quest(Lcom/google/re2j/Compiler$Frag;Z)Lcom/google/re2j/Compiler$Frag;

    move-result-object p1

    return-object p1

    .line 233
    :pswitch_3
    iget-object v0, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object v0, v0, v4

    invoke-direct {p0, v0}, Lcom/google/re2j/Compiler;->compile(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Compiler$Frag;

    move-result-object v0

    iget p1, p1, Lcom/google/re2j/Regexp;->flags:I

    and-int/2addr p1, v2

    if-eqz p1, :cond_7

    goto :goto_5

    :cond_7
    move v3, v4

    :goto_5
    invoke-direct {p0, v0, v3}, Lcom/google/re2j/Compiler;->plus(Lcom/google/re2j/Compiler$Frag;Z)Lcom/google/re2j/Compiler$Frag;

    move-result-object p1

    return-object p1

    .line 231
    :pswitch_4
    iget-object v0, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object v0, v0, v4

    invoke-direct {p0, v0}, Lcom/google/re2j/Compiler;->compile(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Compiler$Frag;

    move-result-object v0

    iget p1, p1, Lcom/google/re2j/Regexp;->flags:I

    and-int/2addr p1, v2

    if-eqz p1, :cond_8

    goto :goto_6

    :cond_8
    move v3, v4

    :goto_6
    invoke-direct {p0, v0, v3}, Lcom/google/re2j/Compiler;->star(Lcom/google/re2j/Compiler$Frag;Z)Lcom/google/re2j/Compiler$Frag;

    move-result-object p1

    return-object p1

    .line 227
    :pswitch_5
    iget v0, p1, Lcom/google/re2j/Regexp;->cap:I

    shl-int/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/google/re2j/Compiler;->cap(I)Lcom/google/re2j/Compiler$Frag;

    move-result-object v0

    iget-object v1, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object v1, v1, v4

    invoke-direct {p0, v1}, Lcom/google/re2j/Compiler;->compile(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Compiler$Frag;

    move-result-object v1

    iget p1, p1, Lcom/google/re2j/Regexp;->cap:I

    shl-int/2addr p1, v3

    or-int/2addr p1, v3

    invoke-direct {p0, p1}, Lcom/google/re2j/Compiler;->cap(I)Lcom/google/re2j/Compiler$Frag;

    move-result-object p1

    .line 228
    invoke-direct {p0, v0, v1}, Lcom/google/re2j/Compiler;->cat(Lcom/google/re2j/Compiler$Frag;Lcom/google/re2j/Compiler$Frag;)Lcom/google/re2j/Compiler$Frag;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/re2j/Compiler;->cat(Lcom/google/re2j/Compiler$Frag;Lcom/google/re2j/Compiler$Frag;)Lcom/google/re2j/Compiler$Frag;

    move-result-object p1

    return-object p1

    .line 224
    :pswitch_6
    invoke-direct {p0, v2}, Lcom/google/re2j/Compiler;->empty(I)Lcom/google/re2j/Compiler$Frag;

    move-result-object p1

    return-object p1

    :pswitch_7
    const/16 p1, 0x10

    .line 222
    invoke-direct {p0, p1}, Lcom/google/re2j/Compiler;->empty(I)Lcom/google/re2j/Compiler$Frag;

    move-result-object p1

    return-object p1

    :pswitch_8
    const/16 p1, 0x8

    .line 220
    invoke-direct {p0, p1}, Lcom/google/re2j/Compiler;->empty(I)Lcom/google/re2j/Compiler$Frag;

    move-result-object p1

    return-object p1

    :pswitch_9
    const/4 p1, 0x4

    .line 218
    invoke-direct {p0, p1}, Lcom/google/re2j/Compiler;->empty(I)Lcom/google/re2j/Compiler$Frag;

    move-result-object p1

    return-object p1

    :pswitch_a
    const/4 p1, 0x2

    .line 216
    invoke-direct {p0, p1}, Lcom/google/re2j/Compiler;->empty(I)Lcom/google/re2j/Compiler$Frag;

    move-result-object p1

    return-object p1

    .line 214
    :pswitch_b
    invoke-direct {p0, v3}, Lcom/google/re2j/Compiler;->empty(I)Lcom/google/re2j/Compiler$Frag;

    move-result-object p1

    return-object p1

    .line 212
    :pswitch_c
    sget-object p1, Lcom/google/re2j/Compiler;->ANY_RUNE:[I

    invoke-direct {p0, p1, v4}, Lcom/google/re2j/Compiler;->rune([II)Lcom/google/re2j/Compiler$Frag;

    move-result-object p1

    return-object p1

    .line 210
    :pswitch_d
    sget-object p1, Lcom/google/re2j/Compiler;->ANY_RUNE_NOT_NL:[I

    invoke-direct {p0, p1, v4}, Lcom/google/re2j/Compiler;->rune([II)Lcom/google/re2j/Compiler$Frag;

    move-result-object p1

    return-object p1

    .line 208
    :pswitch_e
    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    iget p1, p1, Lcom/google/re2j/Regexp;->flags:I

    invoke-direct {p0, v0, p1}, Lcom/google/re2j/Compiler;->rune([II)Lcom/google/re2j/Compiler$Frag;

    move-result-object p1

    return-object p1

    .line 197
    :pswitch_f
    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    array-length v0, v0

    if-nez v0, :cond_9

    .line 198
    invoke-direct {p0}, Lcom/google/re2j/Compiler;->nop()Lcom/google/re2j/Compiler$Frag;

    move-result-object p1

    return-object p1

    .line 201
    :cond_9
    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    array-length v2, v0

    :goto_7
    if-ge v4, v2, :cond_b

    aget v3, v0, v4

    .line 202
    iget v5, p1, Lcom/google/re2j/Regexp;->flags:I

    invoke-direct {p0, v3, v5}, Lcom/google/re2j/Compiler;->rune(II)Lcom/google/re2j/Compiler$Frag;

    move-result-object v3

    if-nez v1, :cond_a

    move-object v1, v3

    goto :goto_8

    .line 203
    :cond_a
    invoke-direct {p0, v1, v3}, Lcom/google/re2j/Compiler;->cat(Lcom/google/re2j/Compiler$Frag;Lcom/google/re2j/Compiler$Frag;)Lcom/google/re2j/Compiler$Frag;

    move-result-object v1

    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_b
    return-object v1

    .line 195
    :pswitch_10
    invoke-direct {p0}, Lcom/google/re2j/Compiler;->nop()Lcom/google/re2j/Compiler$Frag;

    move-result-object p1

    return-object p1

    .line 193
    :pswitch_11
    invoke-direct {p0}, Lcom/google/re2j/Compiler;->fail()Lcom/google/re2j/Compiler$Frag;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
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

.method static compileRegexp(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Prog;
    .locals 4

    .line 49
    new-instance v0, Lcom/google/re2j/Compiler;

    invoke-direct {v0}, Lcom/google/re2j/Compiler;-><init>()V

    .line 50
    invoke-direct {v0, p0}, Lcom/google/re2j/Compiler;->compile(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Compiler$Frag;

    move-result-object p0

    .line 51
    iget-object v1, v0, Lcom/google/re2j/Compiler;->prog:Lcom/google/re2j/Prog;

    iget v2, p0, Lcom/google/re2j/Compiler$Frag;->out:I

    const/4 v3, 0x6

    invoke-direct {v0, v3}, Lcom/google/re2j/Compiler;->newInst(I)Lcom/google/re2j/Compiler$Frag;

    move-result-object v3

    iget v3, v3, Lcom/google/re2j/Compiler$Frag;->i:I

    invoke-virtual {v1, v2, v3}, Lcom/google/re2j/Prog;->patch(II)V

    .line 52
    iget-object v1, v0, Lcom/google/re2j/Compiler;->prog:Lcom/google/re2j/Prog;

    iget p0, p0, Lcom/google/re2j/Compiler$Frag;->i:I

    iput p0, v1, Lcom/google/re2j/Prog;->start:I

    .line 53
    iget-object p0, v0, Lcom/google/re2j/Compiler;->prog:Lcom/google/re2j/Prog;

    return-object p0
.end method

.method private empty(I)Lcom/google/re2j/Compiler$Frag;
    .locals 3

    const/4 v0, 0x4

    .line 150
    invoke-direct {p0, v0}, Lcom/google/re2j/Compiler;->newInst(I)Lcom/google/re2j/Compiler$Frag;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/google/re2j/Compiler;->prog:Lcom/google/re2j/Prog;

    iget v2, v0, Lcom/google/re2j/Compiler$Frag;->i:I

    invoke-virtual {v1, v2}, Lcom/google/re2j/Prog;->getInst(I)Lcom/google/re2j/Inst;

    move-result-object v1

    iput p1, v1, Lcom/google/re2j/Inst;->arg:I

    .line 152
    iget p1, v0, Lcom/google/re2j/Compiler$Frag;->i:I

    shl-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/google/re2j/Compiler$Frag;->out:I

    return-object v0
.end method

.method private fail()Lcom/google/re2j/Compiler$Frag;
    .locals 1

    .line 70
    new-instance v0, Lcom/google/re2j/Compiler$Frag;

    invoke-direct {v0}, Lcom/google/re2j/Compiler$Frag;-><init>()V

    return-object v0
.end method

.method private newInst(I)Lcom/google/re2j/Compiler$Frag;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/google/re2j/Compiler;->prog:Lcom/google/re2j/Prog;

    invoke-virtual {v0, p1}, Lcom/google/re2j/Prog;->addInst(I)V

    .line 59
    new-instance p1, Lcom/google/re2j/Compiler$Frag;

    iget-object v0, p0, Lcom/google/re2j/Compiler;->prog:Lcom/google/re2j/Prog;

    invoke-virtual {v0}, Lcom/google/re2j/Prog;->numInst()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p1, v0}, Lcom/google/re2j/Compiler$Frag;-><init>(I)V

    return-object p1
.end method

.method private nop()Lcom/google/re2j/Compiler$Frag;
    .locals 2

    const/4 v0, 0x7

    .line 64
    invoke-direct {p0, v0}, Lcom/google/re2j/Compiler;->newInst(I)Lcom/google/re2j/Compiler$Frag;

    move-result-object v0

    .line 65
    iget v1, v0, Lcom/google/re2j/Compiler$Frag;->i:I

    shl-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/re2j/Compiler$Frag;->out:I

    return-object v0
.end method

.method private plus(Lcom/google/re2j/Compiler$Frag;Z)Lcom/google/re2j/Compiler$Frag;
    .locals 2

    .line 145
    new-instance v0, Lcom/google/re2j/Compiler$Frag;

    iget v1, p1, Lcom/google/re2j/Compiler$Frag;->i:I

    invoke-direct {p0, p1, p2}, Lcom/google/re2j/Compiler;->star(Lcom/google/re2j/Compiler$Frag;Z)Lcom/google/re2j/Compiler$Frag;

    move-result-object p1

    iget p1, p1, Lcom/google/re2j/Compiler$Frag;->out:I

    invoke-direct {v0, v1, p1}, Lcom/google/re2j/Compiler$Frag;-><init>(II)V

    return-object v0
.end method

.method private quest(Lcom/google/re2j/Compiler$Frag;Z)Lcom/google/re2j/Compiler$Frag;
    .locals 4

    const/4 v0, 0x1

    .line 115
    invoke-direct {p0, v0}, Lcom/google/re2j/Compiler;->newInst(I)Lcom/google/re2j/Compiler$Frag;

    move-result-object v1

    .line 116
    iget-object v2, p0, Lcom/google/re2j/Compiler;->prog:Lcom/google/re2j/Prog;

    iget v3, v1, Lcom/google/re2j/Compiler$Frag;->i:I

    invoke-virtual {v2, v3}, Lcom/google/re2j/Prog;->getInst(I)Lcom/google/re2j/Inst;

    move-result-object v2

    if-eqz p2, :cond_0

    .line 118
    iget p2, p1, Lcom/google/re2j/Compiler$Frag;->i:I

    iput p2, v2, Lcom/google/re2j/Inst;->arg:I

    .line 119
    iget p2, v1, Lcom/google/re2j/Compiler$Frag;->i:I

    shl-int/2addr p2, v0

    iput p2, v1, Lcom/google/re2j/Compiler$Frag;->out:I

    goto :goto_0

    .line 121
    :cond_0
    iget p2, p1, Lcom/google/re2j/Compiler$Frag;->i:I

    iput p2, v2, Lcom/google/re2j/Inst;->out:I

    .line 122
    iget p2, v1, Lcom/google/re2j/Compiler$Frag;->i:I

    shl-int/2addr p2, v0

    or-int/2addr p2, v0

    iput p2, v1, Lcom/google/re2j/Compiler$Frag;->out:I

    .line 124
    :goto_0
    iget-object p2, p0, Lcom/google/re2j/Compiler;->prog:Lcom/google/re2j/Prog;

    iget v0, v1, Lcom/google/re2j/Compiler$Frag;->out:I

    iget p1, p1, Lcom/google/re2j/Compiler$Frag;->out:I

    invoke-virtual {p2, v0, p1}, Lcom/google/re2j/Prog;->append(II)I

    move-result p1

    iput p1, v1, Lcom/google/re2j/Compiler$Frag;->out:I

    return-object v1
.end method

.method private rune(II)Lcom/google/re2j/Compiler$Frag;
    .locals 0

    .line 157
    filled-new-array {p1}, [I

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/re2j/Compiler;->rune([II)Lcom/google/re2j/Compiler$Frag;

    move-result-object p1

    return-object p1
.end method

.method private rune([II)Lcom/google/re2j/Compiler$Frag;
    .locals 8

    const/16 v0, 0x8

    .line 162
    invoke-direct {p0, v0}, Lcom/google/re2j/Compiler;->newInst(I)Lcom/google/re2j/Compiler$Frag;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/google/re2j/Compiler;->prog:Lcom/google/re2j/Prog;

    iget v2, v0, Lcom/google/re2j/Compiler$Frag;->i:I

    invoke-virtual {v1, v2}, Lcom/google/re2j/Prog;->getInst(I)Lcom/google/re2j/Inst;

    move-result-object v1

    .line 164
    iput-object p1, v1, Lcom/google/re2j/Inst;->runes:[I

    const/4 v2, 0x1

    and-int/2addr p2, v2

    .line 166
    array-length v3, p1

    const/4 v4, 0x0

    if-ne v3, v2, :cond_0

    aget v3, p1, v4

    invoke-static {v3}, Lcom/google/re2j/Unicode;->simpleFold(I)I

    move-result v3

    aget v5, p1, v4

    if-ne v3, v5, :cond_1

    :cond_0
    move p2, v4

    .line 169
    :cond_1
    iput p2, v1, Lcom/google/re2j/Inst;->arg:I

    .line 170
    iget v3, v0, Lcom/google/re2j/Compiler$Frag;->i:I

    shl-int/2addr v3, v2

    iput v3, v0, Lcom/google/re2j/Compiler$Frag;->out:I

    and-int/2addr p2, v2

    const/16 v3, 0x9

    if-nez p2, :cond_2

    .line 172
    array-length p2, p1

    if-eq p2, v2, :cond_3

    :cond_2
    array-length p2, p1

    const/4 v5, 0x2

    if-ne p2, v5, :cond_4

    aget p2, p1, v4

    aget v6, p1, v2

    if-ne p2, v6, :cond_4

    .line 174
    :cond_3
    iput v3, v1, Lcom/google/re2j/Inst;->op:I

    return-object v0

    .line 175
    :cond_4
    array-length p2, p1

    const v6, 0x10ffff

    if-ne p2, v5, :cond_5

    aget p2, p1, v4

    if-nez p2, :cond_5

    aget p2, p1, v2

    if-ne p2, v6, :cond_5

    const/16 p1, 0xa

    .line 176
    iput p1, v1, Lcom/google/re2j/Inst;->op:I

    return-object v0

    .line 177
    :cond_5
    array-length p2, p1

    const/4 v7, 0x4

    if-ne p2, v7, :cond_6

    aget p2, p1, v4

    if-nez p2, :cond_6

    aget p2, p1, v2

    if-ne p2, v3, :cond_6

    aget p2, p1, v5

    const/16 v2, 0xb

    if-ne p2, v2, :cond_6

    const/4 p2, 0x3

    aget p1, p1, p2

    if-ne p1, v6, :cond_6

    .line 182
    iput v2, v1, Lcom/google/re2j/Inst;->op:I

    :cond_6
    return-object v0
.end method

.method private star(Lcom/google/re2j/Compiler$Frag;Z)Lcom/google/re2j/Compiler$Frag;
    .locals 4

    const/4 v0, 0x1

    .line 130
    invoke-direct {p0, v0}, Lcom/google/re2j/Compiler;->newInst(I)Lcom/google/re2j/Compiler$Frag;

    move-result-object v1

    .line 131
    iget-object v2, p0, Lcom/google/re2j/Compiler;->prog:Lcom/google/re2j/Prog;

    iget v3, v1, Lcom/google/re2j/Compiler$Frag;->i:I

    invoke-virtual {v2, v3}, Lcom/google/re2j/Prog;->getInst(I)Lcom/google/re2j/Inst;

    move-result-object v2

    if-eqz p2, :cond_0

    .line 133
    iget p2, p1, Lcom/google/re2j/Compiler$Frag;->i:I

    iput p2, v2, Lcom/google/re2j/Inst;->arg:I

    .line 134
    iget p2, v1, Lcom/google/re2j/Compiler$Frag;->i:I

    shl-int/2addr p2, v0

    iput p2, v1, Lcom/google/re2j/Compiler$Frag;->out:I

    goto :goto_0

    .line 136
    :cond_0
    iget p2, p1, Lcom/google/re2j/Compiler$Frag;->i:I

    iput p2, v2, Lcom/google/re2j/Inst;->out:I

    .line 137
    iget p2, v1, Lcom/google/re2j/Compiler$Frag;->i:I

    shl-int/2addr p2, v0

    or-int/2addr p2, v0

    iput p2, v1, Lcom/google/re2j/Compiler$Frag;->out:I

    .line 139
    :goto_0
    iget-object p2, p0, Lcom/google/re2j/Compiler;->prog:Lcom/google/re2j/Prog;

    iget p1, p1, Lcom/google/re2j/Compiler$Frag;->out:I

    iget v0, v1, Lcom/google/re2j/Compiler$Frag;->i:I

    invoke-virtual {p2, p1, v0}, Lcom/google/re2j/Prog;->patch(II)V

    return-object v1
.end method
