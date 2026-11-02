.class Lio/grpc/internal/RetryingNameResolver$ResolutionResultListener;
.super Ljava/lang/Object;
.source "RetryingNameResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/RetryingNameResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResolutionResultListener"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/RetryingNameResolver;


# direct methods
.method constructor <init>(Lio/grpc/internal/RetryingNameResolver;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lio/grpc/internal/RetryingNameResolver$ResolutionResultListener;->this$0:Lio/grpc/internal/RetryingNameResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolutionAttempted(Lio/grpc/Status;)V
    .locals 2

    .line 118
    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 119
    iget-object p1, p0, Lio/grpc/internal/RetryingNameResolver$ResolutionResultListener;->this$0:Lio/grpc/internal/RetryingNameResolver;

    invoke-static {p1}, Lio/grpc/internal/RetryingNameResolver;->access$100(Lio/grpc/internal/RetryingNameResolver;)Lio/grpc/internal/RetryScheduler;

    move-result-object p1

    invoke-interface {p1}, Lio/grpc/internal/RetryScheduler;->reset()V

    return-void

    .line 121
    :cond_0
    iget-object p1, p0, Lio/grpc/internal/RetryingNameResolver$ResolutionResultListener;->this$0:Lio/grpc/internal/RetryingNameResolver;

    invoke-static {p1}, Lio/grpc/internal/RetryingNameResolver;->access$100(Lio/grpc/internal/RetryingNameResolver;)Lio/grpc/internal/RetryScheduler;

    move-result-object p1

    new-instance v0, Lio/grpc/internal/RetryingNameResolver$DelayedNameResolverRefresh;

    iget-object v1, p0, Lio/grpc/internal/RetryingNameResolver$ResolutionResultListener;->this$0:Lio/grpc/internal/RetryingNameResolver;

    invoke-direct {v0, v1}, Lio/grpc/internal/RetryingNameResolver$DelayedNameResolverRefresh;-><init>(Lio/grpc/internal/RetryingNameResolver;)V

    invoke-interface {p1, v0}, Lio/grpc/internal/RetryScheduler;->schedule(Ljava/lang/Runnable;)V

    return-void
.end method
