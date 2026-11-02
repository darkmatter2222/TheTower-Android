.class public final Lcom/unity3d/player/a/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/unity3d/player/a/r;


# instance fields
.field public a:Lcom/unity3d/player/r0;

.field public b:Lcom/unity3d/player/ISoftInputListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/unity3d/player/a/F;->b:Lcom/unity3d/player/ISoftInputListener;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Lcom/unity3d/player/M0;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/unity3d/player/r0;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/unity3d/player/a/F;->a:Lcom/unity3d/player/r0;

    return-void
.end method

.method public final a(Ljava/lang/String;IZZZZLjava/lang/String;IZZ)V
    .locals 11

    .line 144
    iget-object v0, p0, Lcom/unity3d/player/a/F;->b:Lcom/unity3d/player/ISoftInputListener;

    if-eqz v0, :cond_0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    .line 146
    invoke-interface/range {v0 .. v10}, Lcom/unity3d/player/ISoftInputListener;->show(Ljava/lang/String;IZZZZLjava/lang/String;IZZ)V

    return-void

    :cond_0
    const/4 p1, 0x6

    .line 150
    const-string p2, "Soft input listener is not set, cannot setup soft input"

    invoke-static {p1, p2}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    return-void
.end method

.method public final hide()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/unity3d/player/a/F;->b:Lcom/unity3d/player/ISoftInputListener;

    if-eqz v0, :cond_1

    .line 50
    invoke-interface {v0}, Lcom/unity3d/player/ISoftInputListener;->hide()V

    .line 118
    iget-object v0, p0, Lcom/unity3d/player/a/F;->a:Lcom/unity3d/player/r0;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, v0, Lcom/unity3d/player/r0;->a:Lcom/unity3d/player/s0;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/unity3d/player/s0;->a:Z

    .line 453
    iget-boolean v1, v0, Lcom/unity3d/player/s0;->b:Z

    if-eqz v1, :cond_0

    .line 455
    iget-object v0, v0, Lcom/unity3d/player/s0;->c:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x6

    .line 55
    const-string v1, "Soft input listener is not set, cannot hide soft input"

    invoke-static {v0, v1}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    return-void
.end method

.method public final isConsumeOutsideTouchesEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final setCharacterLimit(I)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/unity3d/player/a/F;->b:Lcom/unity3d/player/ISoftInputListener;

    if-eqz v0, :cond_0

    .line 80
    invoke-interface {v0, p1}, Lcom/unity3d/player/ISoftInputListener;->setCharacterLimit(I)V

    return-void

    :cond_0
    const/4 p1, 0x6

    .line 84
    const-string v0, "Soft input listener is not set, cannot set soft input character limit"

    invoke-static {p1, v0}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    return-void
.end method

.method public final setHideInputField(Z)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/unity3d/player/a/F;->b:Lcom/unity3d/player/ISoftInputListener;

    if-eqz v0, :cond_0

    .line 94
    invoke-interface {v0, p1}, Lcom/unity3d/player/ISoftInputListener;->setHideInputField(Z)V

    return-void

    :cond_0
    const/4 p1, 0x6

    .line 98
    const-string v0, "Soft input listener is not set, cannot set soft input field hidden"

    invoke-static {p1, v0}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    return-void
.end method

.method public final setSelection(II)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/unity3d/player/a/F;->b:Lcom/unity3d/player/ISoftInputListener;

    if-eqz v0, :cond_0

    .line 108
    invoke-interface {v0, p1, p2}, Lcom/unity3d/player/ISoftInputListener;->setSelection(II)V

    return-void

    :cond_0
    const/4 p1, 0x6

    .line 112
    const-string p2, "Soft input listener is not set, cannot set soft input selection"

    invoke-static {p1, p2}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/unity3d/player/a/F;->b:Lcom/unity3d/player/ISoftInputListener;

    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0, p1}, Lcom/unity3d/player/ISoftInputListener;->setText(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x6

    .line 69
    const-string v0, "Soft input listener is not set, cannot set soft input text"

    invoke-static {p1, v0}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    return-void
.end method
