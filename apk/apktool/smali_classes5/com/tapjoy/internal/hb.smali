.class public final Lcom/tapjoy/internal/hb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/tapjoy/internal/au;

.field private static b:Landroid/app/Activity;

.field private static final c:Lcom/tapjoy/internal/bs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/bs<",
            "Landroid/opengl/GLSurfaceView;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lcom/tapjoy/internal/bs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/bs<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/tapjoy/internal/bs;

    invoke-direct {v0}, Lcom/tapjoy/internal/bs;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/hb;->c:Lcom/tapjoy/internal/bs;

    .line 24
    new-instance v0, Lcom/tapjoy/internal/bs;

    invoke-direct {v0}, Lcom/tapjoy/internal/bs;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/hb;->d:Lcom/tapjoy/internal/bs;

    .line 27
    new-instance v0, Lcom/tapjoy/internal/hb$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/hb$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/hb;->a:Lcom/tapjoy/internal/au;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/app/Activity;
    .locals 1

    .line 60
    sget-object v0, Lcom/tapjoy/internal/hb;->b:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 62
    invoke-static {}, Lcom/tapjoy/internal/b;->a()Landroid/app/Activity;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method static a(Landroid/opengl/GLSurfaceView;)V
    .locals 1

    .line 47
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/tapjoy/internal/hb;->c:Lcom/tapjoy/internal/bs;

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/bs;->a(Ljava/lang/Object;)V

    .line 49
    new-instance v0, Lcom/tapjoy/internal/hb$2;

    invoke-direct {v0}, Lcom/tapjoy/internal/hb$2;-><init>()V

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b()Ljava/lang/Thread;
    .locals 1

    .line 77
    sget-object v0, Lcom/tapjoy/internal/hb;->d:Lcom/tapjoy/internal/bs;

    invoke-virtual {v0}, Lcom/tapjoy/internal/bs;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic c()Lcom/tapjoy/internal/bs;
    .locals 1

    .line 16
    sget-object v0, Lcom/tapjoy/internal/hb;->c:Lcom/tapjoy/internal/bs;

    return-object v0
.end method

.method static synthetic d()Lcom/tapjoy/internal/bs;
    .locals 1

    .line 16
    sget-object v0, Lcom/tapjoy/internal/hb;->d:Lcom/tapjoy/internal/bs;

    return-object v0
.end method
