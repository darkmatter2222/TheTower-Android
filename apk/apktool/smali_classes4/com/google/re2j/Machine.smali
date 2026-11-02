.class Lcom/google/re2j/Machine;
.super Ljava/lang/Object;
.source "Machine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/re2j/Machine$Queue;,
        Lcom/google/re2j/Machine$Thread;
    }
.end annotation


# instance fields
.field private matchcap:[I

.field private matched:Z

.field private ncap:I

.field private pool:[Lcom/google/re2j/Machine$Thread;

.field private poolSize:I

.field private final prog:Lcom/google/re2j/Prog;

.field private final q0:Lcom/google/re2j/Machine$Queue;

.field private final q1:Lcom/google/re2j/Machine$Queue;

.field private re2:Lcom/google/re2j/RE2;


# direct methods
.method constructor <init>(Lcom/google/re2j/RE2;)V
    .locals 2

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 92
    new-array v0, v0, [Lcom/google/re2j/Machine$Thread;

    iput-object v0, p0, Lcom/google/re2j/Machine;->pool:[Lcom/google/re2j/Machine$Thread;

    .line 106
    iget-object v0, p1, Lcom/google/re2j/RE2;->prog:Lcom/google/re2j/Prog;

    iput-object v0, p0, Lcom/google/re2j/Machine;->prog:Lcom/google/re2j/Prog;

    .line 107
    iput-object p1, p0, Lcom/google/re2j/Machine;->re2:Lcom/google/re2j/RE2;

    .line 108
    new-instance p1, Lcom/google/re2j/Machine$Queue;

    invoke-virtual {v0}, Lcom/google/re2j/Prog;->numInst()I

    move-result v1

    invoke-direct {p1, v1}, Lcom/google/re2j/Machine$Queue;-><init>(I)V

    iput-object p1, p0, Lcom/google/re2j/Machine;->q0:Lcom/google/re2j/Machine$Queue;

    .line 109
    new-instance p1, Lcom/google/re2j/Machine$Queue;

    invoke-virtual {v0}, Lcom/google/re2j/Prog;->numInst()I

    move-result v1

    invoke-direct {p1, v1}, Lcom/google/re2j/Machine$Queue;-><init>(I)V

    iput-object p1, p0, Lcom/google/re2j/Machine;->q1:Lcom/google/re2j/Machine$Queue;

    .line 110
    iget p1, v0, Lcom/google/re2j/Prog;->numCap:I

    const/4 v1, 0x2

    if-ge p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/google/re2j/Prog;->numCap:I

    :goto_0
    new-array p1, v1, [I

    iput-object p1, p0, Lcom/google/re2j/Machine;->matchcap:[I

    return-void
.end method

.method private add(Lcom/google/re2j/Machine$Queue;II[IILcom/google/re2j/Machine$Thread;)Lcom/google/re2j/Machine$Thread;
    .locals 9

    if-nez p2, :cond_0

    :goto_0
    :pswitch_0
    move-object v0, p0

    move-object v8, p6

    goto/16 :goto_2

    .line 368
    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/re2j/Machine$Queue;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 371
    :cond_1
    invoke-virtual {p1, p2}, Lcom/google/re2j/Machine$Queue;->add(I)I

    move-result v0

    .line 372
    iget-object v1, p0, Lcom/google/re2j/Machine;->prog:Lcom/google/re2j/Prog;

    iget-object v1, v1, Lcom/google/re2j/Prog;->inst:[Lcom/google/re2j/Inst;

    aget-object p2, v1, p2

    .line 373
    iget v1, p2, Lcom/google/re2j/Inst;->op:I

    packed-switch v1, :pswitch_data_0

    .line 375
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unhandled"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 393
    :pswitch_1
    iget v4, p2, Lcom/google/re2j/Inst;->out:I

    move-object v2, p0

    move-object v3, p1

    move v5, p3

    move-object v6, p4

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/google/re2j/Machine;->add(Lcom/google/re2j/Machine$Queue;II[IILcom/google/re2j/Machine$Thread;)Lcom/google/re2j/Machine$Thread;

    move-result-object p1

    return-object p1

    :pswitch_2
    move-object v2, p0

    move-object v1, p1

    move-object v4, p4

    move-object v6, p6

    if-nez v6, :cond_2

    .line 413
    invoke-direct {p0, p2}, Lcom/google/re2j/Machine;->alloc(Lcom/google/re2j/Inst;)Lcom/google/re2j/Machine$Thread;

    move-result-object p6

    goto :goto_1

    .line 415
    :cond_2
    iput-object p2, v6, Lcom/google/re2j/Machine$Thread;->inst:Lcom/google/re2j/Inst;

    move-object p6, v6

    .line 417
    :goto_1
    iget p1, v2, Lcom/google/re2j/Machine;->ncap:I

    if-lez p1, :cond_3

    iget-object p1, p6, Lcom/google/re2j/Machine$Thread;->cap:[I

    if-eq p1, v4, :cond_3

    .line 418
    iget-object p1, p6, Lcom/google/re2j/Machine$Thread;->cap:[I

    iget p2, v2, Lcom/google/re2j/Machine;->ncap:I

    const/4 p3, 0x0

    invoke-static {v4, p3, p1, p3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 420
    :cond_3
    iget-object p1, v1, Lcom/google/re2j/Machine$Queue;->denseThreads:[Lcom/google/re2j/Machine$Thread;

    aput-object p6, p1, v0

    const/4 p1, 0x0

    return-object p1

    :pswitch_3
    move-object v2, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 387
    iget p1, p2, Lcom/google/re2j/Inst;->arg:I

    not-int p3, v5

    and-int/2addr p1, p3

    if-nez p1, :cond_4

    .line 388
    iget v2, p2, Lcom/google/re2j/Inst;->out:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/re2j/Machine;->add(Lcom/google/re2j/Machine$Queue;II[IILcom/google/re2j/Machine$Thread;)Lcom/google/re2j/Machine$Thread;

    move-result-object p1

    return-object p1

    :cond_4
    move-object v0, v2

    move-object v8, v6

    :goto_2
    return-object v8

    :pswitch_4
    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v8, p6

    .line 397
    iget p1, p2, Lcom/google/re2j/Inst;->arg:I

    iget p3, v0, Lcom/google/re2j/Machine;->ncap:I

    if-ge p1, p3, :cond_5

    .line 398
    iget p1, p2, Lcom/google/re2j/Inst;->arg:I

    aget p1, v4, p1

    .line 399
    iget p3, p2, Lcom/google/re2j/Inst;->arg:I

    aput v3, v4, p3

    .line 400
    iget v2, p2, Lcom/google/re2j/Inst;->out:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/re2j/Machine;->add(Lcom/google/re2j/Machine$Queue;II[IILcom/google/re2j/Machine$Thread;)Lcom/google/re2j/Machine$Thread;

    .line 401
    iget p2, p2, Lcom/google/re2j/Inst;->arg:I

    aput p1, v4, p2

    return-object v8

    .line 403
    :cond_5
    iget v2, p2, Lcom/google/re2j/Inst;->out:I

    move-object v0, p0

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/google/re2j/Machine;->add(Lcom/google/re2j/Machine$Queue;II[IILcom/google/re2j/Machine$Thread;)Lcom/google/re2j/Machine$Thread;

    move-result-object p1

    return-object p1

    :pswitch_5
    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 382
    iget v2, p2, Lcom/google/re2j/Inst;->out:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/re2j/Machine;->add(Lcom/google/re2j/Machine$Queue;II[IILcom/google/re2j/Machine$Thread;)Lcom/google/re2j/Machine$Thread;

    move-result-object v6

    .line 383
    iget v2, p2, Lcom/google/re2j/Inst;->arg:I

    invoke-direct/range {v0 .. v6}, Lcom/google/re2j/Machine;->add(Lcom/google/re2j/Machine$Queue;II[IILcom/google/re2j/Machine$Thread;)Lcom/google/re2j/Machine$Thread;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private alloc(Lcom/google/re2j/Inst;)Lcom/google/re2j/Machine$Thread;
    .locals 2

    .line 151
    iget v0, p0, Lcom/google/re2j/Machine;->poolSize:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 152
    iput v0, p0, Lcom/google/re2j/Machine;->poolSize:I

    .line 153
    iget-object v1, p0, Lcom/google/re2j/Machine;->pool:[Lcom/google/re2j/Machine$Thread;

    aget-object v0, v1, v0

    goto :goto_0

    .line 155
    :cond_0
    new-instance v0, Lcom/google/re2j/Machine$Thread;

    iget-object v1, p0, Lcom/google/re2j/Machine;->matchcap:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Lcom/google/re2j/Machine$Thread;-><init>(I)V

    .line 157
    :goto_0
    iput-object p1, v0, Lcom/google/re2j/Machine$Thread;->inst:Lcom/google/re2j/Inst;

    return-object v0
.end method

.method private free(Lcom/google/re2j/Machine$Queue;)V
    .locals 1

    const/4 v0, 0x0

    .line 163
    invoke-direct {p0, p1, v0}, Lcom/google/re2j/Machine;->free(Lcom/google/re2j/Machine$Queue;I)V

    return-void
.end method

.method private free(Lcom/google/re2j/Machine$Queue;I)V
    .locals 3

    .line 167
    iget v0, p1, Lcom/google/re2j/Machine$Queue;->size:I

    sub-int/2addr v0, p2

    .line 168
    iget v1, p0, Lcom/google/re2j/Machine;->poolSize:I

    add-int/2addr v1, v0

    .line 169
    iget-object v0, p0, Lcom/google/re2j/Machine;->pool:[Lcom/google/re2j/Machine$Thread;

    array-length v2, v0

    if-ge v2, v1, :cond_0

    .line 170
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/re2j/Machine$Thread;

    iput-object v0, p0, Lcom/google/re2j/Machine;->pool:[Lcom/google/re2j/Machine$Thread;

    .line 173
    :cond_0
    :goto_0
    iget v0, p1, Lcom/google/re2j/Machine$Queue;->size:I

    if-ge p2, v0, :cond_2

    .line 174
    iget-object v0, p1, Lcom/google/re2j/Machine$Queue;->denseThreads:[Lcom/google/re2j/Machine$Thread;

    aget-object v0, v0, p2

    if-eqz v0, :cond_1

    .line 176
    iget-object v1, p0, Lcom/google/re2j/Machine;->pool:[Lcom/google/re2j/Machine$Thread;

    iget v2, p0, Lcom/google/re2j/Machine;->poolSize:I

    aput-object v0, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 177
    iput v2, p0, Lcom/google/re2j/Machine;->poolSize:I

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 180
    :cond_2
    invoke-virtual {p1}, Lcom/google/re2j/Machine$Queue;->clear()V

    return-void
.end method

.method private free(Lcom/google/re2j/Machine$Thread;)V
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/google/re2j/Machine;->pool:[Lcom/google/re2j/Machine$Thread;

    array-length v1, v0

    iget v2, p0, Lcom/google/re2j/Machine;->poolSize:I

    if-gt v1, v2, :cond_0

    .line 186
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/re2j/Machine$Thread;

    iput-object v0, p0, Lcom/google/re2j/Machine;->pool:[Lcom/google/re2j/Machine$Thread;

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/google/re2j/Machine;->pool:[Lcom/google/re2j/Machine$Thread;

    iget v1, p0, Lcom/google/re2j/Machine;->poolSize:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 189
    iput v1, p0, Lcom/google/re2j/Machine;->poolSize:I

    return-void
.end method

.method private initNewCap(I)V
    .locals 3

    const/4 v0, 0x0

    .line 133
    :goto_0
    iget v1, p0, Lcom/google/re2j/Machine;->poolSize:I

    if-ge v0, v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/google/re2j/Machine;->pool:[Lcom/google/re2j/Machine$Thread;

    aget-object v1, v1, v0

    .line 135
    new-array v2, p1, [I

    iput-object v2, v1, Lcom/google/re2j/Machine$Thread;->cap:[I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_0
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/re2j/Machine;->matchcap:[I

    return-void
.end method

.method private resetCap(I)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 126
    :goto_0
    iget v2, p0, Lcom/google/re2j/Machine;->poolSize:I

    if-ge v1, v2, :cond_0

    .line 127
    iget-object v2, p0, Lcom/google/re2j/Machine;->pool:[Lcom/google/re2j/Machine$Thread;

    aget-object v2, v2, v1

    .line 128
    iget-object v2, v2, Lcom/google/re2j/Machine$Thread;->cap:[I

    invoke-static {v2, v0, p1, v0}, Ljava/util/Arrays;->fill([IIII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private step(Lcom/google/re2j/Machine$Queue;Lcom/google/re2j/Machine$Queue;IIIIIZ)V
    .locals 13

    move/from16 v7, p3

    move/from16 v8, p5

    .line 300
    iget-object v1, p0, Lcom/google/re2j/Machine;->re2:Lcom/google/re2j/RE2;

    iget-boolean v9, v1, Lcom/google/re2j/RE2;->longest:Z

    const/4 v10, 0x0

    move v11, v10

    .line 301
    :goto_0
    iget v1, p1, Lcom/google/re2j/Machine$Queue;->size:I

    if-ge v11, v1, :cond_9

    .line 302
    iget-object v1, p1, Lcom/google/re2j/Machine$Queue;->denseThreads:[Lcom/google/re2j/Machine$Thread;

    aget-object v6, v1, v11

    if-nez v6, :cond_0

    :goto_1
    move/from16 v12, p7

    goto/16 :goto_5

    :cond_0
    if-eqz v9, :cond_1

    .line 306
    iget-boolean v1, p0, Lcom/google/re2j/Machine;->matched:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/re2j/Machine;->ncap:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/google/re2j/Machine;->matchcap:[I

    aget v1, v1, v10

    iget-object v2, v6, Lcom/google/re2j/Machine$Thread;->cap:[I

    aget v2, v2, v10

    if-ge v1, v2, :cond_1

    .line 307
    invoke-direct {p0, v6}, Lcom/google/re2j/Machine;->free(Lcom/google/re2j/Machine$Thread;)V

    goto :goto_1

    .line 310
    :cond_1
    iget-object v1, v6, Lcom/google/re2j/Machine$Thread;->inst:Lcom/google/re2j/Inst;

    .line 312
    iget v2, v1, Lcom/google/re2j/Inst;->op:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 346
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "bad inst"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    const/16 v2, 0xa

    if-eq v8, v2, :cond_2

    goto :goto_2

    :cond_2
    move v3, v10

    goto :goto_2

    .line 334
    :pswitch_2
    iget-object v2, v1, Lcom/google/re2j/Inst;->runes:[I

    aget v2, v2, v10

    if-ne v8, v2, :cond_2

    goto :goto_2

    .line 330
    :pswitch_3
    invoke-virtual {v1, v8}, Lcom/google/re2j/Inst;->matchRune(I)Z

    move-result v3

    :goto_2
    :pswitch_4
    move/from16 v12, p7

    goto :goto_4

    :pswitch_5
    const/4 v2, 0x2

    move/from16 v12, p7

    if-ne v12, v2, :cond_3

    if-nez p8, :cond_3

    goto :goto_3

    .line 319
    :cond_3
    iget v2, p0, Lcom/google/re2j/Machine;->ncap:I

    if-lez v2, :cond_5

    if-eqz v9, :cond_4

    iget-boolean v2, p0, Lcom/google/re2j/Machine;->matched:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/re2j/Machine;->matchcap:[I

    aget v2, v2, v3

    if-ge v2, v7, :cond_5

    .line 320
    :cond_4
    iget-object v2, v6, Lcom/google/re2j/Machine$Thread;->cap:[I

    aput v7, v2, v3

    .line 321
    iget-object v2, v6, Lcom/google/re2j/Machine$Thread;->cap:[I

    iget-object v4, p0, Lcom/google/re2j/Machine;->matchcap:[I

    iget v5, p0, Lcom/google/re2j/Machine;->ncap:I

    invoke-static {v2, v10, v4, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    if-nez v9, :cond_6

    add-int/lit8 v2, v11, 0x1

    .line 324
    invoke-direct {p0, p1, v2}, Lcom/google/re2j/Machine;->free(Lcom/google/re2j/Machine$Queue;I)V

    .line 326
    :cond_6
    iput-boolean v3, p0, Lcom/google/re2j/Machine;->matched:Z

    :goto_3
    move v3, v10

    :goto_4
    if-eqz v3, :cond_7

    .line 349
    iget v2, v1, Lcom/google/re2j/Inst;->out:I

    iget-object v4, v6, Lcom/google/re2j/Machine$Thread;->cap:[I

    move-object v0, p0

    move-object v1, p2

    move/from16 v3, p4

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/re2j/Machine;->add(Lcom/google/re2j/Machine$Queue;II[IILcom/google/re2j/Machine$Thread;)Lcom/google/re2j/Machine$Thread;

    move-result-object v6

    :cond_7
    if-eqz v6, :cond_8

    .line 352
    invoke-direct {p0, v6}, Lcom/google/re2j/Machine;->free(Lcom/google/re2j/Machine$Thread;)V

    .line 353
    iget-object v1, p1, Lcom/google/re2j/Machine$Queue;->denseThreads:[Lcom/google/re2j/Machine$Thread;

    const/4 v2, 0x0

    aput-object v2, v1, v11

    :cond_8
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 356
    :cond_9
    invoke-virtual {p1}, Lcom/google/re2j/Machine$Queue;->clear()V

    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method init(I)V
    .locals 1

    .line 116
    iput p1, p0, Lcom/google/re2j/Machine;->ncap:I

    .line 117
    iget-object v0, p0, Lcom/google/re2j/Machine;->matchcap:[I

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 118
    invoke-direct {p0, p1}, Lcom/google/re2j/Machine;->initNewCap(I)V

    return-void

    .line 120
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/re2j/Machine;->resetCap(I)V

    return-void
.end method

.method match(Lcom/google/re2j/MachineInput;II)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move/from16 v7, p3

    .line 197
    iget-object v1, v0, Lcom/google/re2j/Machine;->re2:Lcom/google/re2j/RE2;

    iget v10, v1, Lcom/google/re2j/RE2;->cond:I

    const/4 v11, 0x0

    const/4 v12, -0x1

    if-ne v10, v12, :cond_0

    return v11

    :cond_0
    const/4 v13, 0x1

    if-eq v7, v13, :cond_1

    const/4 v1, 0x2

    if-ne v7, v1, :cond_2

    :cond_1
    if-eqz p2, :cond_2

    return v11

    .line 204
    :cond_2
    iput-boolean v11, v0, Lcom/google/re2j/Machine;->matched:Z

    .line 205
    iget-object v1, v0, Lcom/google/re2j/Machine;->matchcap:[I

    iget-object v2, v0, Lcom/google/re2j/Machine;->prog:Lcom/google/re2j/Prog;

    iget v2, v2, Lcom/google/re2j/Prog;->numCap:I

    invoke-static {v1, v11, v2, v12}, Ljava/util/Arrays;->fill([IIII)V

    .line 206
    iget-object v1, v0, Lcom/google/re2j/Machine;->q0:Lcom/google/re2j/Machine$Queue;

    iget-object v2, v0, Lcom/google/re2j/Machine;->q1:Lcom/google/re2j/Machine$Queue;

    .line 207
    invoke-virtual/range {p1 .. p2}, Lcom/google/re2j/MachineInput;->step(I)I

    move-result v3

    shr-int/lit8 v4, v3, 0x3

    and-int/lit8 v5, v3, 0x7

    const/4 v6, -0x8

    if-eq v3, v6, :cond_3

    add-int v3, p2, v5

    .line 213
    invoke-virtual {v9, v3}, Lcom/google/re2j/MachineInput;->step(I)I

    move-result v3

    shr-int/lit8 v6, v3, 0x3

    and-int/lit8 v3, v3, 0x7

    goto :goto_0

    :cond_3
    move v3, v11

    move v6, v12

    :goto_0
    if-nez p2, :cond_4

    .line 219
    invoke-static {v12, v4}, Lcom/google/re2j/Utils;->emptyOpContext(II)I

    move-result v8

    goto :goto_1

    .line 221
    :cond_4
    invoke-virtual/range {p1 .. p2}, Lcom/google/re2j/MachineInput;->context(I)I

    move-result v8

    :goto_1
    move v14, v8

    move-object v8, v2

    move-object v2, v1

    move/from16 v1, p2

    .line 225
    :goto_2
    invoke-virtual {v2}, Lcom/google/re2j/Machine$Queue;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_8

    and-int/lit8 v15, v10, 0x4

    if-eqz v15, :cond_5

    if-eqz v1, :cond_5

    goto :goto_3

    .line 230
    :cond_5
    iget-boolean v15, v0, Lcom/google/re2j/Machine;->matched:Z

    if-eqz v15, :cond_6

    :goto_3
    move-object v2, v8

    goto/16 :goto_6

    .line 234
    :cond_6
    iget-object v15, v0, Lcom/google/re2j/Machine;->re2:Lcom/google/re2j/RE2;

    iget-object v15, v15, Lcom/google/re2j/RE2;->prefix:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_8

    iget-object v15, v0, Lcom/google/re2j/Machine;->re2:Lcom/google/re2j/RE2;

    iget v15, v15, Lcom/google/re2j/RE2;->prefixRune:I

    if-eq v6, v15, :cond_8

    invoke-virtual {v9}, Lcom/google/re2j/MachineInput;->canCheckPrefix()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 236
    iget-object v3, v0, Lcom/google/re2j/Machine;->re2:Lcom/google/re2j/RE2;

    invoke-virtual {v9, v3, v1}, Lcom/google/re2j/MachineInput;->index(Lcom/google/re2j/RE2;I)I

    move-result v3

    if-gez v3, :cond_7

    goto :goto_3

    :cond_7
    add-int/2addr v1, v3

    .line 241
    invoke-virtual {v9, v1}, Lcom/google/re2j/MachineInput;->step(I)I

    move-result v3

    shr-int/lit8 v4, v3, 0x3

    and-int/lit8 v5, v3, 0x7

    add-int v3, v1, v5

    .line 244
    invoke-virtual {v9, v3}, Lcom/google/re2j/MachineInput;->step(I)I

    move-result v3

    shr-int/lit8 v6, v3, 0x3

    and-int/lit8 v3, v3, 0x7

    :cond_8
    move/from16 v17, v3

    move v15, v4

    move/from16 v16, v5

    move v4, v6

    move v3, v1

    .line 249
    iget-boolean v1, v0, Lcom/google/re2j/Machine;->matched:Z

    if-nez v1, :cond_b

    if-eqz v3, :cond_9

    if-nez v7, :cond_b

    .line 252
    :cond_9
    iget v1, v0, Lcom/google/re2j/Machine;->ncap:I

    if-lez v1, :cond_a

    .line 253
    iget-object v1, v0, Lcom/google/re2j/Machine;->matchcap:[I

    aput v3, v1, v11

    .line 255
    :cond_a
    iget-object v1, v0, Lcom/google/re2j/Machine;->prog:Lcom/google/re2j/Prog;

    iget v1, v1, Lcom/google/re2j/Prog;->start:I

    move v6, v4

    iget-object v4, v0, Lcom/google/re2j/Machine;->matchcap:[I

    move v5, v6

    const/4 v6, 0x0

    move-object/from16 v18, v2

    move v2, v1

    move-object/from16 v1, v18

    move/from16 v18, v14

    move v14, v5

    move/from16 v5, v18

    invoke-direct/range {v0 .. v6}, Lcom/google/re2j/Machine;->add(Lcom/google/re2j/Machine$Queue;II[IILcom/google/re2j/Machine$Thread;)Lcom/google/re2j/Machine$Thread;

    goto :goto_4

    :cond_b
    move-object v1, v2

    move v14, v4

    :goto_4
    add-int v4, v3, v16

    .line 258
    invoke-virtual {v9, v4}, Lcom/google/re2j/MachineInput;->context(I)I

    move-result v6

    .line 259
    invoke-virtual {v9}, Lcom/google/re2j/MachineInput;->endPos()I

    move-result v0

    move-object v2, v8

    if-ne v3, v0, :cond_c

    move v8, v13

    goto :goto_5

    :cond_c
    move v8, v11

    :goto_5
    move-object/from16 v0, p0

    move v5, v15

    invoke-direct/range {v0 .. v8}, Lcom/google/re2j/Machine;->step(Lcom/google/re2j/Machine$Queue;Lcom/google/re2j/Machine$Queue;IIIIIZ)V

    if-nez v16, :cond_d

    goto :goto_6

    .line 263
    :cond_d
    iget v3, v0, Lcom/google/re2j/Machine;->ncap:I

    if-nez v3, :cond_e

    iget-boolean v3, v0, Lcom/google/re2j/Machine;->matched:Z

    if-eqz v3, :cond_e

    .line 280
    :goto_6
    invoke-direct {v0, v2}, Lcom/google/re2j/Machine;->free(Lcom/google/re2j/Machine$Queue;)V

    .line 281
    iget-boolean v1, v0, Lcom/google/re2j/Machine;->matched:Z

    return v1

    :cond_e
    if-eq v14, v12, :cond_f

    add-int v3, v4, v17

    .line 272
    invoke-virtual {v9, v3}, Lcom/google/re2j/MachineInput;->step(I)I

    move-result v3

    shr-int/lit8 v5, v3, 0x3

    and-int/lit8 v3, v3, 0x7

    goto :goto_7

    :cond_f
    move v5, v14

    move/from16 v3, v17

    :goto_7
    move/from16 v7, p3

    move-object v8, v1

    move v1, v4

    move v4, v14

    move v14, v6

    move v6, v5

    move/from16 v5, v17

    goto/16 :goto_2
.end method

.method submatches()[I
    .locals 2

    .line 141
    iget v0, p0, Lcom/google/re2j/Machine;->ncap:I

    if-nez v0, :cond_0

    .line 142
    sget-object v0, Lcom/google/re2j/Utils;->EMPTY_INTS:[I

    return-object v0

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/google/re2j/Machine;->matchcap:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method
