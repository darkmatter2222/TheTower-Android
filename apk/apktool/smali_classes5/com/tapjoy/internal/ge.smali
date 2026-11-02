.class public abstract Lcom/tapjoy/internal/ge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/ge$b;,
        Lcom/tapjoy/internal/ge$a;,
        Lcom/tapjoy/internal/ge$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/locks/ReentrantLock;

.field volatile b:I

.field c:Lcom/tapjoy/internal/ge$b;

.field d:J

.field e:Lcom/tapjoy/internal/ge$a;

.field private final f:Ljava/util/concurrent/locks/Condition;

.field private final g:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/tapjoy/TJConnectListener;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/tapjoy/internal/ge$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/ge;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 38
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/ge;->f:Ljava/util/concurrent/locks/Condition;

    .line 49
    sget v0, Lcom/tapjoy/internal/ge$c;->a:I

    iput v0, p0, Lcom/tapjoy/internal/ge;->b:I

    .line 51
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/ge;->g:Ljava/util/LinkedList;

    const-wide/16 v0, 0x3e8

    .line 54
    iput-wide v0, p0, Lcom/tapjoy/internal/ge;->d:J

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/ge;Z)V
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/ge;->a(Z)V

    return-void
.end method


# virtual methods
.method final a()Lcom/tapjoy/internal/ge$a;
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/tapjoy/internal/ge;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/ge;->h:Lcom/tapjoy/internal/ge$a;

    if-eqz v0, :cond_0

    .line 174
    iput-object v0, p0, Lcom/tapjoy/internal/ge;->e:Lcom/tapjoy/internal/ge$a;

    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lcom/tapjoy/internal/ge;->h:Lcom/tapjoy/internal/ge$a;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/ge;->e:Lcom/tapjoy/internal/ge$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    iget-object v1, p0, Lcom/tapjoy/internal/ge;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/internal/ge;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 180
    throw v0
.end method

.method final a(I)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/tapjoy/internal/ge;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 121
    :try_start_0
    iput p1, p0, Lcom/tapjoy/internal/ge;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    iget-object p1, p0, Lcom/tapjoy/internal/ge;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/tapjoy/internal/ge;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 125
    throw p1
.end method

.method final a(Z)V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/tapjoy/internal/ge;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/ge;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 193
    iget-object p1, p0, Lcom/tapjoy/internal/ge;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 190
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tapjoy/internal/ge;->g:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 191
    iget-object v1, p0, Lcom/tapjoy/internal/ge;->g:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    iget-object v1, p0, Lcom/tapjoy/internal/ge;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 196
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/TJConnectListener;

    if-eqz p1, :cond_1

    .line 198
    invoke-interface {v1}, Lcom/tapjoy/TJConnectListener;->onConnectSuccess()V

    goto :goto_0

    .line 200
    :cond_1
    invoke-interface {v1}, Lcom/tapjoy/TJConnectListener;->onConnectFailure()V

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 193
    iget-object v0, p0, Lcom/tapjoy/internal/ge;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 194
    throw p1
.end method

.method final a(J)Z
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/tapjoy/internal/ge;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    .line 228
    :try_start_0
    sget v1, Lcom/tapjoy/internal/ge$c;->d:I

    sget v2, Lcom/tapjoy/internal/ge$c;->c:I

    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/ge;->a(I)V

    .line 229
    iget-object v1, p0, Lcom/tapjoy/internal/ge;->f:Ljava/util/concurrent/locks/Condition;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, p1, p2, v2}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 p1, 0x3e8

    .line 230
    iput-wide p1, p0, Lcom/tapjoy/internal/ge;->d:J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    :catch_0
    :cond_0
    sget p1, Lcom/tapjoy/internal/ge$c;->c:I

    sget p2, Lcom/tapjoy/internal/ge$c;->d:I

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/ge;->a(I)V

    .line 238
    iget-object p1, p0, Lcom/tapjoy/internal/ge;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception p1

    .line 237
    sget p2, Lcom/tapjoy/internal/ge$c;->c:I

    sget v0, Lcom/tapjoy/internal/ge$c;->d:I

    invoke-virtual {p0, p2}, Lcom/tapjoy/internal/ge;->a(I)V

    .line 238
    iget-object p2, p0, Lcom/tapjoy/internal/ge;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 239
    throw p1
.end method

.method protected abstract a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/tapjoy/TJConnectListener;",
            ")Z"
        }
    .end annotation
.end method

.method final b()V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/tapjoy/internal/ge;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const-wide/16 v0, 0x3e8

    .line 217
    :try_start_0
    iput-wide v0, p0, Lcom/tapjoy/internal/ge;->d:J

    .line 218
    iget-object v0, p0, Lcom/tapjoy/internal/ge;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    iget-object v0, p0, Lcom/tapjoy/internal/ge;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/internal/ge;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 221
    throw v0
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/tapjoy/TJConnectListener;",
            ")Z"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/tapjoy/internal/ge;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    if-eqz p4, :cond_0

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/ge;->g:Ljava/util/LinkedList;

    const-class v1, Lcom/tapjoy/TJConnectListener;

    invoke-static {p4, v1}, Lcom/tapjoy/internal/fp;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 71
    :cond_0
    new-instance p4, Lcom/tapjoy/internal/ge$a;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/tapjoy/internal/ge$a;-><init>(Lcom/tapjoy/internal/ge;Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 74
    sget-object p1, Lcom/tapjoy/internal/ge$3;->a:[I

    iget p2, p0, Lcom/tapjoy/internal/ge;->b:I

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    aget p1, p1, p2

    if-eq p1, p3, :cond_5

    const/4 p2, 0x2

    const/4 v0, 0x0

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_2

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    .line 97
    sget p1, Lcom/tapjoy/internal/ge$c;->a:I

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/ge;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :goto_0
    iget-object p1, p0, Lcom/tapjoy/internal/ge;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    .line 90
    :cond_1
    :try_start_1
    iput-object p4, p0, Lcom/tapjoy/internal/ge;->h:Lcom/tapjoy/internal/ge$a;

    .line 91
    invoke-virtual {p0}, Lcom/tapjoy/internal/ge;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :goto_1
    iget-object p1, p0, Lcom/tapjoy/internal/ge;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p3

    .line 87
    :cond_2
    :try_start_2
    iput-object p4, p0, Lcom/tapjoy/internal/ge;->h:Lcom/tapjoy/internal/ge$a;

    goto :goto_1

    .line 1140
    :cond_3
    iput-object p4, p0, Lcom/tapjoy/internal/ge;->e:Lcom/tapjoy/internal/ge$a;

    .line 1142
    sget-object p1, Lcom/tapjoy/internal/fu;->b:Lcom/tapjoy/internal/fu$a;

    new-instance p2, Lcom/tapjoy/internal/ge$1;

    invoke-direct {p2, p0}, Lcom/tapjoy/internal/ge$1;-><init>(Lcom/tapjoy/internal/ge;)V

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/fu$a;->addObserver(Ljava/util/Observer;)V

    .line 1154
    iget-object p1, p4, Lcom/tapjoy/internal/ge$a;->a:Landroid/content/Context;

    iget-object p2, p4, Lcom/tapjoy/internal/ge$a;->b:Ljava/lang/String;

    iget-object p4, p4, Lcom/tapjoy/internal/ge$a;->c:Ljava/util/Hashtable;

    new-instance v1, Lcom/tapjoy/internal/ge$2;

    invoke-direct {v1, p0}, Lcom/tapjoy/internal/ge$2;-><init>(Lcom/tapjoy/internal/ge;)V

    .line 1155
    invoke-virtual {p0, p1, p2, p4, v1}, Lcom/tapjoy/internal/ge;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 80
    sget p1, Lcom/tapjoy/internal/ge$c;->b:I

    sget p2, Lcom/tapjoy/internal/ge$c;->a:I

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/ge;->a(I)V

    goto :goto_1

    .line 83
    :cond_4
    iget-object p1, p0, Lcom/tapjoy/internal/ge;->g:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    goto :goto_0

    .line 76
    :cond_5
    invoke-virtual {p0, p3}, Lcom/tapjoy/internal/ge;->a(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 101
    iget-object p2, p0, Lcom/tapjoy/internal/ge;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 102
    throw p1
.end method
