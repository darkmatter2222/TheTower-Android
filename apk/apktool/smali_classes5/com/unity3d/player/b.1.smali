.class public final Lcom/unity3d/player/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:J

.field public final e:J

.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/lang/String;IJJII)V
    .locals 0

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    iput-object p1, p0, Lcom/unity3d/player/b;->a:Ljava/util/Set;

    .line 355
    iput-object p2, p0, Lcom/unity3d/player/b;->b:Ljava/lang/String;

    .line 356
    iput p3, p0, Lcom/unity3d/player/b;->c:I

    .line 357
    iput-wide p4, p0, Lcom/unity3d/player/b;->d:J

    .line 358
    iput-wide p6, p0, Lcom/unity3d/player/b;->e:J

    .line 359
    iput p8, p0, Lcom/unity3d/player/b;->f:I

    .line 360
    iput p9, p0, Lcom/unity3d/player/b;->g:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 366
    iget-object v0, p0, Lcom/unity3d/player/b;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;

    .line 368
    iget-object v3, p0, Lcom/unity3d/player/b;->b:Ljava/lang/String;

    iget v4, p0, Lcom/unity3d/player/b;->c:I

    iget-wide v5, p0, Lcom/unity3d/player/b;->d:J

    iget-wide v7, p0, Lcom/unity3d/player/b;->e:J

    iget v9, p0, Lcom/unity3d/player/b;->f:I

    iget v10, p0, Lcom/unity3d/player/b;->g:I

    invoke-interface/range {v2 .. v10}, Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;->onStatusUpdate(Ljava/lang/String;IJJII)V

    goto :goto_0

    :cond_0
    return-void
.end method
