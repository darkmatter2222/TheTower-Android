.class public final Lads_mobile_sdk/oe2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 1

    .line 1
    sget-object p1, Lads_mobile_sdk/pe2;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lads_mobile_sdk/ne2;

    invoke-direct {v0}, Lads_mobile_sdk/ne2;-><init>()V

    .line 2
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
