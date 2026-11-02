.class public Lcom/applovin/impl/communicator/MessagingServiceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/communicator/AppLovinCommunicatorMessagingService;


# instance fields
.field private a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/util/Map;

.field private final d:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$hOgiManhNbp85jWYmaHAAtqsDlY(Lcom/applovin/impl/communicator/CommunicatorMessageImpl;)V
    .locals 0

    invoke-static {p0}, Lcom/applovin/impl/communicator/MessagingServiceImpl;->a(Lcom/applovin/impl/communicator/CommunicatorMessageImpl;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jevl3IkR82EOc86LREQ0Hrb5lsg(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0}, Lcom/applovin/impl/communicator/MessagingServiceImpl;->a(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/communicator/MessagingServiceImpl;->b:Ljava/lang/Object;

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/communicator/MessagingServiceImpl;->c:Ljava/util/Map;

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/communicator/MessagingServiceImpl;->d:Ljava/lang/Object;

    return-void
.end method

.method private static synthetic a(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "AppLovinSdk:communicator"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setPriority(I)V

    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/util/Queue;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/communicator/MessagingServiceImpl;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/communicator/MessagingServiceImpl;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Queue;

    if-eqz p1, :cond_0

    .line 4
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 4

    .line 8
    iget-object v0, p0, Lcom/applovin/impl/communicator/MessagingServiceImpl;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/communicator/MessagingServiceImpl;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    .line 12
    :cond_0
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lcom/applovin/impl/communicator/MessagingServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/applovin/impl/communicator/MessagingServiceImpl$$ExternalSyntheticLambda0;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static synthetic a(Lcom/applovin/impl/communicator/CommunicatorMessageImpl;)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-static {p0, v0}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->sendBroadcastSync(Landroid/content/Intent;Ljava/util/Map;)V

    return-void
.end method

.method private b(Lcom/applovin/impl/communicator/CommunicatorMessageImpl;)V
    .locals 3

    .line 1
    iget-boolean v0, p1, Lcom/applovin/impl/communicator/CommunicatorMessageImpl;->sticky:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/communicator/MessagingServiceImpl;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/communicator/MessagingServiceImpl;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/applovin/impl/communicator/CommunicatorMessageImpl;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    if-eqz v1, :cond_1

    .line 9
    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result p1

    const/16 v2, 0xa

    if-le p1, v2, :cond_2

    .line 13
    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    goto :goto_0

    .line 18
    :cond_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 19
    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v2, p0, Lcom/applovin/impl/communicator/MessagingServiceImpl;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/applovin/impl/communicator/CommunicatorMessageImpl;->getTopic()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private c(Lcom/applovin/impl/communicator/CommunicatorMessageImpl;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/communicator/MessagingServiceImpl;->a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/communicator/MessagingServiceImpl;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 2
    new-instance v1, Lcom/applovin/impl/communicator/MessagingServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/applovin/impl/communicator/MessagingServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/applovin/impl/communicator/CommunicatorMessageImpl;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public maybeSendStickyMessages(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/applovin/impl/communicator/MessagingServiceImpl;->a(Ljava/lang/String;)Ljava/util/Queue;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/communicator/CommunicatorMessageImpl;

    .line 5
    invoke-direct {p0, v0}, Lcom/applovin/impl/communicator/MessagingServiceImpl;->c(Lcom/applovin/impl/communicator/CommunicatorMessageImpl;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public publish(Lcom/applovin/communicator/AppLovinCommunicatorMessage;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/applovin/impl/communicator/MessagingServiceImpl;->c(Lcom/applovin/impl/communicator/CommunicatorMessageImpl;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/applovin/impl/communicator/MessagingServiceImpl;->b(Lcom/applovin/impl/communicator/CommunicatorMessageImpl;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "MessagingServiceImpl{}"

    return-object v0
.end method
