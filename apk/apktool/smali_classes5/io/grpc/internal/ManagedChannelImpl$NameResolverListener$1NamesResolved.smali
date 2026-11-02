.class final Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;
.super Ljava/lang/Object;
.source "ManagedChannelImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->onResult(Lio/grpc/NameResolver$ResolutionResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NamesResolved"
.end annotation


# instance fields
.field final synthetic this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

.field final synthetic val$resolutionResult:Lio/grpc/NameResolver$ResolutionResult;


# direct methods
.method constructor <init>(Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;Lio/grpc/NameResolver$ResolutionResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1750
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iput-object p2, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->val$resolutionResult:Lio/grpc/NameResolver$ResolutionResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1755
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$6800(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/NameResolver;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v1, v1, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->resolver:Lio/grpc/NameResolver;

    if-eq v0, v1, :cond_0

    goto/16 :goto_7

    .line 1759
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->val$resolutionResult:Lio/grpc/NameResolver$ResolutionResult;

    invoke-virtual {v0}, Lio/grpc/NameResolver$ResolutionResult;->getAddresses()Ljava/util/List;

    move-result-object v0

    .line 1760
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v1, v1, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$2800(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/ChannelLogger;

    move-result-object v1

    sget-object v2, Lio/grpc/ChannelLogger$ChannelLogLevel;->DEBUG:Lio/grpc/ChannelLogger$ChannelLogLevel;

    iget-object v3, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->val$resolutionResult:Lio/grpc/NameResolver$ResolutionResult;

    .line 1764
    invoke-virtual {v3}, Lio/grpc/NameResolver$ResolutionResult;->getAttributes()Lio/grpc/Attributes;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 1760
    const-string v4, "Resolved address: {0}, config={1}"

    invoke-virtual {v1, v2, v4, v3}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1766
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v1, v1, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$6900(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    move-result-object v1

    sget-object v2, Lio/grpc/internal/ManagedChannelImpl$ResolutionState;->SUCCESS:Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    if-eq v1, v2, :cond_1

    .line 1767
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v1, v1, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$2800(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/ChannelLogger;

    move-result-object v1

    sget-object v2, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v3, "Address resolved: {0}"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1768
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v1, v1, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    sget-object v2, Lio/grpc/internal/ManagedChannelImpl$ResolutionState;->SUCCESS:Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    invoke-static {v1, v2}, Lio/grpc/internal/ManagedChannelImpl;->access$6902(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/internal/ManagedChannelImpl$ResolutionState;)Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    .line 1771
    :cond_1
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->val$resolutionResult:Lio/grpc/NameResolver$ResolutionResult;

    invoke-virtual {v1}, Lio/grpc/NameResolver$ResolutionResult;->getServiceConfig()Lio/grpc/NameResolver$ConfigOrError;

    move-result-object v1

    .line 1772
    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->val$resolutionResult:Lio/grpc/NameResolver$ResolutionResult;

    invoke-virtual {v2}, Lio/grpc/NameResolver$ResolutionResult;->getAttributes()Lio/grpc/Attributes;

    move-result-object v2

    sget-object v3, Lio/grpc/internal/RetryingNameResolver;->RESOLUTION_RESULT_LISTENER_KEY:Lio/grpc/Attributes$Key;

    .line 1773
    invoke-virtual {v2, v3}, Lio/grpc/Attributes;->get(Lio/grpc/Attributes$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/internal/RetryingNameResolver$ResolutionResultListener;

    .line 1774
    iget-object v3, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->val$resolutionResult:Lio/grpc/NameResolver$ResolutionResult;

    .line 1775
    invoke-virtual {v3}, Lio/grpc/NameResolver$ResolutionResult;->getAttributes()Lio/grpc/Attributes;

    move-result-object v3

    sget-object v4, Lio/grpc/InternalConfigSelector;->KEY:Lio/grpc/Attributes$Key;

    invoke-virtual {v3, v4}, Lio/grpc/Attributes;->get(Lio/grpc/Attributes$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/InternalConfigSelector;

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 1777
    invoke-virtual {v1}, Lio/grpc/NameResolver$ConfigOrError;->getConfig()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1778
    invoke-virtual {v1}, Lio/grpc/NameResolver$ConfigOrError;->getConfig()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/grpc/internal/ManagedChannelServiceConfig;

    goto :goto_0

    :cond_2
    move-object v5, v4

    :goto_0
    if-eqz v1, :cond_3

    .line 1780
    invoke-virtual {v1}, Lio/grpc/NameResolver$ConfigOrError;->getError()Lio/grpc/Status;

    move-result-object v6

    goto :goto_1

    :cond_3
    move-object v6, v4

    .line 1783
    :goto_1
    iget-object v7, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v7, v7, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v7}, Lio/grpc/internal/ManagedChannelImpl;->access$7000(Lio/grpc/internal/ManagedChannelImpl;)Z

    move-result v7

    if-nez v7, :cond_7

    if-eqz v5, :cond_4

    .line 1785
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v1, v1, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$2800(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/ChannelLogger;

    move-result-object v1

    sget-object v4, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v5, "Service config from name resolver discarded by channel settings"

    invoke-virtual {v1, v4, v5}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    .line 1790
    :cond_4
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v1, v1, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$7100(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelServiceConfig;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-static {}, Lio/grpc/internal/ManagedChannelImpl;->access$7200()Lio/grpc/internal/ManagedChannelServiceConfig;

    move-result-object v1

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v1, v1, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$7100(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelServiceConfig;

    move-result-object v1

    :goto_2
    if-eqz v3, :cond_6

    .line 1792
    iget-object v3, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v3, v3, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v3}, Lio/grpc/internal/ManagedChannelImpl;->access$2800(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/ChannelLogger;

    move-result-object v3

    sget-object v4, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v5, "Config selector from name resolver discarded by channel settings"

    invoke-virtual {v3, v4, v5}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    .line 1796
    :cond_6
    iget-object v3, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v3, v3, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v3}, Lio/grpc/internal/ManagedChannelImpl;->access$7300(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    move-result-object v3

    invoke-virtual {v1}, Lio/grpc/internal/ManagedChannelServiceConfig;->getDefaultConfigSelector()Lio/grpc/InternalConfigSelector;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->updateConfigSelector(Lio/grpc/InternalConfigSelector;)V

    goto/16 :goto_6

    :cond_7
    if-eqz v5, :cond_9

    if-eqz v3, :cond_8

    .line 1803
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v1, v1, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$7300(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    move-result-object v1

    invoke-virtual {v1, v3}, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->updateConfigSelector(Lio/grpc/InternalConfigSelector;)V

    .line 1804
    invoke-virtual {v5}, Lio/grpc/internal/ManagedChannelServiceConfig;->getDefaultConfigSelector()Lio/grpc/InternalConfigSelector;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 1805
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v1, v1, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$2800(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/ChannelLogger;

    move-result-object v1

    sget-object v3, Lio/grpc/ChannelLogger$ChannelLogLevel;->DEBUG:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v4, "Method configs in service config will be discarded due to presence ofconfig-selector"

    invoke-virtual {v1, v3, v4}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1811
    :cond_8
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v1, v1, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$7300(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    move-result-object v1

    invoke-virtual {v5}, Lio/grpc/internal/ManagedChannelServiceConfig;->getDefaultConfigSelector()Lio/grpc/InternalConfigSelector;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->updateConfigSelector(Lio/grpc/InternalConfigSelector;)V

    goto/16 :goto_3

    .line 1813
    :cond_9
    iget-object v3, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v3, v3, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v3}, Lio/grpc/internal/ManagedChannelImpl;->access$7100(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelServiceConfig;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 1814
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v1, v1, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$7100(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelServiceConfig;

    move-result-object v5

    .line 1815
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v1, v1, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$7300(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    move-result-object v1

    invoke-virtual {v5}, Lio/grpc/internal/ManagedChannelServiceConfig;->getDefaultConfigSelector()Lio/grpc/InternalConfigSelector;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->updateConfigSelector(Lio/grpc/InternalConfigSelector;)V

    .line 1816
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v1, v1, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$2800(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/ChannelLogger;

    move-result-object v1

    sget-object v3, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v4, "Received no service config, using default service config"

    invoke-virtual {v1, v3, v4}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    if-eqz v6, :cond_c

    .line 1820
    iget-object v3, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v3, v3, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v3}, Lio/grpc/internal/ManagedChannelImpl;->access$7400(Lio/grpc/internal/ManagedChannelImpl;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 1822
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$2800(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/ChannelLogger;

    move-result-object v0

    sget-object v3, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v4, "Fallback to error due to invalid first service config without default config"

    invoke-virtual {v0, v3, v4}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    .line 1829
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    invoke-virtual {v1}, Lio/grpc/NameResolver$ConfigOrError;->getError()Lio/grpc/Status;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->onError(Lio/grpc/Status;)V

    if-eqz v2, :cond_11

    .line 1831
    invoke-virtual {v1}, Lio/grpc/NameResolver$ConfigOrError;->getError()Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/grpc/internal/RetryingNameResolver$ResolutionResultListener;->resolutionAttempted(Lio/grpc/Status;)V

    return-void

    .line 1835
    :cond_b
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v1, v1, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$7500(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelServiceConfig;

    move-result-object v5

    goto :goto_3

    .line 1838
    :cond_c
    invoke-static {}, Lio/grpc/internal/ManagedChannelImpl;->access$7200()Lio/grpc/internal/ManagedChannelServiceConfig;

    move-result-object v5

    .line 1839
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v1, v1, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$7300(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    move-result-object v1

    invoke-virtual {v1, v4}, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->updateConfigSelector(Lio/grpc/InternalConfigSelector;)V

    .line 1841
    :cond_d
    :goto_3
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v1, v1, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$7500(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelServiceConfig;

    move-result-object v1

    invoke-virtual {v5, v1}, Lio/grpc/internal/ManagedChannelServiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 1842
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v1, v1, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$2800(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/ChannelLogger;

    move-result-object v1

    sget-object v3, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    .line 1845
    invoke-static {}, Lio/grpc/internal/ManagedChannelImpl;->access$7200()Lio/grpc/internal/ManagedChannelServiceConfig;

    move-result-object v4

    if-ne v5, v4, :cond_e

    const-string v4, " to empty"

    goto :goto_4

    :cond_e
    const-string v4, ""

    :goto_4
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 1842
    const-string v6, "Service config changed{0}"

    invoke-virtual {v1, v3, v6, v4}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1846
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v1, v1, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v1, v5}, Lio/grpc/internal/ManagedChannelImpl;->access$7502(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/internal/ManagedChannelServiceConfig;)Lio/grpc/internal/ManagedChannelServiceConfig;

    .line 1847
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v1, v1, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$3600(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;

    move-result-object v1

    invoke-virtual {v5}, Lio/grpc/internal/ManagedChannelServiceConfig;->getRetryThrottling()Lio/grpc/internal/RetriableStream$Throttle;

    move-result-object v3

    iput-object v3, v1, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;->throttle:Lio/grpc/internal/RetriableStream$Throttle;

    .line 1854
    :cond_f
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v1, v1, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lio/grpc/internal/ManagedChannelImpl;->access$7402(Lio/grpc/internal/ManagedChannelImpl;Z)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v1

    .line 1856
    sget-object v3, Lio/grpc/internal/ManagedChannelImpl;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v7, v7, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 1858
    invoke-virtual {v7}, Lio/grpc/internal/ManagedChannelImpl;->getLogId()Lio/grpc/InternalLogId;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] Unexpected exception from parsing service config"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1856
    invoke-virtual {v3, v4, v6, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    move-object v1, v5

    .line 1863
    :goto_6
    iget-object v3, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->val$resolutionResult:Lio/grpc/NameResolver$ResolutionResult;

    invoke-virtual {v3}, Lio/grpc/NameResolver$ResolutionResult;->getAttributes()Lio/grpc/Attributes;

    move-result-object v3

    .line 1865
    iget-object v4, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v4, v4, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->helper:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    iget-object v5, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v5, v5, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v5}, Lio/grpc/internal/ManagedChannelImpl;->access$900(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    move-result-object v5

    if-ne v4, v5, :cond_11

    .line 1867
    invoke-virtual {v3}, Lio/grpc/Attributes;->toBuilder()Lio/grpc/Attributes$Builder;

    move-result-object v3

    sget-object v4, Lio/grpc/InternalConfigSelector;->KEY:Lio/grpc/Attributes$Key;

    invoke-virtual {v3, v4}, Lio/grpc/Attributes$Builder;->discard(Lio/grpc/Attributes$Key;)Lio/grpc/Attributes$Builder;

    move-result-object v3

    .line 1869
    invoke-virtual {v1}, Lio/grpc/internal/ManagedChannelServiceConfig;->getHealthCheckingConfig()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 1871
    sget-object v5, Lio/grpc/LoadBalancer;->ATTR_HEALTH_CHECKING_CONFIG:Lio/grpc/Attributes$Key;

    .line 1872
    invoke-virtual {v3, v5, v4}, Lio/grpc/Attributes$Builder;->set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;

    move-result-object v4

    .line 1873
    invoke-virtual {v4}, Lio/grpc/Attributes$Builder;->build()Lio/grpc/Attributes;

    .line 1875
    :cond_10
    invoke-virtual {v3}, Lio/grpc/Attributes$Builder;->build()Lio/grpc/Attributes;

    move-result-object v3

    .line 1877
    iget-object v4, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v4, v4, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->helper:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    iget-object v4, v4, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->lb:Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;

    .line 1878
    invoke-static {}, Lio/grpc/LoadBalancer$ResolvedAddresses;->newBuilder()Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;

    move-result-object v5

    .line 1879
    invoke-virtual {v5, v0}, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->setAddresses(Ljava/util/List;)Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;

    move-result-object v0

    .line 1880
    invoke-virtual {v0, v3}, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->setAttributes(Lio/grpc/Attributes;)Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;

    move-result-object v0

    .line 1881
    invoke-virtual {v1}, Lio/grpc/internal/ManagedChannelServiceConfig;->getLoadBalancingConfig()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->setLoadBalancingPolicyConfig(Ljava/lang/Object;)Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;

    move-result-object v0

    .line 1882
    invoke-virtual {v0}, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->build()Lio/grpc/LoadBalancer$ResolvedAddresses;

    move-result-object v0

    .line 1877
    invoke-virtual {v4, v0}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->tryAcceptResolvedAddresses(Lio/grpc/LoadBalancer$ResolvedAddresses;)Lio/grpc/Status;

    move-result-object v0

    if-eqz v2, :cond_11

    .line 1885
    invoke-virtual {v2, v0}, Lio/grpc/internal/RetryingNameResolver$ResolutionResultListener;->resolutionAttempted(Lio/grpc/Status;)V

    :cond_11
    :goto_7
    return-void
.end method
