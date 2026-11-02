.class final Lcom/google/re2j/Inst;
.super Ljava/lang/Object;
.source "Inst.java"


# static fields
.field public static final ALT:I = 0x1

.field public static final ALT_MATCH:I = 0x2

.field public static final CAPTURE:I = 0x3

.field public static final EMPTY_WIDTH:I = 0x4

.field public static final FAIL:I = 0x5

.field public static final MATCH:I = 0x6

.field public static final NOP:I = 0x7

.field public static final RUNE:I = 0x8

.field public static final RUNE1:I = 0x9

.field public static final RUNE_ANY:I = 0xa

.field public static final RUNE_ANY_NOT_NL:I = 0xb


# instance fields
.field arg:I

.field op:I

.field out:I

.field runes:[I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/google/re2j/Inst;->op:I

    return-void
.end method

.method private static escapeRunes([I)Ljava/lang/String;
    .locals 5

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x22

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, p0, v3

    .line 135
    invoke-static {v0, v4}, Lcom/google/re2j/Utils;->escapeRune(Ljava/lang/StringBuilder;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static isRuneOp(I)Z
    .locals 1

    const/16 v0, 0x8

    if-gt v0, p0, :cond_0

    const/16 v0, 0xb

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method matchRune(I)Z
    .locals 8

    .line 51
    iget-object v0, p0, Lcom/google/re2j/Inst;->runes:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 52
    aget v0, v0, v2

    if-ne p1, v0, :cond_0

    return v3

    .line 56
    :cond_0
    iget v1, p0, Lcom/google/re2j/Inst;->arg:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    .line 57
    invoke-static {v0}, Lcom/google/re2j/Unicode;->simpleFold(I)I

    move-result v1

    :goto_0
    if-eq v1, v0, :cond_2

    if-ne p1, v1, :cond_1

    return v3

    :cond_1
    invoke-static {v1}, Lcom/google/re2j/Unicode;->simpleFold(I)I

    move-result v1

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    move v0, v2

    .line 68
    :goto_1
    iget-object v1, p0, Lcom/google/re2j/Inst;->runes:[I

    array-length v4, v1

    if-ge v0, v4, :cond_6

    const/16 v4, 0x8

    if-gt v0, v4, :cond_6

    .line 69
    aget v4, v1, v0

    if-ge p1, v4, :cond_4

    return v2

    :cond_4
    add-int/lit8 v4, v0, 0x1

    .line 72
    aget v1, v1, v4

    if-gt p1, v1, :cond_5

    return v3

    :cond_5
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 78
    :cond_6
    array-length v0, v1

    div-int/lit8 v0, v0, 0x2

    move v1, v2

    :goto_2
    if-ge v1, v0, :cond_9

    sub-int v4, v0, v1

    .line 79
    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    .line 80
    iget-object v5, p0, Lcom/google/re2j/Inst;->runes:[I

    mul-int/lit8 v6, v4, 0x2

    aget v7, v5, v6

    if-gt v7, p1, :cond_8

    add-int/lit8 v6, v6, 0x1

    .line 82
    aget v1, v5, v6

    if-gt p1, v1, :cond_7

    return v3

    :cond_7
    add-int/lit8 v1, v4, 0x1

    goto :goto_2

    :cond_8
    move v0, v4

    goto :goto_2

    :cond_9
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 95
    iget v0, p0, Lcom/google/re2j/Inst;->op:I

    const-string v1, ", "

    const-string v2, " -> "

    packed-switch v0, :pswitch_data_0

    .line 126
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unhandled case in Inst.toString"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "anynotnl -> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/re2j/Inst;->out:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 122
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "any -> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/re2j/Inst;->out:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 120
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rune1 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/re2j/Inst;->runes:[I

    invoke-static {v1}, Lcom/google/re2j/Inst;->escapeRunes([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/re2j/Inst;->out:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 111
    :pswitch_3
    iget-object v0, p0, Lcom/google/re2j/Inst;->runes:[I

    if-nez v0, :cond_0

    .line 112
    const-string v0, "rune <null>"

    return-object v0

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rune "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/re2j/Inst;->runes:[I

    .line 115
    invoke-static {v1}, Lcom/google/re2j/Inst;->escapeRunes([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/re2j/Inst;->arg:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 116
    const-string v1, "/i"

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/re2j/Inst;->out:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 109
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "nop -> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/re2j/Inst;->out:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 105
    :pswitch_5
    const-string v0, "match"

    return-object v0

    .line 107
    :pswitch_6
    const-string v0, "fail"

    return-object v0

    .line 103
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "empty "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/re2j/Inst;->arg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/re2j/Inst;->out:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 101
    :pswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cap "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/re2j/Inst;->arg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/re2j/Inst;->out:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 99
    :pswitch_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "altmatch -> "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/re2j/Inst;->out:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/re2j/Inst;->arg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 97
    :pswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "alt -> "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/re2j/Inst;->out:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/re2j/Inst;->arg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
