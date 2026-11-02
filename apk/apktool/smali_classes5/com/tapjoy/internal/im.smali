.class public Lcom/tapjoy/internal/im;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/im$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "im"


# instance fields
.field a:I

.field b:I

.field c:Lcom/tapjoy/internal/io;

.field private e:[I

.field private final f:[I

.field private g:Ljava/nio/ByteBuffer;

.field private h:[B

.field private i:[B
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private j:I

.field private k:I

.field private l:Lcom/tapjoy/internal/ip;

.field private m:[S

.field private n:[B

.field private o:[B

.field private p:[B

.field private q:[I

.field private r:Lcom/tapjoy/internal/im$a;

.field private s:Landroid/graphics/Bitmap;

.field private t:Z

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 206
    new-instance v0, Lcom/tapjoy/internal/ir;

    invoke-direct {v0}, Lcom/tapjoy/internal/ir;-><init>()V

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/im;-><init>(Lcom/tapjoy/internal/im$a;)V

    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/im$a;)V
    .locals 1

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 108
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tapjoy/internal/im;->f:[I

    const/4 v0, 0x0

    .line 120
    iput v0, p0, Lcom/tapjoy/internal/im;->j:I

    .line 121
    iput v0, p0, Lcom/tapjoy/internal/im;->k:I

    .line 201
    iput-object p1, p0, Lcom/tapjoy/internal/im;->r:Lcom/tapjoy/internal/im$a;

    .line 202
    new-instance p1, Lcom/tapjoy/internal/io;

    invoke-direct {p1}, Lcom/tapjoy/internal/io;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/im;->c:Lcom/tapjoy/internal/io;

    return-void
.end method

.method constructor <init>(Lcom/tapjoy/internal/im$a;Lcom/tapjoy/internal/io;Ljava/nio/ByteBuffer;)V
    .locals 1

    const/4 v0, 0x0

    .line 191
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tapjoy/internal/im;-><init>(Lcom/tapjoy/internal/im$a;Lcom/tapjoy/internal/io;Ljava/nio/ByteBuffer;B)V

    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/im$a;Lcom/tapjoy/internal/io;Ljava/nio/ByteBuffer;B)V
    .locals 0

    .line 196
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/im;-><init>(Lcom/tapjoy/internal/im$a;)V

    .line 197
    invoke-direct {p0, p2, p3}, Lcom/tapjoy/internal/im;->b(Lcom/tapjoy/internal/io;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private static a(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x1

    .line 922
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    return-void
.end method

.method private declared-synchronized a(Lcom/tapjoy/internal/io;Ljava/nio/ByteBuffer;)V
    .locals 0

    monitor-enter p0

    .line 458
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/im;->b(Lcom/tapjoy/internal/io;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
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

.method private declared-synchronized a(Lcom/tapjoy/internal/io;[B)V
    .locals 0

    monitor-enter p0

    .line 454
    :try_start_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/im;->a(Lcom/tapjoy/internal/io;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
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

.method private a([ILcom/tapjoy/internal/in;I)V
    .locals 4

    .line 655
    iget v0, p2, Lcom/tapjoy/internal/in;->d:I

    iget v1, p0, Lcom/tapjoy/internal/im;->v:I

    div-int/2addr v0, v1

    .line 656
    iget v1, p2, Lcom/tapjoy/internal/in;->b:I

    iget v2, p0, Lcom/tapjoy/internal/im;->v:I

    div-int/2addr v1, v2

    .line 657
    iget v2, p2, Lcom/tapjoy/internal/in;->c:I

    iget v3, p0, Lcom/tapjoy/internal/im;->v:I

    div-int/2addr v2, v3

    .line 658
    iget p2, p2, Lcom/tapjoy/internal/in;->a:I

    iget v3, p0, Lcom/tapjoy/internal/im;->v:I

    div-int/2addr p2, v3

    .line 659
    iget v3, p0, Lcom/tapjoy/internal/im;->x:I

    mul-int/2addr v1, v3

    add-int/2addr v1, p2

    mul-int/2addr v0, v3

    add-int/2addr v0, v1

    :goto_0
    if-ge v1, v0, :cond_1

    add-int p2, v1, v2

    move v3, v1

    :goto_1
    if-ge v3, p2, :cond_0

    .line 664
    aput p3, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 661
    :cond_0
    iget p2, p0, Lcom/tapjoy/internal/im;->x:I

    add-int/2addr v1, p2

    goto :goto_0

    :cond_1
    return-void
.end method

.method private declared-synchronized b(Lcom/tapjoy/internal/io;Ljava/nio/ByteBuffer;)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x1

    .line 466
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    const/4 v2, 0x0

    .line 467
    iput v2, p0, Lcom/tapjoy/internal/im;->u:I

    .line 468
    iput-object p1, p0, Lcom/tapjoy/internal/im;->c:Lcom/tapjoy/internal/io;

    .line 469
    iput-boolean v2, p0, Lcom/tapjoy/internal/im;->y:Z

    const/4 v3, -0x1

    .line 470
    iput v3, p0, Lcom/tapjoy/internal/im;->a:I

    .line 3321
    iput v2, p0, Lcom/tapjoy/internal/im;->b:I

    .line 473
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/tapjoy/internal/im;->g:Ljava/nio/ByteBuffer;

    .line 474
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 475
    iget-object p2, p0, Lcom/tapjoy/internal/im;->g:Ljava/nio/ByteBuffer;

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 478
    iput-boolean v2, p0, Lcom/tapjoy/internal/im;->t:Z

    .line 479
    iget-object p2, p1, Lcom/tapjoy/internal/io;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/internal/in;

    .line 480
    iget v2, v2, Lcom/tapjoy/internal/in;->g:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 481
    iput-boolean v0, p0, Lcom/tapjoy/internal/im;->t:Z

    .line 486
    :cond_1
    iput v1, p0, Lcom/tapjoy/internal/im;->v:I

    .line 487
    iget p2, p1, Lcom/tapjoy/internal/io;->f:I

    div-int/2addr p2, v1

    iput p2, p0, Lcom/tapjoy/internal/im;->x:I

    .line 488
    iget p2, p1, Lcom/tapjoy/internal/io;->g:I

    div-int/2addr p2, v1

    iput p2, p0, Lcom/tapjoy/internal/im;->w:I

    .line 491
    iget-object p2, p0, Lcom/tapjoy/internal/im;->r:Lcom/tapjoy/internal/im$a;

    iget v0, p1, Lcom/tapjoy/internal/io;->f:I

    iget p1, p1, Lcom/tapjoy/internal/io;->g:I

    mul-int/2addr v0, p1

    invoke-interface {p2, v0}, Lcom/tapjoy/internal/im$a;->a(I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/im;->p:[B

    .line 492
    iget-object p1, p0, Lcom/tapjoy/internal/im;->r:Lcom/tapjoy/internal/im$a;

    iget p2, p0, Lcom/tapjoy/internal/im;->x:I

    iget v0, p0, Lcom/tapjoy/internal/im;->w:I

    mul-int/2addr p2, v0

    invoke-interface {p1, p2}, Lcom/tapjoy/internal/im$a;->b(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/im;->q:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
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

.method private c()V
    .locals 4

    .line 851
    iget v0, p0, Lcom/tapjoy/internal/im;->j:I

    iget v1, p0, Lcom/tapjoy/internal/im;->k:I

    if-le v0, v1, :cond_0

    return-void

    .line 854
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/im;->i:[B

    const/16 v1, 0x4000

    if-nez v0, :cond_1

    .line 855
    iget-object v0, p0, Lcom/tapjoy/internal/im;->r:Lcom/tapjoy/internal/im$a;

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/im$a;->a(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/im;->i:[B

    :cond_1
    const/4 v0, 0x0

    .line 857
    iput v0, p0, Lcom/tapjoy/internal/im;->k:I

    .line 858
    iget-object v2, p0, Lcom/tapjoy/internal/im;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/tapjoy/internal/im;->j:I

    .line 859
    iget-object v2, p0, Lcom/tapjoy/internal/im;->g:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/tapjoy/internal/im;->i:[B

    invoke-virtual {v2, v3, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private d()I
    .locals 3

    .line 867
    :try_start_0
    invoke-direct {p0}, Lcom/tapjoy/internal/im;->c()V

    .line 868
    iget-object v0, p0, Lcom/tapjoy/internal/im;->i:[B

    iget v1, p0, Lcom/tapjoy/internal/im;->k:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tapjoy/internal/im;->k:I

    aget-byte v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v0, 0xff

    return v0

    :catch_0
    const/4 v0, 0x1

    .line 870
    iput v0, p0, Lcom/tapjoy/internal/im;->u:I

    const/4 v0, 0x0

    return v0
.end method

.method private e()I
    .locals 7

    .line 881
    invoke-direct {p0}, Lcom/tapjoy/internal/im;->d()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v1, 0x1

    .line 884
    :try_start_0
    iget-object v2, p0, Lcom/tapjoy/internal/im;->h:[B

    if-nez v2, :cond_0

    .line 885
    iget-object v2, p0, Lcom/tapjoy/internal/im;->r:Lcom/tapjoy/internal/im$a;

    const/16 v3, 0xff

    invoke-interface {v2, v3}, Lcom/tapjoy/internal/im$a;->a(I)[B

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/im;->h:[B

    .line 887
    :cond_0
    iget v2, p0, Lcom/tapjoy/internal/im;->j:I

    iget v3, p0, Lcom/tapjoy/internal/im;->k:I

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    if-lt v2, v0, :cond_1

    .line 890
    iget-object v2, p0, Lcom/tapjoy/internal/im;->i:[B

    iget-object v5, p0, Lcom/tapjoy/internal/im;->h:[B

    invoke-static {v2, v3, v5, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 891
    iget v2, p0, Lcom/tapjoy/internal/im;->k:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/tapjoy/internal/im;->k:I

    return v0

    .line 892
    :cond_1
    iget-object v3, p0, Lcom/tapjoy/internal/im;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    add-int/2addr v3, v2

    if-lt v3, v0, :cond_2

    .line 894
    iget-object v3, p0, Lcom/tapjoy/internal/im;->i:[B

    iget v5, p0, Lcom/tapjoy/internal/im;->k:I

    iget-object v6, p0, Lcom/tapjoy/internal/im;->h:[B

    invoke-static {v3, v5, v6, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 895
    iget v3, p0, Lcom/tapjoy/internal/im;->j:I

    iput v3, p0, Lcom/tapjoy/internal/im;->k:I

    .line 896
    invoke-direct {p0}, Lcom/tapjoy/internal/im;->c()V

    sub-int v3, v0, v2

    .line 898
    iget-object v5, p0, Lcom/tapjoy/internal/im;->i:[B

    iget-object v6, p0, Lcom/tapjoy/internal/im;->h:[B

    invoke-static {v5, v4, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 899
    iget v2, p0, Lcom/tapjoy/internal/im;->k:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/tapjoy/internal/im;->k:I

    return v0

    .line 901
    :cond_2
    iput v1, p0, Lcom/tapjoy/internal/im;->u:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v2

    .line 904
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 905
    iput v1, p0, Lcom/tapjoy/internal/im;->u:I

    :cond_3
    return v0
.end method

.method private f()Landroid/graphics/Bitmap;
    .locals 4

    .line 912
    iget-boolean v0, p0, Lcom/tapjoy/internal/im;->y:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 914
    :goto_0
    iget-object v1, p0, Lcom/tapjoy/internal/im;->r:Lcom/tapjoy/internal/im$a;

    iget v2, p0, Lcom/tapjoy/internal/im;->x:I

    iget v3, p0, Lcom/tapjoy/internal/im;->w:I

    invoke-interface {v1, v2, v3, v0}, Lcom/tapjoy/internal/im$a;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 915
    invoke-static {v0}, Lcom/tapjoy/internal/im;->a(Landroid/graphics/Bitmap;)V

    return-object v0
.end method


# virtual methods
.method final declared-synchronized a([B)I
    .locals 1

    monitor-enter p0

    .line 3496
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/im;->l:Lcom/tapjoy/internal/ip;

    if-nez v0, :cond_0

    .line 3497
    new-instance v0, Lcom/tapjoy/internal/ip;

    invoke-direct {v0}, Lcom/tapjoy/internal/ip;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/im;->l:Lcom/tapjoy/internal/ip;

    .line 3499
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/im;->l:Lcom/tapjoy/internal/ip;

    .line 509
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/ip;->a([B)Lcom/tapjoy/internal/ip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/ip;->a()Lcom/tapjoy/internal/io;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/im;->c:Lcom/tapjoy/internal/io;

    if-eqz p1, :cond_1

    .line 511
    invoke-direct {p0, v0, p1}, Lcom/tapjoy/internal/im;->a(Lcom/tapjoy/internal/io;[B)V

    .line 514
    :cond_1
    iget p1, p0, Lcom/tapjoy/internal/im;->u:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method final a()Z
    .locals 2

    .line 1285
    iget-object v0, p0, Lcom/tapjoy/internal/im;->c:Lcom/tapjoy/internal/io;

    iget v0, v0, Lcom/tapjoy/internal/io;->c:I

    const/4 v1, -0x1

    if-lt v1, v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 306
    :cond_0
    iput v1, p0, Lcom/tapjoy/internal/im;->a:I

    const/4 v0, 0x1

    return v0
.end method

.method final declared-synchronized b()Landroid/graphics/Bitmap;
    .locals 31

    move-object/from16 v1, p0

    monitor-enter p0

    .line 353
    :try_start_0
    iget-object v0, v1, Lcom/tapjoy/internal/im;->c:Lcom/tapjoy/internal/io;

    iget v0, v0, Lcom/tapjoy/internal/io;->c:I

    const/4 v2, 0x1

    if-lez v0, :cond_0

    iget v0, v1, Lcom/tapjoy/internal/im;->a:I

    if-gez v0, :cond_1

    .line 354
    :cond_0
    iget-object v0, v1, Lcom/tapjoy/internal/im;->c:Lcom/tapjoy/internal/io;

    iget v0, v0, Lcom/tapjoy/internal/io;->c:I

    .line 355
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v3, v1, Lcom/tapjoy/internal/im;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    .line 356
    iput v2, v1, Lcom/tapjoy/internal/im;->u:I

    .line 358
    :cond_1
    iget v0, v1, Lcom/tapjoy/internal/im;->u:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_38

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    goto/16 :goto_19

    :cond_2
    const/4 v0, 0x0

    .line 362
    iput v0, v1, Lcom/tapjoy/internal/im;->u:I

    .line 364
    iget-object v5, v1, Lcom/tapjoy/internal/im;->c:Lcom/tapjoy/internal/io;

    iget-object v5, v5, Lcom/tapjoy/internal/io;->e:Ljava/util/List;

    iget v6, v1, Lcom/tapjoy/internal/im;->a:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tapjoy/internal/in;

    .line 366
    iget v6, v1, Lcom/tapjoy/internal/im;->a:I

    sub-int/2addr v6, v2

    if-ltz v6, :cond_3

    .line 368
    iget-object v7, v1, Lcom/tapjoy/internal/im;->c:Lcom/tapjoy/internal/io;

    iget-object v7, v7, Lcom/tapjoy/internal/io;->e:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tapjoy/internal/in;

    goto :goto_0

    :cond_3
    move-object v6, v3

    .line 372
    :goto_0
    iget-object v7, v5, Lcom/tapjoy/internal/in;->k:[I

    if-eqz v7, :cond_4

    iget-object v7, v5, Lcom/tapjoy/internal/in;->k:[I

    goto :goto_1

    :cond_4
    iget-object v7, v1, Lcom/tapjoy/internal/im;->c:Lcom/tapjoy/internal/io;

    iget-object v7, v7, Lcom/tapjoy/internal/io;->a:[I

    :goto_1
    iput-object v7, v1, Lcom/tapjoy/internal/im;->e:[I

    if-nez v7, :cond_5

    .line 374
    iget v0, v1, Lcom/tapjoy/internal/im;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    .line 376
    iput v2, v1, Lcom/tapjoy/internal/im;->u:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    monitor-exit p0

    return-object v3

    .line 381
    :cond_5
    :try_start_1
    iget-boolean v3, v5, Lcom/tapjoy/internal/in;->f:Z

    if-eqz v3, :cond_6

    .line 383
    iget-object v3, v1, Lcom/tapjoy/internal/im;->e:[I

    iget-object v7, v1, Lcom/tapjoy/internal/im;->f:[I

    array-length v8, v3

    invoke-static {v3, v0, v7, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 385
    iget-object v3, v1, Lcom/tapjoy/internal/im;->f:[I

    iput-object v3, v1, Lcom/tapjoy/internal/im;->e:[I

    .line 387
    iget v7, v5, Lcom/tapjoy/internal/in;->h:I

    aput v0, v3, v7

    .line 1523
    :cond_6
    iget-object v3, v1, Lcom/tapjoy/internal/im;->q:[I

    if-nez v6, :cond_7

    .line 1527
    invoke-static {v3, v0}, Ljava/util/Arrays;->fill([II)V

    :cond_7
    const/4 v14, 0x3

    if-eqz v6, :cond_d

    .line 1531
    iget v7, v6, Lcom/tapjoy/internal/in;->g:I

    if-lez v7, :cond_d

    .line 1534
    iget v7, v6, Lcom/tapjoy/internal/in;->g:I

    if-ne v7, v4, :cond_b

    .line 1537
    iget-boolean v7, v5, Lcom/tapjoy/internal/in;->f:Z

    if-nez v7, :cond_8

    .line 1538
    iget-object v7, v1, Lcom/tapjoy/internal/im;->c:Lcom/tapjoy/internal/io;

    iget v7, v7, Lcom/tapjoy/internal/io;->l:I

    .line 1539
    iget-object v8, v5, Lcom/tapjoy/internal/in;->k:[I

    if-eqz v8, :cond_a

    iget-object v8, v1, Lcom/tapjoy/internal/im;->c:Lcom/tapjoy/internal/io;

    iget v8, v8, Lcom/tapjoy/internal/io;->j:I

    iget v9, v5, Lcom/tapjoy/internal/in;->h:I

    if-ne v8, v9, :cond_a

    goto :goto_2

    .line 1542
    :cond_8
    iget v7, v1, Lcom/tapjoy/internal/im;->a:I

    if-nez v7, :cond_9

    .line 1546
    iput-boolean v2, v1, Lcom/tapjoy/internal/im;->y:Z

    :cond_9
    :goto_2
    move v7, v0

    .line 1548
    :cond_a
    invoke-direct {v1, v3, v6, v7}, Lcom/tapjoy/internal/im;->a([ILcom/tapjoy/internal/in;I)V

    goto :goto_3

    .line 1549
    :cond_b
    iget v7, v6, Lcom/tapjoy/internal/in;->g:I

    if-ne v7, v14, :cond_d

    .line 1550
    iget-object v7, v1, Lcom/tapjoy/internal/im;->s:Landroid/graphics/Bitmap;

    if-nez v7, :cond_c

    .line 1551
    invoke-direct {v1, v3, v6, v0}, Lcom/tapjoy/internal/im;->a([ILcom/tapjoy/internal/in;I)V

    goto :goto_3

    .line 1554
    :cond_c
    iget v7, v6, Lcom/tapjoy/internal/in;->d:I

    iget v8, v1, Lcom/tapjoy/internal/im;->v:I

    div-int v13, v7, v8

    .line 1555
    iget v7, v6, Lcom/tapjoy/internal/in;->b:I

    iget v8, v1, Lcom/tapjoy/internal/im;->v:I

    div-int v11, v7, v8

    .line 1556
    iget v7, v6, Lcom/tapjoy/internal/in;->c:I

    iget v8, v1, Lcom/tapjoy/internal/im;->v:I

    div-int v12, v7, v8

    .line 1557
    iget v6, v6, Lcom/tapjoy/internal/in;->a:I

    iget v7, v1, Lcom/tapjoy/internal/im;->v:I

    div-int v10, v6, v7

    .line 1558
    iget v9, v1, Lcom/tapjoy/internal/im;->x:I

    mul-int v6, v11, v9

    add-int v8, v6, v10

    .line 1559
    iget-object v6, v1, Lcom/tapjoy/internal/im;->s:Landroid/graphics/Bitmap;

    move-object v7, v3

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move-object v3, v7

    .line 1719
    :cond_d
    :goto_3
    iput v0, v1, Lcom/tapjoy/internal/im;->j:I

    .line 1720
    iput v0, v1, Lcom/tapjoy/internal/im;->k:I

    if-eqz v5, :cond_e

    .line 1723
    iget-object v6, v1, Lcom/tapjoy/internal/im;->g:Ljava/nio/ByteBuffer;

    iget v7, v5, Lcom/tapjoy/internal/in;->j:I

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_e
    if-nez v5, :cond_f

    .line 1726
    iget-object v6, v1, Lcom/tapjoy/internal/im;->c:Lcom/tapjoy/internal/io;

    iget v6, v6, Lcom/tapjoy/internal/io;->f:I

    iget-object v7, v1, Lcom/tapjoy/internal/im;->c:Lcom/tapjoy/internal/io;

    iget v7, v7, Lcom/tapjoy/internal/io;->g:I

    :goto_4
    mul-int/2addr v6, v7

    goto :goto_5

    :cond_f
    iget v6, v5, Lcom/tapjoy/internal/in;->c:I

    iget v7, v5, Lcom/tapjoy/internal/in;->d:I

    goto :goto_4

    .line 1731
    :goto_5
    iget-object v7, v1, Lcom/tapjoy/internal/im;->p:[B

    if-eqz v7, :cond_10

    array-length v7, v7

    if-ge v7, v6, :cond_11

    .line 1733
    :cond_10
    iget-object v7, v1, Lcom/tapjoy/internal/im;->r:Lcom/tapjoy/internal/im$a;

    invoke-interface {v7, v6}, Lcom/tapjoy/internal/im$a;->a(I)[B

    move-result-object v7

    iput-object v7, v1, Lcom/tapjoy/internal/im;->p:[B

    .line 1735
    :cond_11
    iget-object v7, v1, Lcom/tapjoy/internal/im;->m:[S

    const/16 v8, 0x1000

    if-nez v7, :cond_12

    .line 1736
    new-array v7, v8, [S

    iput-object v7, v1, Lcom/tapjoy/internal/im;->m:[S

    .line 1738
    :cond_12
    iget-object v7, v1, Lcom/tapjoy/internal/im;->n:[B

    if-nez v7, :cond_13

    .line 1739
    new-array v7, v8, [B

    iput-object v7, v1, Lcom/tapjoy/internal/im;->n:[B

    .line 1741
    :cond_13
    iget-object v7, v1, Lcom/tapjoy/internal/im;->o:[B

    if-nez v7, :cond_14

    const/16 v7, 0x1001

    .line 1742
    new-array v7, v7, [B

    iput-object v7, v1, Lcom/tapjoy/internal/im;->o:[B

    .line 1746
    :cond_14
    invoke-direct {v1}, Lcom/tapjoy/internal/im;->d()I

    move-result v7

    shl-int v9, v2, v7

    add-int/lit8 v10, v9, 0x1

    add-int/lit8 v11, v9, 0x2

    add-int/2addr v7, v2

    shl-int v12, v2, v7

    sub-int/2addr v12, v2

    move v13, v0

    :goto_6
    if-ge v13, v9, :cond_15

    .line 1755
    iget-object v15, v1, Lcom/tapjoy/internal/im;->m:[S

    aput-short v0, v15, v13

    .line 1756
    iget-object v15, v1, Lcom/tapjoy/internal/im;->n:[B

    move/from16 v16, v0

    int-to-byte v0, v13

    aput-byte v0, v15, v13

    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v16

    goto :goto_6

    :cond_15
    move/from16 v16, v0

    const/4 v0, -0x1

    move/from16 v21, v0

    move/from16 v26, v7

    move/from16 v24, v11

    move/from16 v25, v12

    move/from16 v13, v16

    move v15, v13

    move/from16 v17, v15

    move/from16 v18, v17

    move/from16 v19, v18

    move/from16 v20, v19

    move/from16 v22, v20

    move/from16 v23, v22

    :goto_7
    const/16 v27, 0x8

    if-ge v13, v6, :cond_21

    if-nez v15, :cond_17

    .line 1765
    invoke-direct {v1}, Lcom/tapjoy/internal/im;->e()I

    move-result v15

    if-gtz v15, :cond_16

    .line 1767
    iput v14, v1, Lcom/tapjoy/internal/im;->u:I

    goto/16 :goto_d

    :cond_16
    move/from16 v19, v16

    .line 1773
    :cond_17
    iget-object v2, v1, Lcom/tapjoy/internal/im;->h:[B

    aget-byte v2, v2, v19

    and-int/lit16 v2, v2, 0xff

    shl-int v2, v2, v17

    add-int v18, v18, v2

    add-int/lit8 v17, v17, 0x8

    add-int/lit8 v19, v19, 0x1

    add-int/2addr v15, v0

    move/from16 v2, v17

    move/from16 v4, v21

    move/from16 v8, v22

    move/from16 v0, v24

    move/from16 v14, v26

    :goto_8
    move/from16 v26, v2

    if-lt v2, v14, :cond_20

    and-int v2, v18, v25

    shr-int v18, v18, v14

    sub-int v26, v26, v14

    if-ne v2, v9, :cond_18

    move v14, v7

    move v0, v11

    move/from16 v25, v12

    move/from16 v2, v26

    const/4 v4, -0x1

    goto :goto_8

    :cond_18
    if-le v2, v0, :cond_19

    move-object/from16 v28, v3

    const/4 v3, 0x3

    .line 1795
    iput v3, v1, Lcom/tapjoy/internal/im;->u:I

    goto/16 :goto_b

    :cond_19
    move-object/from16 v28, v3

    if-eq v2, v10, :cond_1f

    const/4 v3, -0x1

    if-ne v4, v3, :cond_1a

    .line 1804
    iget-object v4, v1, Lcom/tapjoy/internal/im;->o:[B

    add-int/lit8 v8, v23, 0x1

    iget-object v3, v1, Lcom/tapjoy/internal/im;->n:[B

    aget-byte v3, v3, v2

    aput-byte v3, v4, v23

    move v4, v2

    move/from16 v23, v8

    move-object/from16 v3, v28

    move v8, v4

    move/from16 v2, v26

    goto :goto_8

    :cond_1a
    if-lt v2, v0, :cond_1b

    .line 1811
    iget-object v3, v1, Lcom/tapjoy/internal/im;->o:[B

    add-int/lit8 v27, v23, 0x1

    int-to-byte v8, v8

    aput-byte v8, v3, v23

    move v3, v4

    move/from16 v23, v27

    goto :goto_9

    :cond_1b
    move v3, v2

    :goto_9
    if-lt v3, v9, :cond_1c

    .line 1815
    iget-object v8, v1, Lcom/tapjoy/internal/im;->o:[B

    add-int/lit8 v27, v23, 0x1

    move/from16 v29, v2

    iget-object v2, v1, Lcom/tapjoy/internal/im;->n:[B

    aget-byte v2, v2, v3

    aput-byte v2, v8, v23

    .line 1816
    iget-object v2, v1, Lcom/tapjoy/internal/im;->m:[S

    aget-short v3, v2, v3

    move/from16 v23, v27

    move/from16 v2, v29

    goto :goto_9

    :cond_1c
    move/from16 v29, v2

    .line 1818
    iget-object v2, v1, Lcom/tapjoy/internal/im;->n:[B

    aget-byte v3, v2, v3

    and-int/lit16 v8, v3, 0xff

    .line 1819
    iget-object v3, v1, Lcom/tapjoy/internal/im;->o:[B

    add-int/lit8 v27, v23, 0x1

    move-object/from16 v30, v2

    int-to-byte v2, v8

    aput-byte v2, v3, v23

    const/16 v3, 0x1000

    if-ge v0, v3, :cond_1d

    .line 1823
    iget-object v3, v1, Lcom/tapjoy/internal/im;->m:[S

    int-to-short v4, v4

    aput-short v4, v3, v0

    .line 1824
    aput-byte v2, v30, v0

    add-int/lit8 v0, v0, 0x1

    and-int v2, v0, v25

    const/16 v3, 0x1000

    if-nez v2, :cond_1d

    if-ge v0, v3, :cond_1d

    add-int/lit8 v14, v14, 0x1

    add-int v25, v25, v0

    :cond_1d
    move/from16 v23, v27

    :goto_a
    if-lez v23, :cond_1e

    .line 1835
    iget-object v2, v1, Lcom/tapjoy/internal/im;->p:[B

    add-int/lit8 v4, v20, 0x1

    iget-object v3, v1, Lcom/tapjoy/internal/im;->o:[B

    add-int/lit8 v23, v23, -0x1

    aget-byte v3, v3, v23

    aput-byte v3, v2, v20

    add-int/lit8 v13, v13, 0x1

    move/from16 v20, v4

    const/16 v3, 0x1000

    goto :goto_a

    :cond_1e
    move/from16 v2, v26

    move-object/from16 v3, v28

    move/from16 v4, v29

    goto/16 :goto_8

    :cond_1f
    :goto_b
    move/from16 v24, v0

    move/from16 v21, v4

    move/from16 v22, v8

    move/from16 v17, v26

    move-object/from16 v3, v28

    goto :goto_c

    :cond_20
    move/from16 v24, v0

    move/from16 v21, v4

    move/from16 v22, v8

    move/from16 v17, v26

    :goto_c
    const/4 v0, -0x1

    const/4 v2, 0x1

    const/4 v4, 0x2

    const/16 v8, 0x1000

    move/from16 v26, v14

    const/4 v14, 0x3

    goto/16 :goto_7

    :cond_21
    :goto_d
    move-object/from16 v28, v3

    move/from16 v0, v20

    :goto_e
    if-ge v0, v6, :cond_22

    .line 1843
    iget-object v2, v1, Lcom/tapjoy/internal/im;->p:[B

    aput-byte v16, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 1568
    :cond_22
    iget v0, v5, Lcom/tapjoy/internal/in;->d:I

    iget v2, v1, Lcom/tapjoy/internal/im;->v:I

    div-int/2addr v0, v2

    .line 1569
    iget v2, v5, Lcom/tapjoy/internal/in;->b:I

    iget v3, v1, Lcom/tapjoy/internal/im;->v:I

    div-int/2addr v2, v3

    .line 1570
    iget v3, v5, Lcom/tapjoy/internal/in;->c:I

    iget v4, v1, Lcom/tapjoy/internal/im;->v:I

    div-int/2addr v3, v4

    .line 1571
    iget v4, v5, Lcom/tapjoy/internal/in;->a:I

    iget v6, v1, Lcom/tapjoy/internal/im;->v:I

    div-int/2addr v4, v6

    .line 1576
    iget v6, v1, Lcom/tapjoy/internal/im;->a:I

    if-nez v6, :cond_23

    const/4 v6, 0x1

    goto :goto_f

    :cond_23
    move/from16 v6, v16

    :goto_f
    move/from16 v7, v16

    move v9, v7

    move/from16 v10, v27

    const/4 v8, 0x1

    :goto_10
    if-ge v9, v0, :cond_34

    .line 1579
    iget-boolean v11, v5, Lcom/tapjoy/internal/in;->e:Z

    if-eqz v11, :cond_28

    if-lt v7, v0, :cond_27

    add-int/lit8 v8, v8, 0x1

    const/4 v11, 0x4

    const/4 v12, 0x2

    if-eq v8, v12, :cond_26

    const/4 v13, 0x3

    if-eq v8, v13, :cond_25

    if-eq v8, v11, :cond_24

    goto :goto_11

    :cond_24
    move v10, v12

    const/4 v7, 0x1

    goto :goto_11

    :cond_25
    move v10, v11

    move v7, v12

    goto :goto_11

    :cond_26
    const/4 v13, 0x3

    move v7, v11

    goto :goto_11

    :cond_27
    const/4 v12, 0x2

    const/4 v13, 0x3

    :goto_11
    add-int v11, v7, v10

    goto :goto_12

    :cond_28
    const/4 v12, 0x2

    const/4 v13, 0x3

    move v11, v7

    move v7, v9

    :goto_12
    add-int/2addr v7, v2

    .line 1602
    iget v14, v1, Lcom/tapjoy/internal/im;->w:I

    if-ge v7, v14, :cond_33

    .line 1603
    iget v14, v1, Lcom/tapjoy/internal/im;->x:I

    mul-int/2addr v7, v14

    add-int v15, v7, v4

    add-int v12, v15, v3

    add-int v13, v7, v14

    if-ge v13, v12, :cond_29

    add-int v12, v7, v14

    .line 1613
    :cond_29
    iget v7, v1, Lcom/tapjoy/internal/im;->v:I

    mul-int/2addr v7, v9

    iget v13, v5, Lcom/tapjoy/internal/in;->c:I

    mul-int/2addr v7, v13

    sub-int v13, v12, v15

    .line 1614
    iget v14, v1, Lcom/tapjoy/internal/im;->v:I

    mul-int/2addr v13, v14

    add-int/2addr v13, v7

    :goto_13
    if-ge v15, v12, :cond_33

    .line 1618
    iget v14, v1, Lcom/tapjoy/internal/im;->v:I

    move/from16 v18, v0

    const/4 v0, 0x1

    if-ne v14, v0, :cond_2a

    .line 1619
    iget-object v0, v1, Lcom/tapjoy/internal/im;->p:[B

    aget-byte v0, v0, v7

    and-int/lit16 v0, v0, 0xff

    .line 1620
    iget-object v14, v1, Lcom/tapjoy/internal/im;->e:[I

    aget v0, v14, v0

    move/from16 v26, v2

    goto/16 :goto_16

    .line 1624
    :cond_2a
    iget v0, v5, Lcom/tapjoy/internal/in;->c:I

    move/from16 v25, v0

    move v14, v7

    move/from16 v19, v16

    move/from16 v20, v19

    move/from16 v21, v20

    move/from16 v22, v21

    move/from16 v23, v22

    .line 2680
    :goto_14
    iget v0, v1, Lcom/tapjoy/internal/im;->v:I

    add-int/2addr v0, v7

    if-ge v14, v0, :cond_2c

    iget-object v0, v1, Lcom/tapjoy/internal/im;->p:[B

    move/from16 v26, v2

    array-length v2, v0

    if-ge v14, v2, :cond_2d

    if-ge v14, v13, :cond_2d

    .line 2681
    aget-byte v0, v0, v14

    and-int/lit16 v0, v0, 0xff

    .line 2682
    iget-object v2, v1, Lcom/tapjoy/internal/im;->e:[I

    aget v0, v2, v0

    if-eqz v0, :cond_2b

    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    add-int v19, v19, v2

    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    add-int v20, v20, v2

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    add-int v21, v21, v2

    and-int/lit16 v0, v0, 0xff

    add-int v22, v22, v0

    add-int/lit8 v23, v23, 0x1

    :cond_2b
    add-int/lit8 v14, v14, 0x1

    move/from16 v2, v26

    goto :goto_14

    :cond_2c
    move/from16 v26, v2

    :cond_2d
    add-int v0, v7, v25

    move v2, v0

    .line 2694
    :goto_15
    iget v14, v1, Lcom/tapjoy/internal/im;->v:I

    add-int/2addr v14, v0

    if-ge v2, v14, :cond_2f

    iget-object v14, v1, Lcom/tapjoy/internal/im;->p:[B

    move/from16 v25, v0

    array-length v0, v14

    if-ge v2, v0, :cond_2f

    if-ge v2, v13, :cond_2f

    .line 2695
    aget-byte v0, v14, v2

    and-int/lit16 v0, v0, 0xff

    .line 2696
    iget-object v14, v1, Lcom/tapjoy/internal/im;->e:[I

    aget v0, v14, v0

    if-eqz v0, :cond_2e

    shr-int/lit8 v14, v0, 0x18

    and-int/lit16 v14, v14, 0xff

    add-int v19, v19, v14

    shr-int/lit8 v14, v0, 0x10

    and-int/lit16 v14, v14, 0xff

    add-int v20, v20, v14

    shr-int/lit8 v14, v0, 0x8

    and-int/lit16 v14, v14, 0xff

    add-int v21, v21, v14

    and-int/lit16 v0, v0, 0xff

    add-int v22, v22, v0

    add-int/lit8 v23, v23, 0x1

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v25

    goto :goto_15

    :cond_2f
    if-nez v23, :cond_30

    move/from16 v0, v16

    goto :goto_16

    .line 2708
    :cond_30
    div-int v19, v19, v23

    shl-int/lit8 v0, v19, 0x18

    div-int v20, v20, v23

    shl-int/lit8 v2, v20, 0x10

    or-int/2addr v0, v2

    div-int v21, v21, v23

    shl-int/lit8 v2, v21, 0x8

    or-int/2addr v0, v2

    div-int v22, v22, v23

    or-int v0, v0, v22

    :goto_16
    if-eqz v0, :cond_31

    .line 1627
    aput v0, v28, v15

    goto :goto_17

    .line 1628
    :cond_31
    iget-boolean v0, v1, Lcom/tapjoy/internal/im;->y:Z

    if-nez v0, :cond_32

    if-eqz v6, :cond_32

    const/4 v0, 0x1

    .line 1629
    iput-boolean v0, v1, Lcom/tapjoy/internal/im;->y:Z

    .line 1631
    :cond_32
    :goto_17
    iget v0, v1, Lcom/tapjoy/internal/im;->v:I

    add-int/2addr v7, v0

    add-int/lit8 v15, v15, 0x1

    move/from16 v0, v18

    move/from16 v2, v26

    goto/16 :goto_13

    :cond_33
    move/from16 v18, v0

    move/from16 v26, v2

    add-int/lit8 v9, v9, 0x1

    move v7, v11

    move/from16 v0, v18

    move/from16 v2, v26

    goto/16 :goto_10

    .line 1638
    :cond_34
    iget-boolean v0, v1, Lcom/tapjoy/internal/im;->t:Z

    if-eqz v0, :cond_37

    iget v0, v5, Lcom/tapjoy/internal/in;->g:I

    if-eqz v0, :cond_35

    iget v0, v5, Lcom/tapjoy/internal/in;->g:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_37

    .line 1640
    :cond_35
    iget-object v0, v1, Lcom/tapjoy/internal/im;->s:Landroid/graphics/Bitmap;

    if-nez v0, :cond_36

    .line 1641
    invoke-direct {v1}, Lcom/tapjoy/internal/im;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v1, Lcom/tapjoy/internal/im;->s:Landroid/graphics/Bitmap;

    .line 1643
    :cond_36
    iget-object v2, v1, Lcom/tapjoy/internal/im;->s:Landroid/graphics/Bitmap;

    iget v5, v1, Lcom/tapjoy/internal/im;->x:I

    iget v9, v1, Lcom/tapjoy/internal/im;->w:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    move-object/from16 v3, v28

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto :goto_18

    :cond_37
    move-object/from16 v3, v28

    .line 1648
    :goto_18
    invoke-direct {v1}, Lcom/tapjoy/internal/im;->f()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1649
    iget v5, v1, Lcom/tapjoy/internal/im;->x:I

    iget v9, v1, Lcom/tapjoy/internal/im;->w:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 391
    monitor-exit p0

    return-object v2

    .line 359
    :cond_38
    :goto_19
    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 360
    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
