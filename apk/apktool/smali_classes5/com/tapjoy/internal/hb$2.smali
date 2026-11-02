.class final Lcom/tapjoy/internal/hb$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/hb;->a(Landroid/opengl/GLSurfaceView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 52
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 53
    const-class v1, Lcom/tapjoy/internal/hb;

    filled-new-array {v0}, [Ljava/lang/Object;

    .line 54
    invoke-static {}, Lcom/tapjoy/internal/hb;->d()Lcom/tapjoy/internal/bs;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bs;->a(Ljava/lang/Object;)V

    return-void
.end method
