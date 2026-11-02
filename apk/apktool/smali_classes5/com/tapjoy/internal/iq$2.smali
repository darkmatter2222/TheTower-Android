.class final Lcom/tapjoy/internal/iq$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/iq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/iq;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/iq;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/tapjoy/internal/iq$2;->a:Lcom/tapjoy/internal/iq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/tapjoy/internal/iq$2;->a:Lcom/tapjoy/internal/iq;

    invoke-static {v0}, Lcom/tapjoy/internal/iq;->b(Lcom/tapjoy/internal/iq;)Landroid/graphics/Bitmap;

    .line 41
    iget-object v0, p0, Lcom/tapjoy/internal/iq$2;->a:Lcom/tapjoy/internal/iq;

    invoke-static {v0}, Lcom/tapjoy/internal/iq;->c(Lcom/tapjoy/internal/iq;)Lcom/tapjoy/internal/im;

    .line 42
    iget-object v0, p0, Lcom/tapjoy/internal/iq$2;->a:Lcom/tapjoy/internal/iq;

    invoke-static {v0}, Lcom/tapjoy/internal/iq;->d(Lcom/tapjoy/internal/iq;)Ljava/lang/Thread;

    .line 43
    iget-object v0, p0, Lcom/tapjoy/internal/iq$2;->a:Lcom/tapjoy/internal/iq;

    invoke-static {v0}, Lcom/tapjoy/internal/iq;->e(Lcom/tapjoy/internal/iq;)Z

    return-void
.end method
