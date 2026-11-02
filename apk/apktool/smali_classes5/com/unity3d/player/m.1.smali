.class public final Lcom/unity3d/player/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field public final synthetic a:Lcom/unity3d/player/o;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/o;)V
    .locals 0

    .line 826
    iput-object p1, p0, Lcom/unity3d/player/m;->a:Lcom/unity3d/player/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 830
    iget-object v0, p0, Lcom/unity3d/player/m;->a:Lcom/unity3d/player/o;

    iget-object v0, v0, Lcom/unity3d/player/o;->a:Lcom/unity3d/player/a/q;

    check-cast v0, Lcom/unity3d/player/Camera2Wrapper;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/Camera2Wrapper;->a(Ljava/lang/Object;)V

    return-void
.end method
