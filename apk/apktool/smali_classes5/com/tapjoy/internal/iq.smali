.class public final Lcom/tapjoy/internal/iq;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/iq$a;,
        Lcom/tapjoy/internal/iq$b;
    }
.end annotation


# instance fields
.field private a:Lcom/tapjoy/internal/im;

.field private b:Landroid/graphics/Bitmap;

.field private final c:Landroid/os/Handler;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/Thread;

.field private h:Lcom/tapjoy/internal/iq$b;

.field private i:J

.field private j:Lcom/tapjoy/internal/iq$a;

.field private final k:Ljava/lang/Runnable;

.field private final l:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/tapjoy/internal/iq;->c:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/tapjoy/internal/iq;->h:Lcom/tapjoy/internal/iq$b;

    const-wide/16 v0, -0x1

    .line 25
    iput-wide v0, p0, Lcom/tapjoy/internal/iq;->i:J

    .line 26
    iput-object p1, p0, Lcom/tapjoy/internal/iq;->j:Lcom/tapjoy/internal/iq$a;

    .line 28
    new-instance p1, Lcom/tapjoy/internal/iq$1;

    invoke-direct {p1, p0}, Lcom/tapjoy/internal/iq$1;-><init>(Lcom/tapjoy/internal/iq;)V

    iput-object p1, p0, Lcom/tapjoy/internal/iq;->k:Ljava/lang/Runnable;

    .line 37
    new-instance p1, Lcom/tapjoy/internal/iq$2;

    invoke-direct {p1, p0}, Lcom/tapjoy/internal/iq$2;-><init>(Lcom/tapjoy/internal/iq;)V

    iput-object p1, p0, Lcom/tapjoy/internal/iq;->l:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/iq;)Landroid/graphics/Bitmap;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/tapjoy/internal/iq;->b:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic b(Lcom/tapjoy/internal/iq;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/tapjoy/internal/iq;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic c(Lcom/tapjoy/internal/iq;)Lcom/tapjoy/internal/im;
    .locals 1

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/tapjoy/internal/iq;->a:Lcom/tapjoy/internal/im;

    return-object v0
.end method

.method static synthetic d(Lcom/tapjoy/internal/iq;)Ljava/lang/Thread;
    .locals 1

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/tapjoy/internal/iq;->g:Ljava/lang/Thread;

    return-object v0
.end method

.method private d()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/tapjoy/internal/iq;->a:Lcom/tapjoy/internal/im;

    .line 1294
    iget v0, v0, Lcom/tapjoy/internal/im;->a:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/iq;->a:Lcom/tapjoy/internal/im;

    invoke-virtual {v0}, Lcom/tapjoy/internal/im;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tapjoy/internal/iq;->d:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lcom/tapjoy/internal/iq;->e:Z

    .line 125
    invoke-direct {p0}, Lcom/tapjoy/internal/iq;->f()V

    :cond_1
    :goto_0
    return-void
.end method

.method private e()Z
    .locals 1

    .line 143
    iget-boolean v0, p0, Lcom/tapjoy/internal/iq;->d:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tapjoy/internal/iq;->e:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/iq;->a:Lcom/tapjoy/internal/im;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/internal/iq;->g:Ljava/lang/Thread;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic e(Lcom/tapjoy/internal/iq;)Z
    .locals 1

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/tapjoy/internal/iq;->f:Z

    return v0
.end method

.method private f()V
    .locals 1

    .line 237
    invoke-direct {p0}, Lcom/tapjoy/internal/iq;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/tapjoy/internal/iq;->g:Ljava/lang/Thread;

    .line 239
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcom/tapjoy/internal/iq;->d:Z

    .line 105
    invoke-direct {p0}, Lcom/tapjoy/internal/iq;->f()V

    return-void
.end method

.method public final a(Lcom/tapjoy/internal/io;[B)V
    .locals 2

    .line 57
    :try_start_0
    new-instance v0, Lcom/tapjoy/internal/im;

    new-instance v1, Lcom/tapjoy/internal/ir;

    invoke-direct {v1}, Lcom/tapjoy/internal/ir;-><init>()V

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-direct {v0, v1, p1, p2}, Lcom/tapjoy/internal/im;-><init>(Lcom/tapjoy/internal/im$a;Lcom/tapjoy/internal/io;Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/tapjoy/internal/iq;->a:Lcom/tapjoy/internal/im;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    iget-boolean p1, p0, Lcom/tapjoy/internal/iq;->d:Z

    if-eqz p1, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/tapjoy/internal/iq;->f()V

    return-void

    .line 67
    :cond_0
    invoke-direct {p0}, Lcom/tapjoy/internal/iq;->d()V

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 59
    iput-object p2, p0, Lcom/tapjoy/internal/iq;->a:Lcom/tapjoy/internal/im;

    .line 60
    filled-new-array {p1}, [Ljava/lang/Object;

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/tapjoy/internal/iq;->d:Z

    .line 115
    iget-object v0, p0, Lcom/tapjoy/internal/iq;->g:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/tapjoy/internal/iq;->g:Ljava/lang/Thread;

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lcom/tapjoy/internal/iq;->d:Z

    .line 136
    iput-boolean v0, p0, Lcom/tapjoy/internal/iq;->e:Z

    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/tapjoy/internal/iq;->f:Z

    .line 138
    invoke-virtual {p0}, Lcom/tapjoy/internal/iq;->b()V

    .line 139
    iget-object v0, p0, Lcom/tapjoy/internal/iq;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tapjoy/internal/iq;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final getFramesDisplayDuration()J
    .locals 2

    .line 89
    iget-wide v0, p0, Lcom/tapjoy/internal/iq;->i:J

    return-wide v0
.end method

.method public final getGifHeight()I
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/tapjoy/internal/iq;->a:Lcom/tapjoy/internal/im;

    .line 2214
    iget-object v0, v0, Lcom/tapjoy/internal/im;->c:Lcom/tapjoy/internal/io;

    iget v0, v0, Lcom/tapjoy/internal/io;->g:I

    return v0
.end method

.method public final getGifWidth()I
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/tapjoy/internal/iq;->a:Lcom/tapjoy/internal/im;

    .line 2210
    iget-object v0, v0, Lcom/tapjoy/internal/im;->c:Lcom/tapjoy/internal/io;

    iget v0, v0, Lcom/tapjoy/internal/io;->f:I

    return v0
.end method

.method public final getOnAnimationStop()Lcom/tapjoy/internal/iq$a;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/tapjoy/internal/iq;->j:Lcom/tapjoy/internal/iq$a;

    return-object v0
.end method

.method public final getOnFrameAvailable()Lcom/tapjoy/internal/iq$b;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/tapjoy/internal/iq;->h:Lcom/tapjoy/internal/iq$b;

    return-object v0
.end method

.method protected final onDetachedFromWindow()V
    .locals 0

    .line 232
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 233
    invoke-virtual {p0}, Lcom/tapjoy/internal/iq;->c()V

    return-void
.end method

.method public final run()V
    .locals 10

    .line 156
    :cond_0
    iget-boolean v0, p0, Lcom/tapjoy/internal/iq;->d:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/tapjoy/internal/iq;->e:Z

    if-eqz v0, :cond_d

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/iq;->a:Lcom/tapjoy/internal/im;

    .line 2238
    iget-object v1, v0, Lcom/tapjoy/internal/im;->c:Lcom/tapjoy/internal/io;

    iget v1, v1, Lcom/tapjoy/internal/io;->c:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-gtz v1, :cond_2

    :goto_0
    move v5, v3

    goto :goto_1

    .line 2242
    :cond_2
    iget v1, v0, Lcom/tapjoy/internal/im;->a:I

    .line 2285
    iget-object v4, v0, Lcom/tapjoy/internal/im;->c:Lcom/tapjoy/internal/io;

    iget v4, v4, Lcom/tapjoy/internal/io;->c:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ne v1, v4, :cond_3

    .line 2243
    iget v1, v0, Lcom/tapjoy/internal/im;->b:I

    add-int/2addr v1, v5

    iput v1, v0, Lcom/tapjoy/internal/im;->b:I

    .line 2246
    :cond_3
    iget-object v1, v0, Lcom/tapjoy/internal/im;->c:Lcom/tapjoy/internal/io;

    iget v1, v1, Lcom/tapjoy/internal/io;->m:I

    if-eq v1, v2, :cond_4

    iget v1, v0, Lcom/tapjoy/internal/im;->b:I

    iget-object v4, v0, Lcom/tapjoy/internal/im;->c:Lcom/tapjoy/internal/io;

    iget v4, v4, Lcom/tapjoy/internal/io;->m:I

    if-le v1, v4, :cond_4

    goto :goto_0

    .line 2250
    :cond_4
    iget v1, v0, Lcom/tapjoy/internal/im;->a:I

    add-int/2addr v1, v5

    iget-object v4, v0, Lcom/tapjoy/internal/im;->c:Lcom/tapjoy/internal/io;

    iget v4, v4, Lcom/tapjoy/internal/io;->c:I

    rem-int/2addr v1, v4

    iput v1, v0, Lcom/tapjoy/internal/im;->a:I

    :goto_1
    const-wide/16 v0, 0x0

    .line 164
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 165
    iget-object v4, p0, Lcom/tapjoy/internal/iq;->a:Lcom/tapjoy/internal/im;

    invoke-virtual {v4}, Lcom/tapjoy/internal/im;->b()Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/tapjoy/internal/iq;->b:Landroid/graphics/Bitmap;

    .line 166
    iget-object v4, p0, Lcom/tapjoy/internal/iq;->h:Lcom/tapjoy/internal/iq$b;

    if-eqz v4, :cond_5

    .line 167
    invoke-interface {v4}, Lcom/tapjoy/internal/iq$b;->a()Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/tapjoy/internal/iq;->b:Landroid/graphics/Bitmap;

    .line 169
    :cond_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long/2addr v8, v6

    const-wide/32 v6, 0xf4240

    div-long/2addr v8, v6
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 170
    :try_start_1
    iget-object v4, p0, Lcom/tapjoy/internal/iq;->c:Landroid/os/Handler;

    iget-object v6, p0, Lcom/tapjoy/internal/iq;->k:Ljava/lang/Runnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v4

    goto :goto_2

    :catch_1
    move-exception v4

    goto :goto_3

    :catch_2
    move-exception v4

    move-wide v8, v0

    .line 174
    :goto_2
    filled-new-array {v4}, [Ljava/lang/Object;

    goto :goto_4

    :catch_3
    move-exception v4

    move-wide v8, v0

    .line 172
    :goto_3
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 177
    :goto_4
    iput-boolean v3, p0, Lcom/tapjoy/internal/iq;->e:Z

    .line 178
    iget-boolean v4, p0, Lcom/tapjoy/internal/iq;->d:Z

    if-eqz v4, :cond_c

    if-nez v5, :cond_6

    goto :goto_7

    .line 183
    :cond_6
    :try_start_2
    iget-object v4, p0, Lcom/tapjoy/internal/iq;->a:Lcom/tapjoy/internal/im;

    .line 3272
    iget-object v5, v4, Lcom/tapjoy/internal/im;->c:Lcom/tapjoy/internal/io;

    iget v5, v5, Lcom/tapjoy/internal/io;->c:I

    if-lez v5, :cond_9

    iget v5, v4, Lcom/tapjoy/internal/im;->a:I

    if-gez v5, :cond_7

    goto :goto_5

    .line 3276
    :cond_7
    iget v3, v4, Lcom/tapjoy/internal/im;->a:I

    if-ltz v3, :cond_8

    .line 4262
    iget-object v5, v4, Lcom/tapjoy/internal/im;->c:Lcom/tapjoy/internal/io;

    iget v5, v5, Lcom/tapjoy/internal/io;->c:I

    if-ge v3, v5, :cond_8

    .line 4263
    iget-object v2, v4, Lcom/tapjoy/internal/im;->c:Lcom/tapjoy/internal/io;

    iget-object v2, v2, Lcom/tapjoy/internal/io;->e:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/internal/in;

    iget v2, v2, Lcom/tapjoy/internal/in;->i:I

    :cond_8
    move v3, v2

    :cond_9
    :goto_5
    int-to-long v2, v3

    sub-long/2addr v2, v8

    long-to-int v2, v2

    if-lez v2, :cond_b

    .line 189
    iget-wide v3, p0, Lcom/tapjoy/internal/iq;->i:J

    cmp-long v0, v3, v0

    if-lez v0, :cond_a

    goto :goto_6

    :cond_a
    int-to-long v3, v2

    :goto_6
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_4

    .line 194
    :catch_4
    :cond_b
    iget-boolean v0, p0, Lcom/tapjoy/internal/iq;->d:Z

    if-nez v0, :cond_0

    goto :goto_8

    .line 179
    :cond_c
    :goto_7
    iput-boolean v3, p0, Lcom/tapjoy/internal/iq;->d:Z

    .line 196
    :cond_d
    :goto_8
    iget-boolean v0, p0, Lcom/tapjoy/internal/iq;->f:Z

    if-eqz v0, :cond_e

    .line 197
    iget-object v0, p0, Lcom/tapjoy/internal/iq;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tapjoy/internal/iq;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    const/4 v0, 0x0

    .line 199
    iput-object v0, p0, Lcom/tapjoy/internal/iq;->g:Ljava/lang/Thread;

    return-void
.end method

.method public final setBytes([B)V
    .locals 1

    .line 72
    new-instance v0, Lcom/tapjoy/internal/im;

    invoke-direct {v0}, Lcom/tapjoy/internal/im;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/iq;->a:Lcom/tapjoy/internal/im;

    .line 74
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/im;->a([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    iget-boolean p1, p0, Lcom/tapjoy/internal/iq;->d:Z

    if-eqz p1, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/tapjoy/internal/iq;->f()V

    return-void

    .line 84
    :cond_0
    invoke-direct {p0}, Lcom/tapjoy/internal/iq;->d()V

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/tapjoy/internal/iq;->a:Lcom/tapjoy/internal/im;

    .line 77
    filled-new-array {p1}, [Ljava/lang/Object;

    return-void
.end method

.method public final setFramesDisplayDuration(J)V
    .locals 0

    .line 100
    iput-wide p1, p0, Lcom/tapjoy/internal/iq;->i:J

    return-void
.end method

.method public final setOnAnimationStop(Lcom/tapjoy/internal/iq$a;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/tapjoy/internal/iq;->j:Lcom/tapjoy/internal/iq$a;

    return-void
.end method

.method public final setOnFrameAvailable(Lcom/tapjoy/internal/iq$b;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/tapjoy/internal/iq;->h:Lcom/tapjoy/internal/iq$b;

    return-void
.end method
