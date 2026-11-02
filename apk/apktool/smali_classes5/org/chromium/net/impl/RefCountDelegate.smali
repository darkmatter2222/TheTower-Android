.class public final Lorg/chromium/net/impl/RefCountDelegate;
.super Ljava/lang/Object;
.source "RefCountDelegate.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mDelegate:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delegate"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/net/impl/RefCountDelegate;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18
    iput-object p1, p0, Lorg/chromium/net/impl/RefCountDelegate;->mDelegate:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public decrement()V
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/chromium/net/impl/RefCountDelegate;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 30
    iget-object v0, p0, Lorg/chromium/net/impl/RefCountDelegate;->mDelegate:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public increment()V
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/chromium/net/impl/RefCountDelegate;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method
