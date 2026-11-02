.class Lcom/google/re2j/RE2;
.super Ljava/lang/Object;
.source "RE2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/re2j/RE2$DeliverFunc;,
        Lcom/google/re2j/RE2$ReplaceFunc;
    }
.end annotation


# static fields
.field static final ANCHOR_BOTH:I = 0x2

.field static final ANCHOR_START:I = 0x1

.field static final CLASS_NL:I = 0x4

.field static final DOT_NL:I = 0x8

.field static final FOLD_CASE:I = 0x1

.field static final LITERAL:I = 0x2

.field static final MATCH_NL:I = 0xc

.field static final NON_GREEDY:I = 0x20

.field static final ONE_LINE:I = 0x10

.field static final PERL:I = 0xd4

.field static final PERL_X:I = 0x40

.field static final POSIX:I = 0x0

.field static final UNANCHORED:I = 0x0

.field static final UNICODE_GROUPS:I = 0x80

.field static final WAS_DOLLAR:I = 0x100


# instance fields
.field final cond:I

.field final expr:Ljava/lang/String;

.field longest:Z

.field private final machine:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/re2j/Machine;",
            ">;"
        }
    .end annotation
.end field

.field public namedGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final numSubexp:I

.field prefix:Ljava/lang/String;

.field prefixComplete:Z

.field prefixRune:I

.field prefixUTF8:[B

.field final prog:Lcom/google/re2j/Prog;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/re2j/RE2;->machine:Ljava/util/Queue;

    .line 127
    invoke-static {p1}, Lcom/google/re2j/RE2;->compile(Ljava/lang/String;)Lcom/google/re2j/RE2;

    move-result-object p1

    .line 129
    iget-object v0, p1, Lcom/google/re2j/RE2;->expr:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/re2j/RE2;->expr:Ljava/lang/String;

    .line 130
    iget-object v0, p1, Lcom/google/re2j/RE2;->prog:Lcom/google/re2j/Prog;

    iput-object v0, p0, Lcom/google/re2j/RE2;->prog:Lcom/google/re2j/Prog;

    .line 131
    iget v0, p1, Lcom/google/re2j/RE2;->cond:I

    iput v0, p0, Lcom/google/re2j/RE2;->cond:I

    .line 132
    iget v0, p1, Lcom/google/re2j/RE2;->numSubexp:I

    iput v0, p0, Lcom/google/re2j/RE2;->numSubexp:I

    .line 133
    iget-boolean v0, p1, Lcom/google/re2j/RE2;->longest:Z

    iput-boolean v0, p0, Lcom/google/re2j/RE2;->longest:Z

    .line 134
    iget-object v0, p1, Lcom/google/re2j/RE2;->prefix:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/re2j/RE2;->prefix:Ljava/lang/String;

    .line 135
    iget-object v0, p1, Lcom/google/re2j/RE2;->prefixUTF8:[B

    iput-object v0, p0, Lcom/google/re2j/RE2;->prefixUTF8:[B

    .line 136
    iget-boolean v0, p1, Lcom/google/re2j/RE2;->prefixComplete:Z

    iput-boolean v0, p0, Lcom/google/re2j/RE2;->prefixComplete:Z

    .line 137
    iget p1, p1, Lcom/google/re2j/RE2;->prefixRune:I

    iput p1, p0, Lcom/google/re2j/RE2;->prefixRune:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/google/re2j/Prog;IZ)V
    .locals 1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/re2j/RE2;->machine:Ljava/util/Queue;

    .line 141
    iput-object p1, p0, Lcom/google/re2j/RE2;->expr:Ljava/lang/String;

    .line 142
    iput-object p2, p0, Lcom/google/re2j/RE2;->prog:Lcom/google/re2j/Prog;

    .line 143
    iput p3, p0, Lcom/google/re2j/RE2;->numSubexp:I

    .line 144
    invoke-virtual {p2}, Lcom/google/re2j/Prog;->startCond()I

    move-result p1

    iput p1, p0, Lcom/google/re2j/RE2;->cond:I

    .line 145
    iput-boolean p4, p0, Lcom/google/re2j/RE2;->longest:Z

    return-void
.end method

.method private allMatches(Lcom/google/re2j/MachineInput;ILcom/google/re2j/RE2$DeliverFunc;)V
    .locals 8

    .line 477
    invoke-virtual {p1}, Lcom/google/re2j/MachineInput;->endPos()I

    move-result v0

    if-gez p2, :cond_0

    add-int/lit8 p2, v0, 0x1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, -0x1

    move v3, v1

    move v4, v3

    :goto_0
    if-ge v3, p2, :cond_6

    if-gt v4, v0, :cond_6

    .line 482
    iget-object v5, p0, Lcom/google/re2j/RE2;->prog:Lcom/google/re2j/Prog;

    iget v5, v5, Lcom/google/re2j/Prog;->numCap:I

    invoke-direct {p0, p1, v4, v1, v5}, Lcom/google/re2j/RE2;->doExecute(Lcom/google/re2j/MachineInput;III)[I

    move-result-object v5

    if-eqz v5, :cond_6

    .line 483
    array-length v6, v5

    if-nez v6, :cond_1

    goto :goto_3

    :cond_1
    const/4 v6, 0x1

    .line 488
    aget v7, v5, v6

    if-ne v7, v4, :cond_4

    .line 490
    aget v7, v5, v1

    if-ne v7, v2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v6

    .line 495
    :goto_1
    invoke-virtual {p1, v4}, Lcom/google/re2j/MachineInput;->step(I)I

    move-result v7

    if-gez v7, :cond_3

    add-int/lit8 v4, v0, 0x1

    goto :goto_2

    :cond_3
    and-int/lit8 v7, v7, 0x7

    add-int/2addr v4, v7

    goto :goto_2

    :cond_4
    move v2, v6

    move v4, v7

    .line 504
    :goto_2
    aget v6, v5, v6

    if-eqz v2, :cond_5

    .line 507
    invoke-direct {p0, v5}, Lcom/google/re2j/RE2;->pad([I)[I

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/google/re2j/RE2$DeliverFunc;->deliver([I)V

    add-int/lit8 v3, v3, 0x1

    :cond_5
    move v2, v6

    goto :goto_0

    :cond_6
    :goto_3
    return-void
.end method

.method static compile(Ljava/lang/String;)Lcom/google/re2j/RE2;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/re2j/PatternSyntaxException;
        }
    .end annotation

    const/16 v0, 0xd4

    const/4 v1, 0x0

    .line 160
    invoke-static {p0, v0, v1}, Lcom/google/re2j/RE2;->compileImpl(Ljava/lang/String;IZ)Lcom/google/re2j/RE2;

    move-result-object p0

    return-object p0
.end method

.method static compileImpl(Ljava/lang/String;IZ)Lcom/google/re2j/RE2;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/re2j/PatternSyntaxException;
        }
    .end annotation

    .line 187
    invoke-static {p0, p1}, Lcom/google/re2j/Parser;->parse(Ljava/lang/String;I)Lcom/google/re2j/Regexp;

    move-result-object p1

    .line 188
    invoke-virtual {p1}, Lcom/google/re2j/Regexp;->maxCap()I

    move-result v0

    .line 189
    invoke-static {p1}, Lcom/google/re2j/Simplify;->simplify(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;

    move-result-object p1

    .line 190
    invoke-static {p1}, Lcom/google/re2j/Compiler;->compileRegexp(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Prog;

    move-result-object v1

    .line 191
    new-instance v2, Lcom/google/re2j/RE2;

    invoke-direct {v2, p0, v1, v0, p2}, Lcom/google/re2j/RE2;-><init>(Ljava/lang/String;Lcom/google/re2j/Prog;IZ)V

    .line 192
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    invoke-virtual {v1, p0}, Lcom/google/re2j/Prog;->prefix(Ljava/lang/StringBuilder;)Z

    move-result p2

    iput-boolean p2, v2, Lcom/google/re2j/RE2;->prefixComplete:Z

    .line 194
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/google/re2j/RE2;->prefix:Ljava/lang/String;

    .line 196
    :try_start_0
    const-string p2, "UTF-8"

    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    iput-object p0, v2, Lcom/google/re2j/RE2;->prefixUTF8:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    iget-object p0, v2, Lcom/google/re2j/RE2;->prefix:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    .line 201
    iget-object p0, v2, Lcom/google/re2j/RE2;->prefix:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result p0

    iput p0, v2, Lcom/google/re2j/RE2;->prefixRune:I

    .line 203
    :cond_0
    iget-object p0, p1, Lcom/google/re2j/Regexp;->namedGroups:Ljava/util/Map;

    iput-object p0, v2, Lcom/google/re2j/RE2;->namedGroups:Ljava/util/Map;

    return-object v2

    .line 198
    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "can\'t happen"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static compilePOSIX(Ljava/lang/String;)Lcom/google/re2j/RE2;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/re2j/PatternSyntaxException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 182
    invoke-static {p0, v0, v1}, Lcom/google/re2j/RE2;->compileImpl(Ljava/lang/String;IZ)Lcom/google/re2j/RE2;

    move-result-object p0

    return-object p0
.end method

.method private doExecute(Lcom/google/re2j/MachineInput;III)[I
    .locals 1

    .line 247
    invoke-virtual {p0}, Lcom/google/re2j/RE2;->get()Lcom/google/re2j/Machine;

    move-result-object v0

    .line 248
    invoke-virtual {v0, p4}, Lcom/google/re2j/Machine;->init(I)V

    .line 249
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/re2j/Machine;->match(Lcom/google/re2j/MachineInput;II)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/google/re2j/Machine;->submatches()[I

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 250
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/re2j/RE2;->put(Lcom/google/re2j/Machine;)V

    return-object p1
.end method

.method static match(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/re2j/PatternSyntaxException;
        }
    .end annotation

    .line 322
    invoke-static {p0}, Lcom/google/re2j/RE2;->compile(Ljava/lang/String;)Lcom/google/re2j/RE2;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/re2j/RE2;->match(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private pad([I)[I
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 459
    :cond_0
    iget v0, p0, Lcom/google/re2j/RE2;->numSubexp:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    .line 460
    array-length v1, p1

    if-ge v1, v0, :cond_1

    .line 461
    new-array v1, v0, [I

    .line 462
    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 463
    array-length p1, p1

    const/4 v2, -0x1

    invoke-static {v1, p1, v0, v2}, Ljava/util/Arrays;->fill([IIII)V

    return-object v1

    :cond_1
    return-object p1
.end method

.method static quoteMeta(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 439
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 440
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 441
    const-string v4, "\\.+*?()|[]{}^$"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_0

    const/16 v4, 0x5c

    .line 442
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 444
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 446
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method find(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 592
    invoke-static {p1}, Lcom/google/re2j/MachineInput;->fromUTF16(Ljava/lang/CharSequence;)Lcom/google/re2j/MachineInput;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/google/re2j/RE2;->doExecute(Lcom/google/re2j/MachineInput;III)[I

    move-result-object v0

    if-nez v0, :cond_0

    .line 594
    const-string p1, ""

    return-object p1

    .line 596
    :cond_0
    aget v1, v0, v2

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method findAll(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 749
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 751
    invoke-static {p1}, Lcom/google/re2j/MachineInput;->fromUTF16(Ljava/lang/CharSequence;)Lcom/google/re2j/MachineInput;

    move-result-object v1

    new-instance v2, Lcom/google/re2j/RE2$5;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/re2j/RE2$5;-><init>(Lcom/google/re2j/RE2;Ljava/util/List;Ljava/lang/String;)V

    .line 750
    invoke-direct {p0, v1, p2, v2}, Lcom/google/re2j/RE2;->allMatches(Lcom/google/re2j/MachineInput;ILcom/google/re2j/RE2$DeliverFunc;)V

    .line 759
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method

.method findAllIndex(Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation

    .line 775
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 777
    invoke-static {p1}, Lcom/google/re2j/MachineInput;->fromUTF16(Ljava/lang/CharSequence;)Lcom/google/re2j/MachineInput;

    move-result-object p1

    new-instance v1, Lcom/google/re2j/RE2$6;

    invoke-direct {v1, p0, v0}, Lcom/google/re2j/RE2$6;-><init>(Lcom/google/re2j/RE2;Ljava/util/List;)V

    .line 776
    invoke-direct {p0, p1, p2, v1}, Lcom/google/re2j/RE2;->allMatches(Lcom/google/re2j/MachineInput;ILcom/google/re2j/RE2$DeliverFunc;)V

    .line 785
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method

.method findAllSubmatch(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 859
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 861
    invoke-static {p1}, Lcom/google/re2j/MachineInput;->fromUTF16(Ljava/lang/CharSequence;)Lcom/google/re2j/MachineInput;

    move-result-object v1

    new-instance v2, Lcom/google/re2j/RE2$9;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/re2j/RE2$9;-><init>(Lcom/google/re2j/RE2;Ljava/lang/String;Ljava/util/List;)V

    .line 860
    invoke-direct {p0, v1, p2, v2}, Lcom/google/re2j/RE2;->allMatches(Lcom/google/re2j/MachineInput;ILcom/google/re2j/RE2$DeliverFunc;)V

    .line 875
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method

.method findAllSubmatchIndex(Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation

    .line 891
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 893
    invoke-static {p1}, Lcom/google/re2j/MachineInput;->fromUTF16(Ljava/lang/CharSequence;)Lcom/google/re2j/MachineInput;

    move-result-object p1

    new-instance v1, Lcom/google/re2j/RE2$10;

    invoke-direct {v1, p0, v0}, Lcom/google/re2j/RE2$10;-><init>(Lcom/google/re2j/RE2;Ljava/util/List;)V

    .line 892
    invoke-direct {p0, p1, p2, v1}, Lcom/google/re2j/RE2;->allMatches(Lcom/google/re2j/MachineInput;ILcom/google/re2j/RE2$DeliverFunc;)V

    .line 901
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method

.method findAllUTF8([BI)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 697
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 699
    invoke-static {p1}, Lcom/google/re2j/MachineInput;->fromUTF8([B)Lcom/google/re2j/MachineInput;

    move-result-object v1

    new-instance v2, Lcom/google/re2j/RE2$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/re2j/RE2$3;-><init>(Lcom/google/re2j/RE2;Ljava/util/List;[B)V

    .line 698
    invoke-direct {p0, v1, p2, v2}, Lcom/google/re2j/RE2;->allMatches(Lcom/google/re2j/MachineInput;ILcom/google/re2j/RE2$DeliverFunc;)V

    .line 707
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method

.method findAllUTF8Index([BI)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation

    .line 723
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 725
    invoke-static {p1}, Lcom/google/re2j/MachineInput;->fromUTF8([B)Lcom/google/re2j/MachineInput;

    move-result-object p1

    new-instance v1, Lcom/google/re2j/RE2$4;

    invoke-direct {v1, p0, v0}, Lcom/google/re2j/RE2$4;-><init>(Lcom/google/re2j/RE2;Ljava/util/List;)V

    .line 724
    invoke-direct {p0, p1, p2, v1}, Lcom/google/re2j/RE2;->allMatches(Lcom/google/re2j/MachineInput;ILcom/google/re2j/RE2$DeliverFunc;)V

    .line 733
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method

.method findAllUTF8Submatch([BI)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List<",
            "[[B>;"
        }
    .end annotation

    .line 801
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 803
    invoke-static {p1}, Lcom/google/re2j/MachineInput;->fromUTF8([B)Lcom/google/re2j/MachineInput;

    move-result-object v1

    new-instance v2, Lcom/google/re2j/RE2$7;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/re2j/RE2$7;-><init>(Lcom/google/re2j/RE2;[BLjava/util/List;)V

    .line 802
    invoke-direct {p0, v1, p2, v2}, Lcom/google/re2j/RE2;->allMatches(Lcom/google/re2j/MachineInput;ILcom/google/re2j/RE2$DeliverFunc;)V

    .line 817
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method

.method findAllUTF8SubmatchIndex([BI)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation

    .line 833
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 835
    invoke-static {p1}, Lcom/google/re2j/MachineInput;->fromUTF8([B)Lcom/google/re2j/MachineInput;

    move-result-object p1

    new-instance v1, Lcom/google/re2j/RE2$8;

    invoke-direct {v1, p0, v0}, Lcom/google/re2j/RE2$8;-><init>(Lcom/google/re2j/RE2;Ljava/util/List;)V

    .line 834
    invoke-direct {p0, p1, p2, v1}, Lcom/google/re2j/RE2;->allMatches(Lcom/google/re2j/MachineInput;ILcom/google/re2j/RE2$DeliverFunc;)V

    .line 843
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method

.method findIndex(Ljava/lang/String;)[I
    .locals 2

    .line 609
    invoke-static {p1}, Lcom/google/re2j/MachineInput;->fromUTF16(Ljava/lang/CharSequence;)Lcom/google/re2j/MachineInput;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v0, v1}, Lcom/google/re2j/RE2;->doExecute(Lcom/google/re2j/MachineInput;III)[I

    move-result-object p1

    return-object p1
.end method

.method findSubmatch(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .line 658
    invoke-static {p1}, Lcom/google/re2j/MachineInput;->fromUTF16(Ljava/lang/CharSequence;)Lcom/google/re2j/MachineInput;

    move-result-object v0

    iget-object v1, p0, Lcom/google/re2j/RE2;->prog:Lcom/google/re2j/Prog;

    iget v1, v1, Lcom/google/re2j/Prog;->numCap:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/google/re2j/RE2;->doExecute(Lcom/google/re2j/MachineInput;III)[I

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 662
    :cond_0
    iget v1, p0, Lcom/google/re2j/RE2;->numSubexp:I

    add-int/lit8 v1, v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    :goto_0
    if-ge v2, v1, :cond_2

    mul-int/lit8 v4, v2, 0x2

    .line 664
    array-length v5, v0

    if-ge v4, v5, :cond_1

    aget v5, v0, v4

    if-ltz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    .line 665
    aget v4, v0, v4

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method findSubmatchIndex(Ljava/lang/String;)[I
    .locals 2

    .line 681
    invoke-static {p1}, Lcom/google/re2j/MachineInput;->fromUTF16(Ljava/lang/CharSequence;)Lcom/google/re2j/MachineInput;

    move-result-object p1

    iget-object v0, p0, Lcom/google/re2j/RE2;->prog:Lcom/google/re2j/Prog;

    iget v0, v0, Lcom/google/re2j/Prog;->numCap:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/google/re2j/RE2;->doExecute(Lcom/google/re2j/MachineInput;III)[I

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/re2j/RE2;->pad([I)[I

    move-result-object p1

    return-object p1
.end method

.method findUTF8([B)[B
    .locals 3

    .line 558
    invoke-static {p1}, Lcom/google/re2j/MachineInput;->fromUTF8([B)Lcom/google/re2j/MachineInput;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/google/re2j/RE2;->doExecute(Lcom/google/re2j/MachineInput;III)[I

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 562
    :cond_0
    aget v1, v0, v2

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-static {p1, v1, v0}, Lcom/google/re2j/Utils;->subarray([BII)[B

    move-result-object p1

    return-object p1
.end method

.method findUTF8Index([B)[I
    .locals 2

    .line 574
    invoke-static {p1}, Lcom/google/re2j/MachineInput;->fromUTF8([B)Lcom/google/re2j/MachineInput;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v0, v1}, Lcom/google/re2j/RE2;->doExecute(Lcom/google/re2j/MachineInput;III)[I

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 578
    :cond_0
    invoke-static {p1, v0, v1}, Lcom/google/re2j/Utils;->subarray([III)[I

    move-result-object p1

    return-object p1
.end method

.method findUTF8Submatch([B)[[B
    .locals 6

    .line 622
    invoke-static {p1}, Lcom/google/re2j/MachineInput;->fromUTF8([B)Lcom/google/re2j/MachineInput;

    move-result-object v0

    iget-object v1, p0, Lcom/google/re2j/RE2;->prog:Lcom/google/re2j/Prog;

    iget v1, v1, Lcom/google/re2j/Prog;->numCap:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/google/re2j/RE2;->doExecute(Lcom/google/re2j/MachineInput;III)[I

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 624
    move-object v0, p1

    check-cast v0, [[B

    return-object p1

    .line 626
    :cond_0
    iget v1, p0, Lcom/google/re2j/RE2;->numSubexp:I

    add-int/lit8 v1, v1, 0x1

    new-array v3, v1, [[B

    :goto_0
    if-ge v2, v1, :cond_2

    mul-int/lit8 v4, v2, 0x2

    .line 628
    array-length v5, v0

    if-ge v4, v5, :cond_1

    aget v5, v0, v4

    if-ltz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    .line 629
    aget v4, v0, v4

    invoke-static {p1, v5, v4}, Lcom/google/re2j/Utils;->subarray([BII)[B

    move-result-object v4

    aput-object v4, v3, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method findUTF8SubmatchIndex([B)[I
    .locals 2

    .line 645
    invoke-static {p1}, Lcom/google/re2j/MachineInput;->fromUTF8([B)Lcom/google/re2j/MachineInput;

    move-result-object p1

    iget-object v0, p0, Lcom/google/re2j/RE2;->prog:Lcom/google/re2j/Prog;

    iget v0, v0, Lcom/google/re2j/Prog;->numCap:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/google/re2j/RE2;->doExecute(Lcom/google/re2j/MachineInput;III)[I

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/re2j/RE2;->pad([I)[I

    move-result-object p1

    return-object p1
.end method

.method get()Lcom/google/re2j/Machine;
    .locals 1

    .line 217
    monitor-enter p0

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/google/re2j/RE2;->machine:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/google/re2j/RE2;->machine:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/re2j/Machine;

    monitor-exit p0

    return-object v0

    .line 221
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    new-instance v0, Lcom/google/re2j/Machine;

    invoke-direct {v0, p0}, Lcom/google/re2j/Machine;-><init>(Lcom/google/re2j/RE2;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 221
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method match(Lcom/google/re2j/MatcherInput;III[II)Z
    .locals 3

    const/4 v0, 0x0

    if-le p2, p3, :cond_0

    return v0

    .line 291
    :cond_0
    invoke-virtual {p1}, Lcom/google/re2j/MatcherInput;->getEncoding()Lcom/google/re2j/MatcherInput$Encoding;

    move-result-object v1

    sget-object v2, Lcom/google/re2j/MatcherInput$Encoding;->UTF_16:Lcom/google/re2j/MatcherInput$Encoding;

    if-ne v1, v2, :cond_1

    .line 292
    invoke-virtual {p1}, Lcom/google/re2j/MatcherInput;->asCharSequence()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1, v0, p3}, Lcom/google/re2j/MachineInput;->fromUTF16(Ljava/lang/CharSequence;II)Lcom/google/re2j/MachineInput;

    move-result-object p1

    goto :goto_0

    .line 293
    :cond_1
    invoke-virtual {p1}, Lcom/google/re2j/MatcherInput;->asBytes()[B

    move-result-object p1

    invoke-static {p1, v0, p3}, Lcom/google/re2j/MachineInput;->fromUTF8([BII)Lcom/google/re2j/MachineInput;

    move-result-object p1

    :goto_0
    mul-int/lit8 p6, p6, 0x2

    .line 294
    invoke-direct {p0, p1, p2, p4, p6}, Lcom/google/re2j/RE2;->doExecute(Lcom/google/re2j/MachineInput;III)[I

    move-result-object p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    if-eqz p5, :cond_3

    .line 301
    array-length p2, p1

    invoke-static {p1, v0, p5, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method match(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 258
    invoke-static {p1}, Lcom/google/re2j/MachineInput;->fromUTF16(Ljava/lang/CharSequence;)Lcom/google/re2j/MachineInput;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v0}, Lcom/google/re2j/RE2;->doExecute(Lcom/google/re2j/MachineInput;III)[I

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method match(Ljava/lang/CharSequence;III[II)Z
    .locals 7

    .line 262
    invoke-static {p1}, Lcom/google/re2j/MatcherInput;->utf16(Ljava/lang/CharSequence;)Lcom/google/re2j/MatcherInput;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/re2j/RE2;->match(Lcom/google/re2j/MatcherInput;III[II)Z

    move-result p1

    return p1
.end method

.method matchUTF8([B)Z
    .locals 1

    .line 311
    invoke-static {p1}, Lcom/google/re2j/MachineInput;->fromUTF8([B)Lcom/google/re2j/MachineInput;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v0}, Lcom/google/re2j/RE2;->doExecute(Lcom/google/re2j/MachineInput;III)[I

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method numberOfCapturingGroups()I
    .locals 1

    .line 211
    iget v0, p0, Lcom/google/re2j/RE2;->numSubexp:I

    return v0
.end method

.method declared-synchronized put(Lcom/google/re2j/Machine;)V
    .locals 1

    monitor-enter p0

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/google/re2j/RE2;->machine:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 337
    new-instance v0, Lcom/google/re2j/RE2$1;

    invoke-direct {v0, p0, p2}, Lcom/google/re2j/RE2$1;-><init>(Lcom/google/re2j/RE2;Ljava/lang/String;)V

    .line 345
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0x1

    .line 337
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/re2j/RE2;->replaceAllFunc(Ljava/lang/String;Lcom/google/re2j/RE2$ReplaceFunc;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method replaceAllFunc(Ljava/lang/String;Lcom/google/re2j/RE2$ReplaceFunc;I)Ljava/lang/String;
    .locals 9

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    invoke-static {p1}, Lcom/google/re2j/MachineInput;->fromUTF16(Ljava/lang/CharSequence;)Lcom/google/re2j/MachineInput;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    .line 382
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v3, v6, :cond_6

    const/4 v6, 0x2

    .line 383
    invoke-direct {p0, v1, v3, v2, v6}, Lcom/google/re2j/RE2;->doExecute(Lcom/google/re2j/MachineInput;III)[I

    move-result-object v6

    if-eqz v6, :cond_6

    .line 384
    array-length v7, v6

    if-nez v7, :cond_1

    goto :goto_1

    .line 389
    :cond_1
    aget v7, v6, v2

    invoke-virtual {p1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    .line 401
    aget v8, v6, v7

    if-gt v8, v4, :cond_2

    aget v4, v6, v2

    if-nez v4, :cond_3

    .line 402
    :cond_2
    aget v4, v6, v2

    invoke-virtual {p1, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/google/re2j/RE2$ReplaceFunc;->replace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    .line 406
    :cond_3
    aget v4, v6, v7

    .line 409
    invoke-virtual {v1, v3}, Lcom/google/re2j/MachineInput;->step(I)I

    move-result v8

    and-int/lit8 v8, v8, 0x7

    add-int/2addr v8, v3

    .line 410
    aget v6, v6, v7

    if-le v8, v6, :cond_4

    move v3, v8

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    if-le v3, v6, :cond_5

    goto :goto_0

    :cond_5
    move v3, v6

    :goto_0
    if-lt v5, p3, :cond_0

    .line 426
    :cond_6
    :goto_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 358
    new-instance v0, Lcom/google/re2j/RE2$2;

    invoke-direct {v0, p0, p2}, Lcom/google/re2j/RE2$2;-><init>(Lcom/google/re2j/RE2;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/re2j/RE2;->replaceAllFunc(Ljava/lang/String;Lcom/google/re2j/RE2$ReplaceFunc;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/google/re2j/RE2;->machine:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/google/re2j/RE2;->expr:Ljava/lang/String;

    return-object v0
.end method
