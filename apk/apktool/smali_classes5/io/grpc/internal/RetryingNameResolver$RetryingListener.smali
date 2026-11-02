.class Lio/grpc/internal/RetryingNameResolver$RetryingListener;
.super Lio/grpc/NameResolver$Listener2;
.source "RetryingNameResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/RetryingNameResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RetryingListener"
.end annotation


# instance fields
.field private delegateListener:Lio/grpc/NameResolver$Listener2;

.field final synthetic this$0:Lio/grpc/internal/RetryingNameResolver;


# direct methods
.method constructor <init>(Lio/grpc/internal/RetryingNameResolver;Lio/grpc/NameResolver$Listener2;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lio/grpc/internal/RetryingNameResolver$RetryingListener;->this$0:Lio/grpc/internal/RetryingNameResolver;

    invoke-direct {p0}, Lio/grpc/NameResolver$Listener2;-><init>()V

    .line 86
    iput-object p2, p0, Lio/grpc/internal/RetryingNameResolver$RetryingListener;->delegateListener:Lio/grpc/NameResolver$Listener2;

    return-void
.end method


# virtual methods
.method synthetic lambda$onError$0$io-grpc-internal-RetryingNameResolver$RetryingListener()V
    .locals 3

    .line 107
    iget-object v0, p0, Lio/grpc/internal/RetryingNameResolver$RetryingListener;->this$0:Lio/grpc/internal/RetryingNameResolver;

    invoke-static {v0}, Lio/grpc/internal/RetryingNameResolver;->access$100(Lio/grpc/internal/RetryingNameResolver;)Lio/grpc/internal/RetryScheduler;

    move-result-object v0

    new-instance v1, Lio/grpc/internal/RetryingNameResolver$DelayedNameResolverRefresh;

    iget-object v2, p0, Lio/grpc/internal/RetryingNameResolver$RetryingListener;->this$0:Lio/grpc/internal/RetryingNameResolver;

    invoke-direct {v1, v2}, Lio/grpc/internal/RetryingNameResolver$DelayedNameResolverRefresh;-><init>(Lio/grpc/internal/RetryingNameResolver;)V

    invoke-interface {v0, v1}, Lio/grpc/internal/RetryScheduler;->schedule(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Lio/grpc/Status;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lio/grpc/internal/RetryingNameResolver$RetryingListener;->delegateListener:Lio/grpc/NameResolver$Listener2;

    invoke-virtual {v0, p1}, Lio/grpc/NameResolver$Listener2;->onError(Lio/grpc/Status;)V

    .line 107
    iget-object p1, p0, Lio/grpc/internal/RetryingNameResolver$RetryingListener;->this$0:Lio/grpc/internal/RetryingNameResolver;

    invoke-static {p1}, Lio/grpc/internal/RetryingNameResolver;->access$000(Lio/grpc/internal/RetryingNameResolver;)Lio/grpc/SynchronizationContext;

    move-result-object p1

    new-instance v0, Lio/grpc/internal/RetryingNameResolver$RetryingListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lio/grpc/internal/RetryingNameResolver$RetryingListener$$ExternalSyntheticLambda0;-><init>(Lio/grpc/internal/RetryingNameResolver$RetryingListener;)V

    invoke-virtual {p1, v0}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResult(Lio/grpc/NameResolver$ResolutionResult;)V
    .locals 5

    .line 93
    invoke-virtual {p1}, Lio/grpc/NameResolver$ResolutionResult;->getAttributes()Lio/grpc/Attributes;

    move-result-object v0

    sget-object v1, Lio/grpc/internal/RetryingNameResolver;->RESOLUTION_RESULT_LISTENER_KEY:Lio/grpc/Attributes$Key;

    invoke-virtual {v0, v1}, Lio/grpc/Attributes;->get(Lio/grpc/Attributes$Key;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lio/grpc/internal/RetryingNameResolver$RetryingListener;->delegateListener:Lio/grpc/NameResolver$Listener2;

    invoke-virtual {p1}, Lio/grpc/NameResolver$ResolutionResult;->toBuilder()Lio/grpc/NameResolver$ResolutionResult$Builder;

    move-result-object v1

    .line 99
    invoke-virtual {p1}, Lio/grpc/NameResolver$ResolutionResult;->getAttributes()Lio/grpc/Attributes;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/Attributes;->toBuilder()Lio/grpc/Attributes$Builder;

    move-result-object p1

    sget-object v2, Lio/grpc/internal/RetryingNameResolver;->RESOLUTION_RESULT_LISTENER_KEY:Lio/grpc/Attributes$Key;

    new-instance v3, Lio/grpc/internal/RetryingNameResolver$ResolutionResultListener;

    iget-object v4, p0, Lio/grpc/internal/RetryingNameResolver$RetryingListener;->this$0:Lio/grpc/internal/RetryingNameResolver;

    invoke-direct {v3, v4}, Lio/grpc/internal/RetryingNameResolver$ResolutionResultListener;-><init>(Lio/grpc/internal/RetryingNameResolver;)V

    .line 100
    invoke-virtual {p1, v2, v3}, Lio/grpc/Attributes$Builder;->set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/Attributes$Builder;->build()Lio/grpc/Attributes;

    move-result-object p1

    .line 98
    invoke-virtual {v1, p1}, Lio/grpc/NameResolver$ResolutionResult$Builder;->setAttributes(Lio/grpc/Attributes;)Lio/grpc/NameResolver$ResolutionResult$Builder;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Lio/grpc/NameResolver$ResolutionResult$Builder;->build()Lio/grpc/NameResolver$ResolutionResult;

    move-result-object p1

    .line 98
    invoke-virtual {v0, p1}, Lio/grpc/NameResolver$Listener2;->onResult(Lio/grpc/NameResolver$ResolutionResult;)V

    return-void

    .line 94
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "RetryingNameResolver can only be used once to wrap a NameResolver"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
